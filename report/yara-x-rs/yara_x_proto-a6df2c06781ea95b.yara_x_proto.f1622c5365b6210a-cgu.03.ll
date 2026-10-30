Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_proto-a6df2c06781ea95b.yara_x_proto.f1622c5365b6210a-cgu.03?download=true
inline.NumInlined: 180
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from:bb.a
          cleanup
  br label %.body100

.body100:                                         ; preds = %bb.at, %bb.av
  %eh.lpad-body101 = phi { ptr, i32 } [ %i.dk, %bb.av ], [ %i.di, %bb.at ]
  store i64 %i.df, ptr %i.i, align 8
  store ptr %i.dh, ptr %.sroa.381.0..sroa_idx, align 8
  store i64 %.sroa.589.0.copyload, ptr %.sroa.484.0..sroa_idx, align 8
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i
  store i64 %i.df, ptr %i.i, align 8
  store ptr %i.dh, ptr %.sroa.381.0..sroa_idx, align 8
  store i64 %.sroa.589.0.copyload, ptr %.sroa.484.0..sroa_idx, align 8
  br label %.backedge

bb.aw:                                            ; preds = %bb.ap
  %i.dl = load i64, ptr %i.e, align 8, !range !4, !noundef !5 ; 3 uses
  %i.dm = icmp eq i64 %i.dl, -1
  %i.dn = load ptr, ptr %.sroa.491.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.dm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aw
  %.sroa.592.0.copyload = load i64, ptr %.sroa.592.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i104 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body105 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i104: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit108 unwind label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i104
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body105

.body105:                                         ; preds = %bb.az, %bb.bb
  %eh.lpad-body106 = phi { ptr, i32 } [ %i.dq, %bb.bb ], [ %i.do, %bb.az ]
  store i64 %i.dl, ptr %i.h, align 8
  store ptr %i.dn, ptr %.sroa.381.0..sroa_idx82, align 8
  store i64 %.sroa.592.0.copyload, ptr %.sroa.484.0..sroa_idx85, align 8
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit108: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i104
  store i64 %i.dl, ptr %i.h, align 8
  store ptr %i.dn, ptr %.sroa.381.0..sroa_idx82, align 8
  store i64 %.sroa.592.0.copyload, ptr %.sroa.484.0..sroa_idx85, align 8
  br label %.backedge

bb.bc:                                            ; preds = %bb.an
  %.not = icmp eq ptr %i.de, null
  br i1 %.not, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.bc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit108, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit
  br label %bb.ah

