inline.NumInlined: 1838
inline.NumDeleted: 674
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #29
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.j, %bb.i, %bb.f, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !range !703, !noundef !3
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.o, label %bb.n

.body:                                            ; preds = %bb.l, %bb.k, %bb.m, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.v, %bb.m ], [ %i.p, %bb.k ], [ %i.p, %bb.l ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i8, ptr %i.ab, align 8, !range !703, !noundef !3
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.r, label %bb.p

bb.n:                                             ; preds = %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit
  store i8 0, ptr %i.x, align 8
  br label %common.ret

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.ae)
          to label %bb.n unwind label %bb.q

bb.p:                                             ; preds = %bb.r, %bb.q, %.body
  %.pn2 = phi { ptr, i32 } [ %i.ag, %bb.q ], [ %.pn, %bb.r ], [ %.pn, %.body ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.af, align 8
  resume { ptr, i32 } %.pn2

bb.q:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %.body
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.ah) #31
          to label %bb.p unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.b = load i8, ptr %i.a, align 2, !range !680, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.f
    i8 3, label %bb.b
  ]

common.ret:                                       ; preds = %bb.a, %bb.i
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #31
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !703, !noundef !3
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.j, label %bb.i

.body:                                            ; preds = %bb.g, %bb.c, %bb.h
  %.pn = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.g, %bb.g ], [ %i.d, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i8, ptr %i.m, align 8, !range !703, !noundef !3
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.m, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit
  store i8 0, ptr %i.i, align 8
  br label %common.ret

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.q)
          to label %bb.i unwind label %bb.l

bb.k:                                             ; preds = %bb.m, %bb.l, %.body
  %.pn2 = phi { ptr, i32 } [ %i.s, %bb.l ], [ %.pn, %bb.m ], [ %.pn, %.body ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.r, align 8
  resume { ptr, i32 } %.pn2

bb.l:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %.body
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.t) #31
          to label %bb.k unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBO_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry0EBS_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.b = load i8, ptr %i.a, align 1, !range !618, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 5, label %bb.h
    i8 3, label %bb.b
    i8 4, label %bb.g
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_commit_entry0EBO_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7072
  %i.d = load i8, ptr %i.c, align 8, !range !120, !noundef !3
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_commit_entry0EBO_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7066
  %i.f = load i8, ptr %i.e, align 2, !range !120, !noundef !3
  %cond.i.i = icmp eq i8 %i.f, 3
  br i1 %cond.i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_commit_entry0EBO_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCskW4GF8MLwaI_6backon5retry5RetryNtNtNtBL_7backoff11exponential18ExponentialBackoffNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation8get_item16__get_item_output13GetItemOutputINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtB2a_12GetItemErrorNtNtNtB3I_4http8response8ResponseENCNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5K_18DynamoDbLockClient16get_commit_entry000NCB5C_0NtNtBL_5sleep12TokioSleeperNCB5C_s_0FG_RL0_B3B_NtNtB4_4time8DurationEuFG_RL0_B3B_INtNtB4_6option6OptionB7Q_EEB8o_EEB5K_(ptr noundef nonnull align 8 %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7064
  store i8 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7065
  store i8 0, ptr %i.j, align 1
  br label %.body

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7064
  store i8 0, ptr %i.k, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_commit_entry0EBO_.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBN_18S3DynamoDbLogStore12repair_entry0EBR_(ptr noundef nonnull align 8 %i.l)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.m)
          to label %bb.q unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_commit_entry0EBO_.exit.sink.split: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit, %bb.f
  %.sink15 = phi i64 [ 7065, %bb.f ], [ 88, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit ]
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i8 0, ptr %1, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_commit_entry0EBO_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_commit_entry0EBO_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_commit_entry0EBO_.exit.sink.split, %bb.t, %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.n, align 8
  br label %common.ret

