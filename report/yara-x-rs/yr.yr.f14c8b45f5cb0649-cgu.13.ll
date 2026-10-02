Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.13?download=true
inline.NumInlined: 1887
inline.NumDeleted: 755
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr:bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w), !noalias !2688
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 40
  %i.z = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = and i64 %i.y, -16                       ; 2 uses
  %i.ab = add i64 %i.aa, 48                       ; 2 uses
  %i.ac = add nsw i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2686, !nonnull !7, !noundef !7
  %i.ai = sub i64 -48, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2686
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2699)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2699, !noundef !7 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2701, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2701, !nonnull !7, !noundef !7 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !2702
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !2703
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -32
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w), !noalias !2701
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 40
  %i.z = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = and i64 %i.y, -16                       ; 2 uses
  %i.ab = add i64 %i.aa, 48                       ; 2 uses
  %i.ac = add nsw i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2699, !nonnull !7, !noundef !7
  %i.ai = sub i64 -48, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2699
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTxNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2712)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2712, !noundef !7 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2714, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2714, !nonnull !7, !noundef !7 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !2715
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !2716
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -32
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w), !noalias !2714
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEE9next_implKb0_ECskIqAKC4t9Ft_2yr.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 40
  %i.z = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = and i64 %i.y, -16                       ; 2 uses
  %i.ab = add i64 %i.aa, 48                       ; 2 uses
  %i.ac = add nsw i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2712, !nonnull !7, !noundef !7
  %i.ai = sub i64 -48, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2712
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxEECskIqAKC4t9Ft_2yr.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBT_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 4 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2719
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBT_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEEE15into_allocationCskIqAKC4t9Ft_2yr.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 48                         ; 2 uses
  %2 = add i64 %i.g, 48                           ; 2 uses
  %3 = add i64 %i.c, 17
  %i.h = add i64 %3, %2                           ; 3 uses
  %4 = icmp uge i64 %i.h, %2
  tail call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %5)
  %6 = sub i64 -48, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %6
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBT_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEEE15into_allocationCskIqAKC4t9Ft_2yr.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBT_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEEE15into_allocationCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.l = getelementptr i8, ptr %i.a, i64 %i.c
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.n, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.k, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 5 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2722
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCsexYYUdYSQU6_5alloc6string6StringjEE15into_allocationCskIqAKC4t9Ft_2yr.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %2 = icmp slt i64 %i.c, 1152921504606846975
  tail call void @llvm.assume(i1 %2)
  %i.g = shl i64 %i.c, 4                          ; 2 uses
  %3 = add i64 %i.g, 16                           ; 2 uses
  %4 = add nsw i64 %i.c, 17
  %i.h = add i64 %4, %3                           ; 3 uses
  %5 = icmp uge i64 %i.h, %3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.i = sub nuw nsw i64 -16, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCsexYYUdYSQU6_5alloc6string6StringjEE15into_allocationCskIqAKC4t9Ft_2yr.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCsexYYUdYSQU6_5alloc6string6StringjEE15into_allocationCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.m = getelementptr i8, ptr %i.a, i64 %i.c
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.o, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB7_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1c_IB1c_IB1E_IB1c_IB1c_IB1E_IB1c_IB1c_INtNtB7_6bubble6BubbleIB2R_IB1c_INtNtB7_8comments16CommentProcessorIB1c_INtNtB7_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5n_6parser6ParserENCINvMs_B7_NtB7_9Formatter6formatRShNtNtNtB4v_2io4util4SinkE0EEEEENCINvMs0_B7_B6C_11format_implB40_Es1_0NCB7x_s2_0ENCB7x_s3_0NCB7x_s4_0EEEEEEEEEEEENtNtNtB4t_6traits8iterator8Iterator10advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(240) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB1i_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB2n_IB2n_IB2Q_IB2n_IB2n_IB2Q_IB2n_IB2n_INtNtB1i_6bubble6BubbleIB43_IB2n_INtNtB1i_8comments16CommentProcessorIB2n_INtNtB1i_6tokens6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6f_6parser6ParserENCINvMs_B1i_NtB1i_9Formatter6formatRShNtNtNtBe_2io4util4SinkE0EEEEENCINvMs0_B1i_B7v_11format_implB5e_Es1_0NCB8q_s2_0ENCB8q_s3_0NCB8q_s4_0EEEEEEEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB7_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1c_IB1c_IB1E_IB1c_IB1c_IB1E_IB1c_IB1c_INtNtB7_6bubble6BubbleIB2R_IB1c_INtNtB7_8comments16CommentProcessorIB1c_INtNtB7_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5n_6parser6ParserENCINvMs_B7_NtB7_9Formatter6formatRShNtNtNtB4v_2io4util4SinkE0EEEEENCINvMs0_B7_B6C_11format_implB40_Es1_0NCB7x_s2_0ENCB7x_s3_0NCB7x_s4_0EEEEEEEEEEEENtNtNtB4t_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(240) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB1i_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB2n_IB2n_IB2Q_IB2n_IB2n_IB2Q_IB2n_IB2n_INtNtB1i_6bubble6BubbleIB43_IB2n_INtNtB1i_8comments16CommentProcessorIB2n_INtNtB1i_6tokens6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6f_6parser6ParserENCINvMs_B1i_NtB1i_9Formatter6formatRShNtNtNtBe_2io4util4SinkE0EEEEENCINvMs0_B1i_B7v_11format_implB5e_Es1_0NCB8q_s2_0ENCB8q_s3_0NCB8q_s4_0EEEEEEEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %1, i64 noundef %2)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patternsINtB4_17FormatHexPatternsINtNtB6_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1h_IB1h_IB1J_IB1h_IB1h_IB1J_IB1h_IB1h_INtNtB6_6bubble6BubbleIB2W_IB1h_INtNtB6_8comments16CommentProcessorIB1h_INtNtB6_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5s_6parser6ParserENCINvMs_B6_NtB6_9Formatter6formatRShNtNtNtB4A_2io4util4SinkE0EEEEENCINvMs0_B6_B6H_11format_implB45_Es1_0NCB7C_s2_0ENCB7C_s3_0NCB7C_s4_0EEEEEEEEEEEENtNtNtB4y_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB7_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1c_IB1c_IB1E_IB1c_IB1c_IB1E_IB1c_IB1c_INtNtB7_6bubble6BubbleIB2R_IB1c_INtNtB7_8comments16CommentProcessorIB1c_INtNtB7_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5n_6parser6ParserENCINvMs_B7_NtB7_9Formatter6formatRShNtNtNtB4v_2io4util4SinkE0EEEEENCINvMs0_B7_B6C_11format_implB40_Es1_0NCB7x_s2_0ENCB7x_s3_0NCB7x_s4_0EEEEEEEEEEEENtNtNtB4t_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB7_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1c_IB1c_IB1E_IB1c_IB1c_IB1E_IB1c_IB1c_INtNtB7_6bubble6BubbleIB2R_IB1c_INtNtB7_8comments16CommentProcessorIB1c_INtNtB7_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5n_6parser6ParserENCINvMs_B7_NtB7_9Formatter6formatRShQINtNtNtB4v_2io6cursor6CursorINtNtB1I_3vec3VechEEE0EEEEENCINvMs0_B7_B6C_11format_implB40_Es1_0NCB7X_s2_0ENCB7X_s3_0NCB7X_s4_0EEEEEEEEEEEENtNtNtB4t_6traits8iterator8Iterator10advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(240) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB1i_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB2n_IB2n_IB2Q_IB2n_IB2n_IB2Q_IB2n_IB2n_INtNtB1i_6bubble6BubbleIB43_IB2n_INtNtB1i_8comments16CommentProcessorIB2n_INtNtB1i_6tokens6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6f_6parser6ParserENCINvMs_B1i_NtB1i_9Formatter6formatRShQINtNtNtBe_2io6cursor6CursorINtNtB2U_3vec3VechEEE0EEEEENCINvMs0_B1i_B7v_11format_implB5e_Es1_0NCB8Q_s2_0ENCB8Q_s3_0NCB8Q_s4_0EEEEEEEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB7_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1c_IB1c_IB1E_IB1c_IB1c_IB1E_IB1c_IB1c_INtNtB7_6bubble6BubbleIB2R_IB1c_INtNtB7_8comments16CommentProcessorIB1c_INtNtB7_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5n_6parser6ParserENCINvMs_B7_NtB7_9Formatter6formatRShQINtNtNtB4v_2io6cursor6CursorINtNtB1I_3vec3VechEEE0EEEEENCINvMs0_B7_B6C_11format_implB40_Es1_0NCB7X_s2_0ENCB7X_s3_0NCB7X_s4_0EEEEEEEEEEEENtNtNtB4t_6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(240) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB1i_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB2n_IB2n_IB2Q_IB2n_IB2n_IB2Q_IB2n_IB2n_INtNtB1i_6bubble6BubbleIB43_IB2n_INtNtB1i_8comments16CommentProcessorIB2n_INtNtB1i_6tokens6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6f_6parser6ParserENCINvMs_B1i_NtB1i_9Formatter6formatRShQINtNtNtBe_2io6cursor6CursorINtNtB2U_3vec3VechEEE0EEEEENCINvMs0_B1i_B7v_11format_implB5e_Es1_0NCB8Q_s2_0ENCB8Q_s3_0NCB8Q_s4_0EEEEEEEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %1, i64 noundef %2)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patternsINtB4_17FormatHexPatternsINtNtB6_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1h_IB1h_IB1J_IB1h_IB1h_IB1J_IB1h_IB1h_INtNtB6_6bubble6BubbleIB2W_IB1h_INtNtB6_8comments16CommentProcessorIB1h_INtNtB6_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5s_6parser6ParserENCINvMs_B6_NtB6_9Formatter6formatRShQINtNtNtB4A_2io6cursor6CursorINtNtB1N_3vec3VechEEE0EEEEENCINvMs0_B6_B6H_11format_implB45_Es1_0NCB82_s2_0ENCB82_s3_0NCB82_s4_0EEEEEEEEEEEENtNtNtB4y_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB7_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1c_IB1c_IB1E_IB1c_IB1c_IB1E_IB1c_IB1c_INtNtB7_6bubble6BubbleIB2R_IB1c_INtNtB7_8comments16CommentProcessorIB1c_INtNtB7_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5n_6parser6ParserENCINvMs_B7_NtB7_9Formatter6formatRShQINtNtNtB4v_2io6cursor6CursorINtNtB1I_3vec3VechEEE0EEEEENCINvMs0_B7_B6C_11format_implB40_Es1_0NCB7X_s2_0ENCB7X_s3_0NCB7X_s4_0EEEEEEEEEEEENtNtNtB4t_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB7_9processor9ProcessorIB3_IBK_IBK_IBK_INtNtB7_6bubble6BubbleIBK_IBK_IBK_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB7_6tokens5TokenEL_EEEENCINvMs0_B7_NtB7_9Formatter11format_implINtB3C_6TokensINtNtNtB2F_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5y_6parser6ParserENCINvMs_B7_B4d_6formatRShNtNtNtB2H_2io4util4SinkE0EEEss_0NCB43_st_0EEEEEEEB2z_10advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(1488) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB1i_9processor9ProcessorIB1e_IB1V_IB1V_IB1V_INtNtB1i_6bubble6BubbleIB1V_IB1V_IB1V_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EEEENCINvMs0_B1i_NtB1i_9Formatter11format_implINtB44_6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB62_6parser6ParserENCINvMs_B1i_B4H_6formatRShNtNtNtBe_2io4util4SinkE0EEEss_0NCB4w_st_0EEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1488) %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB7_9processor9ProcessorIB3_IBK_IBK_IBK_INtNtB7_6bubble6BubbleIBK_IBK_IBK_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB7_6tokens5TokenEL_EEEENCINvMs0_B7_NtB7_9Formatter11format_implINtB3C_6TokensINtNtNtB2F_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5y_6parser6ParserENCINvMs_B7_B4d_6formatRShNtNtNtB2H_2io4util4SinkE0EEEss_0NCB43_st_0EEEEEEEB2z_3nthCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(1488) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB1i_9processor9ProcessorIB1e_IB1V_IB1V_IB1V_INtNtB1i_6bubble6BubbleIB1V_IB1V_IB1V_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EEEENCINvMs0_B1i_NtB1i_9Formatter11format_implINtB44_6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB62_6parser6ParserENCINvMs_B1i_B4H_6formatRShNtNtNtBe_2io4util4SinkE0EEEss_0NCB4w_st_0EEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1488) %1, i64 noundef %2)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt5alignINtB4_5AlignINtNtB6_9processor9ProcessorIBD_IBP_IBP_IBP_INtNtB6_6bubble6BubbleIBP_IBP_IBP_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEENCINvMs0_B6_NtB6_9Formatter11format_implINtB3H_6TokensINtNtNtB2K_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5D_6parser6ParserENCINvMs_B6_B4i_6formatRShNtNtNtB2M_2io4util4SinkE0EEEss_0NCB48_st_0EEEEEEEB2E_4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1488) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB7_9processor9ProcessorIB3_IBK_IBK_IBK_INtNtB7_6bubble6BubbleIBK_IBK_IBK_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB7_6tokens5TokenEL_EEEENCINvMs0_B7_NtB7_9Formatter11format_implINtB3C_6TokensINtNtNtB2F_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5y_6parser6ParserENCINvMs_B7_B4d_6formatRShNtNtNtB2H_2io4util4SinkE0EEEss_0NCB43_st_0EEEEEEEB2z_9size_hintCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB7_9processor9ProcessorIB3_IBK_IBK_IBK_INtNtB7_6bubble6BubbleIBK_IBK_IBK_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB7_6tokens5TokenEL_EEEENCINvMs0_B7_NtB7_9Formatter11format_implINtB3C_6TokensINtNtNtB2F_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5y_6parser6ParserENCINvMs_B7_B4d_6formatRShQINtNtNtB2H_2io6cursor6CursorINtNtB24_3vec3VechEEE0EEEss_0NCB43_st_0EEEEEEEB2z_10advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(1488) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB1i_9processor9ProcessorIB1e_IB1V_IB1V_IB1V_INtNtB1i_6bubble6BubbleIB1V_IB1V_IB1V_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EEEENCINvMs0_B1i_NtB1i_9Formatter11format_implINtB44_6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB62_6parser6ParserENCINvMs_B1i_B4H_6formatRShQINtNtNtBe_2io6cursor6CursorINtNtB3o_3vec3VechEEE0EEEss_0NCB4w_st_0EEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1488) %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB7_9processor9ProcessorIB3_IBK_IBK_IBK_INtNtB7_6bubble6BubbleIBK_IBK_IBK_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB7_6tokens5TokenEL_EEEENCINvMs0_B7_NtB7_9Formatter11format_implINtB3C_6TokensINtNtNtB2F_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5y_6parser6ParserENCINvMs_B7_B4d_6formatRShQINtNtNtB2H_2io6cursor6CursorINtNtB24_3vec3VechEEE0EEEss_0NCB43_st_0EEEEEEEB2z_3nthCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(1488) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB1i_9processor9ProcessorIB1e_IB1V_IB1V_IB1V_INtNtB1i_6bubble6BubbleIB1V_IB1V_IB1V_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EEEENCINvMs0_B1i_NtB1i_9Formatter11format_implINtB44_6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB62_6parser6ParserENCINvMs_B1i_B4H_6formatRShQINtNtNtBe_2io6cursor6CursorINtNtB3o_3vec3VechEEE0EEEss_0NCB4w_st_0EEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1488) %1, i64 noundef %2)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt5alignINtB4_5AlignINtNtB6_9processor9ProcessorIBD_IBP_IBP_IBP_INtNtB6_6bubble6BubbleIBP_IBP_IBP_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEENCINvMs0_B6_NtB6_9Formatter11format_implINtB3H_6TokensINtNtNtB2K_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5D_6parser6ParserENCINvMs_B6_B4i_6formatRShQINtNtNtB2M_2io6cursor6CursorINtNtB29_3vec3VechEEE0EEEss_0NCB48_st_0EEEEEEEB2E_4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1488) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB7_9processor9ProcessorIB3_IBK_IBK_IBK_INtNtB7_6bubble6BubbleIBK_IBK_IBK_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB7_6tokens5TokenEL_EEEENCINvMs0_B7_NtB7_9Formatter11format_implINtB3C_6TokensINtNtNtB2F_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5y_6parser6ParserENCINvMs_B7_B4d_6formatRShQINtNtNtB2H_2io6cursor6CursorINtNtB24_3vec3VechEEE0EEEss_0NCB43_st_0EEEEEEEB2z_9size_hintCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB7_9processor9ProcessorIBK_IBK_INtNtB7_6bubble6BubbleIBK_IBK_IBK_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB7_6tokens5TokenEL_EEEENCINvMs0_B7_NtB7_9Formatter11format_implINtB3u_6TokensINtNtNtB2x_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5q_6parser6ParserENCINvMs_B7_B45_6formatRShNtNtNtB2z_2io4util4SinkE0EEEss_0NCB3V_st_0EEEEEB2r_10advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(1264) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB1i_9processor9ProcessorIB1V_IB1V_INtNtB1i_6bubble6BubbleIB1V_IB1V_IB1V_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EEEENCINvMs0_B1i_NtB1i_9Formatter11format_implINtB3U_6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5S_6parser6ParserENCINvMs_B1i_B4x_6formatRShNtNtNtBe_2io4util4SinkE0EEEss_0NCB4m_st_0EEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1264) %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB7_9processor9ProcessorIBK_IBK_INtNtB7_6bubble6BubbleIBK_IBK_IBK_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB7_6tokens5TokenEL_EEEENCINvMs0_B7_NtB7_9Formatter11format_implINtB3u_6TokensINtNtNtB2x_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5q_6parser6ParserENCINvMs_B7_B45_6formatRShNtNtNtB2z_2io4util4SinkE0EEEss_0NCB3V_st_0EEEEEB2r_3nthCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(1264) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB1i_9processor9ProcessorIB1V_IB1V_INtNtB1i_6bubble6BubbleIB1V_IB1V_IB1V_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EEEENCINvMs0_B1i_NtB1i_9Formatter11format_implINtB3U_6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5S_6parser6ParserENCINvMs_B1i_B4x_6formatRShNtNtNtBe_2io4util4SinkE0EEEss_0NCB4m_st_0EEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1264) %1, i64 noundef %2)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt5alignINtB4_5AlignINtNtB6_9processor9ProcessorIBP_IBP_INtNtB6_6bubble6BubbleIBP_IBP_IBP_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEENCINvMs0_B6_NtB6_9Formatter11format_implINtB3z_6TokensINtNtNtB2C_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5v_6parser6ParserENCINvMs_B6_B4a_6formatRShNtNtNtB2E_2io4util4SinkE0EEEss_0NCB40_st_0EEEEEB2w_4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1264) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB7_9processor9ProcessorIBK_IBK_INtNtB7_6bubble6BubbleIBK_IBK_IBK_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB7_6tokens5TokenEL_EEEENCINvMs0_B7_NtB7_9Formatter11format_implINtB3u_6TokensINtNtNtB2x_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5q_6parser6ParserENCINvMs_B7_B45_6formatRShNtNtNtB2z_2io4util4SinkE0EEEss_0NCB3V_st_0EEEEEB2r_9size_hintCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB7_9processor9ProcessorIBK_IBK_INtNtB7_6bubble6BubbleIBK_IBK_IBK_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB7_6tokens5TokenEL_EEEENCINvMs0_B7_NtB7_9Formatter11format_implINtB3u_6TokensINtNtNtB2x_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5q_6parser6ParserENCINvMs_B7_B45_6formatRShQINtNtNtB2z_2io6cursor6CursorINtNtB1W_3vec3VechEEE0EEEss_0NCB3V_st_0EEEEEB2r_10advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(1264) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB1i_9processor9ProcessorIB1V_IB1V_INtNtB1i_6bubble6BubbleIB1V_IB1V_IB1V_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EEEENCINvMs0_B1i_NtB1i_9Formatter11format_implINtB3U_6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5S_6parser6ParserENCINvMs_B1i_B4x_6formatRShQINtNtNtBe_2io6cursor6CursorINtNtB3e_3vec3VechEEE0EEEss_0NCB4m_st_0EEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1264) %0, i64 noundef %1)
  ret i64 %i.a
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgqCuqWkNCVj_17crossbeam_channel7context5InnerE9drop_slowBK_
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgqCuqWkNCVj_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #25

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #25

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs6i8zKcEiGNL_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #25

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #25

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #25

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtB7_6string6StringE9drop_slowCseAUhZXWg4yS_5regex(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #25

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs6i8zKcEiGNL_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1zfV5xdjBAP_9toml_edit3key3KeyENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB8_4hash18BuildHasherDefaultNtNtNtB1e_4hash6random13DefaultHasherEEENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe2PEENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3crx3CrxENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex3DexENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapListENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9DexHeaderENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ProtoItemENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf3ELFENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk11TrackerDataENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk3LnkENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi3MsiENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba3VbaENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10MinVersionENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho12BuildVersionENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho12LinkedItDataENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho5MachoENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho6SymtabENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho8DyldInfoENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho8DysymtabENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5olecf5OlecfENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos6dotnet6DotnetENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos6dotnet7VersionENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos6dotnet8AssemblyENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba3vba11ProjectInfoENtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5value9value_box15ReflectValueBoxNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCseAUhZXWg4yS_5regex5regex5bytesNtB5_5Regex3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB1i_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB2n_IB2n_IB2Q_IB2n_IB2n_IB2Q_IB2n_IB2n_INtNtB1i_6bubble6BubbleIB43_IB2n_INtNtB1i_8comments16CommentProcessorIB2n_INtNtB1i_6tokens6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6f_6parser6ParserENCINvMs_B1i_NtB1i_9Formatter6formatRShNtNtNtBe_2io4util4SinkE0EEEEENCINvMs0_B1i_B7v_11format_implB5e_Es1_0NCB8q_s2_0ENCB8q_s3_0NCB8q_s4_0EEEEEEEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(240), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt19format_hex_patterns17FormatHexPatternsINtNtB1i_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB2n_IB2n_IB2Q_IB2n_IB2n_IB2Q_IB2n_IB2n_INtNtB1i_6bubble6BubbleIB43_IB2n_INtNtB1i_8comments16CommentProcessorIB2n_INtNtB1i_6tokens6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6f_6parser6ParserENCINvMs_B1i_NtB1i_9Formatter6formatRShQINtNtNtBe_2io6cursor6CursorINtNtB2U_3vec3VechEEE0EEEEENCINvMs0_B1i_B7v_11format_implB5e_Es1_0NCB8Q_s2_0ENCB8Q_s3_0NCB8Q_s4_0EEEEEEEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(240), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB1i_9processor9ProcessorIB1e_IB1V_IB1V_IB1V_INtNtB1i_6bubble6BubbleIB1V_IB1V_IB1V_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EEEENCINvMs0_B1i_NtB1i_9Formatter11format_implINtB44_6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB62_6parser6ParserENCINvMs_B1i_B4H_6formatRShNtNtNtBe_2io4util4SinkE0EEEss_0NCB4w_st_0EEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(1488), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB1i_9processor9ProcessorIB1e_IB1V_IB1V_IB1V_INtNtB1i_6bubble6BubbleIB1V_IB1V_IB1V_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EEEENCINvMs0_B1i_NtB1i_9Formatter11format_implINtB44_6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB62_6parser6ParserENCINvMs_B1i_B4H_6formatRShQINtNtNtBe_2io6cursor6CursorINtNtB3o_3vec3VechEEE0EEEss_0NCB4w_st_0EEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(1488), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB1i_9processor9ProcessorIB1V_IB1V_INtNtB1i_6bubble6BubbleIB1V_IB1V_IB1V_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EEEENCINvMs0_B1i_NtB1i_9Formatter11format_implINtB3U_6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5S_6parser6ParserENCINvMs_B1i_B4x_6formatRShNtNtNtBe_2io4util4SinkE0EEEss_0NCB4m_st_0EEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(1264), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB1i_9processor9ProcessorIB1V_IB1V_INtNtB1i_6bubble6BubbleIB1V_IB1V_IB1V_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EEEENCINvMs0_B1i_NtB1i_9Formatter11format_implINtB3U_6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB5S_6parser6ParserENCINvMs_B1i_B4x_6formatRShQINtNtNtBe_2io6cursor6CursorINtNtB3e_3vec3VechEEE0EEEss_0NCB4m_st_0EEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(1264), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt5align5AlignINtNtB1i_9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(240), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt9processor9ProcessorINtNtB1i_19format_hex_patterns17FormatHexPatternsIB1e_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1e_IB1e_IB2V_IB1e_IB1e_IB2V_IB1e_IB1e_INtNtB1i_6bubble6BubbleIB48_IB1e_INtNtB1i_8comments16CommentProcessorIB1e_INtNtB1i_6tokens6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6k_6parser6ParserENCINvMs_B1i_NtB1i_9Formatter6formatRShNtNtNtBe_2io4util4SinkE0EEEEENCINvMs0_B1i_B7A_11format_implB5j_Es1_0NCB8v_s2_0ENCB8v_s3_0NCB8v_s4_0EEEEEEEEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(432), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt9processor9ProcessorINtNtB1i_19format_hex_patterns17FormatHexPatternsIB1e_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1e_IB1e_IB2V_IB1e_IB1e_IB2V_IB1e_IB1e_INtNtB1i_6bubble6BubbleIB48_IB1e_INtNtB1i_8comments16CommentProcessorIB1e_INtNtB1i_6tokens6TokensINtNtNtBc_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6k_6parser6ParserENCINvMs_B1i_NtB1i_9Formatter6formatRShQINtNtNtBe_2io6cursor6CursorINtNtB2Z_3vec3VechEEE0EEEEENCINvMs0_B1i_B7A_11format_implB5j_Es1_0NCB8V_s2_0ENCB8V_s3_0NCB8V_s4_0EEEEEEEEEEEEENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(432), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsbRBQYsxaRdD_10yara_x_fmt9processor9ProcessorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtB1i_6tokens5TokenEL_EENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(208), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDB6_p4ItemNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenEL_ENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -2, 2) i8 @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto4jsonNtB5_2KVNtNtCskKLDkoKarTP_4core3cmp10PartialOrd11partial_cmp(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -2, 2) i8 @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto4yamlNtB5_2KVNtNtCskKLDkoKarTP_4core3cmp10PartialOrd11partial_cmp(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #29

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind }
attributes #27 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { cold }
attributes #34 = { noreturn }
attributes #35 = { cold noreturn nounwind }
attributes #36 = { noinline }
attributes #37 = { inlinehint }
attributes #38 = { noinline noreturn }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 1, i32 1999}
!10 = !{!"branch_weights", i32 0, i32 1}
!11 = !{i64 8}
!12 = !{i64 0, i64 2}
!13 = !{i64 0, i64 -9223372036854775807}
!14 = !{i8 0, i8 2}
!15 = !{i32 0, i32 2}
!16 = !{!"branch_weights", i32 2146410443, i32 1073205}
!17 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!18 = !{!"branch_weights", i32 2002, i32 2000}
!19 = !{i64 -2, i64 -9223372036854775805}
!20 = !{i64 -1, i64 -9223372036854775808}
!21 = !{i16 -2, i16 23}
!22 = !{i64 0, i64 -9223372036854775808}
!23 = !{i64 1, i64 536870913}
!24 = !{i64 -1, i64 3}
!25 = !{i16 0, i16 23}
!26 = !{i64 0, i64 -9223372036854775805}
!27 = !{i64 0, i64 3}
!28 = !{i64 0, i64 -9223372036854775806}
!29 = !{i16 -1, i16 23}
!30 = !{i64 -1, i64 12}
!31 = !{i64 128}
!32 = !{i32 -1, i32 1000000000}
!33 = !{!"branch_weights", i32 2142436104, i32 5047530, i32 0, i32 0}
!34 = !{i8 0, i8 3}
!35 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!36 = !{i16 0, i16 127}
!37 = distinct !{!37, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr"}
!38 = distinct !{!38, !37, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!39 = distinct !{!39, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr"}
!40 = distinct !{!40, !39, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!41 = distinct !{!41, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr"}
!42 = distinct !{!42, !41, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!43 = distinct !{!43, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr"}
!44 = distinct !{!44, !43, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!45 = distinct !{!45, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr"}
!46 = distinct !{!46, !45, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!47 = distinct !{!47, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr"}
!48 = distinct !{!48, !47, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!49 = !{!38}
!50 = !{!40}
!51 = !{!42}
!52 = !{!44}
!53 = !{!46}
!54 = !{!48}
!55 = distinct !{!55, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertINtBL_9ProcessorIB1D_IBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EEEE0E3newCskIqAKC4t9Ft_2yr"}
!56 = distinct !{!56, !55, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertINtBL_9ProcessorIB1D_IBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EEEE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!57 = distinct !{!57, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertINtBL_9ProcessorIB1D_IBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EEEE0E3newCskIqAKC4t9Ft_2yr"}
!58 = distinct !{!58, !57, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertINtBL_9ProcessorIB1D_IBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EEEE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!59 = !{!56}
!60 = !{!58}
!61 = distinct !{!61, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr"}
!62 = distinct !{!62, !61, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!63 = distinct !{!63, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr"}
!64 = distinct !{!64, !63, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!65 = !{!62}
!66 = !{!64}
!67 = distinct !{!67, !"_RINvMs0_CsbRBQYsxaRdD_10yara_x_fmtNtB6_9Formatter5alignINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EECskIqAKC4t9Ft_2yr"}
!68 = distinct !{!68, !67, !"_RINvMs0_CsbRBQYsxaRdD_10yara_x_fmtNtB6_9Formatter5alignINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EECskIqAKC4t9Ft_2yr: argument 0"}
!69 = distinct !{!69, !67, !"_RINvMs0_CsbRBQYsxaRdD_10yara_x_fmtNtB6_9Formatter5alignINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EECskIqAKC4t9Ft_2yr: argument 1"}
!70 = distinct !{!70, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr"}
!71 = distinct !{!71, !70, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!72 = distinct !{!72, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr"}
!73 = distinct !{!73, !72, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!74 = distinct !{!74, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr"}
!75 = distinct !{!75, !74, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!76 = !{!68}
!77 = !{!68, !69}
!78 = !{!71, !68}
!79 = !{!73, !68}
!80 = !{!75, !68}
!81 = !{!69}
!82 = distinct !{!82, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertINtBL_9ProcessorIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EEE0E3newCskIqAKC4t9Ft_2yr"}
!83 = distinct !{!83, !82, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertINtBL_9ProcessorIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EEE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!84 = distinct !{!84, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertINtBL_9ProcessorIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EEE0E3newCskIqAKC4t9Ft_2yr"}
!85 = distinct !{!85, !84, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7actions6insertINtBL_9ProcessorIBv_DNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtBN_6tokens5TokenEL_EEE0E3newCskIqAKC4t9Ft_2yr: argument 0"}
!86 = !{!83}
!87 = !{!85}
!88 = distinct !{!88, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!89 = distinct !{!89, !88, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!90 = distinct !{!90, !"_RNvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCskIqAKC4t9Ft_2yr"}
!91 = distinct !{!91, !90, !"_RNvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCskIqAKC4t9Ft_2yr: argument 0"}
!92 = !{!89}
!93 = !{!"branch_weights", i32 1, i32 4001}
!94 = !{!91}
!95 = distinct !{!95, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr"}
!96 = distinct !{!96, !95, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 0"}
!97 = distinct !{!97, !95, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 2"}
!98 = distinct !{!98, !95, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 1"}
!99 = distinct !{!99, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr"}
!100 = distinct !{!100, !99, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 0"}
!101 = distinct !{!101, !99, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 2"}
!102 = distinct !{!102, !99, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 1"}
!103 = distinct !{!103, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECskIqAKC4t9Ft_2yr"}
!104 = distinct !{!104, !103, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECskIqAKC4t9Ft_2yr: argument 0"}
!105 = distinct !{!105, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr"}
!106 = distinct !{!106, !105, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr: argument 0"}
!107 = distinct !{!107, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBW_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CskIqAKC4t9Ft_2yr"}
!108 = distinct !{!108, !107, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBW_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CskIqAKC4t9Ft_2yr: argument 1"}
!109 = distinct !{!109, !107, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBW_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CskIqAKC4t9Ft_2yr: argument 0"}
!110 = distinct !{!110, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!111 = distinct !{!111, !110, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!112 = !{!96}
!113 = !{!98, !97}
!114 = !{!96, !98, !97}
!115 = !{!100}
!116 = !{!100, !102, !101, !96, !98, !97}
!117 = !{!101, !97}
!118 = !{!100, !96}
!119 = !{!102, !101, !98, !97}
!120 = !{!104}
!121 = !{!106}
!122 = !{!106, !104}
!123 = !{!106, !104, !101, !97}
!124 = !{!108}
!125 = !{!109, !101, !97}
!126 = !{!109, !108, !101, !97}
!127 = !{!111}
!128 = distinct !{!128, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr"}
!129 = distinct !{!129, !128, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 0"}
!130 = distinct !{!130, !128, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 2"}
!131 = distinct !{!131, !128, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 1"}
!132 = distinct !{!132, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr"}
!133 = distinct !{!133, !132, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 0"}
!134 = distinct !{!134, !132, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 2"}
!135 = distinct !{!135, !132, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 1"}
!136 = distinct !{!136, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECskIqAKC4t9Ft_2yr"}
!137 = distinct !{!137, !136, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECskIqAKC4t9Ft_2yr: argument 0"}
!138 = distinct !{!138, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr"}
!139 = distinct !{!139, !138, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr: argument 0"}
!140 = distinct !{!140, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CskIqAKC4t9Ft_2yr"}
!141 = distinct !{!141, !140, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CskIqAKC4t9Ft_2yr: argument 1"}
!142 = distinct !{!142, !140, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBW_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CskIqAKC4t9Ft_2yr: argument 0"}
!143 = distinct !{!143, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!144 = distinct !{!144, !143, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!145 = !{!129}
!146 = !{!131, !130}
!147 = !{!129, !131, !130}
!148 = !{!133}
!149 = !{!133, !135, !134, !129, !131, !130}
!150 = !{!134, !130}
!151 = !{!133, !129}
!152 = !{!135, !134, !131, !130}
!153 = !{!137}
!154 = !{!139}
!155 = !{!139, !137}
!156 = !{!139, !137, !134, !130}
!157 = !{!141}
!158 = !{!142, !134, !130}
!159 = !{!142, !141, !134, !130}
!160 = !{!144}
!161 = distinct !{!161, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr"}
!162 = distinct !{!162, !161, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 0"}
!163 = distinct !{!163, !161, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 2"}
!164 = distinct !{!164, !161, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 1"}
!165 = distinct !{!165, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr"}
!166 = distinct !{!166, !165, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 0"}
!167 = distinct !{!167, !165, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 2"}
!168 = distinct !{!168, !165, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr: argument 1"}
!169 = distinct !{!169, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECskIqAKC4t9Ft_2yr"}
!170 = distinct !{!170, !169, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECskIqAKC4t9Ft_2yr: argument 0"}
!171 = distinct !{!171, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr"}
!172 = distinct !{!172, !171, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr: argument 0"}
end_hunk_1