.loopexit:                                        ; preds = %bb.bc, %bb.ar, %bb.ax, %bb.aj
  %.sroa.0.0 = phi ptr [ %i.da, %bb.aj ], [ %i.dn, %bb.ax ], [ %i.dh, %bb.ar ], [ %i.de, %bb.bc ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i110 unwind label %bb.bd

bb.bd:                                            ; preds = %.loopexit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bn unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i110: ; preds = %.loopexit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit114 unwind label %bb.bj

bb.bf:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBN_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dt = load i64, ptr %i.d, align 8, !range !4, !alias.scope !169, !noundef !5
  %i.du = icmp eq i64 %i.dt, -1
  br i1 %i.du, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIStwd7HrDO_12yara_x_proto.exit120, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit.i116 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit.i116: ; preds = %bb.bg
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIStwd7HrDO_12yara_x_proto.exit120

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIStwd7HrDO_12yara_x_proto.exit120: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit.i116, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.y

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i110
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit114: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit123 unwind label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit114
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit123: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit114
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.loopexit138

.thread:                                          ; preds = %.thread132.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body105, %.body100
  %.pn127 = phi { ptr, i32 } [ %eh.lpad-body101, %.body100 ], [ %eh.lpad-body106, %.body105 ], [ %lpad.loopexit.split-lp280, %.thread132.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #23
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %.thread
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.bn:                                            ; preds = %.thread, %bb.bd, %bb.bj
  %.pn95.ph = phi { ptr, i32 } [ %.pn127, %.thread ], [ %i.dx, %bb.bj ], [ %i.dr, %bb.bd ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #23
          to label %common.resume unwind label %bb.bm

.loopexit138:                                     ; preds = %bb.af, %bb.d, %bb.b, %._crit_edge, %bb.z, %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit123, %.loopexit235
  %.sroa.0.2 = phi ptr [ %i.cq, %.loopexit235 ], [ %i.ad, %._crit_edge ], [ %.sroa.0.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit123 ], [ %i.ch, %bb.w ], [ %i.am, %bb.z ], [ %i.ah, %bb.d ], [ %i.cv, %bb.af ], [ null, %bb.b ]
  ret ptr %.sroa.0.2
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !range !9, !noundef !5
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !noundef !5
  %i.g = or i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 70, %i.j
  %i.k = udiv i8 %.lhs.trunc.i.i, 7
  %narrow.i = add nuw nsw i8 %i.k, 1
  %i.l = zext nneg i8 %narrow.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.a = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 2 uses
  %i.p = or i64 %i.o, 1
  %i.q = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i8
  %.lhs.trunc19 = sub nuw nsw i8 70, %i.r
  %i.s = udiv i8 %.lhs.trunc19, 7
  %.zext20 = zext nneg i8 %i.s to i64
  %1 = add nuw nsw i64 %.sroa.0.0.a, 1
  %i.t = add i64 %1, %i.o
  %i.u = add i64 %i.t, %.zext20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.1 = phi i64 [ %i.u, %bb.d ], [ %.sroa.0.0.a, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBN_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v)
  %i.w = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringBK_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %.not1421 = icmp eq ptr %i.x, null
  br i1 %.not1421, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %i.y = phi ptr [ %i.az, %.lr.ph ], [ %i.x, %bb.e ]
  %i.z = phi { ptr, ptr } [ %i.ay, %.lr.ph ], [ %i.w, %bb.e ]
  %.sroa.0.222 = phi i64 [ %i.ax, %.lr.ph ], [ %.sroa.0.1, %bb.e ]
  %i.aa = extractvalue { ptr, ptr } %i.z, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5 ; 2 uses
  %i.ad = or i64 %i.ac, 1
  %i.ae = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = trunc nuw nsw i64 %i.ae to i8
  %.lhs.trunc = sub nuw nsw i8 70, %i.af
  %i.ag = udiv i8 %.lhs.trunc, 7
  %.zext = zext nneg i8 %i.ag to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.aj = or i64 %i.ai, 1
  %i.ak = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aj, i1 true)
  %i.al = trunc nuw nsw i64 %i.ak to i8
  %.lhs.trunc15 = sub nuw nsw i8 70, %i.al
  %i.am = udiv i8 %.lhs.trunc15, 7
  %.zext16 = zext nneg i8 %i.am to i64
  %i.an = add i64 %i.ac, 2
  %i.ao = add i64 %i.an, %i.ai
  %i.ap = add i64 %i.ao, %.zext
  %i.aq = add i64 %i.ap, %.zext16                 ; 2 uses
  %i.ar = or i64 %i.aq, 1
  %i.as = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.at = trunc nuw nsw i64 %i.as to i8
  %.lhs.trunc17 = sub nuw nsw i8 70, %i.at
  %i.au = udiv i8 %.lhs.trunc17, 7
  %narrow = add nuw nsw i8 %i.au, 1
  %i.av = zext nneg i8 %narrow to i64
  %i.aw = add i64 %i.aq, %.sroa.0.222
  %i.ax = add i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringBK_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0      ; 2 uses
  %.not14 = icmp eq ptr %i.az, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.sroa.0.2.lcssa = phi i64 [ %.sroa.0.1, %bb.e ], [ %i.ax, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = call noundef i64 @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
  %i.bc = add i64 %i.bb, %.sroa.0.2.lcssa         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = trunc i64 %i.bc to i32
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.bd, i32 noundef %i.be)
  ret i64 %i.bc
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message16default_instance() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageE15get_or_try_initNCINvB2_11get_or_initNvMs_BS_BQ_3newE0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBU_(ptr noundef nonnull align 8 @_RNvNvXs0_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB7_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message16default_instance8instance)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message26write_to_with_cached_sizes(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !range !9, !noundef !5
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !noundef !5
  %i.g = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream11write_int32(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, i32 noundef %i.f) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i64, ptr %0, align 8, !range !4, !noundef !5
  %.not29 = icmp eq i64 %i.h, -1
  br i1 %.not29, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.i, %bb.e, %bb.b, %bb.m
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.g, %bb.b ], [ %.sroa.0.1, %bb.m ], [ %i.z, %bb.i ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  %i.m = tail call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_string(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l) ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBN_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n)
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %bb.f
  %i.o = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringBK_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 3 uses
  %.not31 = icmp eq ptr %i.p, null
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %i.x = call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 26) ; 2 uses
  %.not33 = icmp eq ptr %i.x, null
  br i1 %.not33, label %bb.j, label %bb.m

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
  br label %bb.d

bb.j:                                             ; preds = %bb.h
  %i.aa = or i64 %i.w, 1
  %i.ab = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %.lhs.trunc = sub nuw nsw i8 70, %i.ac
  %i.ad = udiv i8 %.lhs.trunc, 7
  %.zext = zext nneg i8 %i.ad to i64
  %i.ae = or i64 %i.t, 1
  %i.af = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i8
  %.lhs.trunc37 = sub nuw nsw i8 70, %i.ag
  %i.ah = udiv i8 %.lhs.trunc37, 7
  %.zext38 = zext nneg i8 %i.ah to i64
  %i.ai = add i64 %i.w, %i.t
  %i.aj = add i64 %i.ai, %.zext38
  %i.ak = add i64 %i.aj, %.zext
  %i.al = trunc i64 %i.ak to i32
  %i.am = add i32 %i.al, 2
  %i.an = call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.am) ; 2 uses
  %.not34 = icmp eq ptr %i.an, null
  br i1 %.not34, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.ap = load i64, ptr %i.s, align 8, !noundef !5
  %i.aq = call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_string(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.ap) ; 2 uses
  %.not35 = icmp eq ptr %i.aq, null
  br i1 %.not35, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.as = load i64, ptr %i.v, align 8, !noundef !5
  %i.at = call noundef align 8 ptr @_RNvMNtCsg2CeFYmfPbl_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_string(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.as) ; 2 uses
  %.not36 = icmp eq ptr %i.at, null
  br i1 %.not36, label %bb.g, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %.sroa.0.1 = phi ptr [ %i.aq, %bb.k ], [ %i.x, %bb.h ], [ %i.an, %bb.j ], [ %i.at, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCsg2CeFYmfPbl_8protobuf7message7Message3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !176
  store i64 -1, ptr %i.a, align 8, !noalias !176
  %i.b = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @52)
          to label %_RNvMs_NtCskIStwd7HrDO_12yara_x_proto9test_jsonNtB4_10SubMessage3new.exit unwind label %bb.b, !noalias !176 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #23
          to label %bb.d unwind label %bb.c, !noalias !176

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !176
end_hunk_0
