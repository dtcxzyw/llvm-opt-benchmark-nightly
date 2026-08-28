Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.13?download=true
begin_hunk_0_@_RNvNtNtCsfG1pxJcRFT5_4raft10confchange7restore7restore:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010)
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.010, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false)
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %.sroa.912.136..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.912.136..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.010, i64 136, i1 false)
  store i64 %i.ef, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010)
  invoke void @_RNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB5_15ProgressTracker10apply_conf(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %2)
          to label %bb.x unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit

bb.x:                                             ; preds = %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit60
  %.sroa.016.2 = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit60 ], [ 0, %bb.w ] ; 3 uses
  store i64 -1, ptr %0, align 8
  br i1 %.not37.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit, label %bb.aj

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit75, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit57, %bb.v
  %.sroa.016.3 = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit75 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit57 ], [ 0, %bb.v ] ; 3 uses
  br i1 %.not37.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit80, label %bb.ba

bb.z:                                             ; preds = %bb.t
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.dj, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft(ptr %.val50) #16
          to label %.critedge unwind label %bb.ag

bb.aa:                                            ; preds = %bb.t
  %i.ei = load i64, ptr %i.di, align 8, !range !80, !noundef !5 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, -1
  br i1 %i.ej, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07, i64 32, i1 false)
  %.val49 = load ptr, ptr %i.dj, align 8          ; 4 uses
  %i.ek = icmp eq ptr %.val49, null
  br i1 %i.ek, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ab
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val49)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i unwind label %bb.ac

bb.ac:                                            ; preds = %.split.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49, i64 noundef 32, i64 noundef 8) #14
  br label %.critedge

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i: ; preds = %.split.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49, i64 noundef 32, i64 noundef 8) #14
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.07, ptr noundef nonnull align 8 dereferenceable(136) %i.j, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.233.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.527.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.l, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.07, i64 136, i1 false)
  store i64 %i.ei, ptr %i.k, align 8
  %.val48 = load ptr, ptr %i.dj, align 8          ; 4 uses
  %i.em = icmp eq ptr %.val48, null
  br i1 %i.em, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit56, label %.split.i.i52

.split.i.i52:                                     ; preds = %bb.ad
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val48)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i53 unwind label %bb.af

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i53: ; preds = %.split.i.i52
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48, i64 noundef 32, i64 noundef 8) #14
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit56

.body54:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit56
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit56: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i53, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  invoke void @_RNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB5_15ProgressTracker10apply_conf(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %2)
          to label %bb.ae unwind label %.body54

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.096)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.698)
  %i.eo = load ptr, ptr %.sroa.76.0..sroa_idx, align 8, !alias.scope !81, !noalias !78, !nonnull !5, !noundef !5
  %i.ep = load ptr, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !81, !noalias !78, !nonnull !5, !noundef !5 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.eo
  br i1 %i.eq, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit

bb.af:                                            ; preds = %.split.i.i52
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48, i64 noundef 32, i64 noundef 8) #14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyNtNtNtCsfG1pxJcRFT5_4raft10confchange7changer13MapChangeTypeEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #16
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %.critedge45, %.critedge, %bb.z, %bb.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread106.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread, %bb.az, %bb.ay, %bb.ah, %bb.af
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.ah:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfG1pxJcRFT5_4raft7tracker13ConfigurationEBF_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.l) #16
          to label %.critedge unwind label %bb.ag

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.096)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.698)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit57 unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit57: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.y

