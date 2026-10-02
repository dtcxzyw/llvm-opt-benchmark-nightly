Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/chat_example.chat_example.5f8e00b7a503922-cgu.01?download=true
inline.NumInlined: 1585
inline.NumDeleted: 610
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example:bb.a
_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportEE9next_implKb0_ECsvMXERwWlfq_12chat_example.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics7PenaltyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportEECsvMXERwWlfq_12chat_example.exit.i.i unwind label %bb.e, !noalias !3023

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportEE9next_implKb0_ECsvMXERwWlfq_12chat_example.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics7PenaltyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics7PenaltyEECsvMXERwWlfq_12chat_example.exit.i.i.i.i.i unwind label %bb.f, !noalias !3023

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !3023
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics7PenaltyEECsvMXERwWlfq_12chat_example.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportEECsvMXERwWlfq_12chat_example.exit.i.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportEE9next_implKb0_ECsvMXERwWlfq_12chat_example.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics7PenaltyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t), !noalias !3023
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportEECsvMXERwWlfq_12chat_example.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportEECsvMXERwWlfq_12chat_example.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportEECsvMXERwWlfq_12chat_example.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 40
  %i.ab = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 48                       ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsvMXERwWlfq_12chat_example.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportEECsvMXERwWlfq_12chat_example.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !3021, !nonnull !7, !noundef !7
  %i.ak = sub i64 -48, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !3021
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsvMXERwWlfq_12chat_example.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsvMXERwWlfq_12chat_example.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportEECsvMXERwWlfq_12chat_example.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3034)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3034, !noundef !7 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsvMXERwWlfq_12chat_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3035)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3036, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !3036, !nonnull !7, !noundef !7 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !3037
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEE9next_implKb0_ECsvMXERwWlfq_12chat_example.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !3038
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEE9next_implKb0_ECsvMXERwWlfq_12chat_example.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEE9next_implKb0_ECsvMXERwWlfq_12chat_example.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -104 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i.i unwind label %bb.e, !noalias !3036

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEE9next_implKb0_ECsvMXERwWlfq_12chat_example.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsvMXERwWlfq_12chat_example.exit.i.i.i.i.i.i.i unwind label %bb.f, !noalias !3036

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !3036
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsvMXERwWlfq_12chat_example.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEE9next_implKb0_ECsvMXERwWlfq_12chat_example.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.t), !noalias !3036
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 104
  %i.ab = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 112                      ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsvMXERwWlfq_12chat_example.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !3034, !nonnull !7, !noundef !7
  %i.ak = sub i64 -112, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !3034
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsvMXERwWlfq_12chat_example.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsvMXERwWlfq_12chat_example.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEuEECsvMXERwWlfq_12chat_example.exit.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTTNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrtEuEENtNtNtBW_3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !7 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrtEuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsvMXERwWlfq_12chat_example.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 20
  %i.d = icmp slt i64 %.val1, 922337203685477580
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrtEuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsvMXERwWlfq_12chat_example.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrtEuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsvMXERwWlfq_12chat_example.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrtEuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsvMXERwWlfq_12chat_example.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashRNtNtBT_5types12SubscriptionEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 4 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !3041
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashRNtNtBT_5types12SubscriptionEE15into_allocationCsvMXERwWlfq_12chat_example.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = shl i64 %i.c, 5
  %2 = mul i64 %i.c, 33
  %i.h = add i64 %2, 49
  %i.i = sub nuw nsw i64 -32, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashRNtNtBT_5types12SubscriptionEE15into_allocationCsvMXERwWlfq_12chat_example.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashRNtNtBT_5types12SubscriptionEE15into_allocationCsvMXERwWlfq_12chat_example.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
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
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIduEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 4 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !3044
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIduEE15into_allocationCsvMXERwWlfq_12chat_example.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 24
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 49
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -32, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIduEE15into_allocationCsvMXERwWlfq_12chat_example.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIduEE15into_allocationCsvMXERwWlfq_12chat_example.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 4 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !3047
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashEEE15into_allocationCsvMXERwWlfq_12chat_example.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 104
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 129
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -112, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashEEE15into_allocationCsvMXERwWlfq_12chat_example.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashEEE15into_allocationCsvMXERwWlfq_12chat_example.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 4 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !3050
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdjEE15into_allocationCsvMXERwWlfq_12chat_example.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 88
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 113
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -96, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdjEE15into_allocationCsvMXERwWlfq_12chat_example.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdjEE15into_allocationCsvMXERwWlfq_12chat_example.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 4 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !3053
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduEE15into_allocationCsvMXERwWlfq_12chat_example.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, -80
  %2 = mul i64 %i.c, 81
  %i.h = add i64 %2, 97
  %3 = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr i8, ptr %3, i64 -80
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduEE15into_allocationCsvMXERwWlfq_12chat_example.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduEE15into_allocationCsvMXERwWlfq_12chat_example.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
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
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types12SubscriptionuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 5 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !3056
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types12SubscriptionuEE15into_allocationCsvMXERwWlfq_12chat_example.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %or.cond.i = icmp slt i64 %i.c, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i)
  %i.g = shl i64 %i.c, 3
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add nsw i64 %i.c, 33
  %i.j = add i64 %i.i, %i.h
  %i.k = sub nuw nsw i64 -16, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types12SubscriptionuEE15into_allocationCsvMXERwWlfq_12chat_example.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types12SubscriptionuEE15into_allocationCsvMXERwWlfq_12chat_example.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
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
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1S_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEB3m_EEbEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCsvMXERwWlfq_12chat_example(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3077)
  %i.a = load i64, ptr %0, align 8, !range !16, !alias.scope !3078, !noundef !7 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.a, -1
  br i1 %.not.i.i.i.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1P_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEB3j_EEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3079)
  %.not.i.i.i.i.i = icmp eq i64 %i.a, 2
  br i1 %.not.i.i.i.i.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1P_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEB3j_EEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3082)
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1P_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEB3j_EEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3084)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3085, !nonnull !7, !noundef !7
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !3085
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1P_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEB3j_EEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #29
  br label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1P_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEB3j_EEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1P_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEB3j_EEbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1L_NtNtNtB1U_4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCsvMXERwWlfq_12chat_example(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEEECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1L_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCsvMXERwWlfq_12chat_example(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsvMXERwWlfq_12chat_example.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsvMXERwWlfq_12chat_example.exit.i.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsvMXERwWlfq_12chat_example.exit.i.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECsvMXERwWlfq_12chat_example.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %.body.i.i
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECsvMXERwWlfq_12chat_example.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsvMXERwWlfq_12chat_example.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCsG258MDvU3F_3std4time7InstantEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1L_NtNtNtB1P_4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCsvMXERwWlfq_12chat_example(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCsG258MDvU3F_3std4time7InstantEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtB1M_4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsvMXERwWlfq_12chat_example.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsvMXERwWlfq_12chat_example.exit.i.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtCsG258MDvU3F_3std4time7InstantEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtB1M_4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashRNtNtBZ_5types12SubscriptionEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1L_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCsvMXERwWlfq_12chat_example(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashRNtNtBW_5types12SubscriptionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsvMXERwWlfq_12chat_example.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsvMXERwWlfq_12chat_example.exit.i.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashRNtNtBW_5types12SubscriptionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCsvMXERwWlfq_12chat_example(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsvMXERwWlfq_12chat_example.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsvMXERwWlfq_12chat_example.exit.i.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsvMXERwWlfq_12chat_example.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
end_hunk_0