.body:                                            ; preds = %bb.e, %.body7, %bb.u, %.body11
  %.pn5 = phi { ptr, i32 } [ %i.al, %.body11 ], [ %.pn, %.body7 ], [ %.pn, %bb.u ], [ %i.h, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.o, align 8
  resume { ptr, i32 } %.pn5

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_(ptr noalias noundef align 8 dereferenceable(56) %i.q) #31
          to label %.body7 unwind label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %.body7 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body7

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit: ; preds = %bb.q, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !range !33, !noundef !3
  %.not4 = icmp eq i64 %i.w, -9223372036854775807
  br i1 %.not4, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_commit_entry0EBO_.exit.sink.split

bb.n:                                             ; preds = %bb.p, %bb.u, %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

.body7:                                           ; preds = %bb.o, %bb.p, %bb.m, %bb.k, %bb.s, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.s ], [ %i.s, %bb.k ], [ %i.p, %bb.i ], [ %i.u, %bb.m ], [ %i.aa, %bb.p ], [ %i.aa, %bb.o ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !33, !noundef !3
  %.not = icmp eq i64 %i.z, -9223372036854775807
  br i1 %.not, label %bb.u, label %.body

bb.o:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !710, !nonnull !3, !noundef !3
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !710
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.p, label %.body7

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #32
          to label %.body7 unwind label %bb.n

bb.q:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !717, !nonnull !3, !noundef !3
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !717
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body7

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws6errors15LockClientErrorEBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_commit_entry0EBO_.exit unwind label %.body11

.body11:                                          ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %.body7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryENtNtB1q_6errors15LockClientErrorEEB1q_(ptr noalias noundef align 8 dereferenceable(56) %i.y) #31
          to label %.body unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBO_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18abort_commit_entry0EBS_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.b = load i8, ptr %i.a, align 1, !range !680, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.g
    i8 4, label %bb.l
  ]

common.ret:                                       ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !718, !noundef !3 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body9, %bb.v, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %.pn3, %bb.v ], [ %.pn3, %.body9 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %common.ret

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !727, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !727, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !727, !noundef !3
  tail call void %i.i(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.l, i64 noundef %i.n), !inline_history !728
  br label %common.ret

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7776
  %i.p = load i8, ptr %i.o, align 8, !range !120, !noundef !3
  %cond.i = icmp eq i8 %i.p, 3
  br i1 %cond.i, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient19delete_commit_entry0EBO_.exit

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7770
  %i.r = load i8, ptr %i.q, align 2, !range !120, !noundef !3
  %cond.i.i = icmp eq i8 %i.r, 3
  br i1 %cond.i.i, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient19delete_commit_entry0EBO_.exit

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCskW4GF8MLwaI_6backon5retry5RetryNtNtNtBL_7backoff11exponential18ExponentialBackoffuINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11delete_item15DeleteItemErrorNtNtNtB2e_4http8response8ResponseENCNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5c_18DynamoDbLockClient19delete_commit_entry000NCB54_0NtNtBL_5sleep12TokioSleeperNCB54_s_0FG_RL0_B27_NtNtB4_4time8DurationEuFG_RL0_B27_INtNtB4_6option6OptionB7l_EEB7T_EEB5c_(ptr noundef nonnull align 8 %i.s)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7768
  store i8 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7769
  store i8 0, ptr %i.v, align 1
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7768
  store i8 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 7769
  store i8 0, ptr %i.x, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient19delete_commit_entry0EBO_.exit

bb.l:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.y)
          to label %bb.q unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient19delete_commit_entry0EBO_.exit: ; preds = %bb.q, %bb.r, %bb.k, %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient19delete_commit_entry0EBO_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body9 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient19delete_commit_entry0EBO_.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.t

.body:                                            ; preds = %bb.o, %bb.p, %bb.j, %bb.s
  %.pn = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.am, %bb.s ], [ %i.ad, %bb.o ], [ %i.ad, %bb.p ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac) #31
          to label %.body9 unwind label %bb.u

