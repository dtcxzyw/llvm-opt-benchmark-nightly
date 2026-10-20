Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.242?download=true
inline.NumInlined: 395
inline.NumDeleted: 202
begin_hunk_0_@_RNvXsx_Csct6HaUIs3yu_8smallvecINtB5_8SmallVecANtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field13CallsiteMatchj8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field13CallsiteMatchEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field13CallsiteMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field13CallsiteMatchEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field13CallsiteMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field13CallsiteMatchECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field13CallsiteMatchECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field13CallsiteMatchECsl8OoimOLbh_6qdrant.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field13CallsiteMatchECsl8OoimOLbh_6qdrant.exit.i.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field13CallsiteMatchEECsl8OoimOLbh_6qdrant.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_Csct6HaUIs3yu_8smallvecINtB5_8SmallVecANtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchj8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(520) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 8
  br i1 %i.d, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit.i.preheader

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit.i.preheader: ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.c
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit.i.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i2 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit.i.preheader ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.0.0.i2
  %i.h = add nuw nsw i64 %.sroa.0.0.i2, 1         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2QK82Vyr5sR_12tracing_core5field5FieldTNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field10ValueMatchINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEEEENtNtNtB2O_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit7.i: ; preds = %.lr.ph4
  %i.j = add nuw nsw i64 %.sroa.0.1.i3, 1         ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.c
  br i1 %i.k, label %common.resume, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = icmp eq i64 %i.h, %i.c
  br i1 %i.m, label %common.resume, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit7.i
  %.sroa.0.1.i3 = phi i64 [ %i.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.0.1.i3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2QK82Vyr5sR_12tracing_core5field5FieldTNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field10ValueMatchINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEEEENtNtNtB2O_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit7.i unwind label %bb.c

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit7.i, %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.l, %bb.b ], [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit7.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %.lr.ph4
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.s, ptr %i.u, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchECsl8OoimOLbh_6qdrant.exit.i.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchEECsl8OoimOLbh_6qdrant.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_Csct6HaUIs3yu_8smallvecINtB5_8SmallVecANtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9Directivej8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(648) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 8
  br i1 %i.d, label %bb.e, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveECsl8OoimOLbh_6qdrant.exit, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.c
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveECsl8OoimOLbh_6qdrant.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i2 = phi i64 [ %i.h, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.0.i2
  %i.h = add nuw nsw i64 %.sroa.0.0.i2, 1         ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g)
          to label %.preheader unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph4
  %i.i = add nuw nsw i64 %.sroa.0.1.i3, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.c
  br i1 %i.j, label %common.resume, label %.lr.ph4

bb.c:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = icmp eq i64 %i.h, %i.c
  br i1 %i.l, label %common.resume, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.c, %bb.b
  %.sroa.0.1.i3 = phi i64 [ %i.i, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.1.i3
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(80) %i.m) #19
          to label %bb.b unwind label %bb.d

common.resume:                                    ; preds = %bb.b, %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.k, %bb.c ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.lr.ph4
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.o, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.q, ptr %i.s, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveEECsl8OoimOLbh_6qdrant.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveECsl8OoimOLbh_6qdrant.exit: ; preds = %.preheader, %.preheader.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveEECsl8OoimOLbh_6qdrant.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_Csct6HaUIs3yu_8smallvecINtB5_8SmallVecATNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBN_3vec3VechEEj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %1 = icmp eq i64 %i.c, 0
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBH_3vec3VechEEECsl8OoimOLbh_6qdrant.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBG_3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBH_3vec3VechEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

2:                                                ; preds = %.lr.ph4
  %3 = add nuw nsw i64 %.sroa.0.1.i3, 1           ; 2 uses
  %4 = icmp eq i64 %3, %i.c
  br i1 %4, label %common.resume, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %5 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = icmp eq i64 %i.c, 1
  br i1 %i.e, label %common.resume, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.b, %2
  %.sroa.0.1.i3 = phi i64 [ %3, %2 ], [ 1, %bb.b ] ; 2 uses
  %6 = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.1.i3
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBG_3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %6) #19
          to label %2 unwind label %7

common.resume:                                    ; preds = %2, %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %5, %bb.b ], [ %5, %2 ]
  resume { ptr, i32 } %common.resume.op

7:                                                ; preds = %.lr.ph4
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %i.j, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtB7_6string6StringIBw_hEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringIBC_hEEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtB7_3vec3VechEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringIBC_hEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtB7_3vec3VechEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBH_3vec3VechEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBH_3vec3VechEEECsl8OoimOLbh_6qdrant.exit: ; preds = %.preheader.preheader, %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringIBC_hEEEECsl8OoimOLbh_6qdrant.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_Csct6HaUIs3yu_8smallvecINtB5_8SmallVecAtj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECsl8OoimOLbh_6qdrant.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVectEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVectEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECsl8OoimOLbh_6qdrant.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs6EFb6a2W5dE_10actix_http10extensions10ExtensionsEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCs4hE0XgIM7pO_18tracing_subscriber8registry7SpanRefINtNtNtBK_5layer7layered7LayeredINtNtBK_6reload5LayerINtNtNtBK_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_5boxed3BoxDINtB1E_5LayerNtNtBI_7sharded8RegistryENtNtB3a_6marker4SendNtB4E_4SyncEL_EENtNtB2v_3env9EnvFilterB4d_EB4d_EB4d_EEENtNtNtB3a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCs4hE0XgIM7pO_18tracing_subscriber8registry7SpanRefNtNtBI_7sharded8RegistryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbEyXj2whuwq_10actix_cors5inner8OriginFnENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter9directive15StaticDirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field13CallsiteMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtB7_6string6StringIBw_hEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs6EFb6a2W5dE_10actix_http10extensions10ExtensionsEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs4hE0XgIM7pO_18tracing_subscriber8registry7SpanRefINtNtNtBR_5layer7layered7LayeredINtNtBR_6reload5LayerINtNtNtBR_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_5boxed3BoxDINtB1L_5LayerNtNtBP_7sharded8RegistryENtNtB3h_6marker4SendNtB4L_4SyncEL_EENtNtB2C_3env9EnvFilterB4k_EB4k_EB4k_EEENtNtNtB3h_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs4hE0XgIM7pO_18tracing_subscriber8registry7SpanRefNtNtBP_7sharded8RegistryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbEyXj2whuwq_10actix_cors5inner8OriginFnENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter9directive15StaticDirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field13CallsiteMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field9SpanMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtB7_3vec3VechEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtCshvI5NgtnhMI_12sharded_slab4poolINtB5_3RefNtNtNtCs4hE0XgIM7pO_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2QK82Vyr5sR_12tracing_core5field5FieldNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field10ValueMatchEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2QK82Vyr5sR_12tracing_core5field5FieldTNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env5field10ValueMatchINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEEEENtNtNtB2O_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17raw_vectors_serde7ByteVecEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs4NSHK7GLW4I_10serde_core2deReNtB5_8Expected3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNvMNtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter3env9directiveNtBR_9Directive9to_staticINtB7_5FnMutTRB1Q_EE8call_mutCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtB4_6reload5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB12_5LayerNtNtB2_7sharded8RegistryENtNtB2y_6marker4SendNtB4j_4SyncEL_EENtNtB1T_3env9EnvFilterB3S_EB3S_EB3S_EENtNtNtNtB2y_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsbEyXj2whuwq_10actix_cors5inner8OriginFnEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsbEyXj2whuwq_10actix_cors5inner8OriginFnEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1w_3vec3VechEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