.critedge45:                                      ; preds = %.body72, %bb.av, %bb.as, %bb.az
  %.pn38 = phi { ptr, i32 } [ %i.fi, %.body72 ], [ %i.fm, %bb.az ], [ %i.fg, %bb.av ], [ %i.fc, %bb.as ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread106.thread unwind label %bb.ag

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit58: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit58.lr.ph, %bb.ax
  %i.et = phi ptr [ %i.dl, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit58.lr.ph ], [ %i.fk, %bb.ax ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store ptr %i.eu, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !83, !noalias !86
  %.sroa.6.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %.sroa.6.0.copyload85 = load i8, ptr %.sroa.6.0..sroa_idx84, align 8, !noalias !83 ; 2 uses
  %.not36 = icmp eq i8 %.sroa.6.0.copyload85, -1
  br i1 %.not36, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit58.thread, label %bb.ai

bb.ai:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit58
  %.sroa.8.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.et, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.087)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.689)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.087, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.689, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx86, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %1, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.087, i64 24, i1 false)
  store i8 %.sroa.6.0.copyload85, ptr %.sroa.5.0..sroa_idx88, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.689.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.689, i64 7, i1 false)
  invoke void @_RNvMs_NtNtCsfG1pxJcRFT5_4raft10confchange7changerNtB4_7Changer6simple(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 %i.o, i64 noundef 1)
          to label %bb.at unwind label %bb.as

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit58.thread: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit58, %bb.ax, %bb.s
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit60 unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit60: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit58.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.al, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.ev = trunc nuw i8 %.sroa.016.2 to i1
  br i1 %i.ev, label %bb.ao, label %bb.ar

bb.aj:                                            ; preds = %bb.x
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread106 unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread106: ; preds = %bb.bb, %bb.ak, %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit
  %.sroa.016.4 = phi i8 [ %.sroa.016.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit ], [ %.sroa.016.0104, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread ], [ %.sroa.016.2, %bb.ak ], [ %.sroa.016.5, %bb.an ], [ %.sroa.016.3, %bb.bb ]
  %.pn42 = phi { ptr, i32 } [ %i.dw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit ], [ %.pn40105, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread ], [ %i.ew, %bb.ak ], [ %i.ez, %bb.an ], [ %i.fo, %bb.bb ] ; 2 uses
  %i.ey = trunc nuw i8 %.sroa.016.4 to i1
  br i1 %i.ey, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread106.thread, label %common.resume

bb.an:                                            ; preds = %bb.bc, %bb.al
  %.sroa.016.5 = phi i8 [ %.sroa.016.3, %bb.bc ], [ %.sroa.016.2, %bb.al ]
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread106

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.sink.split unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

.sink.split:                                      ; preds = %bb.ao, %bb.be
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.as:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %.val47 = load ptr, ptr %i.dt, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft(ptr %.val47) #16
          to label %.critedge45 unwind label %bb.ag

bb.at:                                            ; preds = %bb.ai
  %i.fd = load i64, ptr %i.ds, align 8, !range !80, !noundef !5 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, -1
  br i1 %i.fe, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01, i64 32, i1 false)
  %.val46 = load ptr, ptr %i.dt, align 8          ; 4 uses
  %i.ff = icmp eq ptr %.val46, null
  br i1 %i.ff, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit69, label %.split.i.i65

.split.i.i65:                                     ; preds = %bb.au
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val46)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i66 unwind label %bb.av

bb.av:                                            ; preds = %.split.i.i65
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46, i64 noundef 32, i64 noundef 8) #14
  br label %.critedge45

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i66: ; preds = %.split.i.i65
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46, i64 noundef 32, i64 noundef 8) #14
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit69

bb.aw:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(136) %i.q, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.s, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.01, i64 136, i1 false)
  store i64 %i.fd, ptr %i.r, align 8
  %.val = load ptr, ptr %i.dt, align 8            ; 4 uses
  %i.fh = icmp eq ptr %.val, null
  br i1 %i.fh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit74, label %.split.i.i70

.split.i.i70:                                     ; preds = %bb.aw
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i71 unwind label %bb.ay

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i71: ; preds = %.split.i.i70
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #14
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit74

.body72:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit74
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.critedge45

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit74: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i71, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  invoke void @_RNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB5_15ProgressTracker10apply_conf(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, i64 noundef %2)
          to label %bb.ax unwind label %.body72

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.087)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.689)
  %i.fj = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !88, !noalias !86, !nonnull !5, !noundef !5
  %i.fk = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !88, !noalias !86, !nonnull !5, !noundef !5 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.fj
  br i1 %i.fl, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit58.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit58