bb.o:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !735, !nonnull !3, !noundef !3
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !735
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.p, label %.body

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #32
          to label %.body unwind label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !742, !nonnull !3, !noundef !3
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !742
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient19delete_commit_entry0EBO_.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient19delete_commit_entry0EBO_.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body9:                                           ; preds = %bb.t, %bb.m, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.aq, %bb.t ], [ %i.aa, %bb.m ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !noundef !3
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %common.resume, label %bb.v

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body9

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noundef !3 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %common.ret, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit15

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit15: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !noalias !752, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !752, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !752, !noundef !3
  tail call void %i.av(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.ay, i64 noundef %i.ba), !inline_history !728
  br label %common.ret

bb.u:                                             ; preds = %bb.p, %bb.v, %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.v:                                             ; preds = %.body9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.an) #31
          to label %common.resume unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBO_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0EBS_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.b = load i8, ptr %i.a, align 1, !range !618, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 5, label %bb.i
    i8 3, label %bb.b
    i8 4, label %bb.h
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_latest_entry0EBO_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.d = load i8, ptr %i.c, align 8, !range !120, !noundef !3
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_latest_entry0EBO_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8184
  %i.f = load i8, ptr %i.e, align 8, !range !120, !noundef !3
  %cond.i.i = icmp eq i8 %i.f, 3
  br i1 %cond.i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_latest_entry0EBO_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8178
  %i.h = load i8, ptr %i.g, align 2, !range !120, !noundef !3
  %cond.i.i.i = icmp eq i8 %i.h, 3
  br i1 %cond.i.i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_latest_entry0EBO_.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCskW4GF8MLwaI_6backon5retry5RetryNtNtNtBL_7backoff11exponential18ExponentialBackoffNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation5query13__query_output11QueryOutputINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtB2a_10QueryErrorNtNtNtB3A_4http8response8ResponseENCNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5A_18DynamoDbLockClient18get_latest_entries000NCB5s_0NtNtBL_5sleep12TokioSleeperNCB5s_s_0FG_RL0_B3t_NtNtB4_4time8DurationEuFG_RL0_B3t_INtNtB4_6option6OptionB7I_EEB8g_EEB5A_(ptr noundef nonnull align 8 %i.i)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8176
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8177
  store i8 0, ptr %i.l, align 1
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8176
  store i8 0, ptr %i.m, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB23_5error5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBN_18S3DynamoDbLogStore12repair_entry0EBR_(ptr noundef nonnull align 8 %i.n)
          to label %bb.m unwind label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.p = load i8, ptr %i.o, align 1, !range !120, !noundef !3
  %cond.i3 = icmp eq i8 %i.p, 3
  br i1 %cond.i3, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_latest_entry0EBO_.exit

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1L_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB23_5error5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.s, align 8
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB23_5error5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.j, %bb.g
  %.sink8 = phi i64 [ 8177, %bb.g ], [ 136, %bb.j ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8
  store i8 0, ptr %i.t, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_latest_entry0EBO_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_latest_entry0EBO_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB23_5error5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.i, %bb.d, %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.u, align 8
  br label %common.ret

.body:                                            ; preds = %bb.k, %bb.p, %bb.n, %bb.f, %bb.l
  %.pn = phi { ptr, i32 } [ %i.z, %bb.n ], [ %i.w, %bb.l ], [ %i.j, %bb.f ], [ %i.r, %bb.k ], [ %i.ab, %bb.p ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.v, align 8
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_(ptr noalias noundef align 8 dereferenceable(56) %i.x) #31
          to label %.body unwind label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16get_latest_entry0EBO_.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBO_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry0EBS_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.b = load i8, ptr %i.a, align 1, !range !680, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.g
    i8 4, label %bb.l
  ]

common.ret:                                       ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !753, !noundef !3 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body15, %bb.u, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %.pn5, %bb.u ], [ %.pn5, %.body15 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %common.ret

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !762, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !762, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !762, !noundef !3
  tail call void %i.i(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.l, i64 noundef %i.n), !inline_history !728
  br label %common.ret

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7824
  %i.p = load i8, ptr %i.o, align 8, !range !120, !noundef !3
  %cond.i = icmp eq i8 %i.p, 3
  br i1 %cond.i, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16put_commit_entry0EBO_.exit

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7818
  %i.r = load i8, ptr %i.q, align 2, !range !120, !noundef !3
  %cond.i.i = icmp eq i8 %i.r, 3
  br i1 %cond.i.i, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16put_commit_entry0EBO_.exit

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCskW4GF8MLwaI_6backon5retry5RetryNtNtNtBL_7backoff11exponential18ExponentialBackoffuINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation8put_item12PutItemErrorNtNtNtB2e_4http8response8ResponseENCNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB55_18DynamoDbLockClient16put_commit_entry000NCB4X_0NtNtBL_5sleep12TokioSleeperNCB4X_s_0FG_RL0_B27_NtNtB4_4time8DurationEuFG_RL0_B27_INtNtB4_6option6OptionB7b_EEB7J_EEB55_(ptr noundef nonnull align 8 %i.s)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7816
  store i8 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7817
  store i8 0, ptr %i.v, align 1
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7816
  store i8 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 7817
  store i8 0, ptr %i.x, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16put_commit_entry0EBO_.exit

bb.l:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBN_18S3DynamoDbLogStore12repair_entry0EBR_(ptr noundef nonnull align 8 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16put_commit_entry0EBO_.exit unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16put_commit_entry0EBO_.exit: ; preds = %bb.k, %bb.h, %bb.g, %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i12 unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16put_commit_entry0EBO_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %.body13 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i12: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBO_18DynamoDbLockClient16put_commit_entry0EBO_.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit unwind label %bb.p

.body:                                            ; preds = %bb.j, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.t, %bb.j ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_(ptr noalias noundef align 8 dereferenceable(56) %i.ac) #31
          to label %.body13 unwind label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body13:                                          ; preds = %bb.p, %bb.m, %.body
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.af, %bb.p ], [ %i.aa, %bb.m ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae) #31
          to label %.body15 unwind label %bb.t

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i12
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryEBI_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body15 unwind label %bb.r

end_hunk_0