bb.ay:                                            ; preds = %.split.i.i70
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyNtNtNtCsfG1pxJcRFT5_4raft10confchange7changer13MapChangeTypeEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #16
          to label %bb.az unwind label %bb.ag

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfG1pxJcRFT5_4raft7tracker13ConfigurationEBF_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.s) #16
          to label %.critedge45 unwind label %bb.ag

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit69: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i66, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.087)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.689)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit75 unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit75: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSinglej1_ECsfG1pxJcRFT5_4raft.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.y

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit80: ; preds = %bb.bc, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.fn = trunc nuw i8 %.sroa.016.3 to i1
  br i1 %i.fn, label %bb.be, label %bb.ar

bb.ba:                                            ; preds = %bb.y
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread106 unwind label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit80 unwind label %bb.an

bb.bd:                                            ; preds = %bb.bb
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit80
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.sink.split unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread: ; preds = %.critedge, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit
  %.pn40105 = phi { ptr, i32 } [ %i.dw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit ], [ %.pn, %.critedge ]
  %.sroa.016.0104 = phi i8 [ %.sroa.016.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit ], [ 0, %.critedge ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread106 unwind label %bb.ag

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread106.thread: ; preds = %.critedge45, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread106
  %.pn42119 = phi { ptr, i32 } [ %.pn42, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft.exit.thread106 ], [ %.pn38, %.critedge45 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #16
          to label %common.resume unwind label %bb.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownShINtB2_10EquivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXNtNtCskKLDkoKarTP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsfG1pxJcRFT5_4raft.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 range(i64 0, -9223372036854775808) %1), !alias.scope !90
  %i.d = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXNtNtCskKLDkoKarTP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsfG1pxJcRFT5_4raft.exit

_RNvXNtNtCskKLDkoKarTP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !5
  %.val1 = load i64, ptr %1, align 8, !noundef !5
  %i.a = icmp eq i64 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 1, 3) i8 @_RNvXNtNtNtCskKLDkoKarTP_4core3ops8function5implsRNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtBT_15ProgressTracker10has_quorum0INtB4_2FnTyEE4callBV_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !4, !noundef !5
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !4, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !94, !noalias !97, !noundef !5
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.g = call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !105, !noalias !106, !noundef !5 ; 2 uses
  %i.l = load ptr, ptr %.val, align 8, !alias.scope !105, !noalias !106, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.k  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !109 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.val2.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !112, !noalias !115, !noundef !5
  %i.y = icmp eq i64 %1, %.val2.i.i.i.i
  br i1 %i.y, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit, label %bb.d, !prof !119

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit, !prof !120

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i.i, %i.ae
  br label %bb.c

_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker10has_quorum0B9_.exit: ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i, %bb.a
  %.sroa.0.1.i.i = phi i8 [ 2, %bb.a ], [ 1, %.lr.ph.i.i.i ], [ 2, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.1.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXNtNtNtCskKLDkoKarTP_4core3ops8function5implsRNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtBT_15ProgressTracker11vote_result0INtB4_2FnTyEE4callBV_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !4, !noundef !5
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !4, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !121, !noalias !124, !noundef !5
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.g = call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !132, !noalias !133, !noundef !5 ; 2 uses
  %i.l = load ptr, ptr %.val, align 8, !alias.scope !132, !noalias !133, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.k  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !136 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val2.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !139, !noalias !142, !noundef !5
  %i.y = icmp eq i64 %1, %.val2.i.i.i.i
  br i1 %i.y, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE3getyECsfG1pxJcRFT5_4raft.exit.i, label %bb.d, !prof !119

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit, !prof !120

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i.i, %i.ae
  br label %bb.c

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE3getyECsfG1pxJcRFT5_4raft.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ah = load i8, ptr %i.ag, align 1, !range !24, !noundef !5
  br label %_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit

_RNCNvMs0_NtCsfG1pxJcRFT5_4raft7trackerNtB7_15ProgressTracker11vote_result0B9_.exit: ; preds = %._crit_edge.i.i.i, %bb.a, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE3getyECsfG1pxJcRFT5_4raft.exit.i
  %.sroa.0.0.i = phi i8 [ %i.ah, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE3getyECsfG1pxJcRFT5_4raft.exit.i ], [ 2, %bb.a ], [ 2, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !4, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
