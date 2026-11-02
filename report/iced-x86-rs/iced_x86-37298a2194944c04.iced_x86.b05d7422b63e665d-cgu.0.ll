Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings:bb.a
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.k, i64 noundef range(i64 1, 9) 8) #41, !noalias !4427 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.o = ptrtoint ptr %i.m to i64
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.a ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.k) #46
          to label %.noexc.i unwind label %.lr.ph.i.i.i.i.preheader, !noalias !4426

.noexc.i:                                         ; preds = %bb.d
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i.i = phi i64 [ %i.o, %bb.c ], [ 8, %bb.b ]
  %i.p = inttoptr i64 %.sroa.10.0.i.i to ptr      ; 2 uses
  store i64 %i.g, ptr %i.c, align 8, !noalias !4426
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !4426
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4430
  store ptr %i.e, ptr %i.b, align 8, !noalias !4431
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.j, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !4431
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !4431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4432)
  br i1 %i.l, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i, %bb.h
  %.val9.i.i.i.i.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i ] ; 3 uses
  %i.s = phi ptr [ %i.t, %bb.h ], [ %i.e, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i ] ; 4 uses
  %.sroa.010.0.copyload.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !4433 ; 3 uses
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.411.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4433, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.512.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4433 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4434
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.411.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.512.0.copyload.i.i.i.i.i.i)
          to label %bb.h unwind label %bb.e, !noalias !4434

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr %i.t, ptr %.sroa.5.0..sroa_idx1, align 8, !alias.scope !4432, !noalias !4430
  %i.v = icmp eq i64 %.sroa.010.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.v, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.411.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.010.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !4435
  br label %.body.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i
  %.sroa.5.0.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i ], [ %i.z, %bb.h ]
  %i.w = icmp eq i64 %i.j, 0
  br i1 %i.w, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENvMB15_B13_3newEE9from_iterB17_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.x = mul nuw i64 %i.j, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !4433
  br label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENvMB15_B13_3newEE9from_iterB17_.exit

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4434
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.val9.i.i.i.i.i.i ; 4 uses
  store i64 %.sroa.010.0.copyload.i.i.i.i.i.i, ptr %i.y, align 8, !noalias !4437
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.sroa.411.0.copyload.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4437
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %.sroa.512.0.copyload.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4437
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !4437
  %i.z = add nuw nsw i64 %.val9.i.i.i.i.i.i, 1    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64.i.i.i.i.i.i.i)
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.i
  br i1 %.not.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.body.i:                                          ; preds = %bb.f, %bb.e
  store i64 %.val9.i.i.i.i.i.i, ptr %i.r, align 8, !alias.scope !4438, !noalias !4439
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #42, !noalias !4440
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #42, !noalias !4426
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2n_15FormatterString3newEEB2p_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2n_15FormatterString3newEEB2p_.exit: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i, %.body.i
  %.pn6.i = phi { ptr, i32 } [ %i.u, %.body.i ], [ %i.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i ], [ %i.aa, %bb.j ]
  resume { ptr, i32 } %.pn6.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4441), !noalias !4442
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4443), !noalias !4442
  %.val.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !4444, !noalias !4445 ; 2 uses
  %i.ad = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !4444, !noalias !4445, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !4446
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i
  %i.af = icmp eq i64 %i.ac, %i.g
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i
  %i.ag = icmp eq i64 %i.j, 0
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2n_15FormatterString3newEEB2p_.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i
  %i.ah = mul nuw i64 %i.j, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !4445
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2n_15FormatterString3newEEB2p_.exit

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENvMB15_B13_3newEE9from_iterB17_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.g
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %i.r, align 8, !alias.scope !4438, !noalias !4439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4426
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlersNtB2_21OpCodeHandler_Invalid6decode(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !21
  %i.c = or i32 %i.b, 64
  store i32 %i.c, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i16, i16 } @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer10read_code2(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 5 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 3 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %bb.c

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !21, !noundef !21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.0.013 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.02.012 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.e ] ; 2 uses
  %i.g = phi i64 [ %.promoted, %.lr.ph ], [ %i.j, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !21 ; 2 uses
  %i.j = add i64 %i.g, 1                          ; 3 uses
  %i.k = zext i8 %i.i to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.i, -1
  %i.m = and i32 %.sroa.02.012, 31                ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  store i64 %i.c, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa7 = phi i64 [ %i.c, %._crit_edge ], [ %.promoted, %bb.a ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.j, ptr %i.a, align 8
  %i.n = shl i32 %i.k, %i.m
  %i.o = or i32 %i.n, %.sroa.0.013
  %i.p = trunc i32 %i.o to i16                    ; 3 uses
  %i.q = add nuw nsw i16 %i.p, 1
  %i.r = icmp samesign ult i16 %i.p, 4935
  tail call void @llvm.assume(i1 %i.r)
  %i.s = insertvalue { i16, i16 } poison, i16 %i.p, 0
  %i.t = insertvalue { i16, i16 } %i.s, i16 %i.q, 1
  ret { i16, i16 } %i.t

bb.e:                                             ; preds = %bb.b
  %i.u = and i32 %i.k, 127
  %i.v = shl i32 %i.u, %i.m
  %i.w = or i32 %i.v, %.sroa.0.013
  %i.x = add nuw nsw i32 %.sroa.02.012, 7
  %exitcond.not = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc range(i48 8590000128, 21195986968576) i48 @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer10read_code3(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 5 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 3 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %bb.c

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !21, !noundef !21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.03.014 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.01.013 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.e ] ; 2 uses
  %i.g = phi i64 [ %.promoted, %.lr.ph ], [ %i.j, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !21 ; 2 uses
  %i.j = add i64 %i.g, 1                          ; 3 uses
  %i.k = zext i8 %i.i to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.i, -1
  %i.m = and i32 %.sroa.03.014, 31                ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  store i64 %i.c, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa8 = phi i64 [ %i.c, %._crit_edge ], [ %.promoted, %bb.a ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa8, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.j, ptr %i.a, align 8
  %i.n = shl i32 %i.k, %i.m
  %i.o = or i32 %i.n, %.sroa.01.013               ; 2 uses
  %i.p = trunc i32 %i.o to i16                    ; 3 uses
  %i.q = add nuw nsw i16 %i.p, 1
  %i.r = add nuw nsw i16 %i.p, 2
  %i.s = icmp samesign ult i16 %i.p, 4934
  tail call void @llvm.assume(i1 %i.s)
  %.sroa.3.0.insert.ext = zext nneg i16 %i.r to i48
  %.sroa.3.0.insert.shift = shl nuw nsw i48 %.sroa.3.0.insert.ext, 32
  %.sroa.2.0.insert.ext = zext nneg i16 %i.q to i48
  %.sroa.2.0.insert.shift = shl nuw nsw i48 %.sroa.2.0.insert.ext, 16
  %.sroa.2.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.mask = and i32 %i.o, 8191
  %.sroa.0.0.insert.ext = zext nneg i32 %.mask to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert

bb.e:                                             ; preds = %bb.b
  %i.t = and i32 %i.k, 127
  %i.u = shl i32 %i.t, %i.m
  %i.v = or i32 %i.u, %.sroa.01.013
  %i.w = add nuw nsw i32 %.sroa.03.014, 7
  %exitcond.not = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer11deserialize(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !noundef !21 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !noundef !21 ; 2 uses
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

._crit_edge43:                                    ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph42, %bb.e
  %i.m = phi i64 [ %i.e, %.lr.ph42 ], [ %i.af, %bb.e ] ; 4 uses
  %i.n = phi i64 [ %i.d, %.lr.ph42 ], [ %i.ae, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr %i.g, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !noundef !21 ; 2 uses
  %i.r = add nuw i64 %i.n, 1                      ; 4 uses
  store i64 %i.r, ptr %i.b, align 8
  %i.s = icmp ult i8 %i.q, 2
  call void @llvm.assume(i1 %i.s)
  %i.t = trunc nuw i8 %i.q to i1
  br i1 %i.t, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.u = icmp ult i64 %i.r, %i.m
  br i1 %i.u, label %.lr.ph, label %.preheader._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.v = call fastcc { ptr, ptr } @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer29read_handler_or_null_instance(ptr noalias nofree noundef align 8 dereferenceable(80) %0) ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !4459)
  %i.y = load i64, ptr %i.h, align 8, !alias.scope !4459, !noundef !21 ; 3 uses
  %i.z = load i64, ptr %0, align 8, !range !22, !alias.scope !4459, !noundef !21
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !noalias !4460
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit

common.resume.sink.split:                         ; preds = %bb.l, %bb.p
  %.sroa.020.0.copyload.lcssa.sink = phi i64 [ %.sroa.020.0.copyload, %bb.p ], [ %.val.i8, %bb.l ]
  %.sroa.4.0.copyload.lcssa.sink = phi ptr [ %.sroa.4.0.copyload, %bb.p ], [ %.val3.i, %bb.l ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %i.ba, %bb.l ]
  %i.ab = shl nuw i64 %.sroa.020.0.copyload.lcssa.sink, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.lcssa.sink, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !21
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.o, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.bi, %bb.o ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit: ; preds = %bb.d, %bb.c
  %i.ac = load ptr, ptr %i.i, align 8, !alias.scope !4459, !nonnull !21, !noundef !21
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.y ; 3 uses
  store i64 -1, ptr %i.ad, align 8, !noalias !4459
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !4459
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.x, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !4459
  br label %bb.e

bb.e:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit12, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit
  %storemerge.in = phi i64 [ %i.y, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit ], [ %i.bf, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit12 ]
  %storemerge = add i64 %storemerge.in, 1
  store i64 %storemerge, ptr %i.h, align 8
  %i.ae = load i64, ptr %i.b, align 8, !noundef !21 ; 2 uses
  %i.af = load i64, ptr %i.c, align 8, !noundef !21 ; 2 uses
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.b, label %._crit_edge43

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %.sroa.0.037 = phi i32 [ %i.bp, %bb.q ], [ 0, %.preheader ] ; 2 uses
  %.sroa.02.036 = phi i32 [ %i.bq, %bb.q ], [ 0, %.preheader ] ; 3 uses
  %i.ah = phi i64 [ %i.ak, %bb.q ], [ %i.r, %.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !21 ; 2 uses
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.b, align 8
  %i.al = zext i8 %i.aj to i32                    ; 2 uses
  %i.am = icmp sgt i8 %i.aj, -1
  br i1 %i.am, label %bb.f, label %bb.q

.preheader._crit_edge:                            ; preds = %.preheader, %bb.q
  %.lcssa = phi i64 [ %i.m, %bb.q ], [ %i.r, %.preheader ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable

bb.f:                                             ; preds = %.lr.ph
  %i.an = and i32 %.sroa.02.036, 31
  %i.ao = shl i32 %i.al, %i.an
  %i.ap = or i32 %i.ao, %.sroa.0.037              ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4462
  %i.ar = icmp eq i32 %i.ap, 0
  br i1 %i.ar, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.f
  %i.as = shl nuw nsw i64 %i.aq, 4                ; 2 uses
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !4463
  %i.at = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.as, i64 noundef range(i64 1, 9) 8) #41, !noalias !4463 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.av = ptrtoint ptr %i.at to i64
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i

bb.h:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.as) #46, !noalias !4462
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.10.0.i = phi i64 [ %i.av, %bb.g ], [ 8, %bb.f ]
  %i.aw = inttoptr i64 %.sroa.10.0.i to ptr
  store i64 %i.aq, ptr %i.a, align 8, !noalias !4462
  store ptr %i.aw, ptr %i.j, align 8, !noalias !4462
  store i64 0, ptr %i.k, align 8, !noalias !4462
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i
  %i.ax = phi i64 [ %i.bc, %bb.m ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i ] ; 3 uses
  %i.ay = icmp samesign ult i64 %i.ax, %i.aq
  br i1 %i.ay, label %bb.j, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer13read_handlers.exit

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.l, align 8, !alias.scope !4461, !nonnull !21, !noundef !21
  invoke void %i.az(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.m unwind label %bb.k, !noalias !4464

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i8 = load i64, ptr %i.a, align 8, !noalias !4462 ; 2 uses
  %i.bb = icmp eq i64 %.val.i8, 0
  br i1 %i.bb, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val3.i = load ptr, ptr %i.j, align 8, !noalias !4462, !nonnull !21, !noundef !21
  br label %common.resume.sink.split

bb.m:                                             ; preds = %bb.j
  %i.bc = load i64, ptr %i.k, align 8, !noalias !4462, !noundef !21 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 576460752303423488
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.bc, %i.ax
  br i1 %i.be, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer13read_handlers.exit, label %bb.i

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer13read_handlers.exit: ; preds = %bb.i, %bb.m
  %.sroa.020.0.copyload = load i64, ptr %i.a, align 8, !noalias !4461 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %i.j, align 8, !noalias !4461 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4462
  call void @llvm.experimental.noalias.scope.decl(metadata !4465)
  %i.bf = load i64, ptr %i.h, align 8, !alias.scope !4465, !noundef !21 ; 3 uses
  %i.bg = load i64, ptr %0, align 8, !range !22, !alias.scope !4465, !noundef !21
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.n, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit12

bb.n:                                             ; preds = %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer13read_handlers.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit12 unwind label %bb.o, !noalias !4466

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = icmp sgt i64 %.sroa.020.0.copyload, 0
  br i1 %i.bj, label %bb.p, label %common.resume

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  br label %common.resume.sink.split

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit12: ; preds = %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer13read_handlers.exit, %bb.n
  %i.bk = load ptr, ptr %i.i, align 8, !alias.scope !4465, !nonnull !21, !noundef !21
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.bf ; 3 uses
  store i64 %.sroa.020.0.copyload, ptr %i.bl, align 8, !noalias !4465
  %.sroa.515.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.515.0..sroa_idx16, align 8, !noalias !4465
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %i.ax, ptr %.sroa.6.0..sroa_idx18, align 8, !noalias !4465
  br label %bb.e

bb.q:                                             ; preds = %.lr.ph
  %i.bm = and i32 %i.al, 127
  %i.bn = and i32 %.sroa.02.036, 31
  %i.bo = shl i32 %i.bm, %i.bn
  %i.bp = or i32 %i.bo, %.sroa.0.037
  %i.bq = add nuw nsw i32 %.sroa.02.036, 7
  %exitcond.not = icmp eq i64 %i.ak, %i.m
  br i1 %exitcond.not, label %.preheader._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer12read_boolean(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4469)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4469, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4469, !noundef !21 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %_RNvMNtCsf8MNnN4IDbl_8iced_x8611data_readerNtB2_10DataReader7read_u8.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47, !noalias !4469
  unreachable

_RNvMNtCsf8MNnN4IDbl_8iced_x8611data_readerNtB2_10DataReader7read_u8.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !4469, !nonnull !21, !noundef !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = load i8, ptr %i.h, align 1, !noalias !4469, !noundef !21
  %i.j = add nuw i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !4469
  %i.k = icmp ne i8 %i.i, 0
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i8 @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer13read_register(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !noundef !21 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !21, !noundef !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = load i8, ptr %i.h, align 1, !noundef !21
  %i.j = add nuw i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret i8 %i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 19) i8 @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer15read_tuple_type(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !noundef !21 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !21, !noundef !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = load i8, ptr %i.h, align 1, !noundef !21 ; 2 uses
  %i.j = add nuw i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  %i.k = icmp ult i8 %i.i, 19
  tail call void @llvm.assume(i1 %i.k)
  ret i8 %i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer18read_handler_flags(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4472)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4472, !noundef !21 ; 5 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !4472 ; 3 uses
  %i.d = icmp ult i64 %.promoted.i, %i.c
  br i1 %i.d, label %.lr.ph.i, label %bb.c

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4472, !nonnull !21, !noundef !21
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.013.i = phi i32 [ 0, %.lr.ph.i ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.02.012.i = phi i32 [ 0, %.lr.ph.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.g = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noalias !4472, !noundef !21 ; 2 uses
  %i.j = add nuw i64 %i.g, 1                      ; 3 uses
  %i.k = zext i8 %i.i to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.i, -1
  %i.m = and i32 %.sroa.02.012.i, 31              ; 2 uses
  br i1 %i.l, label %_RNvMNtCsf8MNnN4IDbl_8iced_x8611data_readerNtB2_10DataReader19read_compressed_u32.exit, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !4472
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.a
  %.lcssa7.i = phi i64 [ %i.c, %._crit_edge.i ], [ %.promoted.i, %bb.a ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47, !noalias !4472
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = and i32 %i.k, 127
  %i.o = shl i32 %i.n, %i.m
  %i.p = or i32 %i.o, %.sroa.0.013.i
  %i.q = add nuw nsw i32 %.sroa.02.012.i, 7
  %exitcond.not.i = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

_RNvMNtCsf8MNnN4IDbl_8iced_x8611data_readerNtB2_10DataReader19read_compressed_u32.exit: ; preds = %bb.b
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !4472
  %i.r = shl i32 %i.k, %i.m
  %i.s = or i32 %i.r, %.sroa.0.013.i
  ret i32 %i.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer20read_array_reference(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i64, ptr %i.d, align 8, !noundef !21 ; 4 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.c, 1                      ; 4 uses
  store i64 %i.g, ptr %i.b, align 8
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !noundef !21
  %i.l = zext i8 %i.k to i64                      ; 2 uses
  %i.m = add nuw i64 %i.c, 2
  store i64 %i.m, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !21
  %i.p = icmp ugt i64 %i.o, %i.l
  br i1 %i.p, label %bb.g, label %bb.f, !prof !34

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #47
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !21, !noundef !21
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.l ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !range !24, !noundef !21
  %.not = icmp eq i64 %i.t, -1
  br i1 %.not, label %bb.k, label %bb.h, !prof !32

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !21, !noundef !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !21 ; 6 uses
  %i.y = shl i64 %i.x, 4                          ; 5 uses
  %i.z = icmp ugt i64 %i.x, 1152921504606846975
  %.not.i = icmp ugt i64 %i.y, 9223372036854775800
  %or.cond.i = or i1 %i.z, %.not.i
  br i1 %or.cond.i, label %bb.l, label %bb.i, !prof !37

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !4475
  %i.ab = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.y, i64 noundef range(i64 1, 9) 8) #41, !noalias !4475 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i
  %i.ad = ptrtoint ptr %i.ab to i64
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #47
  unreachable

bb.l:                                             ; preds = %bb.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.h ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.y) #46
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit: ; preds = %bb.j, %bb.i
  %.sroa.10.0 = phi i64 [ %i.ad, %bb.j ], [ 8, %bb.i ]
  %.sroa.4.0 = phi i64 [ %i.x, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.ae = inttoptr i64 %.sroa.10.0 to ptr         ; 2 uses
  %i.af = icmp samesign ule i64 %i.x, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.af)
  store i64 %.sroa.4.0, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.ah, align 8
  %.not7 = icmp eq i64 %i.x, 0
  br i1 %.not7, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit
  ret void

bb.n:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.v, i64 %i.y, i1 false)
  store i64 %i.x, ptr %i.ah, align 8
  br label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer20read_decoder_options(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4478)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4478, !noundef !21 ; 5 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !4478 ; 3 uses
  %i.d = icmp ult i64 %.promoted.i, %i.c
  br i1 %i.d, label %.lr.ph.i, label %bb.c

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4478, !nonnull !21, !noundef !21
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.013.i = phi i32 [ 0, %.lr.ph.i ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.02.012.i = phi i32 [ 0, %.lr.ph.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.g = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noalias !4478, !noundef !21 ; 2 uses
  %i.j = add nuw i64 %i.g, 1                      ; 3 uses
  %i.k = zext i8 %i.i to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.i, -1
  %i.m = and i32 %.sroa.02.012.i, 31              ; 2 uses
  br i1 %i.l, label %_RNvMNtCsf8MNnN4IDbl_8iced_x8611data_readerNtB2_10DataReader19read_compressed_u32.exit, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !4478
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.a
  %.lcssa7.i = phi i64 [ %i.c, %._crit_edge.i ], [ %.promoted.i, %bb.a ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47, !noalias !4478
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = and i32 %i.k, 127
  %i.o = shl i32 %i.n, %i.m
  %i.p = or i32 %i.o, %.sroa.0.013.i
  %i.q = add nuw nsw i32 %.sroa.02.012.i, 7
  %exitcond.not.i = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

_RNvMNtCsf8MNnN4IDbl_8iced_x8611data_readerNtB2_10DataReader19read_compressed_u32.exit: ; preds = %bb.b
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !4478
  %i.r = shl i32 %i.k, %i.m
  %i.s = or i32 %i.r, %.sroa.0.013.i
  ret i32 %i.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer22read_handler_reference(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !noundef !21 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !21, !noundef !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = load i8, ptr %i.h, align 1, !noundef !21
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = add nuw i64 %i.b, 1
  store i64 %i.k, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !21
  %i.n = icmp ugt i64 %i.m, %i.j
  br i1 %i.n, label %bb.e, label %bb.d, !prof !34

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #47
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !21, !noundef !21
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.j ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !range !24, !noundef !21
  %.not = icmp eq i64 %i.r, -1
  br i1 %.not, label %bb.g, label %bb.f, !prof !34

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !21, !noundef !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !21, !noundef !21
  %i.w = insertvalue { ptr, ptr } poison, ptr %i.t, 0
  %i.x = insertvalue { ptr, ptr } %i.w, ptr %i.v, 1
  ret { ptr, ptr } %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer25read_legacy_handler_flags(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4481)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4481, !noundef !21 ; 5 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !4481 ; 3 uses
  %i.d = icmp ult i64 %.promoted.i, %i.c
  br i1 %i.d, label %.lr.ph.i, label %bb.c

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4481, !nonnull !21, !noundef !21
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.013.i = phi i32 [ 0, %.lr.ph.i ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.02.012.i = phi i32 [ 0, %.lr.ph.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.g = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noalias !4481, !noundef !21 ; 2 uses
  %i.j = add nuw i64 %i.g, 1                      ; 3 uses
  %i.k = zext i8 %i.i to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.i, -1
  %i.m = and i32 %.sroa.02.012.i, 31              ; 2 uses
  br i1 %i.l, label %_RNvMNtCsf8MNnN4IDbl_8iced_x8611data_readerNtB2_10DataReader19read_compressed_u32.exit, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !4481
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.a
  %.lcssa7.i = phi i64 [ %i.c, %._crit_edge.i ], [ %.promoted.i, %bb.a ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47, !noalias !4481
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = and i32 %i.k, 127
  %i.o = shl i32 %i.n, %i.m
  %i.p = or i32 %i.o, %.sroa.0.013.i
  %i.q = add nuw nsw i32 %.sroa.02.012.i, 7
  %exitcond.not.i = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

_RNvMNtCsf8MNnN4IDbl_8iced_x8611data_readerNtB2_10DataReader19read_compressed_u32.exit: ; preds = %bb.b
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !4481
  %i.r = shl i32 %i.k, %i.m
  %i.s = or i32 %i.r, %.sroa.0.013.i
  ret i32 %i.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer29read_array_reference_no_clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i64, ptr %i.c, align 8, !noundef !21 ; 4 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1                      ; 4 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !21, !noundef !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.k = load i8, ptr %i.j, align 1, !noundef !21
  %i.l = zext i8 %i.k to i64                      ; 2 uses
  %i.m = add nuw i64 %i.b, 2
  store i64 %i.m, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.n, align 8, !noundef !21
  %i.o = icmp ugt i64 %.val5, %i.l
  br i1 %i.o, label %bb.f, label %bb.e, !prof !34

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #47, !noalias !4484
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.p, align 8, !nonnull !21, !noundef !21
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.l ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !range !24, !noalias !4484, !noundef !21
  %.not.i = icmp eq i64 %i.r, -1
  br i1 %.not.i, label %bb.g, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer5table.exit, !prof !32

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #47, !noalias !4484
  unreachable

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer5table.exit: ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 0, ptr %i.q, align 8, !noalias !4484
  %.sroa.4.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa.0.0..sroa_idx.i, align 8, !noalias !4484
  %.sroa.5.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i, align 8, !noalias !4484
  ret void

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer29read_handler_or_null_instance(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !21 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4492)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !4493
  %i.f = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #41, !noalias !4493 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_RNCNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB4_17TableDeserializer29read_handler_or_null_instance0B8_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #46, !noalias !4492
  unreachable

_RNCNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB4_17TableDeserializer29read_handler_or_null_instance0B8_.exit: ; preds = %bb.b
  store i64 1, ptr %i.a, align 8, !alias.scope !4492
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.h, align 8, !alias.scope !4492
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.i, align 8, !alias.scope !4492
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.d, -1                     ; 3 uses
  store i64 %i.j, ptr %i.c, align 8
  %i.k = load i64, ptr %i.b, align 8, !range !22, !noundef !21
  %i.l = icmp samesign ult i64 %i.j, %i.k
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !21, !noundef !21
  %i.o = icmp ult i64 %i.d, 384307168202282327
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNCNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB4_17TableDeserializer29read_handler_or_null_instance0B8_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !21, !noundef !21
  invoke void %i.r(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !21 ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.h, !prof !32

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #46
          to label %bb.k unwind label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.v = add nsw i64 %i.t, -1                     ; 4 uses
  store i64 %i.v, ptr %i.s, align 8
  %i.w = load i64, ptr %i.a, align 8, !range !22, !noundef !21 ; 3 uses
  %i.x = icmp samesign ult i64 %i.v, %i.w
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %i.aa = icmp ult i64 %i.t, 576460752303423489
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.v ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !21, !noundef !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !21, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !4494)
  %i.af = load i64, ptr %i.c, align 8, !alias.scope !4494, !noundef !21 ; 3 uses
  %i.ag = load i64, ptr %i.b, align 8, !range !22, !alias.scope !4494, !noundef !21
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecTFG1_PNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers13OpCodeHandlerQL2_INtB1c_7DecoderL1_EQL0_NtNtB1e_11instruction11InstructionEuRB18_EEE8grow_oneB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.l unwind label %bb.j, !noalias !4495

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

bb.k:                                             ; preds = %bb.g
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !4494, !nonnull !21, !noundef !21
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.af ; 3 uses
  store i64 %i.w, ptr %i.al, align 8, !noalias !4494
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.z, ptr %.sroa.5.0..sroa_idx7, align 8, !noalias !4494
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx9, align 8, !noalias !4494
  %i.am = add i64 %i.af, 1
  store i64 %i.am, ptr %i.c, align 8, !alias.scope !4494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = insertvalue { ptr, ptr } poison, ptr %i.ac, 0
  %i.ao = insertvalue { ptr, ptr } %i.an, ptr %i.ae, 1
  ret { ptr, ptr } %i.ao

.body.sink.split:                                 ; preds = %bb.j, %bb.n
  %.val.sink = phi i64 [ %.val, %bb.n ], [ %i.w, %bb.j ]
  %.val5.sink = phi ptr [ %.val5, %bb.n ], [ %i.z, %bb.j ]
  %eh.lpad-body13.ph = phi { ptr, i32 } [ %i.aq, %bb.n ], [ %i.ai, %bb.j ]
  %i.ap = shl nuw i64 %.val.sink, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.sink, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %eh.lpad-body13.ph, %.body.sink.split ]
  resume { ptr, i32 } %eh.lpad-body13

bb.m:                                             ; preds = %bb.e, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ar = icmp eq i64 %.val, 0
  br i1 %i.ar, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val5 = load ptr, ptr %i.as, align 8, !nonnull !21, !noundef !21
  br label %.body.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer8read_u32(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4498)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4498, !noundef !21 ; 5 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !4498 ; 3 uses
  %i.d = icmp ult i64 %.promoted.i, %i.c
  br i1 %i.d, label %.lr.ph.i, label %bb.c

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4498, !nonnull !21, !noundef !21
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.013.i = phi i32 [ 0, %.lr.ph.i ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.02.012.i = phi i32 [ 0, %.lr.ph.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.g = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noalias !4498, !noundef !21 ; 2 uses
  %i.j = add nuw i64 %i.g, 1                      ; 3 uses
  %i.k = zext i8 %i.i to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.i, -1
  %i.m = and i32 %.sroa.02.012.i, 31              ; 2 uses
  br i1 %i.l, label %_RNvMNtCsf8MNnN4IDbl_8iced_x8611data_readerNtB2_10DataReader19read_compressed_u32.exit, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !4498
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.a
  %.lcssa7.i = phi i64 [ %i.c, %._crit_edge.i ], [ %.promoted.i, %bb.a ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47, !noalias !4498
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = and i32 %i.k, 127
  %i.o = shl i32 %i.n, %i.m
  %i.p = or i32 %i.o, %.sroa.0.013.i
  %i.q = add nuw nsw i32 %.sroa.02.012.i, 7
  %exitcond.not.i = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

_RNvMNtCsf8MNnN4IDbl_8iced_x8611data_readerNtB2_10DataReader19read_compressed_u32.exit: ; preds = %bb.b
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !4498
  %i.r = shl i32 %i.k, %i.m
  %i.s = or i32 %i.r, %.sroa.0.013.i
  ret i32 %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i16 0, 4936) i16 @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer9read_code(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 5 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 3 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %bb.c

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !21, !noundef !21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.0.013 = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.02.012 = phi i32 [ 0, %.lr.ph ], [ %i.u, %bb.e ] ; 2 uses
  %i.g = phi i64 [ %.promoted, %.lr.ph ], [ %i.j, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !21 ; 2 uses
  %i.j = add i64 %i.g, 1                          ; 3 uses
  %i.k = zext i8 %i.i to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.i, -1
  %i.m = and i32 %.sroa.02.012, 31                ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  store i64 %i.c, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa7 = phi i64 [ %i.c, %._crit_edge ], [ %.promoted, %bb.a ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.j, ptr %i.a, align 8
  %i.n = shl i32 %i.k, %i.m
  %i.o = or i32 %i.n, %.sroa.0.013
  %i.p = trunc i32 %i.o to i16                    ; 2 uses
  %i.q = icmp ult i16 %i.p, 4936
  tail call void @llvm.assume(i1 %i.q)
  ret i16 %i.p

bb.e:                                             ; preds = %bb.b
  %i.r = and i32 %i.k, 127
  %i.s = shl i32 %i.r, %i.m
  %i.t = or i32 %i.s, %.sroa.0.013
  %i.u = add nuw nsw i32 %.sroa.02.012, 7
  %exitcond.not = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter12write_memory(ptr nofree readonly captures(none) %.0.val, ptr %.8.val) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !range !28, !noundef !21
  %i.c = zext nneg i16 %i.b to i64
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8624instruction_memory_sizes12SIZES_NORMAL, i64 %i.c
  %.sroa.0.0.i.i = load i8, ptr %.sroa.0.0.in.i.i, align 1, !range !39, !noundef !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4515)
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 16 ; 8 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4515, !noundef !21 ; 5 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %.8.val, align 8, !range !22, !alias.scope !4516, !noundef !21
  %i.h = icmp eq i64 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_memory1.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, i64 noundef %i.e, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_memory1.exit

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_memory1.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !4515, !nonnull !21, !noundef !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  store i8 109, ptr %i.k, align 1, !noalias !4515
  %i.l = add nuw i64 %i.e, 1
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !4515
  tail call fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter17write_memory_size(ptr nonnull readonly %.0.val, ptr nonnull %.8.val, i8 noundef %.sroa.0.0.i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 52
  %i.n = load i32, ptr %i.m, align 4, !noundef !21
  %i.o = and i32 %i.n, 67108864
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_memory1.exit6, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_memory1.exit
  ret void

bb.d:                                             ; preds = %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_memory1.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4517)
  %i.p = load i64, ptr %i.d, align 8, !alias.scope !4517, !noundef !21 ; 6 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load i64, ptr %.8.val, align 8, !range !22, !alias.scope !4518, !noundef !21
  %i.s = icmp eq i64 %i.r, %i.p
  br i1 %i.s, label %bb.e, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit, !prof !32

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, i64 noundef %i.p, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.d, %bb.e
  %i.t = load ptr, ptr %i.i, align 8, !alias.scope !4517, !nonnull !21, !noundef !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.p
  store i8 47, ptr %i.u, align 1, !noalias !4517
  %i.v = add nuw nsw i64 %i.p, 1                  ; 4 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !4517
  %i.w = load i16, ptr %i.a, align 8, !range !28, !noundef !21
  %i.x = zext nneg i16 %i.w to i64
  %.sroa.0.0.in.i.i4 = getelementptr inbounds nuw i8, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8624instruction_memory_sizes10SIZES_BCST, i64 %i.x
  %.sroa.0.0.i.i5 = load i8, ptr %.sroa.0.0.in.i.i4, align 1, !range !39, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4519)
  %i.y = load i64, ptr %.8.val, align 8, !range !22, !alias.scope !4520, !noundef !21
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %bb.f, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i, !prof !32

bb.f:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, i64 noundef %i.v, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i: ; preds = %bb.f, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit
  %i.aa = load ptr, ptr %i.i, align 8, !alias.scope !4519, !nonnull !21, !noundef !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.v
  store i8 109, ptr %i.ab, align 1, !noalias !4519
  %i.ac = add nuw i64 %i.p, 2
  store i64 %i.ac, ptr %i.d, align 8, !alias.scope !4519
  tail call fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter17write_memory_size(ptr nonnull readonly %.0.val, ptr nonnull %.8.val, i8 noundef %.sroa.0.0.i.i5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4521)
  %i.ad = load i64, ptr %i.d, align 8, !alias.scope !4522, !noundef !21 ; 3 uses
  %i.ae = load i64, ptr %.8.val, align 8, !range !22, !alias.scope !4522, !noundef !21
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ult i64 %i.af, 4
  br i1 %i.ag, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_memory1.exit6, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i: ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, i64 noundef %i.ad, i64 noundef 4, i64 noundef 1, i64 noundef 1)
  %i.ah = load i64, ptr %i.d, align 8, !alias.scope !4521, !noundef !21
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_memory1.exit6

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_memory1.exit6: ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i
  %.sink1.i = phi i64 [ %i.ah, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i ], [ %i.ad, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.sink1.i, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.i, align 8, !alias.scope !4521, !nonnull !21, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink1.i
  store i32 1953719138, ptr %i.ak, align 1, !noalias !4521
  %i.al = add nuw i64 %.sink1.i, 4
  store i64 %i.al, ptr %i.d, align 8, !alias.scope !4521
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_gpr_mem(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, i64 noundef range(i64 8, 65) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4531)
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4531, !noundef !21 ; 5 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %.8.val, align 8, !range !22, !alias.scope !4532, !noundef !21
  %i.h = icmp eq i64 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, i64 noundef %i.e, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !4531, !nonnull !21, !noundef !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  store i8 114, ptr %i.k, align 1, !noalias !4531
  %i.l = add nuw i64 %i.e, 1                      ; 2 uses
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !4531
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.n = load i16, ptr %i.m, align 8, !range !28, !noundef !21
  %i.o = zext nneg i16 %i.n to i64
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8624instruction_memory_sizes12SIZES_NORMAL, i64 %i.o
  %.sroa.0.0.i = load i8, ptr %.sroa.0.0.in.i, align 1, !range !39, !noundef !21
  %i.p = zext i8 %.sroa.0.0.i to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @7883, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !noundef !21
  %i.s = zext i16 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %.not = icmp eq i64 %i.t, %0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit
  %i.u = phi i64 [ %.pre, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit ], [ %i.l, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4533)
  %i.v = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %.8.val, align 8, !range !22, !alias.scope !4534, !noundef !21
  %i.x = icmp eq i64 %i.w, %i.u
  br i1 %i.x, label %bb.d, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit18, !prof !32

bb.d:                                             ; preds = %bb.c
  call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, i64 noundef %i.u, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit18

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit18: ; preds = %bb.c, %bb.d
  %i.y = load ptr, ptr %i.i, align 8, !alias.scope !4533, !nonnull !21, !noundef !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  store i8 47, ptr %i.z, align 1, !noalias !4533
  %i.aa = add nuw i64 %i.u, 1
  store i64 %i.aa, ptr %i.d, align 8, !alias.scope !4533
  call fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter12write_memory(ptr nonnull %.0.val, ptr nonnull %.8.val)
  ret void

bb.e:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.ab = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @104, ptr noundef nonnull %i.b)
  br i1 %i.ab, label %bb.f, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit, !prof !32

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #47
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !4533
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_mem(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 1, 4) %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %2, ptr %i.c, align 4, !noalias !4541
  tail call fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter5write(ptr %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 1, 4) %1, i1 noundef zeroext false)
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl4read:bb.a

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  store i64 %.sroa.01732.0, ptr %i.ga, align 8
  store ptr %.sroa.50.0, ptr %.sroa.50.0..sroa_idx1791, align 8
  store i64 %.sroa.77.0, ptr %.sroa.77.0..sroa_idx1902, align 8
  invoke fastcc void @_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ga, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.gc, i32 noundef 0)
          to label %_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo20with_mnemonic_suffix.exit unwind label %.body291

_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo20with_mnemonic_suffix.exit: ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13894
  %i.xb = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !13894 ; 3 uses
  %i.xc = icmp eq ptr %i.xb, null
  br i1 %i.xc, label %bb.dw, label %bb.dy, !prof !26

bb.dw:                                            ; preds = %_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo20with_mnemonic_suffix.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc595 unwind label %bb.dx

.noexc595:                                        ; preds = %bb.dw
  unreachable

bb.dx:                                            ; preds = %bb.dw
  %i.xd = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info15SimpleInstrInfoEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.gb) #42
  br label %.body369

bb.dy:                                            ; preds = %_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo20with_mnemonic_suffix.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.xb, ptr noundef nonnull align 8 dereferenceable(104) %i.gb, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc)
  br label %bb.dq

bb.dz:                                            ; preds = %.lr.ph.i406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  store i64 %.sroa.01732.0, ptr %i.fy, align 8
  store ptr %.sroa.50.0, ptr %.sroa.50.0..sroa_idx1793, align 8
  store i64 %.sroa.77.0, ptr %.sroa.77.0..sroa_idx1904, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !13895
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fy)
          to label %bb.ea unwind label %bb.eb, !noalias !13896

bb.ea:                                            ; preds = %bb.dz
  %i.xe = and i32 %.sroa.02.012.i408, 31
  %i.xf = shl i32 %i.pk, %i.xe
  %i.xg = or i32 %i.xf, %.sroa.0.013.i407
  invoke fastcc void @_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.fz, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.fy, i32 noundef %i.xg)
          to label %bb.ed unwind label %.body291

bb.eb:                                            ; preds = %bb.dz
  %i.xh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xi = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.xi, label %.body369, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13897
  br label %.body369

bb.ed:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !13895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13898
  %i.xj = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !13898 ; 3 uses
  %i.xk = icmp eq ptr %i.xj, null
  br i1 %i.xk, label %bb.ee, label %bb.eg, !prof !26

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc604 unwind label %bb.ef

.noexc604:                                        ; preds = %bb.ee
  unreachable

bb.ef:                                            ; preds = %bb.ee
  %i.xl = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info15SimpleInstrInfoEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fz) #42
  br label %.body369

bb.eg:                                            ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.xj, ptr noundef nonnull align 8 dereferenceable(104) %i.fz, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz)
  br label %bb.dq

bb.eh:                                            ; preds = %bb.ax
  %i.xm = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.xn = load i8, ptr %i.xm, align 1, !noalias !13899, !noundef !21
  %i.xo = add nuw nsw i64 %.sroa.156.2, 1
  %i.xp = zext i8 %i.xn to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.xp)
          to label %bb.ei unwind label %.body249.thread.loopexit.split-lp

bb.ei:                                            ; preds = %bb.eh
  %i.xq = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.xq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit608, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13900
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit608

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit608: ; preds = %bb.ej, %bb.ei
  %.sroa.01732.0.copyload1743 = load i64, ptr %i.fx, align 8 ; 3 uses
  %.sroa.50.0.copyload1798 = load ptr, ptr %.sroa.50.0..sroa_idx1797, align 8 ; 2 uses
  %.sroa.77.0.copyload1909 = load i64, ptr %.sroa.77.0..sroa_idx1908, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv)
  store i64 %.sroa.01732.0.copyload1743, ptr %i.fv, align 8
  store ptr %.sroa.50.0.copyload1798, ptr %.sroa.50.0..sroa_idx1799, align 8
  store i64 %.sroa.77.0.copyload1909, ptr %.sroa.77.0..sroa_idx1910, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !13901
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fv)
          to label %bb.ek unwind label %bb.el, !noalias !13902

bb.ek:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit608
  invoke fastcc void @_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.fw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.fv, i32 noundef 0)
          to label %bb.en unwind label %.body291

bb.el:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit608
  %i.xr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xs = icmp eq i64 %.sroa.01732.0.copyload1743, 0
  br i1 %i.xs, label %.body369, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0.copyload1798, i64 noundef %.sroa.01732.0.copyload1743, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13903
  br label %.body369

bb.en:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !13901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13904
  %i.xt = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !13904 ; 3 uses
  %i.xu = icmp eq ptr %i.xt, null
  br i1 %i.xu, label %bb.eo, label %bb.eq, !prof !26

bb.eo:                                            ; preds = %bb.en
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc617 unwind label %bb.ep

.noexc617:                                        ; preds = %bb.eo
  unreachable

bb.ep:                                            ; preds = %bb.eo
  %i.xv = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info15SimpleInstrInfoEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fw) #42
  br label %.body369

bb.eq:                                            ; preds = %bb.en
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.xt, ptr noundef nonnull align 8 dereferenceable(104) %i.fw, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw)
  br label %bb.dq

bb.er:                                            ; preds = %bb.ay
  %i.xw = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.xx = load i8, ptr %i.xw, align 1, !noalias !13905, !noundef !21
  %i.xy = zext i8 %i.xx to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.xy)
          to label %bb.es unwind label %.body249.thread.loopexit.split-lp

bb.es:                                            ; preds = %bb.er
  %.not2730 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2730, label %._crit_edge.i625, label %.lr.ph.i621.preheader

.lr.ph.i621.preheader:                            ; preds = %bb.es
  %i.xz = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i621

.lr.ph.i621:                                      ; preds = %.lr.ph.i621.preheader, %bb.et
  %.sroa.0.013.i622 = phi i32 [ %i.yj, %bb.et ], [ 0, %.lr.ph.i621.preheader ] ; 2 uses
  %.sroa.02.012.i623 = phi i32 [ %i.yk, %bb.et ], [ 0, %.lr.ph.i621.preheader ] ; 3 uses
  %i.ya = phi i64 [ %i.yd, %bb.et ], [ %i.xz, %.lr.ph.i621.preheader ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr @10842, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !noalias !13906, !noundef !21 ; 2 uses
  %i.yd = add nuw nsw i64 %i.ya, 1                ; 3 uses
  %i.ye = zext i8 %i.yc to i32                    ; 2 uses
  %i.yf = icmp sgt i8 %i.yc, -1
  br i1 %i.yf, label %bb.eu, label %bb.et

._crit_edge.i625:                                 ; preds = %bb.es, %bb.et
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc626 unwind label %bb.ez

.noexc626:                                        ; preds = %._crit_edge.i625
  unreachable

bb.et:                                            ; preds = %.lr.ph.i621
  %i.yg = and i32 %i.ye, 127
  %i.yh = and i32 %.sroa.02.012.i623, 31
  %i.yi = shl i32 %i.yg, %i.yh
  %i.yj = or i32 %i.yi, %.sroa.0.013.i622
  %i.yk = add nuw nsw i32 %.sroa.02.012.i623, 7
  %exitcond.not.i624 = icmp eq i64 %i.yd, 13463
  br i1 %exitcond.not.i624, label %._crit_edge.i625, label %.lr.ph.i621

bb.eu:                                            ; preds = %.lr.ph.i621
  %i.yl = and i32 %.sroa.02.012.i623, 31
  %i.ym = shl i32 %i.ye, %i.yl
  %i.yn = or i32 %i.ym, %.sroa.0.013.i622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft)
  store i64 %.sroa.01732.0, ptr %i.ft, align 8
  store ptr %.sroa.50.0, ptr %.sroa.50.0..sroa_idx1801, align 8
  store i64 %.sroa.77.0, ptr %.sroa.77.0..sroa_idx1912, align 8
  invoke fastcc void @_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.fu, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ft, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.fs, i32 noundef %i.yn)
          to label %bb.ev unwind label %.body291

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13907
  %i.yo = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !13907 ; 3 uses
  %i.yp = icmp eq ptr %i.yo, null
  br i1 %i.yp, label %bb.ew, label %bb.ey, !prof !26

bb.ew:                                            ; preds = %bb.ev
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc628 unwind label %bb.ex

.noexc628:                                        ; preds = %bb.ew
  unreachable

bb.ex:                                            ; preds = %bb.ew
  %i.yq = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info15SimpleInstrInfoEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fu) #42
  br label %.body369

bb.ey:                                            ; preds = %bb.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.yo, ptr noundef nonnull align 8 dereferenceable(104) %i.fu, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu)
  br label %bb.dq

bb.ez:                                            ; preds = %._crit_edge.i625
  %i.yr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i630 = load i64, ptr %i.fs, align 8       ; 2 uses
  %i.ys = icmp eq i64 %.val.i630, 0
  br i1 %i.ys, label %.thread2361, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.yt = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.val1.i631 = load ptr, ptr %i.yt, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i631, i64 noundef %.val.i630, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13908
  br label %.thread2361

bb.fb:                                            ; preds = %bb.aav
  %i.yu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.fc:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62256.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false), !noalias !13909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !13862
  store i64 %.sroa.01732.0, ptr %i.fr, align 8, !noalias !13909
  store ptr %.sroa.50.0, ptr %.sroa.42254.0..sroa_idx, align 8, !noalias !13909
  store i64 %.sroa.77.0, ptr %.sroa.52255.0..sroa_idx, align 8, !noalias !13909
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13910
  %i.yv = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !13910 ; 3 uses
  %i.yw = icmp eq ptr %i.yv, null
  br i1 %i.yw, label %bb.fd, label %bb.ff, !prof !26

bb.fd:                                            ; preds = %bb.fc
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc633 unwind label %bb.fe

.noexc633:                                        ; preds = %bb.fd
  unreachable

bb.fe:                                            ; preds = %bb.fd
  %i.yx = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_AamAadEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fr) #42
  br label %.body369

bb.ff:                                            ; preds = %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yv, ptr noundef nonnull align 8 dereferenceable(48) %i.fr, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  br label %bb.dq

bb.fg:                                            ; preds = %.lr.ph.i422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq)
  call void @llvm.experimental.noalias.scope.decl(metadata !13911)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !13912
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ch, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.fj unwind label %bb.fh, !noalias !13912

bb.fh:                                            ; preds = %bb.fg
  %i.yy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yz = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.yz, label %.body369, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13913
  br label %.body369

bb.fj:                                            ; preds = %bb.fg
  %i.za = and i32 %.sroa.02.012.i424, 31
  %i.zb = shl i32 %i.qa, %i.za
  %i.zc = or i32 %i.zb, %.sroa.0.013.i423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false), !noalias !13914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !13912
  store i64 %.sroa.01732.0, ptr %i.fq, align 8, !noalias !13914
  store ptr %.sroa.50.0, ptr %.sroa.42274.0..sroa_idx, align 8, !noalias !13914
  store i64 %.sroa.77.0, ptr %.sroa.52275.0..sroa_idx, align 8, !noalias !13914
  store i32 %i.zc, ptr %i.kz, align 8, !alias.scope !13911
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13915
  %i.zd = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !13915 ; 3 uses
  %i.ze = icmp eq ptr %i.zd, null
  br i1 %i.ze, label %bb.fk, label %bb.fm, !prof !26

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc640 unwind label %bb.fl

.noexc640:                                        ; preds = %bb.fk
  unreachable

bb.fl:                                            ; preds = %bb.fk
  %i.zf = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info18SimpleInstrInfo_asEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fq) #42
  br label %.body369

bb.fm:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.zd, ptr noundef nonnull align 8 dereferenceable(56) %i.fq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq)
  br label %bb.dq

bb.fn:                                            ; preds = %bb.be
  %i.zg = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.zh = load i8, ptr %i.zg, align 1, !noalias !13916, !noundef !21
  %i.zi = zext i8 %i.zh to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.zi)
          to label %bb.fo unwind label %.body249.thread.loopexit.split-lp

bb.fo:                                            ; preds = %bb.fn
  %.not2729 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2729, label %._crit_edge.i648, label %.lr.ph.i644.preheader

.lr.ph.i644.preheader:                            ; preds = %bb.fo
  %i.zj = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i644

.lr.ph.i644:                                      ; preds = %.lr.ph.i644.preheader, %bb.fp
  %.sroa.0.013.i645 = phi i32 [ %i.zt, %bb.fp ], [ 0, %.lr.ph.i644.preheader ] ; 2 uses
  %.sroa.02.012.i646 = phi i32 [ %i.zu, %bb.fp ], [ 0, %.lr.ph.i644.preheader ] ; 3 uses
  %i.zk = phi i64 [ %i.zn, %bb.fp ], [ %i.zj, %.lr.ph.i644.preheader ] ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr @10842, i64 %i.zk
  %i.zm = load i8, ptr %i.zl, align 1, !noalias !13917, !noundef !21 ; 2 uses
  %i.zn = add nuw nsw i64 %i.zk, 1                ; 3 uses
  %i.zo = zext i8 %i.zm to i32                    ; 2 uses
  %i.zp = icmp sgt i8 %i.zm, -1
  br i1 %i.zp, label %bb.fq, label %bb.fp

._crit_edge.i648:                                 ; preds = %bb.fo, %bb.fp
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc649 unwind label %bb.gb

.noexc649:                                        ; preds = %._crit_edge.i648
  unreachable

bb.fp:                                            ; preds = %.lr.ph.i644
  %i.zq = and i32 %i.zo, 127
  %i.zr = and i32 %.sroa.02.012.i646, 31
  %i.zs = shl i32 %i.zq, %i.zr
  %i.zt = or i32 %i.zs, %.sroa.0.013.i645
  %i.zu = add nuw nsw i32 %.sroa.02.012.i646, 7
  %exitcond.not.i647 = icmp eq i64 %i.zn, 13463
  br i1 %exitcond.not.i647, label %._crit_edge.i648, label %.lr.ph.i644

bb.fq:                                            ; preds = %.lr.ph.i644
  %i.zv = and i32 %.sroa.02.012.i646, 31
  %i.zw = shl i32 %i.zo, %i.zv
  %i.zx = or i32 %i.zw, %.sroa.0.013.i645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  %.sroa.02007.0.copyload = load i64, ptr %i.fp, align 8 ; 5 uses
  %.sroa.52008.0.copyload = load ptr, ptr %.sroa.52008.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72009.0.copyload = load i64, ptr %.sroa.72009.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13918)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !13919
  call void @llvm.experimental.noalias.scope.decl(metadata !13920)
  call void @llvm.experimental.noalias.scope.decl(metadata !13921)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !13922
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.ft unwind label %bb.fr, !noalias !13922

bb.fr:                                            ; preds = %bb.fq
  %i.zy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zz = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.zz, label %.thread.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13923
  br label %.thread.i

bb.ft:                                            ; preds = %bb.fq
  store i64 %.sroa.01732.0, ptr %i.cg, align 8, !alias.scope !13924, !noalias !13925
  store ptr %.sroa.50.0, ptr %.sroa.52005.0..sroa_idx, align 8, !alias.scope !13924, !noalias !13925
  store i64 %.sroa.77.0, ptr %.sroa.72006.0..sroa_idx, align 8, !alias.scope !13924, !noalias !13925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kw, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !noalias !13926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !13922
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52008.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !13927
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52008.0.copyload, i64 noundef %.sroa.72009.0.copyload)
          to label %bb.fx unwind label %bb.fu, !noalias !13927

bb.fu:                                            ; preds = %bb.ft
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  %i.aab = icmp eq i64 %.sroa.02007.0.copyload, 0
  br i1 %i.aab, label %.body5.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52008.0.copyload, i64 noundef %.sroa.02007.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13928
  br label %.body5.i

.body5.i:                                         ; preds = %bb.fv, %bb.fu
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cg) #42, !noalias !13919
  br label %.body369

.thread.i:                                        ; preds = %bb.fs, %bb.fr
  %i.aac = icmp eq i64 %.sroa.02007.0.copyload, 0
  br i1 %i.aac, label %.body369, label %bb.fw

bb.fw:                                            ; preds = %.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52008.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52008.0.copyload, i64 noundef %.sroa.02007.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13929
  br label %.body369

bb.fx:                                            ; preds = %bb.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false), !noalias !13930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !13927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fo, ptr noundef nonnull align 8 dereferenceable(48) %i.cg, i64 48, i1 false), !noalias !13930
  store i64 %.sroa.02007.0.copyload, ptr %i.kx, align 8, !alias.scope !13918
  store ptr %.sroa.52008.0.copyload, ptr %.sroa.4.0..sroa_idx.i660, align 8, !alias.scope !13918
  store i64 %.sroa.72009.0.copyload, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !13918
  store i32 %i.zx, ptr %i.ky, align 8, !alias.scope !13918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !13919
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13931
  %i.aad = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !13931 ; 3 uses
  %i.aae = icmp eq ptr %i.aad, null
  br i1 %i.aae, label %bb.fy, label %bb.ga, !prof !26

bb.fy:                                            ; preds = %bb.fx
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc664 unwind label %bb.fz

.noexc664:                                        ; preds = %bb.fy
  unreachable

bb.fz:                                            ; preds = %bb.fy
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info19SimpleInstrInfo_bndEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fo) #42
  br label %.body369

bb.ga:                                            ; preds = %bb.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aad, ptr noundef nonnull align 8 dereferenceable(104) %i.fo, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  br label %bb.dq

bb.gb:                                            ; preds = %._crit_edge.i648
  %i.aag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13932)
  %.val.i666 = load i64, ptr %i.fp, align 8, !alias.scope !13932 ; 2 uses
  %i.aah = icmp eq i64 %.val.i666, 0
  br i1 %i.aah, label %.thread2361, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %.val1.i667 = load ptr, ptr %.sroa.52008.0..sroa_idx, align 8, !alias.scope !13932, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i667, i64 noundef %.val.i666, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13932
  br label %.thread2361

bb.gd:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62260.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !noalias !13933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !13865
  store i64 %.sroa.01732.0, ptr %i.ct, align 8, !noalias !13933
  store ptr %.sroa.50.0, ptr %.sroa.42258.0..sroa_idx, align 8, !noalias !13933
  store i64 %.sroa.77.0, ptr %.sroa.52259.0..sroa_idx, align 8, !noalias !13933
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13934
  %i.aai = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !13934 ; 3 uses
  %i.aaj = icmp eq ptr %i.aai, null
  br i1 %i.aaj, label %bb.ge, label %bb.gg, !prof !26

bb.ge:                                            ; preds = %bb.gd
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc669 unwind label %bb.gf

.noexc669:                                        ; preds = %bb.ge
  unreachable

bb.gf:                                            ; preds = %bb.ge
  %i.aak = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_ST_STiEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ct) #42
  br label %.body369

bb.gg:                                            ; preds = %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aai, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.dq

bb.gh:                                            ; preds = %switch.lookup.i
  %switch.idx.cast.i = trunc nuw nsw i16 %switch.tableidx.i to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !13935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !13869
  store i64 %.sroa.01732.0, ptr %i.fn, align 8, !alias.scope !13867
  store ptr %.sroa.50.0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !13867
  store i64 %.sroa.77.0, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !13867
  store i8 %switch.offset.i, ptr %i.kv, align 8, !alias.scope !13867
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13936
  %i.aal = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !13936 ; 3 uses
  %i.aam = icmp eq ptr %i.aal, null
  br i1 %i.aam, label %bb.gi, label %bb.gk, !prof !26

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc671 unwind label %bb.gj

.noexc671:                                        ; preds = %bb.gi
  unreachable

bb.gj:                                            ; preds = %bb.gi
  %i.aan = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info27SimpleInstrInfo_DeclareDataEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fn) #42
  br label %.body369

bb.gk:                                            ; preds = %bb.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aal, ptr noundef nonnull align 8 dereferenceable(56) %i.fn, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  br label %bb.dq

bb.gl:                                            ; preds = %.lr.ph.i444
  %i.aao = and i32 %.sroa.02.012.i446, 31
  %i.aap = shl i32 %i.qv, %i.aao
  %i.aaq = or i32 %i.aap, %.sroa.0.013.i445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  store i64 %.sroa.01732.0, ptr %i.fl, align 8
  store ptr %.sroa.50.0, ptr %.sroa.50.0..sroa_idx1807, align 8
  store i64 %.sroa.77.0, ptr %.sroa.77.0..sroa_idx1918, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !13937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !13938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !13938
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fl)
          to label %bb.gn unwind label %bb.gm, !noalias !13937

bb.gm:                                            ; preds = %bb.gl
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i673

bb.gn:                                            ; preds = %bb.gl
  call void @llvm.experimental.noalias.scope.decl(metadata !13939)
  call void @llvm.experimental.noalias.scope.decl(metadata !13940)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !13941
  %i.aas = load ptr, ptr %i.kp, align 8, !alias.scope !13940, !noalias !13938, !nonnull !21, !noundef !21 ; 2 uses
  %i.aat = load i64, ptr %i.kq, align 8, !alias.scope !13940, !noalias !13938, !noundef !21
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aas, i64 noundef %i.aat)
          to label %bb.gq unwind label %bb.go, !noalias !13942

bb.go:                                            ; preds = %bb.gn
  %i.aau = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13943)
  %.val.i.i.i678 = load i64, ptr %i.cc, align 8, !alias.scope !13944, !noalias !13938 ; 2 uses
  %i.aav = icmp eq i64 %.val.i.i.i678, 0
  br i1 %i.aav, label %.thread.i673, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aas, i64 noundef %.val.i.i.i678, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13945
  br label %.thread.i673

bb.gq:                                            ; preds = %bb.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !alias.scope !13946, !noalias !13938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kr, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !noalias !13947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !13941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !13938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !13948
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.gu unwind label %bb.gr, !noalias !13949

bb.gr:                                            ; preds = %bb.gq
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  %i.aax = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.aax, label %.body5.i684, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13950
  br label %.body5.i684

.body5.i684:                                      ; preds = %bb.gs, %bb.gr
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cd) #42, !noalias !13937
  br label %.body369

.thread.i673:                                     ; preds = %bb.gp, %bb.go, %bb.gm
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aar, %bb.gm ], [ %i.aau, %bb.gp ], [ %i.aau, %bb.go ] ; 2 uses
  %i.aay = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.aay, label %.body369, label %bb.gt

bb.gt:                                            ; preds = %.thread.i673
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13951
  br label %.body369

bb.gu:                                            ; preds = %bb.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i685, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !noalias !13952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !13948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fm, ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i64 48, i1 false), !noalias !13952
  store i64 %.sroa.01732.0, ptr %i.ks, align 8, !alias.scope !13937
  store ptr %.sroa.50.0, ptr %.sroa.4.0..sroa_idx.i686, align 8, !alias.scope !13937
  store i64 %.sroa.77.0, ptr %.sroa.514.0..sroa_idx.i687, align 8, !alias.scope !13937
  store i32 %i.aaq, ptr %i.kt, align 8, !alias.scope !13937
  store i32 0, ptr %i.ku, align 4, !alias.scope !13937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !13938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13953
  %i.aaz = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !13953 ; 3 uses
  %i.aba = icmp eq ptr %i.aaz, null
  br i1 %i.aba, label %bb.gv, label %bb.gx, !prof !26

bb.gv:                                            ; preds = %bb.gu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc691 unwind label %bb.gw

.noexc691:                                        ; preds = %bb.gv
  unreachable

bb.gw:                                            ; preds = %bb.gv
  %i.abb = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info18SimpleInstrInfo_erEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fm) #42
  br label %.body369

bb.gx:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aaz, ptr noundef nonnull align 8 dereferenceable(104) %i.fm, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  br label %bb.dq

bb.gy:                                            ; preds = %bb.br
  %i.abc = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.abd = load i8, ptr %i.abc, align 1, !noalias !13954, !noundef !21
  %i.abe = zext i8 %i.abd to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.abe)
          to label %bb.gz unwind label %.body249.thread.loopexit.split-lp

bb.gz:                                            ; preds = %bb.gy
  %.not2728 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2728, label %._crit_edge.i708.invoke, label %.lr.ph.i695.preheader

.lr.ph.i695.preheader:                            ; preds = %bb.gz
  %i.abf = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i695

.lr.ph.i695:                                      ; preds = %.lr.ph.i695.preheader, %bb.ha
  %.sroa.0.013.i696 = phi i32 [ %i.abp, %bb.ha ], [ 0, %.lr.ph.i695.preheader ] ; 2 uses
  %.sroa.02.012.i697 = phi i32 [ %i.abq, %bb.ha ], [ 0, %.lr.ph.i695.preheader ] ; 3 uses
  %i.abg = phi i64 [ %i.abj, %bb.ha ], [ %i.abf, %.lr.ph.i695.preheader ] ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr @10842, i64 %i.abg
  %i.abi = load i8, ptr %i.abh, align 1, !noalias !13955, !noundef !21 ; 2 uses
  %i.abj = add nuw nsw i64 %i.abg, 1              ; 4 uses
  %i.abk = zext i8 %i.abi to i32                  ; 2 uses
  %i.abl = icmp sgt i8 %i.abi, -1
  br i1 %i.abl, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %.lr.ph.i695
  %i.abm = and i32 %i.abk, 127
  %i.abn = and i32 %.sroa.02.012.i697, 31
  %i.abo = shl i32 %i.abm, %i.abn
  %i.abp = or i32 %i.abo, %.sroa.0.013.i696
  %i.abq = add nuw nsw i32 %.sroa.02.012.i697, 7
  %exitcond.not.i698 = icmp eq i64 %i.abj, 13463
  br i1 %exitcond.not.i698, label %._crit_edge.i708.invoke, label %.lr.ph.i695

bb.hb:                                            ; preds = %.lr.ph.i695
  %i.abr = and i32 %.sroa.02.012.i697, 31
  %i.abs = shl i32 %i.abk, %i.abr
  %i.abt = or i32 %i.abs, %.sroa.0.013.i696
  %i.abu = icmp ult i64 %i.abg, 13462
  br i1 %i.abu, label %.lr.ph.i704, label %._crit_edge.i708.invoke

.lr.ph.i704:                                      ; preds = %bb.hb, %bb.hc
  %.sroa.0.013.i705 = phi i32 [ %i.acf, %bb.hc ], [ 0, %bb.hb ] ; 2 uses
  %.sroa.02.012.i706 = phi i32 [ %i.acg, %bb.hc ], [ 0, %bb.hb ] ; 3 uses
  %i.abv = phi i64 [ %i.aby, %bb.hc ], [ %i.abj, %bb.hb ] ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr @10842, i64 %i.abv
  %i.abx = load i8, ptr %i.abw, align 1, !noalias !13956, !noundef !21 ; 2 uses
  %i.aby = add nuw nsw i64 %i.abv, 1              ; 3 uses
  %i.abz = zext i8 %i.abx to i32                  ; 2 uses
  %i.aca = icmp sgt i8 %i.abx, -1
  br i1 %i.aca, label %bb.hd, label %bb.hc

._crit_edge.i708.invoke:                          ; preds = %bb.hb, %bb.gz, %bb.ha, %bb.hc
  %i.acb = phi i64 [ 13463, %bb.ha ], [ 13463, %bb.hc ], [ %i.abj, %bb.hb ], [ 13463, %bb.gz ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.acb, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i708.cont unwind label %bb.ho

._crit_edge.i708.cont:                            ; preds = %._crit_edge.i708.invoke
  unreachable

bb.hc:                                            ; preds = %.lr.ph.i704
  %i.acc = and i32 %i.abz, 127
  %i.acd = and i32 %.sroa.02.012.i706, 31
  %i.ace = shl i32 %i.acc, %i.acd
  %i.acf = or i32 %i.ace, %.sroa.0.013.i705
  %i.acg = add nuw nsw i32 %.sroa.02.012.i706, 7
  %exitcond.not.i707 = icmp eq i64 %i.aby, 13463
  br i1 %exitcond.not.i707, label %._crit_edge.i708.invoke, label %.lr.ph.i704

bb.hd:                                            ; preds = %.lr.ph.i704
  %i.ach = and i32 %.sroa.02.012.i706, 31
  %i.aci = shl i32 %i.abz, %i.ach
  %i.acj = or i32 %i.aci, %.sroa.0.013.i705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  %.sroa.02016.0.copyload = load i64, ptr %i.fk, align 8 ; 5 uses
  %.sroa.52017.0.copyload = load ptr, ptr %.sroa.52017.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72018.0.copyload = load i64, ptr %.sroa.72018.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13957)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !13958
  call void @llvm.experimental.noalias.scope.decl(metadata !13959)
  call void @llvm.experimental.noalias.scope.decl(metadata !13960)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !13961
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.hg unwind label %bb.he, !noalias !13961

bb.he:                                            ; preds = %bb.hd
  %i.ack = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acl = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.acl, label %.thread.i712, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13962
  br label %.thread.i712

bb.hg:                                            ; preds = %bb.hd
  store i64 %.sroa.01732.0, ptr %i.bz, align 8, !alias.scope !13963, !noalias !13964
  store ptr %.sroa.50.0, ptr %.sroa.52014.0..sroa_idx, align 8, !alias.scope !13963, !noalias !13964
  store i64 %.sroa.77.0, ptr %.sroa.72015.0..sroa_idx, align 8, !alias.scope !13963, !noalias !13964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kl, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !noalias !13965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !13961
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52017.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !13966
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52017.0.copyload, i64 noundef %.sroa.72018.0.copyload)
          to label %bb.hk unwind label %bb.hh, !noalias !13966

bb.hh:                                            ; preds = %bb.hg
  %i.acm = landingpad { ptr, i32 }
          cleanup
  %i.acn = icmp eq i64 %.sroa.02016.0.copyload, 0
  br i1 %i.acn, label %.body5.i722, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52017.0.copyload, i64 noundef %.sroa.02016.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13967
  br label %.body5.i722

.body5.i722:                                      ; preds = %bb.hi, %bb.hh
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bz) #42, !noalias !13958
  br label %.body369

.thread.i712:                                     ; preds = %bb.hf, %bb.he
  %i.aco = icmp eq i64 %.sroa.02016.0.copyload, 0
  br i1 %i.aco, label %.body369, label %bb.hj

bb.hj:                                            ; preds = %.thread.i712
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52017.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52017.0.copyload, i64 noundef %.sroa.02016.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13968
  br label %.body369

bb.hk:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i723, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !noalias !13969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !13966
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fj, ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i64 48, i1 false), !noalias !13969
  store i64 %.sroa.02016.0.copyload, ptr %i.km, align 8, !alias.scope !13957
  store ptr %.sroa.52017.0.copyload, ptr %.sroa.4.0..sroa_idx.i724, align 8, !alias.scope !13957
  store i64 %.sroa.72018.0.copyload, ptr %.sroa.514.0..sroa_idx.i725, align 8, !alias.scope !13957
  store i32 %i.abt, ptr %i.kn, align 8, !alias.scope !13957
  store i32 %i.acj, ptr %i.ko, align 4, !alias.scope !13957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !13958
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13970
  %i.acp = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !13970 ; 3 uses
  %i.acq = icmp eq ptr %i.acp, null
  br i1 %i.acq, label %bb.hl, label %bb.hn, !prof !26

bb.hl:                                            ; preds = %bb.hk
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc729 unwind label %bb.hm

.noexc729:                                        ; preds = %bb.hl
  unreachable

bb.hm:                                            ; preds = %bb.hl
  %i.acr = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info18SimpleInstrInfo_erEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fj) #42
  br label %.body369

bb.hn:                                            ; preds = %bb.hk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.acp, ptr noundef nonnull align 8 dereferenceable(104) %i.fj, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  br label %bb.dq

bb.ho:                                            ; preds = %._crit_edge.i708.invoke
  %i.acs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13971)
  %.val.i731 = load i64, ptr %i.fk, align 8, !alias.scope !13971 ; 2 uses
  %i.act = icmp eq i64 %.val.i731, 0
  br i1 %i.act, label %.thread2361, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %.val1.i732 = load ptr, ptr %.sroa.52017.0..sroa_idx, align 8, !alias.scope !13971, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i732, i64 noundef %.val.i731, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13971
  br label %.thread2361

bb.hq:                                            ; preds = %bb.bs
  %i.acu = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.acv = load i8, ptr %i.acu, align 1, !noalias !13972, !noundef !21
  %i.acw = zext i8 %i.acv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.acw)
          to label %bb.hr unwind label %.body249.thread.loopexit.split-lp

bb.hr:                                            ; preds = %bb.hq
  %.not2727 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2727, label %._crit_edge.i740, label %.lr.ph.i736.preheader

.lr.ph.i736.preheader:                            ; preds = %bb.hr
  %i.acx = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i736

.lr.ph.i736:                                      ; preds = %.lr.ph.i736.preheader, %bb.hs
  %.sroa.0.013.i737 = phi i32 [ %i.adh, %bb.hs ], [ 0, %.lr.ph.i736.preheader ] ; 2 uses
  %.sroa.02.012.i738 = phi i32 [ %i.adi, %bb.hs ], [ 0, %.lr.ph.i736.preheader ] ; 3 uses
  %i.acy = phi i64 [ %i.adb, %bb.hs ], [ %i.acx, %.lr.ph.i736.preheader ] ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr @10842, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1, !noalias !13973, !noundef !21 ; 2 uses
  %i.adb = add nuw nsw i64 %i.acy, 1              ; 3 uses
  %i.adc = zext i8 %i.ada to i32                  ; 2 uses
  %i.add = icmp sgt i8 %i.ada, -1
  br i1 %i.add, label %bb.ht, label %bb.hs

._crit_edge.i740:                                 ; preds = %bb.hr, %bb.hs
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc741 unwind label %bb.ie

.noexc741:                                        ; preds = %._crit_edge.i740
  unreachable

bb.hs:                                            ; preds = %.lr.ph.i736
  %i.ade = and i32 %i.adc, 127
  %i.adf = and i32 %.sroa.02.012.i738, 31
  %i.adg = shl i32 %i.ade, %i.adf
  %i.adh = or i32 %i.adg, %.sroa.0.013.i737
  %i.adi = add nuw nsw i32 %.sroa.02.012.i738, 7
  %exitcond.not.i739 = icmp eq i64 %i.adb, 13463
  br i1 %exitcond.not.i739, label %._crit_edge.i740, label %.lr.ph.i736

bb.ht:                                            ; preds = %.lr.ph.i736
  %i.adj = and i32 %.sroa.02.012.i738, 31
  %i.adk = shl i32 %i.adc, %i.adj
  %i.adl = or i32 %i.adk, %.sroa.0.013.i737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  %.sroa.02022.0.copyload = load i64, ptr %i.fi, align 8 ; 5 uses
  %.sroa.52023.0.copyload = load ptr, ptr %.sroa.52023.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72024.0.copyload = load i64, ptr %.sroa.72024.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13974)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !13975
  call void @llvm.experimental.noalias.scope.decl(metadata !13976)
  call void @llvm.experimental.noalias.scope.decl(metadata !13977)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !13978
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.hw unwind label %bb.hu, !noalias !13978

bb.hu:                                            ; preds = %bb.ht
  %i.adm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adn = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.adn, label %.thread.i744, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13979
  br label %.thread.i744

bb.hw:                                            ; preds = %bb.ht
  store i64 %.sroa.01732.0, ptr %i.bw, align 8, !alias.scope !13980, !noalias !13981
  store ptr %.sroa.50.0, ptr %.sroa.52020.0..sroa_idx, align 8, !alias.scope !13980, !noalias !13981
  store i64 %.sroa.77.0, ptr %.sroa.72021.0..sroa_idx, align 8, !alias.scope !13980, !noalias !13981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ki, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !13982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !13978
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52023.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !13983
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52023.0.copyload, i64 noundef %.sroa.72024.0.copyload)
          to label %bb.ia unwind label %bb.hx, !noalias !13983

bb.hx:                                            ; preds = %bb.hw
  %i.ado = landingpad { ptr, i32 }
          cleanup
  %i.adp = icmp eq i64 %.sroa.02022.0.copyload, 0
  br i1 %i.adp, label %.body5.i754, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52023.0.copyload, i64 noundef %.sroa.02022.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13984
  br label %.body5.i754

.body5.i754:                                      ; preds = %bb.hy, %bb.hx
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bw) #42, !noalias !13975
  br label %.body369

.thread.i744:                                     ; preds = %bb.hv, %bb.hu
  %i.adq = icmp eq i64 %.sroa.02022.0.copyload, 0
  br i1 %i.adq, label %.body369, label %bb.hz

bb.hz:                                            ; preds = %.thread.i744
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52023.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52023.0.copyload, i64 noundef %.sroa.02022.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13985
  br label %.body369

bb.ia:                                            ; preds = %bb.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i755, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !noalias !13986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !13983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fh, ptr noundef nonnull align 8 dereferenceable(48) %i.bw, i64 48, i1 false), !noalias !13986
  store i64 %.sroa.02022.0.copyload, ptr %i.kj, align 8, !alias.scope !13974
  store ptr %.sroa.52023.0.copyload, ptr %.sroa.4.0..sroa_idx.i756, align 8, !alias.scope !13974
  store i64 %.sroa.72024.0.copyload, ptr %.sroa.514.0..sroa_idx.i757, align 8, !alias.scope !13974
  store i32 %i.adl, ptr %i.kk, align 8, !alias.scope !13974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !13975
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13987
  %i.adr = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !13987 ; 3 uses
  %i.ads = icmp eq ptr %i.adr, null
  br i1 %i.ads, label %bb.ib, label %bb.id, !prof !26

bb.ib:                                            ; preds = %bb.ia
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc761 unwind label %bb.ic

.noexc761:                                        ; preds = %bb.ib
  unreachable

bb.ic:                                            ; preds = %bb.ib
  %i.adt = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info19SimpleInstrInfo_farEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fh) #42
  br label %.body369

bb.id:                                            ; preds = %bb.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.adr, ptr noundef nonnull align 8 dereferenceable(104) %i.fh, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  br label %bb.dq

bb.ie:                                            ; preds = %._crit_edge.i740
  %i.adu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13988)
  %.val.i763 = load i64, ptr %i.fi, align 8, !alias.scope !13988 ; 2 uses
  %i.adv = icmp eq i64 %.val.i763, 0
  br i1 %i.adv, label %.thread2361, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %.val1.i764 = load ptr, ptr %.sroa.52023.0..sroa_idx, align 8, !alias.scope !13988, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i764, i64 noundef %.val.i763, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13988
  br label %.thread2361

bb.ig:                                            ; preds = %bb.bt
  %i.adw = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.adx = load i8, ptr %i.adw, align 1, !noalias !13989, !noundef !21
  %i.ady = add nuw nsw i64 %.sroa.156.2, 1
  %i.adz = zext i8 %i.adx to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.adz)
          to label %bb.ih unwind label %.body249.thread.loopexit.split-lp

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff)
  call void @llvm.experimental.noalias.scope.decl(metadata !13990)
  call void @llvm.experimental.noalias.scope.decl(metadata !13991)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !13992
  call void @llvm.experimental.noalias.scope.decl(metadata !13993)
  call void @llvm.experimental.noalias.scope.decl(metadata !13994)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !13995
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.ik unwind label %bb.ii, !noalias !13995

bb.ii:                                            ; preds = %bb.ih
  %i.aea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeb = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.aeb, label %.thread.i767, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !13996
  br label %.thread.i767

bb.ik:                                            ; preds = %bb.ih
  store i64 %.sroa.01732.0, ptr %i.bt, align 8, !alias.scope !13997, !noalias !13998
  store ptr %.sroa.50.0, ptr %.sroa.52026.0..sroa_idx, align 8, !alias.scope !13997, !noalias !13998
  store i64 %.sroa.77.0, ptr %.sroa.72027.0..sroa_idx, align 8, !alias.scope !13997, !noalias !13998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kg, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !13999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !13995
  %.sroa.0.0.copyload.i772 = load i64, ptr %i.fg, align 8, !alias.scope !13991 ; 3 uses
  %.sroa.5.0.copyload.i774 = load ptr, ptr %.sroa.5.0..sroa_idx.i773, align 8, !alias.scope !13991, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.6.0.copyload.i776 = load i64, ptr %.sroa.6.0..sroa_idx.i775, align 8, !alias.scope !13991 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !14000
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i774, i64 noundef %.sroa.6.0.copyload.i776)
          to label %bb.io unwind label %bb.il, !noalias !14000

bb.il:                                            ; preds = %bb.ik
  %i.aec = landingpad { ptr, i32 }
          cleanup
  %i.aed = icmp eq i64 %.sroa.0.0.copyload.i772, 0
  br i1 %i.aed, label %.body5.i777, label %bb.im

bb.im:                                            ; preds = %bb.il
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i774, i64 noundef %.sroa.0.0.copyload.i772, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14001
  br label %.body5.i777

.body5.i777:                                      ; preds = %bb.im, %bb.il
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bt) #42, !noalias !13992
  br label %.body369

.thread.i767:                                     ; preds = %bb.ij, %bb.ii
  call void @llvm.experimental.noalias.scope.decl(metadata !14002)
  %.val.i.i768 = load i64, ptr %i.fg, align 8, !alias.scope !14003 ; 2 uses
  %i.aee = icmp eq i64 %.val.i.i768, 0
  br i1 %i.aee, label %.body369, label %bb.in

bb.in:                                            ; preds = %.thread.i767
  %.val1.i.i769 = load ptr, ptr %.sroa.5.0..sroa_idx.i773, align 8, !alias.scope !14003, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i769, i64 noundef %.val.i.i768, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14004
  br label %.body369

bb.io:                                            ; preds = %bb.ik
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i778, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !noalias !14005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !14000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ff, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i64 48, i1 false), !noalias !14005
  store i64 %.sroa.0.0.copyload.i772, ptr %i.kh, align 8, !alias.scope !13990
  store ptr %.sroa.5.0.copyload.i774, ptr %.sroa.4.0..sroa_idx.i779, align 8, !alias.scope !13990
  store i64 %.sroa.6.0.copyload.i776, ptr %.sroa.514.0..sroa_idx.i780, align 8, !alias.scope !13990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !13992
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14006
  %i.aef = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14006 ; 3 uses
  %i.aeg = icmp eq ptr %i.aef, null
  br i1 %i.aeg, label %bb.ip, label %bb.ir, !prof !26

bb.ip:                                            ; preds = %bb.io
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #46
          to label %.noexc784 unwind label %bb.iq

.noexc784:                                        ; preds = %bb.ip
  unreachable

bb.iq:                                            ; preds = %bb.ip
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info20SimpleInstrInfo_imulEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ff) #42
  br label %.body369

bb.ir:                                            ; preds = %bb.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aef, ptr noundef nonnull align 8 dereferenceable(96) %i.ff, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  br label %bb.dq

bb.is:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62264.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !noalias !14007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !13873
  store i64 %.sroa.01732.0, ptr %i.fe, align 8, !noalias !14007
  store ptr %.sroa.50.0, ptr %.sroa.42262.0..sroa_idx, align 8, !noalias !14007
  store i64 %.sroa.77.0, ptr %.sroa.52263.0..sroa_idx, align 8, !noalias !14007
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14008
  %i.aei = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14008 ; 3 uses
  %i.aej = icmp eq ptr %i.aei, null
  br i1 %i.aej, label %bb.it, label %bb.iv, !prof !26

bb.it:                                            ; preds = %bb.is
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc786 unwind label %bb.iu

.noexc786:                                        ; preds = %bb.it
  unreachable

bb.iu:                                            ; preds = %bb.it
  %i.aek = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info24SimpleInstrInfo_maskmovqEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fe) #42
  br label %.body369

bb.iv:                                            ; preds = %bb.is
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aei, ptr noundef nonnull align 8 dereferenceable(48) %i.fe, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  br label %bb.dq

bb.iw:                                            ; preds = %bb.bx
  %i.ael = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.aem = load i8, ptr %i.ael, align 1, !noalias !14009, !noundef !21
  %i.aen = zext i8 %i.aem to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.aen)
          to label %bb.ix unwind label %.body249.thread.loopexit.split-lp

bb.ix:                                            ; preds = %bb.iw
  %.not2726 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2726, label %._crit_edge.i794, label %.lr.ph.i790.preheader

.lr.ph.i790.preheader:                            ; preds = %bb.ix
  %i.aeo = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i790

.lr.ph.i790:                                      ; preds = %.lr.ph.i790.preheader, %bb.iy
  %.sroa.0.013.i791 = phi i32 [ %i.aey, %bb.iy ], [ 0, %.lr.ph.i790.preheader ] ; 2 uses
  %.sroa.02.012.i792 = phi i32 [ %i.aez, %bb.iy ], [ 0, %.lr.ph.i790.preheader ] ; 3 uses
  %i.aep = phi i64 [ %i.aes, %bb.iy ], [ %i.aeo, %.lr.ph.i790.preheader ] ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr @10842, i64 %i.aep
  %i.aer = load i8, ptr %i.aeq, align 1, !noalias !14010, !noundef !21 ; 2 uses
  %i.aes = add nuw nsw i64 %i.aep, 1              ; 3 uses
  %i.aet = zext i8 %i.aer to i32                  ; 2 uses
  %i.aeu = icmp sgt i8 %i.aer, -1
  br i1 %i.aeu, label %bb.ja, label %bb.iy

._crit_edge.i794:                                 ; preds = %bb.ix, %bb.iy
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc795 unwind label %bb.iz

.noexc795:                                        ; preds = %._crit_edge.i794
  unreachable

bb.iy:                                            ; preds = %.lr.ph.i790
  %i.aev = and i32 %i.aet, 127
  %i.aew = and i32 %.sroa.02.012.i792, 31
  %i.aex = shl i32 %i.aev, %i.aew
  %i.aey = or i32 %i.aex, %.sroa.0.013.i791
  %i.aez = add nuw nsw i32 %.sroa.02.012.i792, 7
  %exitcond.not.i793 = icmp eq i64 %i.aes, 13463
  br i1 %exitcond.not.i793, label %._crit_edge.i794, label %.lr.ph.i790

bb.iz:                                            ; preds = %._crit_edge.i794, %bb.je, %bb.jd
  %i.afa = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

bb.ja:                                            ; preds = %.lr.ph.i790
  %i.afb = and i32 %.sroa.02.012.i792, 31
  %i.afc = shl i32 %i.aet, %i.afb
  %i.afd = or i32 %i.afc, %.sroa.0.013.i791
  %i.afe = zext i32 %i.afd to i64                 ; 3 uses
  %i.aff = icmp ugt i64 %i.ny, %i.afe
  br i1 %i.aff, label %bb.jb, label %bb.jd

bb.jb:                                            ; preds = %bb.ja
  %i.afg = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.afe ; 2 uses
  %i.afh = load ptr, ptr %i.afg, align 8, !nonnull !21, !noundef !21
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  %i.afj = load i64, ptr %i.afi, align 8, !noundef !21 ; 13 uses
  %.not.i797 = icmp slt i64 %i.afj, 0
  br i1 %.not.i797, label %bb.je, label %bb.jc, !prof !37

bb.jc:                                            ; preds = %bb.jb
  %i.afk = icmp eq i64 %i.afj, 0                  ; 3 uses
  br i1 %i.afk, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit800.thread2393, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i798

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i798: ; preds = %bb.jc
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14011
  %i.afl = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.afj, i64 noundef range(i64 1, 9) 1) #41, !noalias !14011 ; 3 uses
  %i.afm = icmp eq ptr %i.afl, null
  br i1 %i.afm, label %bb.je, label %bb.jf

bb.jd:                                            ; preds = %bb.ja
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.afe, i64 noundef %i.ny, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10810) #46
          to label %bb.u unwind label %bb.iz

bb.je:                                            ; preds = %bb.jb, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i798
  %.sroa.42210.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i798 ], [ 0, %bb.jb ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42210.0.ph, i64 %i.afj) #46
          to label %bb.u unwind label %bb.iz

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit800.thread2393: ; preds = %bb.jc, %bb.jf
  %i.afn = phi ptr [ %i.afl, %bb.jf ], [ inttoptr (i64 1 to ptr), %bb.jc ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afn, i64 noundef %i.afj, i32 noundef %i.aen)
          to label %bb.jg unwind label %bb.kb

bb.jf:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i798
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afl, ptr nonnull align 1 %i.afh, i64 %i.afj, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit800.thread2393

bb.jg:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit800.thread2393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  %.sroa.02037.0.copyload = load i64, ptr %i.fd, align 8 ; 6 uses
  %.sroa.52038.0.copyload = load ptr, ptr %.sroa.52038.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72039.0.copyload = load i64, ptr %.sroa.72039.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14012)
  call void @llvm.experimental.noalias.scope.decl(metadata !14013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !14014
  call void @llvm.experimental.noalias.scope.decl(metadata !14015)
  call void @llvm.experimental.noalias.scope.decl(metadata !14016)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !14017
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.jj unwind label %bb.jh, !noalias !14017

bb.jh:                                            ; preds = %bb.jg
  %i.afo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afp = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.afp, label %.thread.i802, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14018
  br label %.thread.i802

bb.jj:                                            ; preds = %bb.jg
  store i64 %.sroa.01732.0, ptr %i.bq, align 8, !alias.scope !14019, !noalias !14020
  store ptr %.sroa.50.0, ptr %.sroa.52035.0..sroa_idx, align 8, !alias.scope !14019, !noalias !14020
  store i64 %.sroa.77.0, ptr %.sroa.72036.0..sroa_idx, align 8, !alias.scope !14019, !noalias !14020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !14021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !14017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !14014
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52038.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14022)
  call void @llvm.experimental.noalias.scope.decl(metadata !14023)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !14024
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52038.0.copyload, i64 noundef %.sroa.72039.0.copyload)
          to label %bb.jm unwind label %bb.jk, !noalias !14024

bb.jk:                                            ; preds = %bb.jj
  %i.afq = landingpad { ptr, i32 }
          cleanup
  %i.afr = icmp eq i64 %.sroa.02037.0.copyload, 0
  br i1 %i.afr, label %.body9.thread.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52038.0.copyload, i64 noundef %.sroa.02037.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14025
  br label %.body9.thread.i

.body9.thread.i:                                  ; preds = %bb.jl, %bb.jk
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bq) #42, !noalias !14014
  br label %.thread.i802

.body9.i:                                         ; preds = %.body19.i, %bb.jo, %bb.jn
  %.pn.i = phi { ptr, i32 } [ %i.aft, %.body19.i ], [ %i.afs, %bb.jn ], [ %i.afs, %bb.jo ] ; 2 uses
  %.sroa.0.2.i = phi i1 [ false, %.body19.i ], [ true, %bb.jn ], [ true, %bb.jo ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bp) #42, !noalias !14014
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bq) #42, !noalias !14014
  br i1 %.sroa.0.2.i, label %.thread.i802, label %.body369

bb.jm:                                            ; preds = %bb.jj
  store i64 %.sroa.02037.0.copyload, ptr %i.bp, align 8, !alias.scope !14026, !noalias !14014
  store ptr %.sroa.52038.0.copyload, ptr %.sroa.5.0..sroa_idx29.i, align 8, !alias.scope !14026, !noalias !14014
  store i64 %.sroa.72039.0.copyload, ptr %.sroa.6.0..sroa_idx31.i, align 8, !alias.scope !14026, !noalias !14014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !14027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !14024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !14014
  call void @llvm.experimental.noalias.scope.decl(metadata !14028)
  call void @llvm.experimental.noalias.scope.decl(metadata !14029)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !14030
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afn, i64 noundef %i.afj)
          to label %bb.jp unwind label %bb.jn, !noalias !14030

bb.jn:                                            ; preds = %bb.jm
  %i.afs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.afk, label %.body9.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afn, i64 noundef %i.afj, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14031
  br label %.body9.i

bb.jp:                                            ; preds = %bb.jm
  store i64 %i.afj, ptr %i.bo, align 8, !alias.scope !14032, !noalias !14014
  store ptr %i.afn, ptr %.sroa.535.0..sroa_idx36.i, align 8, !alias.scope !14032, !noalias !14014
  store i64 %i.afj, ptr %.sroa.638.0..sroa_idx39.i, align 8, !alias.scope !14032, !noalias !14014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !noalias !14033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !14030
  %.sroa.041.0.copyload.i = load i64, ptr %i.fc, align 8, !alias.scope !14013 ; 3 uses
  %.sroa.543.0.copyload.i = load ptr, ptr %.sroa.543.0..sroa_idx.i, align 8, !alias.scope !14013, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.646.0.copyload.i = load i64, ptr %.sroa.646.0..sroa_idx.i, align 8, !alias.scope !14013 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !14034
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.543.0.copyload.i, i64 noundef %.sroa.646.0.copyload.i)
          to label %bb.jx unwind label %bb.jq, !noalias !14034

bb.jq:                                            ; preds = %bb.jp
  %i.aft = landingpad { ptr, i32 }
          cleanup
  %i.afu = icmp eq i64 %.sroa.041.0.copyload.i, 0
  br i1 %i.afu, label %.body19.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.543.0.copyload.i, i64 noundef %.sroa.041.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14035
  br label %.body19.i

.body19.i:                                        ; preds = %bb.jr, %bb.jq
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bo) #42, !noalias !14014
  br label %.body9.i

.thread.i802:                                     ; preds = %.body9.i, %.body9.thread.i, %bb.ji, %bb.jh
  %.sroa.01.061.i = phi i1 [ false, %.body9.i ], [ true, %bb.jh ], [ true, %bb.ji ], [ true, %.body9.thread.i ]
  %.sroa.02.059.i = phi i1 [ true, %.body9.i ], [ false, %bb.jh ], [ false, %bb.ji ], [ true, %.body9.thread.i ] ; 2 uses
  %.pn.pn.pn57.i = phi { ptr, i32 } [ %.pn.i, %.body9.i ], [ %i.afo, %bb.jh ], [ %i.afo, %bb.ji ], [ %i.afq, %.body9.thread.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14036)
  %.val.i.i803 = load i64, ptr %i.fc, align 8, !alias.scope !14037 ; 2 uses
  %i.afv = icmp eq i64 %.val.i.i803, 0
  br i1 %i.afv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i805, label %bb.js

bb.js:                                            ; preds = %.thread.i802
  %.val1.i.i804 = load ptr, ptr %.sroa.543.0..sroa_idx.i, align 8, !alias.scope !14037, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i804, i64 noundef %.val.i.i803, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14038
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i805

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i805: ; preds = %bb.js, %.thread.i802
  br i1 %.sroa.01.061.i, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i805
  %.old = icmp eq i64 %.sroa.02037.0.copyload, 0
  %or.cond2732 = select i1 %.sroa.02.059.i, i1 true, i1 %.old
  br i1 %or.cond2732, label %.body369, label %bb.jw

bb.ju:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i805
  %i.afw = icmp eq i64 %i.afj, 0
  br i1 %i.afw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afn, i64 noundef %i.afj, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14039
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i: ; preds = %bb.jv, %bb.ju
  %i.afx = icmp eq i64 %.sroa.02037.0.copyload, 0
  %or.cond = select i1 %.sroa.02.059.i, i1 true, i1 %i.afx
  br i1 %or.cond, label %.body369, label %bb.jw

bb.jw:                                            ; preds = %bb.jt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52038.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52038.0.copyload, i64 noundef %.sroa.02037.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14040
  br label %.body369
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl4read:bb.a
bb.ln:                                            ; preds = %bb.lm
  %i.aho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahp = icmp eq i64 %.sroa.02053.0.copyload, 0
  br i1 %i.ahp, label %.body9.i861, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52054.0.copyload, i64 noundef %.sroa.02053.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14098
  br label %.body9.i861

bb.lp:                                            ; preds = %bb.lm
  store i64 %.sroa.02053.0.copyload, ptr %i.ay, align 8, !alias.scope !14099, !noalias !14081
  store ptr %.sroa.52054.0.copyload, ptr %.sroa.535.0..sroa_idx36.i864, align 8, !alias.scope !14099, !noalias !14081
  store i64 %.sroa.72055.0.copyload, ptr %.sroa.638.0..sroa_idx39.i865, align 8, !alias.scope !14099, !noalias !14081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jo, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !14100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !14097
  %.sroa.041.0.copyload.i866 = load i64, ptr %i.ex, align 8, !alias.scope !14080 ; 3 uses
  %.sroa.543.0.copyload.i868 = load ptr, ptr %.sroa.543.0..sroa_idx.i867, align 8, !alias.scope !14080, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.646.0.copyload.i870 = load i64, ptr %.sroa.646.0..sroa_idx.i869, align 8, !alias.scope !14080 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !14101
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.543.0.copyload.i868, i64 noundef %.sroa.646.0.copyload.i870)
          to label %bb.lx unwind label %bb.lq, !noalias !14101

bb.lq:                                            ; preds = %bb.lp
  %i.ahq = landingpad { ptr, i32 }
          cleanup
  %i.ahr = icmp eq i64 %.sroa.041.0.copyload.i866, 0
  br i1 %i.ahr, label %.body19.i871, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.543.0.copyload.i868, i64 noundef %.sroa.041.0.copyload.i866, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14102
  br label %.body19.i871

.body19.i871:                                     ; preds = %bb.lr, %bb.lq
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ay) #42, !noalias !14081
  br label %.body9.i861

.thread.i838:                                     ; preds = %.body9.i861, %.body9.thread.i853, %bb.li, %bb.lh
  %.sroa.02053.0.copyload6653 = phi i64 [ %.sroa.02053.0.copyload6654, %.body9.i861 ], [ %.sroa.02053.0.copyload, %bb.lh ], [ %.sroa.02053.0.copyload, %bb.li ], [ %.sroa.02053.0.copyload, %.body9.thread.i853 ] ; 2 uses
  %.sroa.01.063.i = phi i1 [ false, %.body9.i861 ], [ true, %bb.lh ], [ true, %bb.li ], [ true, %.body9.thread.i853 ]
  %.sroa.02.061.i = phi i1 [ true, %.body9.i861 ], [ false, %bb.lh ], [ false, %bb.li ], [ true, %.body9.thread.i853 ] ; 2 uses
  %.pn.pn.pn59.i = phi { ptr, i32 } [ %.pn.i862, %.body9.i861 ], [ %i.ahk, %bb.lh ], [ %i.ahk, %bb.li ], [ %i.ahm, %.body9.thread.i853 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14103)
  %.val.i.i839 = load i64, ptr %i.ex, align 8, !alias.scope !14104 ; 2 uses
  %i.ahs = icmp eq i64 %.val.i.i839, 0
  br i1 %i.ahs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i841, label %bb.ls

bb.ls:                                            ; preds = %.thread.i838
  %.val1.i.i840 = load ptr, ptr %.sroa.543.0..sroa_idx.i867, align 8, !alias.scope !14104, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i840, i64 noundef %.val.i.i839, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14105
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i841

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i841: ; preds = %bb.ls, %.thread.i838
  br i1 %.sroa.01.063.i, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i841
  %.old2733 = icmp eq i64 %.sroa.02050.0.copyload, 0
  %or.cond2736 = select i1 %.sroa.02.061.i, i1 true, i1 %.old2733
  br i1 %or.cond2736, label %.body369, label %bb.lw

bb.lu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i841
  %i.aht = icmp eq i64 %.sroa.02053.0.copyload6653, 0
  br i1 %i.aht, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i847, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52054.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52054.0.copyload, i64 noundef %.sroa.02053.0.copyload6653, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14106
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i847

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i847: ; preds = %bb.lv, %bb.lu
  %i.ahu = icmp eq i64 %.sroa.02050.0.copyload, 0
  %or.cond2734 = select i1 %.sroa.02.061.i, i1 true, i1 %i.ahu
  br i1 %or.cond2734, label %.body369, label %bb.lw

bb.lw:                                            ; preds = %bb.lt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i847
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52051.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52051.0.copyload, i64 noundef %.sroa.02050.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14107
  br label %.body369

bb.lx:                                            ; preds = %bb.lp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !14108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !14101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !14081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.az, i64 48, i1 false), !noalias !14081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.96..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false), !noalias !14081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !14081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !14081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !14081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ew, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.052.i, i64 144, i1 false), !noalias !14108
  store i64 %.sroa.041.0.copyload.i866, ptr %.sroa.653.0..sroa_idx.i, align 8, !alias.scope !14079
  store ptr %.sroa.543.0.copyload.i868, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !14079
  store i64 %.sroa.646.0.copyload.i870, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !14079
  store i8 %i.ahg, ptr %i.jp, align 8, !alias.scope !14079
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.052.i)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14109
  %i.ahv = call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14109 ; 3 uses
  %i.ahw = icmp eq ptr %i.ahv, null
  br i1 %i.ahw, label %bb.ly, label %bb.ma, !prof !26

bb.ly:                                            ; preds = %bb.lx
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #46
          to label %.noexc875 unwind label %bb.lz

.noexc875:                                        ; preds = %bb.ly
  unreachable

bb.lz:                                            ; preds = %bb.ly
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringj4_EBG_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(200) %i.ew) #45
  br label %.body369

bb.ma:                                            ; preds = %bb.lx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ahv, ptr noundef nonnull align 8 dereferenceable(200) %i.ew, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  br label %bb.dq

bb.mb:                                            ; preds = %bb.lf
  %i.ahy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14110)
  %.val.i877 = load i64, ptr %i.ey, align 8, !alias.scope !14110 ; 2 uses
  %i.ahz = icmp eq i64 %.val.i877, 0
  br i1 %i.ahz, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %.val1.i878 = load ptr, ptr %.sroa.52054.0..sroa_idx, align 8, !alias.scope !14110, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i878, i64 noundef %.val.i877, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14110
  br label %bb.md

bb.md:                                            ; preds = %bb.le, %bb.mb, %bb.mc
  %.pn239.ph = phi { ptr, i32 } [ %i.ahi, %bb.le ], [ %i.ahy, %bb.mb ], [ %i.ahy, %bb.mc ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14111)
  %.val.i880 = load i64, ptr %i.ez, align 8, !alias.scope !14111 ; 2 uses
  %i.aia = icmp eq i64 %.val.i880, 0
  br i1 %i.aia, label %.thread2361, label %bb.me

bb.me:                                            ; preds = %bb.md
  %.val1.i881 = load ptr, ptr %.sroa.52051.0..sroa_idx, align 8, !alias.scope !14111, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i881, i64 noundef %.val.i880, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14111
  br label %.thread2361

bb.mf:                                            ; preds = %.lr.ph.i477
  %i.aib = and i32 %.sroa.02.012.i479, 31
  %i.aic = shl i32 %i.sa, %i.aib
  %i.aid = or i32 %i.aic, %.sroa.0.013.i478
  %i.aie = zext i32 %i.aid to i64                 ; 3 uses
  %i.aif = icmp ugt i64 %i.ny, %i.aie
  br i1 %i.aif, label %bb.mg, label %.invoke13564

bb.mg:                                            ; preds = %bb.mf
  %i.aig = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.aie ; 2 uses
  %i.aih = load ptr, ptr %i.aig, align 8, !nonnull !21, !noundef !21
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 8
  %i.aij = load i64, ptr %i.aii, align 8, !noundef !21 ; 12 uses
  %.not.i883 = icmp slt i64 %i.aij, 0
  br i1 %.not.i883, label %.invoke13562, label %bb.mh, !prof !37

bb.mh:                                            ; preds = %bb.mg
  %i.aik = icmp eq i64 %i.aij, 0                  ; 5 uses
  br i1 %i.aik, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit886.thread2414, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i884

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i884: ; preds = %bb.mh
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14112
  %i.ail = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aij, i64 noundef range(i64 1, 9) 1) #41, !noalias !14112 ; 3 uses
  %i.aim = icmp eq ptr %i.ail, null
  br i1 %i.aim, label %.invoke13562, label %bb.mj

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit886.thread2414: ; preds = %bb.mh, %bb.mj
  %i.ain = phi ptr [ %i.ail, %bb.mj ], [ inttoptr (i64 1 to ptr), %bb.mh ] ; 5 uses
  %i.aio = icmp ult i64 %i.rw, 13462
  br i1 %i.aio, label %.lr.ph.i889, label %._crit_edge.i893

.lr.ph.i889:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit886.thread2414, %bb.mi
  %.sroa.0.013.i890 = phi i32 [ %i.aiy, %bb.mi ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit886.thread2414 ] ; 2 uses
  %.sroa.02.012.i891 = phi i32 [ %i.aiz, %bb.mi ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit886.thread2414 ] ; 3 uses
  %i.aip = phi i64 [ %i.ais, %bb.mi ], [ %i.rz, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit886.thread2414 ] ; 3 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr @10842, i64 %i.aip
  %i.air = load i8, ptr %i.aiq, align 1, !noalias !14113, !noundef !21 ; 2 uses
  %i.ais = add nuw nsw i64 %i.aip, 1              ; 4 uses
  %i.ait = zext i8 %i.air to i32                  ; 2 uses
  %i.aiu = icmp sgt i8 %i.air, -1
  br i1 %i.aiu, label %bb.ml, label %bb.mi

._crit_edge.i893:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit886.thread2414, %bb.mi
  %.lcssa7.i888 = phi i64 [ 13463, %bb.mi ], [ %i.rz, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit886.thread2414 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i888, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc894 unwind label %bb.mk

.noexc894:                                        ; preds = %._crit_edge.i893
  unreachable

bb.mi:                                            ; preds = %.lr.ph.i889
  %i.aiv = and i32 %i.ait, 127
  %i.aiw = and i32 %.sroa.02.012.i891, 31
  %i.aix = shl i32 %i.aiv, %i.aiw
  %i.aiy = or i32 %i.aix, %.sroa.0.013.i890
  %i.aiz = add nuw nsw i32 %.sroa.02.012.i891, 7
  %exitcond.not.i892 = icmp eq i64 %i.ais, 13463
  br i1 %exitcond.not.i892, label %._crit_edge.i893, label %.lr.ph.i889

bb.mj:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i884
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ail, ptr nonnull align 1 %i.aih, i64 %i.aij, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit886.thread2414

bb.mk:                                            ; preds = %._crit_edge.i893, %bb.mp, %bb.mo
  %i.aja = landingpad { ptr, i32 }
          cleanup
  br label %bb.nu

bb.ml:                                            ; preds = %.lr.ph.i889
  %i.ajb = and i32 %.sroa.02.012.i891, 31
  %i.ajc = shl i32 %i.ait, %i.ajb
  %i.ajd = or i32 %i.ajc, %.sroa.0.013.i890
  %i.aje = zext i32 %i.ajd to i64                 ; 3 uses
  %i.ajf = icmp ugt i64 %i.ny, %i.aje
  br i1 %i.ajf, label %bb.mm, label %bb.mo

bb.mm:                                            ; preds = %bb.ml
  %i.ajg = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.aje ; 2 uses
  %i.ajh = load ptr, ptr %i.ajg, align 8, !nonnull !21, !noundef !21
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  %i.ajj = load i64, ptr %i.aji, align 8, !noundef !21 ; 12 uses
  %.not.i896 = icmp slt i64 %i.ajj, 0
  br i1 %.not.i896, label %bb.mp, label %bb.mn, !prof !37

bb.mn:                                            ; preds = %bb.mm
  %i.ajk = icmp eq i64 %i.ajj, 0                  ; 3 uses
  br i1 %i.ajk, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit899.thread2430, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i897

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i897: ; preds = %bb.mn
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14114
  %i.ajl = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ajj, i64 noundef range(i64 1, 9) 1) #41, !noalias !14114 ; 3 uses
  %i.ajm = icmp eq ptr %i.ajl, null
  br i1 %i.ajm, label %bb.mp, label %bb.mr

bb.mo:                                            ; preds = %bb.ml
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aje, i64 noundef %i.ny, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10815) #46
          to label %bb.u unwind label %bb.mk

bb.mp:                                            ; preds = %bb.mm, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i897
  %.sroa.42218.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i897 ], [ 0, %bb.mm ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42218.0.ph, i64 %i.ajj) #46
          to label %bb.u unwind label %bb.mk

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit899.thread2430: ; preds = %bb.mn, %bb.mr
  %i.ajn = phi ptr [ %i.ajl, %bb.mr ], [ inttoptr (i64 1 to ptr), %bb.mn ] ; 5 uses
  %i.ajo = icmp ult i64 %i.aip, 13462
  br i1 %i.ajo, label %.lr.ph.i902, label %._crit_edge.i906

.lr.ph.i902:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit899.thread2430, %bb.mq
  %.sroa.0.013.i903 = phi i32 [ %i.ajy, %bb.mq ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit899.thread2430 ] ; 2 uses
  %.sroa.02.012.i904 = phi i32 [ %i.ajz, %bb.mq ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit899.thread2430 ] ; 3 uses
  %i.ajp = phi i64 [ %i.ajs, %bb.mq ], [ %i.ais, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit899.thread2430 ] ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr @10842, i64 %i.ajp
  %i.ajr = load i8, ptr %i.ajq, align 1, !noalias !14115, !noundef !21 ; 2 uses
  %i.ajs = add nuw nsw i64 %i.ajp, 1              ; 3 uses
  %i.ajt = zext i8 %i.ajr to i32                  ; 2 uses
  %i.aju = icmp sgt i8 %i.ajr, -1
  br i1 %i.aju, label %bb.ms, label %bb.mq

._crit_edge.i906:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit899.thread2430, %bb.mq
  %.lcssa7.i901 = phi i64 [ 13463, %bb.mq ], [ %i.ais, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit899.thread2430 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i901, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc907 unwind label %bb.ns

.noexc907:                                        ; preds = %._crit_edge.i906
  unreachable

bb.mq:                                            ; preds = %.lr.ph.i902
  %i.ajv = and i32 %i.ajt, 127
  %i.ajw = and i32 %.sroa.02.012.i904, 31
  %i.ajx = shl i32 %i.ajv, %i.ajw
  %i.ajy = or i32 %i.ajx, %.sroa.0.013.i903
  %i.ajz = add nuw nsw i32 %.sroa.02.012.i904, 7
  %exitcond.not.i905 = icmp eq i64 %i.ajs, 13463
  br i1 %exitcond.not.i905, label %._crit_edge.i906, label %.lr.ph.i902

bb.mr:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i897
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ajl, ptr nonnull align 1 %i.ajh, i64 %i.ajj, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit899.thread2430

bb.ms:                                            ; preds = %.lr.ph.i902
  %i.aka = and i32 %.sroa.02.012.i904, 31
  %i.akb = shl i32 %i.ajt, %i.aka
  %i.akc = or i32 %i.akb, %.sroa.0.013.i903
  %i.akd = zext i32 %i.akc to i64                 ; 3 uses
  %i.ake = icmp ugt i64 %i.ny, %i.akd
  br i1 %i.ake, label %bb.mt, label %bb.mv

bb.mt:                                            ; preds = %bb.ms
  %i.akf = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.akd ; 2 uses
  %i.akg = load ptr, ptr %i.akf, align 8, !nonnull !21, !noundef !21
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  %i.aki = load i64, ptr %i.akh, align 8, !noundef !21 ; 10 uses
  %.not.i909 = icmp slt i64 %i.aki, 0
  br i1 %.not.i909, label %bb.mw, label %bb.mu, !prof !37

bb.mu:                                            ; preds = %bb.mt
  %i.akj = icmp eq i64 %i.aki, 0                  ; 3 uses
  br i1 %i.akj, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit912.thread2445, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i910

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i910: ; preds = %bb.mu
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14116
  %i.akk = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aki, i64 noundef range(i64 1, 9) 1) #41, !noalias !14116 ; 3 uses
  %i.akl = icmp eq ptr %i.akk, null
  br i1 %i.akl, label %bb.mw, label %bb.nn

bb.mv:                                            ; preds = %bb.ms
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.akd, i64 noundef %i.ny, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10816) #46
          to label %bb.u unwind label %bb.ns

bb.mw:                                            ; preds = %bb.mt, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i910
  %.sroa.42222.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i910 ], [ 0, %bb.mt ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42222.0.ph, i64 %i.aki) #46
          to label %bb.u unwind label %bb.ns

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit912.thread2445: ; preds = %bb.mu, %bb.nn
  %i.akm = phi ptr [ %i.akk, %bb.nn ], [ inttoptr (i64 1 to ptr), %bb.mu ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  call void @llvm.experimental.noalias.scope.decl(metadata !14117)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.052.i913)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !14118
  call void @llvm.experimental.noalias.scope.decl(metadata !14119)
  call void @llvm.experimental.noalias.scope.decl(metadata !14120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !14121
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.mz unwind label %bb.mx, !noalias !14121

bb.mx:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit912.thread2445
  %i.akn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ako = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.ako, label %.thread.i915, label %bb.my

bb.my:                                            ; preds = %bb.mx
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14122
  br label %.thread.i915

bb.mz:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit912.thread2445
  store i64 %.sroa.01732.0, ptr %i.at, align 8, !alias.scope !14123, !noalias !14124
  store ptr %.sroa.50.0, ptr %.sroa.52067.0..sroa_idx, align 8, !alias.scope !14123, !noalias !14124
  store i64 %.sroa.77.0, ptr %.sroa.72068.0..sroa_idx, align 8, !alias.scope !14123, !noalias !14124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !14125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !14121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !14118
  call void @llvm.experimental.noalias.scope.decl(metadata !14126)
  call void @llvm.experimental.noalias.scope.decl(metadata !14127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !14128
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ain, i64 noundef %i.aij)
          to label %bb.nc unwind label %bb.na, !noalias !14128

bb.na:                                            ; preds = %bb.mz
  %i.akp = landingpad { ptr, i32 }
          cleanup
  br i1 %i.aik, label %.body9.thread.i934, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ain, i64 noundef %i.aij, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14129
  br label %.body9.thread.i934

.body9.thread.i934:                               ; preds = %bb.nb, %bb.na
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.at) #42, !noalias !14118
  br label %.thread.i915

.body9.i942:                                      ; preds = %.body19.i952, %bb.ne, %bb.nd
  %.pn.i943 = phi { ptr, i32 } [ %i.akr, %.body19.i952 ], [ %i.akq, %bb.nd ], [ %i.akq, %bb.ne ] ; 2 uses
  %.sroa.0.2.i944 = phi i1 [ false, %.body19.i952 ], [ true, %bb.nd ], [ true, %bb.ne ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.as) #42, !noalias !14118
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.at) #42, !noalias !14118
  br i1 %.sroa.0.2.i944, label %.thread.i915, label %.body369

bb.nc:                                            ; preds = %bb.mz
  store i64 %i.aij, ptr %i.as, align 8, !alias.scope !14130, !noalias !14118
  store ptr %i.ain, ptr %.sroa.5.0..sroa_idx29.i935, align 8, !alias.scope !14130, !noalias !14118
  store i64 %i.aij, ptr %.sroa.6.0..sroa_idx31.i936, align 8, !alias.scope !14130, !noalias !14118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !14131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !14128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !14118
  call void @llvm.experimental.noalias.scope.decl(metadata !14132)
  call void @llvm.experimental.noalias.scope.decl(metadata !14133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !14134
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajn, i64 noundef %i.ajj)
          to label %bb.nf unwind label %bb.nd, !noalias !14134

bb.nd:                                            ; preds = %bb.nc
  %i.akq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ajk, label %.body9.i942, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajn, i64 noundef %i.ajj, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14135
  br label %.body9.i942

bb.nf:                                            ; preds = %bb.nc
  store i64 %i.ajj, ptr %i.ar, align 8, !alias.scope !14136, !noalias !14118
  store ptr %i.ajn, ptr %.sroa.535.0..sroa_idx36.i945, align 8, !alias.scope !14136, !noalias !14118
  store i64 %i.ajj, ptr %.sroa.638.0..sroa_idx39.i946, align 8, !alias.scope !14136, !noalias !14118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !14137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !14134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !14138
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akm, i64 noundef %i.aki)
          to label %bb.no unwind label %bb.ng, !noalias !14138

bb.ng:                                            ; preds = %bb.nf
  %i.akr = landingpad { ptr, i32 }
          cleanup
  br i1 %i.akj, label %.body19.i952, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akm, i64 noundef %i.aki, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14139
  br label %.body19.i952

.body19.i952:                                     ; preds = %bb.nh, %bb.ng
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ar) #42, !noalias !14118
  br label %.body9.i942

.thread.i915:                                     ; preds = %.body9.i942, %.body9.thread.i934, %bb.my, %bb.mx
  %.sroa.01.063.i916 = phi i1 [ false, %.body9.i942 ], [ true, %bb.mx ], [ true, %bb.my ], [ true, %.body9.thread.i934 ]
  %.sroa.02.061.i917 = phi i1 [ true, %.body9.i942 ], [ %i.aik, %bb.mx ], [ %i.aik, %bb.my ], [ true, %.body9.thread.i934 ] ; 2 uses
  %.pn.pn.pn59.i918 = phi { ptr, i32 } [ %.pn.i943, %.body9.i942 ], [ %i.akn, %bb.mx ], [ %i.akn, %bb.my ], [ %i.akp, %.body9.thread.i934 ] ; 3 uses
  br i1 %i.akj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i921, label %bb.ni

bb.ni:                                            ; preds = %.thread.i915
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akm, i64 noundef %i.aki, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14140
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i921

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i921: ; preds = %bb.ni, %.thread.i915
  br i1 %.sroa.01.063.i916, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i921
  br i1 %.sroa.02.061.i917, label %.body369, label %bb.nm

bb.nk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i921
  %i.aks = icmp eq i64 %i.ajj, 0
  br i1 %i.aks, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i928, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajn, i64 noundef %i.ajj, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14141
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i928

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i928: ; preds = %bb.nl, %bb.nk
  br i1 %.sroa.02.061.i917, label %.body369, label %bb.nm

bb.nm:                                            ; preds = %bb.nj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i928
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ain, i64 noundef %i.aij, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14142
  br label %.body369

bb.nn:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i910
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akk, ptr nonnull align 1 %i.akg, i64 %i.aki, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit912.thread2445

bb.no:                                            ; preds = %bb.nf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i953, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !14143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !14138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.i913, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i64 48, i1 false), !noalias !14118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.48..sroa_idx.i954, ptr noundef nonnull align 8 dereferenceable(48) %i.as, i64 48, i1 false), !noalias !14118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.96..sroa_idx.i955, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false), !noalias !14118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !14118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !14118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !14118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ev, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.052.i913, i64 144, i1 false), !noalias !14143
  store i64 %i.aki, ptr %.sroa.653.0..sroa_idx.i956, align 8, !alias.scope !14117
  store ptr %i.akm, ptr %.sroa.7.0..sroa_idx.i957, align 8, !alias.scope !14117
  store i64 %i.aki, ptr %.sroa.8.0..sroa_idx.i958, align 8, !alias.scope !14117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.052.i913)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14144
  %i.akt = call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14144 ; 3 uses
  %i.aku = icmp eq ptr %i.akt, null
  br i1 %i.aku, label %bb.np, label %bb.nr, !prof !26

bb.np:                                            ; preds = %bb.no
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #46
          to label %.noexc962 unwind label %bb.nq

.noexc962:                                        ; preds = %bb.np
  unreachable

bb.nq:                                            ; preds = %bb.np
  %i.akv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringj4_EBG_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(192) %i.ev) #45
  br label %.body369

bb.nr:                                            ; preds = %bb.no
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.akt, ptr noundef nonnull align 8 dereferenceable(192) %i.ev, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  br label %bb.dq

bb.ns:                                            ; preds = %._crit_edge.i906, %bb.mw, %bb.mv
  %i.akw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ajk, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajn, i64 noundef %i.ajj, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14145
  br label %bb.nu

bb.nu:                                            ; preds = %bb.mk, %bb.ns, %bb.nt
  %.pn237.ph = phi { ptr, i32 } [ %i.aja, %bb.mk ], [ %i.akw, %bb.ns ], [ %i.akw, %bb.nt ] ; 2 uses
  br i1 %i.aik, label %.thread2361, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ain, i64 noundef %i.aij, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14146
  br label %.thread2361

bb.nw:                                            ; preds = %bb.cd
  %i.akx = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.aky = load i8, ptr %i.akx, align 1, !noalias !14147, !noundef !21
  %i.akz = zext i8 %i.aky to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.eu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.akz)
          to label %bb.nx unwind label %.body249.thread.loopexit.split-lp

bb.nx:                                            ; preds = %bb.nw
  %.not2725 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2725, label %._crit_edge.i976, label %.lr.ph.i972.preheader

.lr.ph.i972.preheader:                            ; preds = %bb.nx
  %i.ala = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i972

.lr.ph.i972:                                      ; preds = %.lr.ph.i972.preheader, %bb.ny
  %.sroa.0.013.i973 = phi i32 [ %i.alk, %bb.ny ], [ 0, %.lr.ph.i972.preheader ] ; 2 uses
  %.sroa.02.012.i974 = phi i32 [ %i.all, %bb.ny ], [ 0, %.lr.ph.i972.preheader ] ; 3 uses
  %i.alb = phi i64 [ %i.ale, %bb.ny ], [ %i.ala, %.lr.ph.i972.preheader ] ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr @10842, i64 %i.alb
  %i.ald = load i8, ptr %i.alc, align 1, !noalias !14148, !noundef !21 ; 2 uses
  %i.ale = add nuw nsw i64 %i.alb, 1              ; 3 uses
  %i.alf = zext i8 %i.ald to i32                  ; 2 uses
  %i.alg = icmp sgt i8 %i.ald, -1
  br i1 %i.alg, label %bb.nz, label %bb.ny

._crit_edge.i976:                                 ; preds = %bb.nx, %bb.ny
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc977 unwind label %bb.ok

.noexc977:                                        ; preds = %._crit_edge.i976
  unreachable

bb.ny:                                            ; preds = %.lr.ph.i972
  %i.alh = and i32 %i.alf, 127
  %i.ali = and i32 %.sroa.02.012.i974, 31
  %i.alj = shl i32 %i.alh, %i.ali
  %i.alk = or i32 %i.alj, %.sroa.0.013.i973
  %i.all = add nuw nsw i32 %.sroa.02.012.i974, 7
  %exitcond.not.i975 = icmp eq i64 %i.ale, 13463
  br i1 %exitcond.not.i975, label %._crit_edge.i976, label %.lr.ph.i972

bb.nz:                                            ; preds = %.lr.ph.i972
  %i.alm = and i32 %.sroa.02.012.i974, 31
  %i.aln = shl i32 %i.alf, %i.alm
  %i.alo = or i32 %i.aln, %.sroa.0.013.i973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  %.sroa.02080.0.copyload = load i64, ptr %i.eu, align 8 ; 5 uses
  %.sroa.52081.0.copyload = load ptr, ptr %.sroa.52081.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72082.0.copyload = load i64, ptr %.sroa.72082.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !14150
  call void @llvm.experimental.noalias.scope.decl(metadata !14151)
  call void @llvm.experimental.noalias.scope.decl(metadata !14152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !14153
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.oc unwind label %bb.oa, !noalias !14153

bb.oa:                                            ; preds = %bb.nz
  %i.alp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alq = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.alq, label %.thread.i980, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14154
  br label %.thread.i980

bb.oc:                                            ; preds = %bb.nz
  store i64 %.sroa.01732.0, ptr %i.am, align 8, !alias.scope !14155, !noalias !14156
  store ptr %.sroa.50.0, ptr %.sroa.52078.0..sroa_idx, align 8, !alias.scope !14155, !noalias !14156
  store i64 %.sroa.77.0, ptr %.sroa.72079.0..sroa_idx, align 8, !alias.scope !14155, !noalias !14156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !14157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !14153
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52081.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !14158
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52081.0.copyload, i64 noundef %.sroa.72082.0.copyload)
          to label %bb.og unwind label %bb.od, !noalias !14158

bb.od:                                            ; preds = %bb.oc
  %i.alr = landingpad { ptr, i32 }
          cleanup
  %i.als = icmp eq i64 %.sroa.02080.0.copyload, 0
  br i1 %i.als, label %.body5.i990, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52081.0.copyload, i64 noundef %.sroa.02080.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14159
  br label %.body5.i990

.body5.i990:                                      ; preds = %bb.oe, %bb.od
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.am) #42, !noalias !14150
  br label %.body369

.thread.i980:                                     ; preds = %bb.ob, %bb.oa
  %i.alt = icmp eq i64 %.sroa.02080.0.copyload, 0
  br i1 %i.alt, label %.body369, label %bb.of

bb.of:                                            ; preds = %.thread.i980
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52081.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52081.0.copyload, i64 noundef %.sroa.02080.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14160
  br label %.body369

bb.og:                                            ; preds = %bb.oc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i991, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !14161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !14158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.et, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !noalias !14161
  store i64 %.sroa.02080.0.copyload, ptr %i.jh, align 8, !alias.scope !14149
  store ptr %.sroa.52081.0.copyload, ptr %.sroa.4.0..sroa_idx.i992, align 8, !alias.scope !14149
  store i64 %.sroa.72082.0.copyload, ptr %.sroa.514.0..sroa_idx.i993, align 8, !alias.scope !14149
  store i32 %i.alo, ptr %i.ji, align 8, !alias.scope !14149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !14150
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14162
  %i.alu = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14162 ; 3 uses
  %i.alv = icmp eq ptr %i.alu, null
  br i1 %i.alv, label %bb.oh, label %bb.oj, !prof !26

bb.oh:                                            ; preds = %bb.og
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc997 unwind label %bb.oi

.noexc997:                                        ; preds = %bb.oh
  unreachable

bb.oi:                                            ; preds = %bb.oh
  %i.alw = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info23SimpleInstrInfo_OpSize3EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.et) #42
  br label %.body369

bb.oj:                                            ; preds = %bb.og
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.alu, ptr noundef nonnull align 8 dereferenceable(104) %i.et, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %bb.dq

bb.ok:                                            ; preds = %._crit_edge.i976
  %i.alx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14163)
  %.val.i999 = load i64, ptr %i.eu, align 8, !alias.scope !14163 ; 2 uses
  %i.aly = icmp eq i64 %.val.i999, 0
  br i1 %i.aly, label %.thread2361, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %.val1.i1000 = load ptr, ptr %.sroa.52081.0..sroa_idx, align 8, !alias.scope !14163, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1000, i64 noundef %.val.i999, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14163
  br label %.thread2361

bb.om:                                            ; preds = %.lr.ph.i488
  %i.alz = and i32 %.sroa.02.012.i490, 31
  %i.ama = shl i32 %i.sn, %i.alz
  %i.amb = or i32 %i.ama, %.sroa.0.013.i489
  %i.amc = icmp ult i64 %i.sj, 13462
  br i1 %i.amc, label %bb.on, label %.invoke13560

bb.on:                                            ; preds = %bb.om
  %i.amd = getelementptr inbounds nuw i8, ptr @10842, i64 %i.sm
  %i.ame = load i8, ptr %i.amd, align 1, !noalias !14164, !noundef !21
  %.not5685 = icmp eq i64 %i.sj, 13461
  br i1 %.not5685, label %.invoke13560, label %.lr.ph.i1006.preheader

.lr.ph.i1006.preheader:                           ; preds = %bb.on
  %i.amf = add nuw nsw i64 %i.sj, 2
  br label %.lr.ph.i1006

.lr.ph.i1006:                                     ; preds = %.lr.ph.i1006.preheader, %bb.oo
  %.sroa.0.013.i1007 = phi i32 [ %i.amp, %bb.oo ], [ 0, %.lr.ph.i1006.preheader ] ; 2 uses
  %.sroa.02.012.i1008 = phi i32 [ %i.amq, %bb.oo ], [ 0, %.lr.ph.i1006.preheader ] ; 3 uses
  %i.amg = phi i64 [ %i.amj, %bb.oo ], [ %i.amf, %.lr.ph.i1006.preheader ] ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr @10842, i64 %i.amg
  %i.ami = load i8, ptr %i.amh, align 1, !noalias !14165, !noundef !21 ; 2 uses
  %i.amj = add nuw nsw i64 %i.amg, 1              ; 3 uses
  %i.amk = zext i8 %i.ami to i32                  ; 2 uses
  %i.aml = icmp sgt i8 %i.ami, -1
  br i1 %i.aml, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %.lr.ph.i1006
  %i.amm = and i32 %i.amk, 127
  %i.amn = and i32 %.sroa.02.012.i1008, 31
  %i.amo = shl i32 %i.amm, %i.amn
  %i.amp = or i32 %i.amo, %.sroa.0.013.i1007
  %i.amq = add nuw nsw i32 %.sroa.02.012.i1008, 7
  %exitcond.not.i1009 = icmp eq i64 %i.amj, 13463
  br i1 %exitcond.not.i1009, label %.invoke13560, label %.lr.ph.i1006

bb.op:                                            ; preds = %.lr.ph.i1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  call void @llvm.experimental.noalias.scope.decl(metadata !14166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !14167
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.os unwind label %bb.oq, !noalias !14167

bb.oq:                                            ; preds = %bb.op
  %i.amr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ams = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.ams, label %.body369, label %bb.or

bb.or:                                            ; preds = %bb.oq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14168
  br label %.body369

bb.os:                                            ; preds = %bb.op
  %i.amt = icmp ne i8 %i.ame, 0
  %i.amu = and i32 %.sroa.02.012.i1008, 31
  %i.amv = shl i32 %i.amk, %i.amu
  %i.amw = or i32 %i.amv, %.sroa.0.013.i1007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62280.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !14169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !14167
  store i64 %.sroa.01732.0, ptr %i.es, align 8, !noalias !14169
  store ptr %.sroa.50.0, ptr %.sroa.42278.0..sroa_idx, align 8, !noalias !14169
  store i64 %.sroa.77.0, ptr %.sroa.52279.0..sroa_idx, align 8, !noalias !14169
  store i32 %i.amb, ptr %i.jd, align 8, !alias.scope !14166
  store i32 %i.amw, ptr %i.je, align 4, !alias.scope !14166
  %i.amx = zext i1 %i.amt to i8
  store i8 %i.amx, ptr %i.jf, align 8, !alias.scope !14166
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14170
  %i.amy = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14170 ; 3 uses
  %i.amz = icmp eq ptr %i.amy, null
  br i1 %i.amz, label %bb.ot, label %bb.ov, !prof !26

bb.ot:                                            ; preds = %bb.os
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #46
          to label %.noexc1019 unwind label %bb.ou

.noexc1019:                                       ; preds = %bb.ot
  unreachable

bb.ou:                                            ; preds = %bb.ot
  %i.ana = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info18SimpleInstrInfo_osEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.es) #42
  br label %.body369

bb.ov:                                            ; preds = %bb.os
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.amy, ptr noundef nonnull align 8 dereferenceable(64) %i.es, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  br label %bb.dq

bb.ow:                                            ; preds = %bb.cg
  %i.anb = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.anc = load i8, ptr %i.anb, align 1, !noalias !14171, !noundef !21
  %i.and = add nuw nsw i64 %.sroa.156.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.experimental.noalias.scope.decl(metadata !14172)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !14173
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.oz unwind label %bb.ox, !noalias !14173

bb.ox:                                            ; preds = %bb.ow
  %i.ane = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anf = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.anf, label %.body369, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14174
  br label %.body369

bb.oz:                                            ; preds = %bb.ow
  %i.ang = icmp ne i8 %i.anc, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62284.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !14175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !14173
  store i64 %.sroa.01732.0, ptr %i.cs, align 8, !noalias !14175
  store ptr %.sroa.50.0, ptr %.sroa.42282.0..sroa_idx, align 8, !noalias !14175
  store i64 %.sroa.77.0, ptr %.sroa.52283.0..sroa_idx, align 8, !noalias !14175
  %i.anh = zext i1 %i.ang to i8
  store i8 %i.anh, ptr %i.jc, align 8, !alias.scope !14172
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14176
  %i.ani = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14176 ; 3 uses
  %i.anj = icmp eq ptr %i.ani, null
  br i1 %i.anj, label %bb.pa, label %bb.pc, !prof !26

bb.pa:                                            ; preds = %bb.oz
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1027 unwind label %bb.pb

.noexc1027:                                       ; preds = %bb.pa
  unreachable

bb.pb:                                            ; preds = %bb.pa
  %i.ank = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_STi_STEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cs) #42
  br label %.body369

bb.pc:                                            ; preds = %bb.oz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ani, ptr noundef nonnull align 8 dereferenceable(56) %i.cs, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.dq

bb.pd:                                            ; preds = %.lr.ph.i499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.experimental.noalias.scope.decl(metadata !14177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !14178
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.pg unwind label %bb.pe, !noalias !14178

bb.pe:                                            ; preds = %bb.pd
  %i.anl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anm = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.anm, label %.body369, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14179
  br label %.body369

bb.pg:                                            ; preds = %bb.pd
  %i.ann = and i32 %.sroa.02.012.i501, 31
  %i.ano = shl i32 %i.ta, %i.ann
  %i.anp = or i32 %i.ano, %.sroa.0.013.i500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62288.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !14180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !14178
  store i64 %.sroa.01732.0, ptr %i.cu, align 8, !noalias !14180
  store ptr %.sroa.50.0, ptr %.sroa.42286.0..sroa_idx, align 8, !noalias !14180
  store i64 %.sroa.77.0, ptr %.sroa.52287.0..sroa_idx, align 8, !noalias !14180
  store i32 %i.anp, ptr %i.jb, align 8, !alias.scope !14177
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14181
  %i.anq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14181 ; 3 uses
  %i.anr = icmp eq ptr %i.anq, null
  br i1 %i.anr, label %bb.ph, label %bb.pj, !prof !26

bb.ph:                                            ; preds = %bb.pg
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1035 unwind label %bb.pi

.noexc1035:                                       ; preds = %bb.ph
  unreachable

bb.pi:                                            ; preds = %bb.ph
  %i.ans = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info19SimpleInstrInfo_saeEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cu) #42
  br label %.body369

bb.pj:                                            ; preds = %bb.pg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.anq, ptr noundef nonnull align 8 dereferenceable(56) %i.cu, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.dq

bb.pk:                                            ; preds = %bb.cj
  %i.ant = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.anu = load i8, ptr %i.ant, align 1, !noalias !14182, !noundef !21
  %i.anv = zext i8 %i.anu to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.er, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.anv)
          to label %bb.pl unwind label %.body249.thread.loopexit.split-lp

bb.pl:                                            ; preds = %bb.pk
  %.not2724 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2724, label %._crit_edge.i1043, label %.lr.ph.i1039.preheader

.lr.ph.i1039.preheader:                           ; preds = %bb.pl
  %i.anw = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1039

.lr.ph.i1039:                                     ; preds = %.lr.ph.i1039.preheader, %bb.pm
  %.sroa.0.013.i1040 = phi i32 [ %i.aog, %bb.pm ], [ 0, %.lr.ph.i1039.preheader ] ; 2 uses
  %.sroa.02.012.i1041 = phi i32 [ %i.aoh, %bb.pm ], [ 0, %.lr.ph.i1039.preheader ] ; 3 uses
  %i.anx = phi i64 [ %i.aoa, %bb.pm ], [ %i.anw, %.lr.ph.i1039.preheader ] ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr @10842, i64 %i.anx
  %i.anz = load i8, ptr %i.any, align 1, !noalias !14183, !noundef !21 ; 2 uses
  %i.aoa = add nuw nsw i64 %i.anx, 1              ; 3 uses
  %i.aob = zext i8 %i.anz to i32                  ; 2 uses
  %i.aoc = icmp sgt i8 %i.anz, -1
  br i1 %i.aoc, label %bb.pn, label %bb.pm

._crit_edge.i1043:                                ; preds = %bb.pl, %bb.pm
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1044 unwind label %.thread2463

.noexc1044:                                       ; preds = %._crit_edge.i1043
  unreachable

bb.pm:                                            ; preds = %.lr.ph.i1039
  %i.aod = and i32 %i.aob, 127
  %i.aoe = and i32 %.sroa.02.012.i1041, 31
  %i.aof = shl i32 %i.aod, %i.aoe
  %i.aog = or i32 %i.aof, %.sroa.0.013.i1040
  %i.aoh = add nuw nsw i32 %.sroa.02.012.i1041, 7
  %exitcond.not.i1042 = icmp eq i64 %i.aoa, 13463
  br i1 %exitcond.not.i1042, label %._crit_edge.i1043, label %.lr.ph.i1039

.thread2463:                                      ; preds = %._crit_edge.i1043, %bb.po
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  br label %.thread2453

bb.pn:                                            ; preds = %.lr.ph.i1039
  %i.aoj = and i32 %.sroa.02.012.i1041, 31
  %i.aok = shl i32 %i.aob, %i.aoj
  %i.aol = or i32 %i.aok, %.sroa.0.013.i1040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.aom = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.aon = icmp eq ptr %i.aom, null
  br i1 %i.aon, label %bb.po, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1047, !prof !26

bb.po:                                            ; preds = %bb.pn
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.noexc1046 unwind label %.thread2463

.noexc1046:                                       ; preds = %bb.po
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1047: ; preds = %bb.pn
  store i64 %.sroa.01732.0, ptr %i.aom, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52087.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aom, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52087.0..sroa_idx, align 8
  store i64 1, ptr %i.ep, align 8
  store ptr %i.aom, ptr %i.iv, align 8
  store i64 1, ptr %i.iw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.aoo = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 3 uses
  %i.aop = icmp eq ptr %i.aoo, null
  br i1 %i.aop, label %bb.pp, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1049, !prof !26

bb.pp:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1047
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.noexc1048 unwind label %bb.px

.noexc1048:                                       ; preds = %bb.pp
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1049: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aoo, ptr noundef nonnull align 8 dereferenceable(24) %i.er, i64 24, i1 false)
  store i64 1, ptr %i.eo, align 8
  store ptr %i.aoo, ptr %i.ix, align 8
  store i64 1, ptr %i.iy, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !14185
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ep)
          to label %bb.pq unwind label %bb.ps, !noalias !14186

bb.pq:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !14185
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eo)
          to label %bb.pt unwind label %bb.pr, !noalias !14187

bb.pr:                                            ; preds = %bb.pq
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #42, !noalias !14185
  br label %.body369

bb.ps:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1049
  %i.aor = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.eo) #42, !noalias !14187
  br label %.body369

bb.pt:                                            ; preds = %bb.pq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !14188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iz, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !14188
  store i32 %i.aol, ptr %i.ja, align 8, !alias.scope !14184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !14185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !14185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14189
  %i.aos = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14189 ; 3 uses
  %i.aot = icmp eq ptr %i.aos, null
  br i1 %i.aot, label %bb.pu, label %bb.pw, !prof !26

bb.pu:                                            ; preds = %bb.pt
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1052 unwind label %bb.pv

.noexc1052:                                       ; preds = %bb.pu
  unreachable

bb.pv:                                            ; preds = %bb.pu
  %i.aou = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.eq) #42
  br label %.body369

bb.pw:                                            ; preds = %bb.pt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aos, ptr noundef nonnull align 8 dereferenceable(56) %i.eq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  br label %bb.dq

bb.px:                                            ; preds = %bb.pp
  %i.aov = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ep) #42
  br label %.thread2453

.thread2453:                                      ; preds = %bb.px, %.thread2463
  %.sroa.0112.152458 = phi i1 [ true, %.thread2463 ], [ false, %bb.px ] ; 2 uses
  %.pn2322457 = phi { ptr, i32 } [ %i.aoi, %.thread2463 ], [ %i.aov, %bb.px ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14190)
  %.val.i1054 = load i64, ptr %i.er, align 8, !alias.scope !14190 ; 2 uses
  %i.aow = icmp eq i64 %.val.i1054, 0
  br i1 %i.aow, label %.body249, label %.split8534

.split8534:                                       ; preds = %.thread2453
  %i.aox = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.val1.i1055 = load ptr, ptr %i.aox, align 8, !alias.scope !14190, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1055, i64 noundef %.val.i1054, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14190
  br i1 %.sroa.0112.152458, label %.thread2361, label %.body369

bb.py:                                            ; preds = %.lr.ph.i510
  %i.aoy = and i32 %.sroa.02.012.i512, 31
  %i.aoz = shl i32 %i.tn, %i.aoy
  %i.apa = or i32 %i.aoz, %.sroa.0.013.i511
  %i.apb = zext i32 %i.apa to i64                 ; 3 uses
  %i.apc = icmp ugt i64 %i.ny, %i.apb
  br i1 %i.apc, label %bb.pz, label %.invoke13564

bb.pz:                                            ; preds = %bb.py
  %i.apd = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.apb ; 2 uses
  %i.ape = load ptr, ptr %i.apd, align 8, !nonnull !21, !noundef !21
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apd, i64 8
  %i.apg = load i64, ptr %i.apf, align 8, !noundef !21 ; 10 uses
  %.not.i1057 = icmp slt i64 %i.apg, 0
  br i1 %.not.i1057, label %.invoke13562, label %bb.qa, !prof !37

bb.qa:                                            ; preds = %bb.pz
  %i.aph = icmp eq i64 %i.apg, 0                  ; 2 uses
  br i1 %i.aph, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1060.thread2474, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058: ; preds = %bb.qa
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14191
  %i.api = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.apg, i64 noundef range(i64 1, 9) 1) #41, !noalias !14191 ; 3 uses
  %i.apj = icmp eq ptr %i.api, null
  br i1 %i.apj, label %.invoke13562, label %bb.qc

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1060.thread2474: ; preds = %bb.qa, %bb.qc
  %i.apk = phi ptr [ %i.api, %bb.qc ], [ inttoptr (i64 1 to ptr), %bb.qa ] ; 3 uses
  %i.apl = icmp ult i64 %i.tj, 13462
  br i1 %i.apl, label %bb.qd, label %bb.qb

bb.qb:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1060.thread2474
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.tm, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1061 unwind label %.thread2480.loopexit.split-lp.loopexit.split-lp

.noexc1061:                                       ; preds = %bb.qb
  unreachable

bb.qc:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.api, ptr nonnull align 1 %i.ape, i64 %i.apg, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1060.thread2474

.thread2497:                                      ; preds = %bb.qv, %bb.qu
  br i1 %.sroa.098.1.ph, label %.thread2480, label %.body369

.thread2480.loopexit.split-lp.loopexit.split-lp:  ; preds = %bb.qd, %bb.qb
  %lpad.loopexit.split-lp13617 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2480

bb.qd:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1060.thread2474
  %i.apm = getelementptr inbounds nuw i8, ptr @10842, i64 %i.tm
  %i.apn = load i8, ptr %i.apm, align 1, !noalias !14192, !noundef !21
  %i.apo = add nuw nsw i64 %i.tj, 2
  %i.app = zext i8 %i.apn to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.en, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.app)
          to label %bb.qe unwind label %.thread2480.loopexit.split-lp.loopexit.split-lp

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.apk, i64 noundef %i.apg, i32 noundef %i.app)
          to label %bb.qg unwind label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.apq = landingpad { ptr, i32 }
          cleanup
  br label %bb.qu

bb.qg:                                            ; preds = %bb.qe
  %.not5684 = icmp eq i64 %i.tj, 13461
  br i1 %.not5684, label %._crit_edge.i1069, label %.lr.ph.i1065

.lr.ph.i1065:                                     ; preds = %bb.qg, %bb.qh
  %.sroa.0.013.i1066 = phi i32 [ %i.aqa, %bb.qh ], [ 0, %bb.qg ] ; 2 uses
  %.sroa.02.012.i1067 = phi i32 [ %i.aqb, %bb.qh ], [ 0, %bb.qg ] ; 3 uses
  %i.apr = phi i64 [ %i.apu, %bb.qh ], [ %i.apo, %bb.qg ] ; 2 uses
  %i.aps = getelementptr inbounds nuw i8, ptr @10842, i64 %i.apr
  %i.apt = load i8, ptr %i.aps, align 1, !noalias !14193, !noundef !21 ; 2 uses
  %i.apu = add nuw nsw i64 %i.apr, 1              ; 3 uses
  %i.apv = zext i8 %i.apt to i32                  ; 2 uses
  %i.apw = icmp sgt i8 %i.apt, -1
  br i1 %i.apw, label %bb.qi, label %bb.qh

._crit_edge.i1069:                                ; preds = %bb.qg, %bb.qh
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1070 unwind label %.thread2501

.noexc1070:                                       ; preds = %._crit_edge.i1069
  unreachable

bb.qh:                                            ; preds = %.lr.ph.i1065
  %i.apx = and i32 %i.apv, 127
  %i.apy = and i32 %.sroa.02.012.i1067, 31
  %i.apz = shl i32 %i.apx, %i.apy
  %i.aqa = or i32 %i.apz, %.sroa.0.013.i1066
  %i.aqb = add nuw nsw i32 %.sroa.02.012.i1067, 7
  %exitcond.not.i1068 = icmp eq i64 %i.apu, 13463
  br i1 %exitcond.not.i1068, label %._crit_edge.i1069, label %.lr.ph.i1065

.thread2501:                                      ; preds = %._crit_edge.i1069, %bb.qj
  %i.aqc = landingpad { ptr, i32 }
          cleanup
  br label %.thread2491

bb.qi:                                            ; preds = %.lr.ph.i1065
  %i.aqd = and i32 %.sroa.02.012.i1067, 31
  %i.aqe = shl i32 %i.apv, %i.aqd
  %i.aqf = or i32 %i.aqe, %.sroa.0.013.i1066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.aqg = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.aqh = icmp eq ptr %i.aqg, null
  br i1 %i.aqh, label %bb.qj, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1073, !prof !26

bb.qj:                                            ; preds = %bb.qi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1072 unwind label %.thread2501

.noexc1072:                                       ; preds = %bb.qj
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1073: ; preds = %bb.qi
  store i64 %.sroa.01732.0, ptr %i.aqg, align 8
  %.sroa.42092.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.42092.0..sroa_idx, align 8
  %.sroa.52093.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqg, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52093.0..sroa_idx, align 8
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqg, i64 24
  store i64 %i.apg, ptr %i.aqi, align 8
  %.sroa.42095.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqg, i64 32
  store ptr %i.apk, ptr %.sroa.42095.0..sroa_idx, align 8
  %.sroa.52096.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqg, i64 40
  store i64 %i.apg, ptr %.sroa.52096.0..sroa_idx, align 8
  store i64 2, ptr %i.ek, align 8
  store ptr %i.aqg, ptr %i.ip, align 8
  store i64 2, ptr %i.iq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.aqj = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 4 uses
  %i.aqk = icmp eq ptr %i.aqj, null
  br i1 %i.aqk, label %bb.qk, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1075, !prof !26

bb.qk:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1073
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1074 unwind label %bb.qs

.noexc1074:                                       ; preds = %bb.qk
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1075: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqj, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false)
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aql, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false)
  store i64 2, ptr %i.ej, align 8
  store ptr %i.aqj, ptr %i.ir, align 8
  store i64 2, ptr %i.is, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14194)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !14195
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ek)
          to label %bb.ql unwind label %bb.qn, !noalias !14196

bb.ql:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !14195
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ej)
          to label %bb.qo unwind label %bb.qm, !noalias !14197

bb.qm:                                            ; preds = %bb.ql
  %i.aqm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #42, !noalias !14195
  br label %.body369

bb.qn:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1075
  %i.aqn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ej) #42, !noalias !14197
  br label %.body369

bb.qo:                                            ; preds = %bb.ql
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !14198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.it, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !14198
  store i32 %i.aqf, ptr %i.iu, align 8, !alias.scope !14194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !14195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !14195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14199
  %i.aqo = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14199 ; 3 uses
  %i.aqp = icmp eq ptr %i.aqo, null
  br i1 %i.aqp, label %bb.qp, label %bb.qr, !prof !26

bb.qp:                                            ; preds = %bb.qo
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1080 unwind label %bb.qq

.noexc1080:                                       ; preds = %bb.qp
  unreachable

bb.qq:                                            ; preds = %bb.qp
  %i.aqq = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.el) #42
  br label %.body369

bb.qr:                                            ; preds = %bb.qo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aqo, ptr noundef nonnull align 8 dereferenceable(56) %i.el, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  br label %bb.dq

bb.qs:                                            ; preds = %bb.qk
  %i.aqr = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ek) #42
  br label %.thread2491

.thread2491:                                      ; preds = %bb.qs, %.thread2501
  %.sroa.098.22496 = phi i1 [ true, %.thread2501 ], [ false, %bb.qs ] ; 2 uses
  %.pn2282495 = phi { ptr, i32 } [ %i.aqc, %.thread2501 ], [ %i.aqr, %bb.qs ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14200)
  %.val.i1082 = load i64, ptr %i.em, align 8, !alias.scope !14200 ; 2 uses
  %i.aqs = icmp eq i64 %.val.i1082, 0
  br i1 %i.aqs, label %bb.qu, label %bb.qt

bb.qt:                                            ; preds = %.thread2491
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.val1.i1083 = load ptr, ptr %i.aqt, align 8, !alias.scope !14200, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1083, i64 noundef %.val.i1082, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14200
  br label %bb.qu

bb.qu:                                            ; preds = %bb.qf, %.thread2491, %bb.qt
  %.pn228.pn.ph = phi { ptr, i32 } [ %i.apq, %bb.qf ], [ %.pn2282495, %.thread2491 ], [ %.pn2282495, %bb.qt ] ; 2 uses
  %.sroa.098.1.ph = phi i1 [ true, %bb.qf ], [ %.sroa.098.22496, %.thread2491 ], [ %.sroa.098.22496, %bb.qt ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14201)
  %.val.i1085 = load i64, ptr %i.en, align 8, !alias.scope !14201 ; 2 uses
  %i.aqu = icmp eq i64 %.val.i1085, 0
  br i1 %i.aqu, label %.thread2497, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.val1.i1086 = load ptr, ptr %i.aqv, align 8, !alias.scope !14201, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1086, i64 noundef %.val.i1085, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14201
  br label %.thread2497

.thread2480:                                      ; preds = %.thread2480.loopexit.split-lp.loopexit.split-lp, %.thread2497
  %.pn228.pn.pn2483 = phi { ptr, i32 } [ %.pn228.pn.ph, %.thread2497 ], [ %lpad.loopexit.split-lp13617, %.thread2480.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  br i1 %i.aph, label %.thread2361, label %bb.qw

bb.qw:                                            ; preds = %.thread2480
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.apk, i64 noundef %i.apg, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14202
  br label %.thread2361

bb.qx:                                            ; preds = %.lr.ph.i519
  %i.aqw = and i32 %.sroa.02.012.i521, 31
  %i.aqx = shl i32 %i.tz, %i.aqw
  %i.aqy = or i32 %i.aqx, %.sroa.0.013.i520
  %i.aqz = zext i32 %i.aqy to i64                 ; 3 uses
  %i.ara = icmp ugt i64 %i.ny, %i.aqz
  br i1 %i.ara, label %bb.qy, label %.invoke13564

bb.qy:                                            ; preds = %bb.qx
  %i.arb = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.aqz ; 2 uses
  %i.arc = load ptr, ptr %i.arb, align 8, !nonnull !21, !noundef !21
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  %i.are = load i64, ptr %i.ard, align 8, !noundef !21 ; 10 uses
  %.not.i1091 = icmp slt i64 %i.are, 0
  br i1 %.not.i1091, label %.invoke13562, label %bb.qz, !prof !37

bb.qz:                                            ; preds = %bb.qy
  %i.arf = icmp eq i64 %i.are, 0                  ; 2 uses
  br i1 %i.arf, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1094.thread2512, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1092

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1092: ; preds = %bb.qz
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14203
  %i.arg = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.are, i64 noundef range(i64 1, 9) 1) #41, !noalias !14203 ; 3 uses
  %i.arh = icmp eq ptr %i.arg, null
  br i1 %i.arh, label %.invoke13562, label %bb.rb

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1094.thread2512: ; preds = %bb.qz, %bb.rb
  %i.ari = phi ptr [ %i.arg, %bb.rb ], [ inttoptr (i64 1 to ptr), %bb.qz ] ; 3 uses
  %i.arj = icmp ult i64 %i.tv, 13462
  br i1 %i.arj, label %.lr.ph.i1097, label %._crit_edge.i1101

.lr.ph.i1097:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1094.thread2512, %bb.ra
  %.sroa.0.013.i1098 = phi i32 [ %i.art, %bb.ra ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1094.thread2512 ] ; 2 uses
  %.sroa.02.012.i1099 = phi i32 [ %i.aru, %bb.ra ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1094.thread2512 ] ; 3 uses
  %i.ark = phi i64 [ %i.arn, %bb.ra ], [ %i.ty, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1094.thread2512 ] ; 5 uses
  %i.arl = getelementptr inbounds nuw i8, ptr @10842, i64 %i.ark
  %i.arm = load i8, ptr %i.arl, align 1, !noalias !14204, !noundef !21 ; 2 uses
  %i.arn = add nuw nsw i64 %i.ark, 1              ; 4 uses
  %i.aro = zext i8 %i.arm to i32                  ; 2 uses
  %i.arp = icmp sgt i8 %i.arm, -1
  br i1 %i.arp, label %bb.rd, label %bb.ra

._crit_edge.i1101:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1094.thread2512, %bb.ra
  %.lcssa7.i1096 = phi i64 [ 13463, %bb.ra ], [ %i.ty, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1094.thread2512 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1096, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1102 unwind label %bb.rc

.noexc1102:                                       ; preds = %._crit_edge.i1101
  unreachable

bb.ra:                                            ; preds = %.lr.ph.i1097
  %i.arq = and i32 %i.aro, 127
  %i.arr = and i32 %.sroa.02.012.i1099, 31
  %i.ars = shl i32 %i.arq, %i.arr
  %i.art = or i32 %i.ars, %.sroa.0.013.i1098
  %i.aru = add nuw nsw i32 %.sroa.02.012.i1099, 7
  %exitcond.not.i1100 = icmp eq i64 %i.arn, 13463
  br i1 %exitcond.not.i1100, label %._crit_edge.i1101, label %.lr.ph.i1097

bb.rb:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1092
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.arg, ptr nonnull align 1 %i.arc, i64 %i.are, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1094.thread2512

bb.rc:                                            ; preds = %._crit_edge.i1101, %bb.rh, %bb.rg
  %i.arv = landingpad { ptr, i32 }
          cleanup
  br label %bb.si

bb.rd:                                            ; preds = %.lr.ph.i1097
  %i.arw = and i32 %.sroa.02.012.i1099, 31
  %i.arx = shl i32 %i.aro, %i.arw
  %i.ary = or i32 %i.arx, %.sroa.0.013.i1098
  %i.arz = zext i32 %i.ary to i64                 ; 3 uses
  %i.asa = icmp ugt i64 %i.ny, %i.arz
  br i1 %i.asa, label %bb.re, label %bb.rg

bb.re:                                            ; preds = %bb.rd
  %i.asb = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.arz ; 2 uses
  %i.asc = load ptr, ptr %i.asb, align 8, !nonnull !21, !noundef !21
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asb, i64 8
  %i.ase = load i64, ptr %i.asd, align 8, !noundef !21 ; 9 uses
  %.not.i1104 = icmp slt i64 %i.ase, 0
  br i1 %.not.i1104, label %bb.rh, label %bb.rf, !prof !37

bb.rf:                                            ; preds = %bb.re
  %i.asf = icmp eq i64 %i.ase, 0                  ; 2 uses
  br i1 %i.asf, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1107.thread2528, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1105

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1105: ; preds = %bb.rf
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14205
  %i.asg = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ase, i64 noundef range(i64 1, 9) 1) #41, !noalias !14205 ; 3 uses
  %i.ash = icmp eq ptr %i.asg, null
  br i1 %i.ash, label %bb.rh, label %bb.rj

bb.rg:                                            ; preds = %bb.rd
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.arz, i64 noundef %i.ny, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10825) #46
          to label %bb.u unwind label %bb.rc

bb.rh:                                            ; preds = %bb.re, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1105
  %.sroa.42234.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1105 ], [ 0, %bb.re ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42234.0.ph, i64 %i.ase) #46
          to label %bb.u unwind label %bb.rc

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1107.thread2528: ; preds = %bb.rf, %bb.rj
  %i.asi = phi ptr [ %i.asg, %bb.rj ], [ inttoptr (i64 1 to ptr), %bb.rf ] ; 3 uses
  %i.asj = icmp ult i64 %i.ark, 13462
  br i1 %i.asj, label %bb.rk, label %bb.ri

bb.ri:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1107.thread2528
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.arn, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1108 unwind label %.thread2534.loopexit.split-lp.loopexit.split-lp

.noexc1108:                                       ; preds = %bb.ri
  unreachable

bb.rj:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1105
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.asg, ptr nonnull align 1 %i.asc, i64 %i.ase, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1107.thread2528

.thread2558:                                      ; preds = %bb.sg, %bb.sf
  br i1 %.sroa.093.1.ph, label %.thread2534, label %.body369

.thread2534.loopexit.split-lp.loopexit.split-lp:  ; preds = %bb.rk, %bb.ri
  %lpad.loopexit.split-lp13613 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2534

bb.rk:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1107.thread2528
  %i.ask = getelementptr inbounds nuw i8, ptr @10842, i64 %i.arn
  %i.asl = load i8, ptr %i.ask, align 1, !noalias !14206, !noundef !21
  %i.asm = add nuw nsw i64 %i.ark, 2
  %i.asn = zext i8 %i.asl to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ei, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.asn)
          to label %bb.rl unwind label %.thread2534.loopexit.split-lp.loopexit.split-lp

bb.rl:                                            ; preds = %bb.rk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.eh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ari, i64 noundef %i.are, i32 noundef %i.asn)
          to label %bb.rn unwind label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.aso = landingpad { ptr, i32 }
          cleanup
  br label %bb.sf

bb.rn:                                            ; preds = %bb.rl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.eg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.asi, i64 noundef %i.ase, i32 noundef %i.asn)
          to label %bb.rp unwind label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.asp = landingpad { ptr, i32 }
          cleanup
  br label %bb.sd

bb.rp:                                            ; preds = %bb.rn
  %.not5683 = icmp eq i64 %i.ark, 13461
  br i1 %.not5683, label %._crit_edge.i1116, label %.lr.ph.i1112

.lr.ph.i1112:                                     ; preds = %bb.rp, %bb.rq
  %.sroa.0.013.i1113 = phi i32 [ %i.asz, %bb.rq ], [ 0, %bb.rp ] ; 2 uses
  %.sroa.02.012.i1114 = phi i32 [ %i.ata, %bb.rq ], [ 0, %bb.rp ] ; 3 uses
  %i.asq = phi i64 [ %i.ast, %bb.rq ], [ %i.asm, %bb.rp ] ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr @10842, i64 %i.asq
  %i.ass = load i8, ptr %i.asr, align 1, !noalias !14207, !noundef !21 ; 2 uses
  %i.ast = add nuw nsw i64 %i.asq, 1              ; 3 uses
  %i.asu = zext i8 %i.ass to i32                  ; 2 uses
  %i.asv = icmp sgt i8 %i.ass, -1
  br i1 %i.asv, label %bb.rr, label %bb.rq

._crit_edge.i1116:                                ; preds = %bb.rp, %bb.rq
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1117 unwind label %.thread2562

.noexc1117:                                       ; preds = %._crit_edge.i1116
  unreachable

bb.rq:                                            ; preds = %.lr.ph.i1112
  %i.asw = and i32 %i.asu, 127
  %i.asx = and i32 %.sroa.02.012.i1114, 31
  %i.asy = shl i32 %i.asw, %i.asx
  %i.asz = or i32 %i.asy, %.sroa.0.013.i1113
  %i.ata = add nuw nsw i32 %.sroa.02.012.i1114, 7
  %exitcond.not.i1115 = icmp eq i64 %i.ast, 13463
  br i1 %exitcond.not.i1115, label %._crit_edge.i1116, label %.lr.ph.i1112

.thread2562:                                      ; preds = %._crit_edge.i1116, %bb.rs
  %i.atb = landingpad { ptr, i32 }
          cleanup
  br label %.thread2552

bb.rr:                                            ; preds = %.lr.ph.i1112
  %i.atc = and i32 %.sroa.02.012.i1114, 31
  %i.atd = shl i32 %i.asu, %i.atc
  %i.ate = or i32 %i.atd, %.sroa.0.013.i1113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.atf = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.atg = icmp eq ptr %i.atf, null
  br i1 %i.atg, label %bb.rs, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1120, !prof !26

bb.rs:                                            ; preds = %bb.rr
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1119 unwind label %.thread2562

.noexc1119:                                       ; preds = %bb.rs
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1120: ; preds = %bb.rr
  store i64 %.sroa.01732.0, ptr %i.atf, align 8
  %.sroa.42104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atf, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.42104.0..sroa_idx, align 8
  %.sroa.52105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atf, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52105.0..sroa_idx, align 8
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atf, i64 24
  store i64 %i.are, ptr %i.ath, align 8
  %.sroa.42107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atf, i64 32
  store ptr %i.ari, ptr %.sroa.42107.0..sroa_idx, align 8
  %.sroa.52108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atf, i64 40
  store i64 %i.are, ptr %.sroa.52108.0..sroa_idx, align 8
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atf, i64 48
  store i64 %i.ase, ptr %i.ati, align 8
  %.sroa.42110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atf, i64 56
  store ptr %i.asi, ptr %.sroa.42110.0..sroa_idx, align 8
  %.sroa.52111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atf, i64 64
  store i64 %i.ase, ptr %.sroa.52111.0..sroa_idx, align 8
  store i64 3, ptr %i.ee, align 8
  store ptr %i.atf, ptr %i.ij, align 8
  store i64 3, ptr %i.ik, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.atj = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.atk = icmp eq ptr %i.atj, null
  br i1 %i.atk, label %bb.rt, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1122, !prof !26

bb.rt:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1120
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1121 unwind label %bb.sb

.noexc1121:                                       ; preds = %bb.rt
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1122: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atj, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false)
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atl, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false)
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atj, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atm, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false)
  store i64 3, ptr %i.ed, align 8
  store ptr %i.atj, ptr %i.il, align 8
  store i64 3, ptr %i.im, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14208)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !14209
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ee)
          to label %bb.ru unwind label %bb.rw, !noalias !14210

bb.ru:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !14209
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ed)
          to label %bb.rx unwind label %bb.rv, !noalias !14211

bb.rv:                                            ; preds = %bb.ru
  %i.atn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #42, !noalias !14209
  br label %.body369

bb.rw:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1122
  %i.ato = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ed) #42, !noalias !14211
  br label %.body369

bb.rx:                                            ; preds = %bb.ru
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !14212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.in, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !14212
  store i32 %i.ate, ptr %i.io, align 8, !alias.scope !14208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !14209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !14209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14213
  %i.atp = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14213 ; 3 uses
  %i.atq = icmp eq ptr %i.atp, null
  br i1 %i.atq, label %bb.ry, label %bb.sa, !prof !26

bb.ry:                                            ; preds = %bb.rx
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1127 unwind label %bb.rz

.noexc1127:                                       ; preds = %bb.ry
  unreachable

bb.rz:                                            ; preds = %bb.ry
  %i.atr = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ef) #42
  br label %.body369

bb.sa:                                            ; preds = %bb.rx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.atp, ptr noundef nonnull align 8 dereferenceable(56) %i.ef, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  br label %bb.dq

bb.sb:                                            ; preds = %bb.rt
  %i.ats = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ee) #42
  br label %.thread2552

.thread2552:                                      ; preds = %bb.sb, %.thread2562
  %.sroa.093.32557 = phi i1 [ true, %.thread2562 ], [ false, %bb.sb ] ; 2 uses
  %.pn2202556 = phi { ptr, i32 } [ %i.atb, %.thread2562 ], [ %i.ats, %bb.sb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14214)
  %.val.i1129 = load i64, ptr %i.eg, align 8, !alias.scope !14214 ; 2 uses
  %i.att = icmp eq i64 %.val.i1129, 0
  br i1 %i.att, label %bb.sd, label %bb.sc

bb.sc:                                            ; preds = %.thread2552
  %i.atu = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.val1.i1130 = load ptr, ptr %i.atu, align 8, !alias.scope !14214, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1130, i64 noundef %.val.i1129, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14214
  br label %bb.sd

bb.sd:                                            ; preds = %bb.ro, %.thread2552, %bb.sc
  %.pn220.pn.ph = phi { ptr, i32 } [ %i.asp, %bb.ro ], [ %.pn2202556, %.thread2552 ], [ %.pn2202556, %bb.sc ] ; 2 uses
  %.sroa.093.2.ph = phi i1 [ true, %bb.ro ], [ %.sroa.093.32557, %.thread2552 ], [ %.sroa.093.32557, %bb.sc ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14215)
  %.val.i1132 = load i64, ptr %i.eh, align 8, !alias.scope !14215 ; 2 uses
  %i.atv = icmp eq i64 %.val.i1132, 0
  br i1 %i.atv, label %bb.sf, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.atw = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.val1.i1133 = load ptr, ptr %i.atw, align 8, !alias.scope !14215, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1133, i64 noundef %.val.i1132, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14215
  br label %bb.sf

bb.sf:                                            ; preds = %bb.rm, %bb.sd, %bb.se
  %.pn220.pn.pn.ph = phi { ptr, i32 } [ %i.aso, %bb.rm ], [ %.pn220.pn.ph, %bb.sd ], [ %.pn220.pn.ph, %bb.se ] ; 2 uses
  %.sroa.093.1.ph = phi i1 [ true, %bb.rm ], [ %.sroa.093.2.ph, %bb.sd ], [ %.sroa.093.2.ph, %bb.se ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14216)
  %.val.i1135 = load i64, ptr %i.ei, align 8, !alias.scope !14216 ; 2 uses
  %i.atx = icmp eq i64 %.val.i1135, 0
  br i1 %i.atx, label %.thread2558, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.aty = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.val1.i1136 = load ptr, ptr %i.aty, align 8, !alias.scope !14216, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1136, i64 noundef %.val.i1135, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14216
  br label %.thread2558

.thread2534:                                      ; preds = %.thread2534.loopexit.split-lp.loopexit.split-lp, %.thread2558
  %.pn220.pn.pn.pn2537 = phi { ptr, i32 } [ %.pn220.pn.pn.ph, %.thread2558 ], [ %lpad.loopexit.split-lp13613, %.thread2534.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  br i1 %i.asf, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %.thread2534
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.asi, i64 noundef %i.ase, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14217
  br label %bb.si

bb.si:                                            ; preds = %bb.rc, %.thread2534, %bb.sh
  %.pn225.ph = phi { ptr, i32 } [ %i.arv, %bb.rc ], [ %.pn220.pn.pn.pn2537, %.thread2534 ], [ %.pn220.pn.pn.pn2537, %bb.sh ] ; 2 uses
  br i1 %i.arf, label %.thread2361, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ari, i64 noundef %i.are, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14218
  br label %.thread2361

bb.sk:                                            ; preds = %.lr.ph.i528
  %i.atz = and i32 %.sroa.02.012.i530, 31
  %i.aua = shl i32 %i.ul, %i.atz
  %i.aub = or i32 %i.aua, %.sroa.0.013.i529
  %i.auc = icmp ult i64 %i.uh, 13462
  br i1 %i.auc, label %.lr.ph.i1146, label %.invoke13560

.lr.ph.i1146:                                     ; preds = %bb.sk, %bb.sl
  %.sroa.0.013.i1147 = phi i32 [ %i.aum, %bb.sl ], [ 0, %bb.sk ] ; 2 uses
  %.sroa.02.012.i1148 = phi i32 [ %i.aun, %bb.sl ], [ 0, %bb.sk ] ; 3 uses
  %i.aud = phi i64 [ %i.aug, %bb.sl ], [ %i.uk, %bb.sk ] ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr @10842, i64 %i.aud
  %i.auf = load i8, ptr %i.aue, align 1, !noalias !14219, !noundef !21 ; 2 uses
  %i.aug = add nuw nsw i64 %i.aud, 1              ; 3 uses
  %i.auh = zext i8 %i.auf to i32                  ; 2 uses
  %i.aui = icmp sgt i8 %i.auf, -1
  br i1 %i.aui, label %bb.sm, label %bb.sl

bb.sl:                                            ; preds = %.lr.ph.i1146
  %i.auj = and i32 %i.auh, 127
  %i.auk = and i32 %.sroa.02.012.i1148, 31
  %i.aul = shl i32 %i.auj, %i.auk
  %i.aum = or i32 %i.aul, %.sroa.0.013.i1147
  %i.aun = add nuw nsw i32 %.sroa.02.012.i1148, 7
  %exitcond.not.i1149 = icmp eq i64 %i.aug, 13463
  br i1 %exitcond.not.i1149, label %.invoke13560, label %.lr.ph.i1146

bb.sm:                                            ; preds = %.lr.ph.i1146
  %i.auo = and i32 %.sroa.02.012.i1148, 31
  %i.aup = shl i32 %i.auh, %i.auo
  %i.auq = or i32 %i.aup, %.sroa.0.013.i1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.aur = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.aus = icmp eq ptr %i.aur, null
  br i1 %i.aus, label %bb.sn, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1154, !prof !26

bb.sn:                                            ; preds = %bb.sm
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.noexc1153 unwind label %.body249.thread.loopexit.split-lp

.noexc1153:                                       ; preds = %bb.sn
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1154: ; preds = %bb.sm
  store i64 %.sroa.01732.0, ptr %i.aur, align 8
  %.sroa.42113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aur, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.42113.0..sroa_idx, align 8
  %.sroa.52114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aur, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52114.0..sroa_idx, align 8
  store i64 1, ptr %i.eb, align 8
  store ptr %i.aur, ptr %i.if, align 8
  store i64 1, ptr %i.ig, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eb)
          to label %bb.so unwind label %.body291

bb.so:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1154
  store i32 %i.auq, ptr %i.ih, align 8, !alias.scope !14220
  store i32 %i.aub, ptr %i.ii, align 4, !alias.scope !14220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14221
  %i.aut = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14221 ; 3 uses
  %i.auu = icmp eq ptr %i.aut, null
  br i1 %i.auu, label %bb.sp, label %bb.sr, !prof !26

bb.sp:                                            ; preds = %bb.so
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc1156 unwind label %bb.sq

.noexc1156:                                       ; preds = %bb.sp
  unreachable

bb.sq:                                            ; preds = %bb.sp
  %i.auv = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ec) #42
  br label %.body369

bb.sr:                                            ; preds = %bb.so
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aut, ptr noundef nonnull align 8 dereferenceable(32) %i.ec, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  br label %bb.dq

bb.ss:                                            ; preds = %.lr.ph.i537
  %i.auw = and i32 %.sroa.02.012.i539, 31
  %i.aux = shl i32 %i.ux, %i.auw
  %i.auy = or i32 %i.aux, %.sroa.0.013.i538
  %i.auz = zext i32 %i.auy to i64                 ; 3 uses
  %i.ava = icmp ugt i64 %i.ny, %i.auz
  br i1 %i.ava, label %bb.st, label %.invoke13564

bb.st:                                            ; preds = %bb.ss
  %i.avb = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.auz ; 2 uses
  %i.avc = load ptr, ptr %i.avb, align 8, !nonnull !21, !noundef !21
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  %i.ave = load i64, ptr %i.avd, align 8, !noundef !21 ; 9 uses
  %.not.i1158 = icmp slt i64 %i.ave, 0
  br i1 %.not.i1158, label %.invoke13562, label %bb.su, !prof !37

bb.su:                                            ; preds = %bb.st
  %i.avf = icmp eq i64 %i.ave, 0                  ; 2 uses
  br i1 %i.avf, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1161.thread2573, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1159

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1159: ; preds = %bb.su
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14222
  %i.avg = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ave, i64 noundef range(i64 1, 9) 1) #41, !noalias !14222 ; 3 uses
  %i.avh = icmp eq ptr %i.avg, null
  br i1 %i.avh, label %.invoke13562, label %bb.sw

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1161.thread2573: ; preds = %bb.su, %bb.sw
  %i.avi = phi ptr [ %i.avg, %bb.sw ], [ inttoptr (i64 1 to ptr), %bb.su ] ; 2 uses
  %i.avj = icmp ult i64 %i.ut, 13462
  br i1 %i.avj, label %.lr.ph.i1164, label %._crit_edge.i1168.invoke

.lr.ph.i1164:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1161.thread2573, %bb.sv
  %.sroa.0.013.i1165 = phi i32 [ %i.avu, %bb.sv ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1161.thread2573 ] ; 2 uses
  %.sroa.02.012.i1166 = phi i32 [ %i.avv, %bb.sv ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1161.thread2573 ] ; 3 uses
  %i.avk = phi i64 [ %i.avn, %bb.sv ], [ %i.uw, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1161.thread2573 ] ; 3 uses
  %i.avl = getelementptr inbounds nuw i8, ptr @10842, i64 %i.avk
  %i.avm = load i8, ptr %i.avl, align 1, !noalias !14223, !noundef !21 ; 2 uses
  %i.avn = add nuw nsw i64 %i.avk, 1              ; 4 uses
  %i.avo = zext i8 %i.avm to i32                  ; 2 uses
  %i.avp = icmp sgt i8 %i.avm, -1
  br i1 %i.avp, label %bb.sx, label %bb.sv

._crit_edge.i1168.invoke:                         ; preds = %bb.sx, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1161.thread2573, %bb.sv, %bb.sy
  %i.avq = phi i64 [ 13463, %bb.sy ], [ 13463, %bb.sv ], [ %i.avn, %bb.sx ], [ %i.uw, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1161.thread2573 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.avq, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1168.cont unwind label %bb.tf

._crit_edge.i1168.cont:                           ; preds = %._crit_edge.i1168.invoke
  unreachable

bb.sv:                                            ; preds = %.lr.ph.i1164
  %i.avr = and i32 %i.avo, 127
  %i.avs = and i32 %.sroa.02.012.i1166, 31
  %i.avt = shl i32 %i.avr, %i.avs
  %i.avu = or i32 %i.avt, %.sroa.0.013.i1165
  %i.avv = add nuw nsw i32 %.sroa.02.012.i1166, 7
  %exitcond.not.i1167 = icmp eq i64 %i.avn, 13463
  br i1 %exitcond.not.i1167, label %._crit_edge.i1168.invoke, label %.lr.ph.i1164

bb.sw:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1159
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.avg, ptr nonnull align 1 %i.avc, i64 %i.ave, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1161.thread2573

bb.sx:                                            ; preds = %.lr.ph.i1164
  %i.avw = and i32 %.sroa.02.012.i1166, 31
  %i.avx = shl i32 %i.avo, %i.avw
  %i.avy = or i32 %i.avx, %.sroa.0.013.i1165
  %i.avz = icmp ult i64 %i.avk, 13462
  br i1 %i.avz, label %.lr.ph.i1173, label %._crit_edge.i1168.invoke

.lr.ph.i1173:                                     ; preds = %bb.sx, %bb.sy
  %.sroa.0.013.i1174 = phi i32 [ %i.awj, %bb.sy ], [ 0, %bb.sx ] ; 2 uses
  %.sroa.02.012.i1175 = phi i32 [ %i.awk, %bb.sy ], [ 0, %bb.sx ] ; 3 uses
  %i.awa = phi i64 [ %i.awd, %bb.sy ], [ %i.avn, %bb.sx ] ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr @10842, i64 %i.awa
  %i.awc = load i8, ptr %i.awb, align 1, !noalias !14224, !noundef !21 ; 2 uses
  %i.awd = add nuw nsw i64 %i.awa, 1              ; 3 uses
  %i.awe = zext i8 %i.awc to i32                  ; 2 uses
  %i.awf = icmp sgt i8 %i.awc, -1
  br i1 %i.awf, label %bb.sz, label %bb.sy

bb.sy:                                            ; preds = %.lr.ph.i1173
  %i.awg = and i32 %i.awe, 127
  %i.awh = and i32 %.sroa.02.012.i1175, 31
  %i.awi = shl i32 %i.awg, %i.awh
  %i.awj = or i32 %i.awi, %.sroa.0.013.i1174
  %i.awk = add nuw nsw i32 %.sroa.02.012.i1175, 7
  %exitcond.not.i1176 = icmp eq i64 %i.awd, 13463
  br i1 %exitcond.not.i1176, label %._crit_edge.i1168.invoke, label %.lr.ph.i1173

bb.sz:                                            ; preds = %.lr.ph.i1173
  %i.awl = and i32 %.sroa.02.012.i1175, 31
  %i.awm = shl i32 %i.awe, %i.awl
  %i.awn = or i32 %i.awm, %.sroa.0.013.i1174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.awo = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.awp = icmp eq ptr %i.awo, null
  br i1 %i.awp, label %bb.ta, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1181, !prof !26

bb.ta:                                            ; preds = %bb.sz
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1180 unwind label %bb.tf

.noexc1180:                                       ; preds = %bb.ta
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1181: ; preds = %bb.sz
  store i64 %.sroa.01732.0, ptr %i.awo, align 8
  %.sroa.42119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awo, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.42119.0..sroa_idx, align 8
  %.sroa.52120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awo, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52120.0..sroa_idx, align 8
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awo, i64 24
  store i64 %i.ave, ptr %i.awq, align 8
  %.sroa.42122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awo, i64 32
  store ptr %i.avi, ptr %.sroa.42122.0..sroa_idx, align 8
  %.sroa.52123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awo, i64 40
  store i64 %i.ave, ptr %.sroa.52123.0..sroa_idx, align 8
  store i64 2, ptr %i.dz, align 8
  store ptr %i.awo, ptr %i.ib, align 8
  store i64 2, ptr %i.ic, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ea, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dz)
          to label %bb.tb unwind label %.body291

bb.tb:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1181
  store i32 %i.awn, ptr %i.id, align 8, !alias.scope !14225
  store i32 %i.avy, ptr %i.ie, align 4, !alias.scope !14225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14226
  %i.awr = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14226 ; 3 uses
  %i.aws = icmp eq ptr %i.awr, null
  br i1 %i.aws, label %bb.tc, label %bb.te, !prof !26

bb.tc:                                            ; preds = %bb.tb
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc1184 unwind label %bb.td

.noexc1184:                                       ; preds = %bb.tc
  unreachable

bb.td:                                            ; preds = %bb.tc
  %i.awt = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ea) #42
  br label %.body369

bb.te:                                            ; preds = %bb.tb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.awr, ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %bb.dq

bb.tf:                                            ; preds = %._crit_edge.i1168.invoke, %bb.ta
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.avf, label %.thread2361, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.avi, i64 noundef %i.ave, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14227
  br label %.thread2361

bb.th:                                            ; preds = %.lr.ph.i546
  %i.awu = and i32 %.sroa.02.012.i548, 31
  %i.awv = shl i32 %i.vj, %i.awu
  %i.aww = or i32 %i.awv, %.sroa.0.013.i547
  %i.awx = zext i32 %i.aww to i64                 ; 3 uses
  %i.awy = icmp ugt i64 %i.ny, %i.awx
  br i1 %i.awy, label %bb.ti, label %.invoke13564

bb.ti:                                            ; preds = %bb.th
  %i.awz = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.awx ; 2 uses
  %i.axa = load ptr, ptr %i.awz, align 8, !nonnull !21, !noundef !21
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awz, i64 8
  %i.axc = load i64, ptr %i.axb, align 8, !noundef !21 ; 9 uses
  %.not.i1189 = icmp slt i64 %i.axc, 0
  br i1 %.not.i1189, label %.invoke13562, label %bb.tj, !prof !37

bb.tj:                                            ; preds = %bb.ti
  %i.axd = icmp eq i64 %i.axc, 0                  ; 2 uses
  br i1 %i.axd, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190: ; preds = %bb.tj
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14228
  %i.axe = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.axc, i64 noundef range(i64 1, 9) 1) #41, !noalias !14228 ; 3 uses
  %i.axf = icmp eq ptr %i.axe, null
  br i1 %i.axf, label %.invoke13562, label %bb.tl

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590: ; preds = %bb.tj, %bb.tl
  %i.axg = phi ptr [ %i.axe, %bb.tl ], [ inttoptr (i64 1 to ptr), %bb.tj ] ; 2 uses
  %i.axh = icmp ult i64 %i.vf, 13462
  br i1 %i.axh, label %.lr.ph.i1195, label %._crit_edge.i1199

.lr.ph.i1195:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590, %bb.tk
  %.sroa.0.013.i1196 = phi i32 [ %i.axr, %bb.tk ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590 ] ; 2 uses
  %.sroa.02.012.i1197 = phi i32 [ %i.axs, %bb.tk ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590 ] ; 3 uses
  %i.axi = phi i64 [ %i.axl, %bb.tk ], [ %i.vi, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590 ] ; 3 uses
  %i.axj = getelementptr inbounds nuw i8, ptr @10842, i64 %i.axi
  %i.axk = load i8, ptr %i.axj, align 1, !noalias !14229, !noundef !21 ; 2 uses
  %i.axl = add nuw nsw i64 %i.axi, 1              ; 4 uses
  %i.axm = zext i8 %i.axk to i32                  ; 2 uses
  %i.axn = icmp sgt i8 %i.axk, -1
  br i1 %i.axn, label %bb.tn, label %bb.tk

._crit_edge.i1199:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590, %bb.tk
  %.lcssa7.i1194 = phi i64 [ 13463, %bb.tk ], [ %i.vi, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1194, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1200 unwind label %bb.tm

.noexc1200:                                       ; preds = %._crit_edge.i1199
  unreachable

bb.tk:                                            ; preds = %.lr.ph.i1195
  %i.axo = and i32 %i.axm, 127
  %i.axp = and i32 %.sroa.02.012.i1197, 31
  %i.axq = shl i32 %i.axo, %i.axp
  %i.axr = or i32 %i.axq, %.sroa.0.013.i1196
  %i.axs = add nuw nsw i32 %.sroa.02.012.i1197, 7
  %exitcond.not.i1198 = icmp eq i64 %i.axl, 13463
  br i1 %exitcond.not.i1198, label %._crit_edge.i1199, label %.lr.ph.i1195

bb.tl:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.axe, ptr nonnull align 1 %i.axa, i64 %i.axc, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590

bb.tm:                                            ; preds = %._crit_edge.i1199, %bb.tr, %bb.tq
  %i.axt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ue

bb.tn:                                            ; preds = %.lr.ph.i1195
  %i.axu = and i32 %.sroa.02.012.i1197, 31
  %i.axv = shl i32 %i.axm, %i.axu
  %i.axw = or i32 %i.axv, %.sroa.0.013.i1196
  %i.axx = zext i32 %i.axw to i64                 ; 3 uses
  %i.axy = icmp ugt i64 %i.ny, %i.axx
  br i1 %i.axy, label %bb.to, label %bb.tq

bb.to:                                            ; preds = %bb.tn
  %i.axz = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.axx ; 2 uses
  %i.aya = load ptr, ptr %i.axz, align 8, !nonnull !21, !noundef !21
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axz, i64 8
  %i.ayc = load i64, ptr %i.ayb, align 8, !noundef !21 ; 8 uses
  %.not.i1202 = icmp slt i64 %i.ayc, 0
  br i1 %.not.i1202, label %bb.tr, label %bb.tp, !prof !37

bb.tp:                                            ; preds = %bb.to
  %i.ayd = icmp eq i64 %i.ayc, 0                  ; 2 uses
  br i1 %i.ayd, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1203

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1203: ; preds = %bb.tp
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14230
  %i.aye = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ayc, i64 noundef range(i64 1, 9) 1) #41, !noalias !14230 ; 3 uses
  %i.ayf = icmp eq ptr %i.aye, null
  br i1 %i.ayf, label %bb.tr, label %bb.tt

bb.tq:                                            ; preds = %bb.tn
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.axx, i64 noundef %i.ny, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10829) #46
          to label %bb.u unwind label %bb.tm

bb.tr:                                            ; preds = %bb.to, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1203
  %.sroa.42246.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1203 ], [ 0, %bb.to ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42246.0.ph, i64 %i.ayc) #46
          to label %bb.u unwind label %bb.tm

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606: ; preds = %bb.tp, %bb.tt
  %i.ayg = phi ptr [ %i.aye, %bb.tt ], [ inttoptr (i64 1 to ptr), %bb.tp ] ; 2 uses
  %i.ayh = icmp ult i64 %i.axi, 13462
  br i1 %i.ayh, label %.lr.ph.i1208, label %._crit_edge.i1212.invoke

.lr.ph.i1208:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606, %bb.ts
  %.sroa.0.013.i1209 = phi i32 [ %i.ays, %bb.ts ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606 ] ; 2 uses
  %.sroa.02.012.i1210 = phi i32 [ %i.ayt, %bb.ts ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606 ] ; 3 uses
  %i.ayi = phi i64 [ %i.ayl, %bb.ts ], [ %i.axl, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606 ] ; 3 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr @10842, i64 %i.ayi
  %i.ayk = load i8, ptr %i.ayj, align 1, !noalias !14231, !noundef !21 ; 2 uses
  %i.ayl = add nuw nsw i64 %i.ayi, 1              ; 4 uses
  %i.aym = zext i8 %i.ayk to i32                  ; 2 uses
  %i.ayn = icmp sgt i8 %i.ayk, -1
  br i1 %i.ayn, label %bb.tu, label %bb.ts

._crit_edge.i1212.invoke:                         ; preds = %bb.tu, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606, %bb.ts, %bb.tv
  %i.ayo = phi i64 [ 13463, %bb.tv ], [ 13463, %bb.ts ], [ %i.ayl, %bb.tu ], [ %i.axl, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ayo, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1212.cont unwind label %bb.uc

._crit_edge.i1212.cont:                           ; preds = %._crit_edge.i1212.invoke
  unreachable

bb.ts:                                            ; preds = %.lr.ph.i1208
  %i.ayp = and i32 %i.aym, 127
  %i.ayq = and i32 %.sroa.02.012.i1210, 31
  %i.ayr = shl i32 %i.ayp, %i.ayq
  %i.ays = or i32 %i.ayr, %.sroa.0.013.i1209
  %i.ayt = add nuw nsw i32 %.sroa.02.012.i1210, 7
  %exitcond.not.i1211 = icmp eq i64 %i.ayl, 13463
  br i1 %exitcond.not.i1211, label %._crit_edge.i1212.invoke, label %.lr.ph.i1208

bb.tt:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1203
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aye, ptr nonnull align 1 %i.aya, i64 %i.ayc, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606

bb.tu:                                            ; preds = %.lr.ph.i1208
  %i.ayu = and i32 %.sroa.02.012.i1210, 31
  %i.ayv = shl i32 %i.aym, %i.ayu
  %i.ayw = or i32 %i.ayv, %.sroa.0.013.i1209
  %i.ayx = icmp ult i64 %i.ayi, 13462
  br i1 %i.ayx, label %.lr.ph.i1217, label %._crit_edge.i1212.invoke

.lr.ph.i1217:                                     ; preds = %bb.tu, %bb.tv
  %.sroa.0.013.i1218 = phi i32 [ %i.azh, %bb.tv ], [ 0, %bb.tu ] ; 2 uses
  %.sroa.02.012.i1219 = phi i32 [ %i.azi, %bb.tv ], [ 0, %bb.tu ] ; 3 uses
  %i.ayy = phi i64 [ %i.azb, %bb.tv ], [ %i.ayl, %bb.tu ] ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr @10842, i64 %i.ayy
  %i.aza = load i8, ptr %i.ayz, align 1, !noalias !14232, !noundef !21 ; 2 uses
  %i.azb = add nuw nsw i64 %i.ayy, 1              ; 3 uses
  %i.azc = zext i8 %i.aza to i32                  ; 2 uses
  %i.azd = icmp sgt i8 %i.aza, -1
  br i1 %i.azd, label %bb.tw, label %bb.tv

bb.tv:                                            ; preds = %.lr.ph.i1217
  %i.aze = and i32 %i.azc, 127
  %i.azf = and i32 %.sroa.02.012.i1219, 31
  %i.azg = shl i32 %i.aze, %i.azf
  %i.azh = or i32 %i.azg, %.sroa.0.013.i1218
  %i.azi = add nuw nsw i32 %.sroa.02.012.i1219, 7
  %exitcond.not.i1220 = icmp eq i64 %i.azb, 13463
  br i1 %exitcond.not.i1220, label %._crit_edge.i1212.invoke, label %.lr.ph.i1217

bb.tw:                                            ; preds = %.lr.ph.i1217
  %i.azj = and i32 %.sroa.02.012.i1219, 31
  %i.azk = shl i32 %i.azc, %i.azj
  %i.azl = or i32 %i.azk, %.sroa.0.013.i1218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.azm = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.azn = icmp eq ptr %i.azm, null
  br i1 %i.azn, label %bb.tx, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1225, !prof !26

bb.tx:                                            ; preds = %bb.tw
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1224 unwind label %bb.uc

.noexc1224:                                       ; preds = %bb.tx
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1225: ; preds = %bb.tw
  store i64 %.sroa.01732.0, ptr %i.azm, align 8
  %.sroa.42131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azm, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.42131.0..sroa_idx, align 8
  %.sroa.52132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azm, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52132.0..sroa_idx, align 8
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azm, i64 24
  store i64 %i.axc, ptr %i.azo, align 8
  %.sroa.42134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azm, i64 32
  store ptr %i.axg, ptr %.sroa.42134.0..sroa_idx, align 8
  %.sroa.52135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azm, i64 40
  store i64 %i.axc, ptr %.sroa.52135.0..sroa_idx, align 8
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azm, i64 48
  store i64 %i.ayc, ptr %i.azp, align 8
  %.sroa.42137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azm, i64 56
  store ptr %i.ayg, ptr %.sroa.42137.0..sroa_idx, align 8
  %.sroa.52138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azm, i64 64
  store i64 %i.ayc, ptr %.sroa.52138.0..sroa_idx, align 8
  store i64 3, ptr %i.dx, align 8
  store ptr %i.azm, ptr %i.hx, align 8
  store i64 3, ptr %i.hy, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dy, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dx)
          to label %bb.ty unwind label %.body291

bb.ty:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1225
  store i32 %i.azl, ptr %i.hz, align 8, !alias.scope !14233
  store i32 %i.ayw, ptr %i.ia, align 4, !alias.scope !14233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14234
  %i.azq = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14234 ; 3 uses
  %i.azr = icmp eq ptr %i.azq, null
  br i1 %i.azr, label %bb.tz, label %bb.ub, !prof !26

bb.tz:                                            ; preds = %bb.ty
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc1228 unwind label %bb.ua

.noexc1228:                                       ; preds = %bb.tz
  unreachable

bb.ua:                                            ; preds = %bb.tz
  %i.azs = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dy) #42
  br label %.body369

bb.ub:                                            ; preds = %bb.ty
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.azq, ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  br label %bb.dq

bb.uc:                                            ; preds = %._crit_edge.i1212.invoke, %bb.tx
  %lpad.thr_comm2614 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ayd, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayg, i64 noundef %i.ayc, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14235
  br label %bb.ue

bb.ue:                                            ; preds = %bb.tm, %bb.uc, %bb.ud
  %.pn215.ph = phi { ptr, i32 } [ %i.axt, %bb.tm ], [ %lpad.thr_comm2614, %bb.uc ], [ %lpad.thr_comm2614, %bb.ud ] ; 2 uses
  br i1 %i.axd, label %.thread2361, label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.axg, i64 noundef %i.axc, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14236
  br label %.thread2361

bb.ug:                                            ; preds = %.lr.ph.i555
  %i.azt = and i32 %.sroa.02.012.i557, 31
  %i.azu = shl i32 %i.vv, %i.azt
  %i.azv = or i32 %i.azu, %.sroa.0.013.i556
  %i.azw = zext i32 %i.azv to i64                 ; 3 uses
  %i.azx = icmp ugt i64 %i.ny, %i.azw
  br i1 %i.azx, label %bb.uh, label %.invoke13564

bb.uh:                                            ; preds = %bb.ug
  %i.azy = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.azw ; 2 uses
  %i.azz = load ptr, ptr %i.azy, align 8, !nonnull !21, !noundef !21
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azy, i64 8
  %i.bab = load i64, ptr %i.baa, align 8, !noundef !21 ; 10 uses
  %.not.i1236 = icmp slt i64 %i.bab, 0
  br i1 %.not.i1236, label %.invoke13562, label %bb.ui, !prof !37

bb.ui:                                            ; preds = %bb.uh
  %i.bac = icmp eq i64 %i.bab, 0                  ; 2 uses
  br i1 %i.bac, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237: ; preds = %bb.ui
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14237
  %i.bad = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bab, i64 noundef range(i64 1, 9) 1) #41, !noalias !14237 ; 3 uses
  %i.bae = icmp eq ptr %i.bad, null
  br i1 %i.bae, label %.invoke13562, label %bb.uk

.invoke13564:                                     ; preds = %bb.ug, %bb.th, %bb.ss, %bb.qx, %bb.py, %bb.mf
  %i.baf = phi i64 [ %i.awx, %bb.th ], [ %i.auz, %bb.ss ], [ %i.aqz, %bb.qx ], [ %i.apb, %bb.py ], [ %i.aie, %bb.mf ], [ %i.azw, %bb.ug ]
  %i.bag = phi ptr [ @10828, %bb.th ], [ @10827, %bb.ss ], [ @10824, %bb.qx ], [ @10823, %bb.py ], [ @10814, %bb.mf ], [ @10830, %bb.ug ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.baf, i64 noundef %i.ny, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bag) #46
          to label %.cont13565 unwind label %.body249.thread.loopexit.split-lp

.cont13565:                                       ; preds = %.invoke13564
  unreachable

.invoke13562:                                     ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237, %bb.uh, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190, %bb.ti, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1159, %bb.st, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1092, %bb.qy, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058, %bb.pz, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i884, %bb.mg
  %i.bah = phi i64 [ 0, %bb.ti ], [ 0, %bb.st ], [ 0, %bb.qy ], [ 0, %bb.pz ], [ 0, %bb.mg ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i884 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1092 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1159 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237 ], [ 0, %bb.uh ]
  %i.bai = phi i64 [ %i.axc, %bb.ti ], [ %i.ave, %bb.st ], [ %i.are, %bb.qy ], [ %i.apg, %bb.pz ], [ %i.aij, %bb.mg ], [ %i.aij, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i884 ], [ %i.apg, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058 ], [ %i.are, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1092 ], [ %i.ave, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1159 ], [ %i.axc, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190 ], [ %i.bab, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237 ], [ %i.bab, %bb.uh ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bah, i64 %i.bai) #46
          to label %.cont13563 unwind label %.body249.thread.loopexit.split-lp

.cont13563:                                       ; preds = %.invoke13562
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625: ; preds = %bb.ui, %bb.uk
  %i.baj = phi ptr [ %i.bad, %bb.uk ], [ inttoptr (i64 1 to ptr), %bb.ui ] ; 3 uses
  %i.bak = icmp ult i64 %i.vr, 13462
  br i1 %i.bak, label %bb.ul, label %bb.uj

bb.uj:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.vu, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1240 unwind label %.thread2631.loopexit.split-lp.loopexit.split-lp

.noexc1240:                                       ; preds = %bb.uj
  unreachable

bb.uk:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bad, ptr nonnull align 1 %i.azz, i64 %i.bab, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625

.thread2648:                                      ; preds = %bb.vh, %bb.vg
  br i1 %.sroa.085.1.ph, label %.thread2631, label %.body369

.thread2631.loopexit.split-lp.loopexit.split-lp:  ; preds = %bb.ul, %bb.uj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread2631

bb.ul:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625
  %i.bal = getelementptr inbounds nuw i8, ptr @10842, i64 %i.vu
  %i.bam = load i8, ptr %i.bal, align 1, !noalias !14238, !noundef !21
  %i.ban = add nuw nsw i64 %i.vr, 2
  %i.bao = zext i8 %i.bam to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bao)
          to label %bb.um unwind label %.thread2631.loopexit.split-lp.loopexit.split-lp

bb.um:                                            ; preds = %bb.ul
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.baj, i64 noundef %i.bab, i32 noundef %i.bao)
          to label %bb.uo unwind label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.bap = landingpad { ptr, i32 }
          cleanup
  br label %bb.vg

bb.uo:                                            ; preds = %bb.um
  %.not5682 = icmp eq i64 %i.vr, 13461
  br i1 %.not5682, label %._crit_edge.i1248.invoke, label %.lr.ph.i1244

.lr.ph.i1244:                                     ; preds = %bb.uo, %bb.up
  %.sroa.0.013.i1245 = phi i32 [ %i.bba, %bb.up ], [ 0, %bb.uo ] ; 2 uses
  %.sroa.02.012.i1246 = phi i32 [ %i.bbb, %bb.up ], [ 0, %bb.uo ] ; 3 uses
  %i.baq = phi i64 [ %i.bat, %bb.up ], [ %i.ban, %bb.uo ] ; 3 uses
  %i.bar = getelementptr inbounds nuw i8, ptr @10842, i64 %i.baq
  %i.bas = load i8, ptr %i.bar, align 1, !noalias !14239, !noundef !21 ; 2 uses
  %i.bat = add nuw nsw i64 %i.baq, 1              ; 4 uses
  %i.bau = zext i8 %i.bas to i32                  ; 2 uses
  %i.bav = icmp sgt i8 %i.bas, -1
  br i1 %i.bav, label %bb.uq, label %bb.up

._crit_edge.i1248.invoke:                         ; preds = %bb.uo, %bb.us, %bb.uq, %bb.up, %bb.ur, %bb.ut
  %i.baw = phi i64 [ 13463, %bb.ut ], [ 13463, %bb.ur ], [ 13463, %bb.up ], [ 13463, %bb.uo ], [ %i.bat, %bb.uq ], [ %i.bbk, %bb.us ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.baw, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1248.cont unwind label %.thread2652

._crit_edge.i1248.cont:                           ; preds = %._crit_edge.i1248.invoke
  unreachable

bb.up:                                            ; preds = %.lr.ph.i1244
  %i.bax = and i32 %i.bau, 127
  %i.bay = and i32 %.sroa.02.012.i1246, 31
  %i.baz = shl i32 %i.bax, %i.bay
  %i.bba = or i32 %i.baz, %.sroa.0.013.i1245
  %i.bbb = add nuw nsw i32 %.sroa.02.012.i1246, 7
  %exitcond.not.i1247 = icmp eq i64 %i.bat, 13463
  br i1 %exitcond.not.i1247, label %._crit_edge.i1248.invoke, label %.lr.ph.i1244

.thread2652:                                      ; preds = %._crit_edge.i1248.invoke, %bb.uv
  %i.bbc = landingpad { ptr, i32 }
          cleanup
  br label %.thread2642

bb.uq:                                            ; preds = %.lr.ph.i1244
  %i.bbd = and i32 %.sroa.02.012.i1246, 31
  %i.bbe = shl i32 %i.bau, %i.bbd
  %i.bbf = or i32 %i.bbe, %.sroa.0.013.i1245
  %i.bbg = icmp ult i64 %i.baq, 13462
  br i1 %i.bbg, label %.lr.ph.i1253, label %._crit_edge.i1248.invoke

.lr.ph.i1253:                                     ; preds = %bb.uq, %bb.ur
  %.sroa.0.013.i1254 = phi i32 [ %i.bbq, %bb.ur ], [ 0, %bb.uq ] ; 2 uses
  %.sroa.02.012.i1255 = phi i32 [ %i.bbr, %bb.ur ], [ 0, %bb.uq ] ; 3 uses
  %i.bbh = phi i64 [ %i.bbk, %bb.ur ], [ %i.bat, %bb.uq ] ; 3 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bbh
  %i.bbj = load i8, ptr %i.bbi, align 1, !noalias !14240, !noundef !21 ; 2 uses
  %i.bbk = add nuw nsw i64 %i.bbh, 1              ; 4 uses
  %i.bbl = zext i8 %i.bbj to i32                  ; 2 uses
  %i.bbm = icmp sgt i8 %i.bbj, -1
  br i1 %i.bbm, label %bb.us, label %bb.ur

bb.ur:                                            ; preds = %.lr.ph.i1253
  %i.bbn = and i32 %i.bbl, 127
  %i.bbo = and i32 %.sroa.02.012.i1255, 31
  %i.bbp = shl i32 %i.bbn, %i.bbo
  %i.bbq = or i32 %i.bbp, %.sroa.0.013.i1254
  %i.bbr = add nuw nsw i32 %.sroa.02.012.i1255, 7
  %exitcond.not.i1256 = icmp eq i64 %i.bbk, 13463
  br i1 %exitcond.not.i1256, label %._crit_edge.i1248.invoke, label %.lr.ph.i1253

bb.us:                                            ; preds = %.lr.ph.i1253
  %i.bbs = and i32 %.sroa.02.012.i1255, 31
  %i.bbt = shl i32 %i.bbl, %i.bbs
  %i.bbu = or i32 %i.bbt, %.sroa.0.013.i1254
  %i.bbv = icmp ult i64 %i.bbh, 13462
  br i1 %i.bbv, label %.lr.ph.i1262, label %._crit_edge.i1248.invoke

.lr.ph.i1262:                                     ; preds = %bb.us, %bb.ut
  %.sroa.0.013.i1263 = phi i32 [ %i.bcf, %bb.ut ], [ 0, %bb.us ] ; 2 uses
  %.sroa.02.012.i1264 = phi i32 [ %i.bcg, %bb.ut ], [ 0, %bb.us ] ; 3 uses
  %i.bbw = phi i64 [ %i.bbz, %bb.ut ], [ %i.bbk, %bb.us ] ; 2 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bbw
  %i.bby = load i8, ptr %i.bbx, align 1, !noalias !14241, !noundef !21 ; 2 uses
  %i.bbz = add nuw nsw i64 %i.bbw, 1              ; 3 uses
  %i.bca = zext i8 %i.bby to i32                  ; 2 uses
  %i.bcb = icmp sgt i8 %i.bby, -1
  br i1 %i.bcb, label %bb.uu, label %bb.ut

bb.ut:                                            ; preds = %.lr.ph.i1262
  %i.bcc = and i32 %i.bca, 127
  %i.bcd = and i32 %.sroa.02.012.i1264, 31
  %i.bce = shl i32 %i.bcc, %i.bcd
  %i.bcf = or i32 %i.bce, %.sroa.0.013.i1263
  %i.bcg = add nuw nsw i32 %.sroa.02.012.i1264, 7
  %exitcond.not.i1265 = icmp eq i64 %i.bbz, 13463
  br i1 %exitcond.not.i1265, label %._crit_edge.i1248.invoke, label %.lr.ph.i1262

bb.uu:                                            ; preds = %.lr.ph.i1262
  %i.bch = and i32 %.sroa.02.012.i1264, 31
  %i.bci = shl i32 %i.bca, %i.bch
  %i.bcj = or i32 %i.bci, %.sroa.0.013.i1263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bck = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.bcl = icmp eq ptr %i.bck, null
  br i1 %i.bcl, label %bb.uv, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1270, !prof !26

bb.uv:                                            ; preds = %bb.uu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1269 unwind label %.thread2652

.noexc1269:                                       ; preds = %bb.uv
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1270: ; preds = %bb.uu
  store i64 %.sroa.01732.0, ptr %i.bck, align 8
  %.sroa.42143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bck, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.42143.0..sroa_idx, align 8
  %.sroa.52144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bck, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52144.0..sroa_idx, align 8
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bck, i64 24
  store i64 %i.bab, ptr %i.bcm, align 8
  %.sroa.42146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bck, i64 32
  store ptr %i.baj, ptr %.sroa.42146.0..sroa_idx, align 8
  %.sroa.52147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bck, i64 40
  store i64 %i.bab, ptr %.sroa.52147.0..sroa_idx, align 8
  store i64 2, ptr %i.dt, align 8
  store ptr %i.bck, ptr %i.hp, align 8
  store i64 2, ptr %i.hq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bcn = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 4 uses
  %i.bco = icmp eq ptr %i.bcn, null
  br i1 %i.bco, label %bb.uw, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1272, !prof !26

bb.uw:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1270
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1271 unwind label %bb.ve

.noexc1271:                                       ; preds = %bb.uw
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1272: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bcn, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false)
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bcp, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false)
  store i64 2, ptr %i.ds, align 8
  store ptr %i.bcn, ptr %i.hr, align 8
  store i64 2, ptr %i.hs, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14242)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !14243
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dt)
          to label %bb.ux unwind label %bb.uz, !noalias !14244

bb.ux:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !14243
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ds)
          to label %bb.va unwind label %bb.uy, !noalias !14245

bb.uy:                                            ; preds = %bb.ux
  %i.bcq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #42, !noalias !14243
  br label %.body369

bb.uz:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1272
  %i.bcr = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ds) #42, !noalias !14245
  br label %.body369

bb.va:                                            ; preds = %bb.ux
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !14246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !14246
  store i32 %i.bbu, ptr %i.hu, align 8, !alias.scope !14242
  store i32 %i.bbf, ptr %i.hv, align 4, !alias.scope !14242
  store i32 %i.bcj, ptr %i.hw, align 8, !alias.scope !14242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14247
  %i.bcs = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14247 ; 3 uses
  %i.bct = icmp eq ptr %i.bcs, null
  br i1 %i.bct, label %bb.vb, label %bb.vd, !prof !26

bb.vb:                                            ; preds = %bb.va
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #46
          to label %.noexc1276 unwind label %bb.vc

.noexc1276:                                       ; preds = %bb.vb
  unreachable

bb.vc:                                            ; preds = %bb.vb
  %i.bcu = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info23SimpleInstrInfo_os_loopEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.du) #42
  br label %.body369

bb.vd:                                            ; preds = %bb.va
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bcs, ptr noundef nonnull align 8 dereferenceable(64) %i.du, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  br label %bb.dq

bb.ve:                                            ; preds = %bb.uw
  %i.bcv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dt) #42
  br label %.thread2642

.thread2642:                                      ; preds = %bb.ve, %.thread2652
  %.sroa.085.22647 = phi i1 [ true, %.thread2652 ], [ false, %bb.ve ] ; 2 uses
  %.pn2092646 = phi { ptr, i32 } [ %i.bbc, %.thread2652 ], [ %i.bcv, %bb.ve ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14248)
  %.val.i1278 = load i64, ptr %i.dv, align 8, !alias.scope !14248 ; 2 uses
  %i.bcw = icmp eq i64 %.val.i1278, 0
  br i1 %i.bcw, label %bb.vg, label %bb.vf

bb.vf:                                            ; preds = %.thread2642
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.val1.i1279 = load ptr, ptr %i.bcx, align 8, !alias.scope !14248, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1279, i64 noundef %.val.i1278, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14248
  br label %bb.vg

bb.vg:                                            ; preds = %bb.un, %.thread2642, %bb.vf
  %.pn209.pn.ph = phi { ptr, i32 } [ %i.bap, %bb.un ], [ %.pn2092646, %.thread2642 ], [ %.pn2092646, %bb.vf ] ; 2 uses
  %.sroa.085.1.ph = phi i1 [ true, %bb.un ], [ %.sroa.085.22647, %.thread2642 ], [ %.sroa.085.22647, %bb.vf ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14249)
  %.val.i1281 = load i64, ptr %i.dw, align 8, !alias.scope !14249 ; 2 uses
  %i.bcy = icmp eq i64 %.val.i1281, 0
  br i1 %i.bcy, label %.thread2648, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.val1.i1282 = load ptr, ptr %i.bcz, align 8, !alias.scope !14249, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1282, i64 noundef %.val.i1281, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14249
  br label %.thread2648

.thread2631:                                      ; preds = %.thread2631.loopexit.split-lp.loopexit.split-lp, %.thread2648
  %.pn209.pn.pn2634 = phi { ptr, i32 } [ %.pn209.pn.ph, %.thread2648 ], [ %lpad.loopexit.split-lp, %.thread2631.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  br i1 %i.bac, label %.thread2361, label %bb.vi

bb.vi:                                            ; preds = %.thread2631
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.baj, i64 noundef %i.bab, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14250
  br label %.thread2361

bb.vj:                                            ; preds = %bb.cw
  %i.bda = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bdb = load i8, ptr %i.bda, align 1, !noalias !14251, !noundef !21
  %i.bdc = zext i8 %i.bdb to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bdc)
          to label %bb.vk unwind label %.body249.thread.loopexit.split-lp

bb.vk:                                            ; preds = %bb.vj
  %.not2723 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2723, label %._crit_edge.i1293.invoke, label %.lr.ph.i1289.preheader

.lr.ph.i1289.preheader:                           ; preds = %bb.vk
  %i.bdd = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1289

.lr.ph.i1289:                                     ; preds = %.lr.ph.i1289.preheader, %bb.vl
  %.sroa.0.013.i1290 = phi i32 [ %i.bdo, %bb.vl ], [ 0, %.lr.ph.i1289.preheader ] ; 2 uses
  %.sroa.02.012.i1291 = phi i32 [ %i.bdp, %bb.vl ], [ 0, %.lr.ph.i1289.preheader ] ; 3 uses
  %i.bde = phi i64 [ %i.bdh, %bb.vl ], [ %i.bdd, %.lr.ph.i1289.preheader ] ; 3 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bde
  %i.bdg = load i8, ptr %i.bdf, align 1, !noalias !14252, !noundef !21 ; 2 uses
  %i.bdh = add nuw nsw i64 %i.bde, 1              ; 4 uses
  %i.bdi = zext i8 %i.bdg to i32                  ; 2 uses
  %i.bdj = icmp sgt i8 %i.bdg, -1
  br i1 %i.bdj, label %bb.vm, label %bb.vl

._crit_edge.i1293.invoke:                         ; preds = %bb.vk, %bb.vm, %bb.vl, %bb.vn
  %i.bdk = phi i64 [ 13463, %bb.vn ], [ 13463, %bb.vl ], [ 13463, %bb.vk ], [ %i.bdh, %bb.vm ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdk, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1293.cont unwind label %.thread2668

._crit_edge.i1293.cont:                           ; preds = %._crit_edge.i1293.invoke
  unreachable

bb.vl:                                            ; preds = %.lr.ph.i1289
  %i.bdl = and i32 %i.bdi, 127
  %i.bdm = and i32 %.sroa.02.012.i1291, 31
  %i.bdn = shl i32 %i.bdl, %i.bdm
  %i.bdo = or i32 %i.bdn, %.sroa.0.013.i1290
  %i.bdp = add nuw nsw i32 %.sroa.02.012.i1291, 7
  %exitcond.not.i1292 = icmp eq i64 %i.bdh, 13463
  br i1 %exitcond.not.i1292, label %._crit_edge.i1293.invoke, label %.lr.ph.i1289

.thread2668:                                      ; preds = %._crit_edge.i1293.invoke, %bb.vp
  %i.bdq = landingpad { ptr, i32 }
          cleanup
  br label %.thread2658

bb.vm:                                            ; preds = %.lr.ph.i1289
  %i.bdr = and i32 %.sroa.02.012.i1291, 31
  %i.bds = shl i32 %i.bdi, %i.bdr
  %i.bdt = or i32 %i.bds, %.sroa.0.013.i1290
  %i.bdu = icmp ult i64 %i.bde, 13462
  br i1 %i.bdu, label %.lr.ph.i1298, label %._crit_edge.i1293.invoke

.lr.ph.i1298:                                     ; preds = %bb.vm, %bb.vn
  %.sroa.0.013.i1299 = phi i32 [ %i.bee, %bb.vn ], [ 0, %bb.vm ] ; 2 uses
  %.sroa.02.012.i1300 = phi i32 [ %i.bef, %bb.vn ], [ 0, %bb.vm ] ; 3 uses
  %i.bdv = phi i64 [ %i.bdy, %bb.vn ], [ %i.bdh, %bb.vm ] ; 2 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bdv
  %i.bdx = load i8, ptr %i.bdw, align 1, !noalias !14253, !noundef !21 ; 2 uses
  %i.bdy = add nuw nsw i64 %i.bdv, 1              ; 3 uses
  %i.bdz = zext i8 %i.bdx to i32                  ; 2 uses
  %i.bea = icmp sgt i8 %i.bdx, -1
  br i1 %i.bea, label %bb.vo, label %bb.vn

bb.vn:                                            ; preds = %.lr.ph.i1298
  %i.beb = and i32 %i.bdz, 127
  %i.bec = and i32 %.sroa.02.012.i1300, 31
  %i.bed = shl i32 %i.beb, %i.bec
  %i.bee = or i32 %i.bed, %.sroa.0.013.i1299
  %i.bef = add nuw nsw i32 %.sroa.02.012.i1300, 7
  %exitcond.not.i1301 = icmp eq i64 %i.bdy, 13463
  br i1 %exitcond.not.i1301, label %._crit_edge.i1293.invoke, label %.lr.ph.i1298

bb.vo:                                            ; preds = %.lr.ph.i1298
  %i.beg = and i32 %.sroa.02.012.i1300, 31
  %i.beh = shl i32 %i.bdz, %i.beg
  %i.bei = or i32 %i.beh, %.sroa.0.013.i1299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bej = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.bek = icmp eq ptr %i.bej, null
  br i1 %i.bek, label %bb.vp, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1306, !prof !26

bb.vp:                                            ; preds = %bb.vo
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.noexc1305 unwind label %.thread2668

.noexc1305:                                       ; preds = %bb.vp
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1306: ; preds = %bb.vo
  store i64 %.sroa.01732.0, ptr %i.bej, align 8
  %.sroa.42149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bej, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.42149.0..sroa_idx, align 8
  %.sroa.52150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bej, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52150.0..sroa_idx, align 8
  store i64 1, ptr %i.dp, align 8
  store ptr %i.bej, ptr %i.hh, align 8
  store i64 1, ptr %i.hi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bel = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 3 uses
  %i.bem = icmp eq ptr %i.bel, null
  br i1 %i.bem, label %bb.vq, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1308, !prof !26

bb.vq:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1306
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.noexc1307 unwind label %bb.vy

.noexc1307:                                       ; preds = %bb.vq
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1308: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bel, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i64 24, i1 false)
  store i64 1, ptr %i.do, align 8
  store ptr %i.bel, ptr %i.hj, align 8
  store i64 1, ptr %i.hk, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !14255
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dp)
          to label %bb.vr unwind label %bb.vt, !noalias !14256

bb.vr:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !14255
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.do)
          to label %bb.vu unwind label %bb.vs, !noalias !14257

bb.vs:                                            ; preds = %bb.vr
  %i.ben = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #42, !noalias !14255
  br label %.body369

bb.vt:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1308
  %i.beo = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.do) #42, !noalias !14257
  br label %.body369

bb.vu:                                            ; preds = %bb.vr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !14258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !14258
  store i32 %i.bdt, ptr %i.hm, align 8, !alias.scope !14254
  store i32 -1, ptr %i.hn, align 4, !alias.scope !14254
  store i32 %i.bei, ptr %i.ho, align 8, !alias.scope !14254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !14255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14259
  %i.bep = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14259 ; 3 uses
  %i.beq = icmp eq ptr %i.bep, null
  br i1 %i.beq, label %bb.vv, label %bb.vx, !prof !26

bb.vv:                                            ; preds = %bb.vu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #46
          to label %.noexc1313 unwind label %bb.vw

.noexc1313:                                       ; preds = %bb.vv
  unreachable

bb.vw:                                            ; preds = %bb.vv
  %i.ber = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info23SimpleInstrInfo_os_loopEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.dq) #42
  br label %.body369

bb.vx:                                            ; preds = %bb.vu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bep, ptr noundef nonnull align 8 dereferenceable(64) %i.dq, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %bb.dq

bb.vy:                                            ; preds = %bb.vq
  %i.bes = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dp) #42
  br label %.thread2658

.thread2658:                                      ; preds = %bb.vy, %.thread2668
  %.sroa.0112.342663 = phi i1 [ true, %.thread2668 ], [ false, %bb.vy ] ; 2 uses
  %.pn2662 = phi { ptr, i32 } [ %i.bdq, %.thread2668 ], [ %i.bes, %bb.vy ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14260)
  %.val.i1315 = load i64, ptr %i.dr, align 8, !alias.scope !14260 ; 2 uses
  %i.bet = icmp eq i64 %.val.i1315, 0
  br i1 %i.bet, label %.body249, label %.split

.split:                                           ; preds = %.thread2658
  %i.beu = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.val1.i1316 = load ptr, ptr %i.beu, align 8, !alias.scope !14260, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1316, i64 noundef %.val.i1315, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14260
  br i1 %.sroa.0112.342663, label %.thread2361, label %.body369

bb.vz:                                            ; preds = %bb.cx
  %i.bev = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bew = load i8, ptr %i.bev, align 1, !noalias !14261, !noundef !21
  %i.bex = zext i8 %i.bew to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bex)
          to label %bb.wa unwind label %.body249.thread.loopexit.split-lp

bb.wa:                                            ; preds = %bb.vz
  %.not2722 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2722, label %._crit_edge.i1324, label %.lr.ph.i1320.preheader

.lr.ph.i1320.preheader:                           ; preds = %bb.wa
  %i.bey = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1320

.lr.ph.i1320:                                     ; preds = %.lr.ph.i1320.preheader, %bb.wb
  %.sroa.0.013.i1321 = phi i32 [ %i.bfi, %bb.wb ], [ 0, %.lr.ph.i1320.preheader ] ; 2 uses
  %.sroa.02.012.i1322 = phi i32 [ %i.bfj, %bb.wb ], [ 0, %.lr.ph.i1320.preheader ] ; 3 uses
  %i.bez = phi i64 [ %i.bfc, %bb.wb ], [ %i.bey, %.lr.ph.i1320.preheader ] ; 2 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bez
  %i.bfb = load i8, ptr %i.bfa, align 1, !noalias !14262, !noundef !21 ; 2 uses
  %i.bfc = add nuw nsw i64 %i.bez, 1              ; 3 uses
  %i.bfd = zext i8 %i.bfb to i32                  ; 2 uses
  %i.bfe = icmp sgt i8 %i.bfb, -1
  br i1 %i.bfe, label %bb.wc, label %bb.wb

._crit_edge.i1324:                                ; preds = %bb.wa, %bb.wb
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1325 unwind label %bb.wn

.noexc1325:                                       ; preds = %._crit_edge.i1324
  unreachable

bb.wb:                                            ; preds = %.lr.ph.i1320
  %i.bff = and i32 %i.bfd, 127
  %i.bfg = and i32 %.sroa.02.012.i1322, 31
  %i.bfh = shl i32 %i.bff, %i.bfg
  %i.bfi = or i32 %i.bfh, %.sroa.0.013.i1321
  %i.bfj = add nuw nsw i32 %.sroa.02.012.i1322, 7
  %exitcond.not.i1323 = icmp eq i64 %i.bfc, 13463
  br i1 %exitcond.not.i1323, label %._crit_edge.i1324, label %.lr.ph.i1320

bb.wc:                                            ; preds = %.lr.ph.i1320
  %i.bfk = and i32 %.sroa.02.012.i1322, 31
  %i.bfl = shl i32 %i.bfd, %i.bfk
  %i.bfm = or i32 %i.bfl, %.sroa.0.013.i1321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  %.sroa.02154.0.copyload = load i64, ptr %i.dn, align 8 ; 5 uses
  %.sroa.52155.0.copyload = load ptr, ptr %.sroa.52155.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72156.0.copyload = load i64, ptr %.sroa.72156.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14263)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !14264
  call void @llvm.experimental.noalias.scope.decl(metadata !14265)
  call void @llvm.experimental.noalias.scope.decl(metadata !14266)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !14267
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.wf unwind label %bb.wd, !noalias !14267

bb.wd:                                            ; preds = %bb.wc
  %i.bfn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfo = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.bfo, label %.thread.i1328, label %bb.we

bb.we:                                            ; preds = %bb.wd
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14268
  br label %.thread.i1328

bb.wf:                                            ; preds = %bb.wc
  store i64 %.sroa.01732.0, ptr %i.w, align 8, !alias.scope !14269, !noalias !14270
  store ptr %.sroa.50.0, ptr %.sroa.52152.0..sroa_idx, align 8, !alias.scope !14269, !noalias !14270
  store i64 %.sroa.77.0, ptr %.sroa.72153.0..sroa_idx, align 8, !alias.scope !14269, !noalias !14270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !14271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !14267
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52155.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !14272
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52155.0.copyload, i64 noundef %.sroa.72156.0.copyload)
          to label %bb.wj unwind label %bb.wg, !noalias !14272

bb.wg:                                            ; preds = %bb.wf
  %i.bfp = landingpad { ptr, i32 }
          cleanup
  %i.bfq = icmp eq i64 %.sroa.02154.0.copyload, 0
  br i1 %i.bfq, label %.body5.i1338, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52155.0.copyload, i64 noundef %.sroa.02154.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14273
  br label %.body5.i1338

.body5.i1338:                                     ; preds = %bb.wh, %bb.wg
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.w) #42, !noalias !14264
  br label %.body369

.thread.i1328:                                    ; preds = %bb.we, %bb.wd
  %i.bfr = icmp eq i64 %.sroa.02154.0.copyload, 0
  br i1 %i.bfr, label %.body369, label %bb.wi

bb.wi:                                            ; preds = %.thread.i1328
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52155.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52155.0.copyload, i64 noundef %.sroa.02154.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14274
  br label %.body369

bb.wj:                                            ; preds = %bb.wf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i1339, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !14275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !14272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dm, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !noalias !14275
  store i64 %.sroa.02154.0.copyload, ptr %i.hf, align 8, !alias.scope !14263
  store ptr %.sroa.52155.0.copyload, ptr %.sroa.4.0..sroa_idx.i1340, align 8, !alias.scope !14263
  store i64 %.sroa.72156.0.copyload, ptr %.sroa.514.0..sroa_idx.i1341, align 8, !alias.scope !14263
  store i32 %i.bfm, ptr %i.hg, align 8, !alias.scope !14263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14264
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14276
  %i.bfs = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14276 ; 3 uses
  %i.bft = icmp eq ptr %i.bfs, null
  br i1 %i.bft, label %bb.wk, label %bb.wm, !prof !26

bb.wk:                                            ; preds = %bb.wj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc1345 unwind label %bb.wl

.noexc1345:                                       ; preds = %bb.wk
  unreachable

bb.wl:                                            ; preds = %bb.wk
  %i.bfu = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_os_memEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.dm) #42
  br label %.body369

bb.wm:                                            ; preds = %bb.wj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bfs, ptr noundef nonnull align 8 dereferenceable(104) %i.dm, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.dq

bb.wn:                                            ; preds = %._crit_edge.i1324
  %i.bfv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14277)
  %.val.i1347 = load i64, ptr %i.dn, align 8, !alias.scope !14277 ; 2 uses
  %i.bfw = icmp eq i64 %.val.i1347, 0
  br i1 %i.bfw, label %.thread2361, label %bb.wo

bb.wo:                                            ; preds = %bb.wn
  %.val1.i1348 = load ptr, ptr %.sroa.52155.0..sroa_idx, align 8, !alias.scope !14277, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1348, i64 noundef %.val.i1347, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14277
  br label %.thread2361

bb.wp:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.experimental.noalias.scope.decl(metadata !14278)
  call void @llvm.experimental.noalias.scope.decl(metadata !14279)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !14280
  call void @llvm.experimental.noalias.scope.decl(metadata !14281)
  call void @llvm.experimental.noalias.scope.decl(metadata !14282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !14283
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.ws unwind label %bb.wq, !noalias !14283

bb.wq:                                            ; preds = %bb.wp
  %i.bfx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfy = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.bfy, label %.thread.i1351, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14284
  br label %.thread.i1351

bb.ws:                                            ; preds = %bb.wp
  store i64 %.sroa.01732.0, ptr %i.t, align 8, !alias.scope !14285, !noalias !14286
  store ptr %.sroa.50.0, ptr %.sroa.52158.0..sroa_idx, align 8, !alias.scope !14285, !noalias !14286
  store i64 %.sroa.77.0, ptr %.sroa.72159.0..sroa_idx, align 8, !alias.scope !14285, !noalias !14286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !14287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !14283
  %.sroa.0.0.copyload.i1356 = load i64, ptr %i.dl, align 8, !alias.scope !14279 ; 3 uses
  %.sroa.5.0.copyload.i1358 = load ptr, ptr %.sroa.5.0..sroa_idx.i1357, align 8, !alias.scope !14279, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.6.0.copyload.i1360 = load i64, ptr %.sroa.6.0..sroa_idx.i1359, align 8, !alias.scope !14279 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !14288
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i1358, i64 noundef %.sroa.6.0.copyload.i1360)
          to label %bb.ww unwind label %bb.wt, !noalias !14288

bb.wt:                                            ; preds = %bb.ws
  %i.bfz = landingpad { ptr, i32 }
          cleanup
  %i.bga = icmp eq i64 %.sroa.0.0.copyload.i1356, 0
  br i1 %i.bga, label %.body5.i1361, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i1358, i64 noundef %.sroa.0.0.copyload.i1356, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14289
  br label %.body5.i1361

.body5.i1361:                                     ; preds = %bb.wu, %bb.wt
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.t) #42, !noalias !14280
  br label %.body369

.thread.i1351:                                    ; preds = %bb.wr, %bb.wq
  call void @llvm.experimental.noalias.scope.decl(metadata !14290)
  %.val.i.i1352 = load i64, ptr %i.dl, align 8, !alias.scope !14291 ; 2 uses
  %i.bgb = icmp eq i64 %.val.i.i1352, 0
  br i1 %i.bgb, label %.body369, label %bb.wv

bb.wv:                                            ; preds = %.thread.i1351
  %.val1.i.i1353 = load ptr, ptr %.sroa.5.0..sroa_idx.i1357, align 8, !alias.scope !14291, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i1353, i64 noundef %.val.i.i1352, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14292
  br label %.body369

bb.ww:                                            ; preds = %bb.ws
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i1362, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !14293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !14288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !14293
  store i64 %.sroa.0.0.copyload.i1356, ptr %i.hd, align 8, !alias.scope !14278
  store ptr %.sroa.5.0.copyload.i1358, ptr %.sroa.4.0..sroa_idx.i1363, align 8, !alias.scope !14278
  store i64 %.sroa.6.0.copyload.i1360, ptr %.sroa.514.0..sroa_idx.i1364, align 8, !alias.scope !14278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14280
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14294
  %i.bgc = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14294 ; 3 uses
  %i.bgd = icmp eq ptr %i.bgc, null
  br i1 %i.bgd, label %bb.wx, label %bb.wz, !prof !26

bb.wx:                                            ; preds = %bb.ww
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #46
          to label %.noexc1368 unwind label %bb.wy

.noexc1368:                                       ; preds = %bb.wx
  unreachable

bb.wy:                                            ; preds = %bb.wx
  %i.bge = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info21SimpleInstrInfo_Reg16EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.dk) #42
  br label %.body369

bb.wz:                                            ; preds = %bb.ww
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bgc, ptr noundef nonnull align 8 dereferenceable(96) %i.dk, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.dq

bb.xa:                                            ; preds = %bb.cz
  %i.bgf = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bgg = load i8, ptr %i.bgf, align 1, !noalias !14295, !noundef !21
  %i.bgh = zext i8 %i.bgg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bgh)
          to label %bb.xb unwind label %.body249.thread.loopexit.split-lp

bb.xb:                                            ; preds = %bb.xa
  %.not2721 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2721, label %._crit_edge.i1376, label %.lr.ph.i1372.preheader

.lr.ph.i1372.preheader:                           ; preds = %bb.xb
  %i.bgi = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1372

.lr.ph.i1372:                                     ; preds = %.lr.ph.i1372.preheader, %bb.xc
  %.sroa.0.013.i1373 = phi i32 [ %i.bgs, %bb.xc ], [ 0, %.lr.ph.i1372.preheader ] ; 2 uses
  %.sroa.02.012.i1374 = phi i32 [ %i.bgt, %bb.xc ], [ 0, %.lr.ph.i1372.preheader ] ; 3 uses
  %i.bgj = phi i64 [ %i.bgm, %bb.xc ], [ %i.bgi, %.lr.ph.i1372.preheader ] ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bgj
  %i.bgl = load i8, ptr %i.bgk, align 1, !noalias !14296, !noundef !21 ; 2 uses
  %i.bgm = add nuw nsw i64 %i.bgj, 1              ; 3 uses
  %i.bgn = zext i8 %i.bgl to i32                  ; 2 uses
  %i.bgo = icmp sgt i8 %i.bgl, -1
  br i1 %i.bgo, label %bb.xd, label %bb.xc

._crit_edge.i1376:                                ; preds = %bb.xb, %bb.xc
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1377 unwind label %bb.xo

.noexc1377:                                       ; preds = %._crit_edge.i1376
  unreachable

bb.xc:                                            ; preds = %.lr.ph.i1372
  %i.bgp = and i32 %i.bgn, 127
  %i.bgq = and i32 %.sroa.02.012.i1374, 31
  %i.bgr = shl i32 %i.bgp, %i.bgq
  %i.bgs = or i32 %i.bgr, %.sroa.0.013.i1373
  %i.bgt = add nuw nsw i32 %.sroa.02.012.i1374, 7
  %exitcond.not.i1375 = icmp eq i64 %i.bgm, 13463
  br i1 %exitcond.not.i1375, label %._crit_edge.i1376, label %.lr.ph.i1372

bb.xd:                                            ; preds = %.lr.ph.i1372
  %i.bgu = and i32 %.sroa.02.012.i1374, 31
  %i.bgv = shl i32 %i.bgn, %i.bgu
  %i.bgw = or i32 %i.bgv, %.sroa.0.013.i1373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  %.sroa.02163.0.copyload = load i64, ptr %i.dj, align 8 ; 5 uses
  %.sroa.52164.0.copyload = load ptr, ptr %.sroa.52164.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72165.0.copyload = load i64, ptr %.sroa.72165.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !14298
  call void @llvm.experimental.noalias.scope.decl(metadata !14299)
  call void @llvm.experimental.noalias.scope.decl(metadata !14300)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14301
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.xg unwind label %bb.xe, !noalias !14301

bb.xe:                                            ; preds = %bb.xd
  %i.bgx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgy = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.bgy, label %.thread.i1380, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14302
  br label %.thread.i1380

bb.xg:                                            ; preds = %bb.xd
  store i64 %.sroa.01732.0, ptr %i.q, align 8, !alias.scope !14303, !noalias !14304
  store ptr %.sroa.50.0, ptr %.sroa.52161.0..sroa_idx, align 8, !alias.scope !14303, !noalias !14304
  store i64 %.sroa.77.0, ptr %.sroa.72162.0..sroa_idx, align 8, !alias.scope !14303, !noalias !14304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !14305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !14301
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52164.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14306
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52164.0.copyload, i64 noundef %.sroa.72165.0.copyload)
          to label %bb.xk unwind label %bb.xh, !noalias !14306

bb.xh:                                            ; preds = %bb.xg
  %i.bgz = landingpad { ptr, i32 }
          cleanup
  %i.bha = icmp eq i64 %.sroa.02163.0.copyload, 0
  br i1 %i.bha, label %.body5.i1390, label %bb.xi

bb.xi:                                            ; preds = %bb.xh
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52164.0.copyload, i64 noundef %.sroa.02163.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14307
  br label %.body5.i1390

.body5.i1390:                                     ; preds = %bb.xi, %bb.xh
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.q) #42, !noalias !14298
  br label %.body369

.thread.i1380:                                    ; preds = %bb.xf, %bb.xe
  %i.bhb = icmp eq i64 %.sroa.02163.0.copyload, 0
  br i1 %i.bhb, label %.body369, label %bb.xj

bb.xj:                                            ; preds = %.thread.i1380
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52164.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52164.0.copyload, i64 noundef %.sroa.02163.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14308
  br label %.body369

bb.xk:                                            ; preds = %bb.xg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i1391, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !14309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !14306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.di, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !14309
  store i64 %.sroa.02163.0.copyload, ptr %i.ha, align 8, !alias.scope !14297
  store ptr %.sroa.52164.0.copyload, ptr %.sroa.4.0..sroa_idx.i1392, align 8, !alias.scope !14297
  store i64 %.sroa.72165.0.copyload, ptr %.sroa.514.0..sroa_idx.i1393, align 8, !alias.scope !14297
  store i32 %i.bgw, ptr %i.hb, align 8, !alias.scope !14297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14298
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14310
  %i.bhc = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14310 ; 3 uses
  %i.bhd = icmp eq ptr %i.bhc, null
  br i1 %i.bhd, label %bb.xl, label %bb.xn, !prof !26

bb.xl:                                            ; preds = %bb.xk
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc1397 unwind label %bb.xm

.noexc1397:                                       ; preds = %bb.xl
  unreachable

bb.xm:                                            ; preds = %bb.xl
  %i.bhe = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info23SimpleInstrInfo_os_mem2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.di) #42
  br label %.body369

bb.xn:                                            ; preds = %bb.xk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bhc, ptr noundef nonnull align 8 dereferenceable(104) %i.di, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %bb.dq

bb.xo:                                            ; preds = %._crit_edge.i1376
  %i.bhf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14311)
  %.val.i1399 = load i64, ptr %i.dj, align 8, !alias.scope !14311 ; 2 uses
  %i.bhg = icmp eq i64 %.val.i1399, 0
  br i1 %i.bhg, label %.thread2361, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %.val1.i1400 = load ptr, ptr %.sroa.52164.0..sroa_idx, align 8, !alias.scope !14311, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1400, i64 noundef %.val.i1399, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14311
  br label %.thread2361

bb.xq:                                            ; preds = %bb.da
  %i.bhh = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bhi = load i8, ptr %i.bhh, align 1, !noalias !14312, !noundef !21
  %i.bhj = zext i8 %i.bhi to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bhj)
          to label %bb.xr unwind label %.body249.thread.loopexit.split-lp

bb.xr:                                            ; preds = %bb.xq
  %.not2720 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2720, label %._crit_edge.i1408.invoke, label %.lr.ph.i1404.preheader

.lr.ph.i1404.preheader:                           ; preds = %bb.xr
  %i.bhk = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1404

.lr.ph.i1404:                                     ; preds = %.lr.ph.i1404.preheader, %bb.xs
  %.sroa.0.013.i1405 = phi i32 [ %i.bhv, %bb.xs ], [ 0, %.lr.ph.i1404.preheader ] ; 2 uses
  %.sroa.02.012.i1406 = phi i32 [ %i.bhw, %bb.xs ], [ 0, %.lr.ph.i1404.preheader ] ; 3 uses
  %i.bhl = phi i64 [ %i.bho, %bb.xs ], [ %i.bhk, %.lr.ph.i1404.preheader ] ; 4 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bhl
  %i.bhn = load i8, ptr %i.bhm, align 1, !noalias !14313, !noundef !21 ; 2 uses
  %i.bho = add nuw nsw i64 %i.bhl, 1              ; 4 uses
  %i.bhp = zext i8 %i.bhn to i32                  ; 2 uses
  %i.bhq = icmp sgt i8 %i.bhn, -1
  br i1 %i.bhq, label %bb.xt, label %bb.xs

._crit_edge.i1408.invoke:                         ; preds = %bb.xt, %bb.xr, %bb.xs
  %i.bhr = phi i64 [ 13463, %bb.xs ], [ 13463, %bb.xr ], [ %i.bho, %bb.xt ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bhr, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1408.cont unwind label %bb.xz

._crit_edge.i1408.cont:                           ; preds = %._crit_edge.i1408.invoke
  unreachable

bb.xs:                                            ; preds = %.lr.ph.i1404
  %i.bhs = and i32 %i.bhp, 127
  %i.bht = and i32 %.sroa.02.012.i1406, 31
  %i.bhu = shl i32 %i.bhs, %i.bht
  %i.bhv = or i32 %i.bhu, %.sroa.0.013.i1405
  %i.bhw = add nuw nsw i32 %.sroa.02.012.i1406, 7
  %exitcond.not.i1407 = icmp eq i64 %i.bho, 13463
  br i1 %exitcond.not.i1407, label %._crit_edge.i1408.invoke, label %.lr.ph.i1404

bb.xt:                                            ; preds = %.lr.ph.i1404
  %i.bhx = icmp ult i64 %i.bhl, 13462
  br i1 %i.bhx, label %bb.xu, label %._crit_edge.i1408.invoke

bb.xu:                                            ; preds = %bb.xt
  %i.bhy = and i32 %.sroa.02.012.i1406, 31
  %i.bhz = shl i32 %i.bhp, %i.bhy
  %i.bia = or i32 %i.bhz, %.sroa.0.013.i1405
  %i.bib = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bho
  %i.bic = load i8, ptr %i.bib, align 1, !noalias !14314, !noundef !21
  %i.bid = add nuw nsw i64 %i.bhl, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  store i64 %.sroa.01732.0, ptr %i.dg, align 8
  store ptr %.sroa.50.0, ptr %.sroa.50.0..sroa_idx1853, align 8
  store i64 %.sroa.77.0, ptr %.sroa.77.0..sroa_idx1964, align 8
  %i.bie = icmp ne i8 %i.bic, 0
  invoke fastcc void @_RNvMsq_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_19SimpleInstrInfo_os23new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.dh, i32 noundef %i.bia, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dg, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.df, i1 noundef zeroext %i.bie, i32 noundef 0)
          to label %bb.xv unwind label %.body291

bb.xv:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14315
  %i.bif = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14315 ; 3 uses
  %i.big = icmp eq ptr %i.bif, null
  br i1 %i.big, label %bb.xw, label %bb.xy, !prof !26

bb.xw:                                            ; preds = %bb.xv
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #46
          to label %.noexc1413 unwind label %bb.xx

.noexc1413:                                       ; preds = %bb.xw
  unreachable

bb.xx:                                            ; preds = %bb.xw
  %i.bih = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info19SimpleInstrInfo_os2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.dh) #42
  br label %.body369

bb.xy:                                            ; preds = %bb.xv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bif, ptr noundef nonnull align 8 dereferenceable(112) %i.dh, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  br label %bb.dq

bb.xz:                                            ; preds = %._crit_edge.i1408.invoke
  %lpad.thr_comm2680 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i1415 = load i64, ptr %i.df, align 8      ; 2 uses
  %i.bii = icmp eq i64 %.val.i1415, 0
  br i1 %i.bii, label %.thread2361, label %bb.ya

bb.ya:                                            ; preds = %bb.xz
  %i.bij = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.val1.i1416 = load ptr, ptr %i.bij, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1416, i64 noundef %.val.i1415, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14316
  br label %.thread2361

bb.yb:                                            ; preds = %bb.db
  %i.bik = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bil = load i8, ptr %i.bik, align 1, !noalias !14317, !noundef !21
  %i.bim = zext i8 %i.bil to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bim)
          to label %bb.yc unwind label %.body249.thread.loopexit.split-lp

bb.yc:                                            ; preds = %bb.yb
  %.not2719 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2719, label %._crit_edge.i1424.invoke, label %.lr.ph.i1420.preheader

.lr.ph.i1420.preheader:                           ; preds = %bb.yc
  %i.bin = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1420

.lr.ph.i1420:                                     ; preds = %.lr.ph.i1420.preheader, %bb.yd
  %.sroa.0.013.i1421 = phi i32 [ %i.biy, %bb.yd ], [ 0, %.lr.ph.i1420.preheader ] ; 2 uses
  %.sroa.02.012.i1422 = phi i32 [ %i.biz, %bb.yd ], [ 0, %.lr.ph.i1420.preheader ] ; 3 uses
  %i.bio = phi i64 [ %i.bir, %bb.yd ], [ %i.bin, %.lr.ph.i1420.preheader ] ; 5 uses
  %i.bip = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bio
  %i.biq = load i8, ptr %i.bip, align 1, !noalias !14318, !noundef !21 ; 2 uses
  %i.bir = add nuw nsw i64 %i.bio, 1              ; 4 uses
  %i.bis = zext i8 %i.biq to i32                  ; 2 uses
  %i.bit = icmp sgt i8 %i.biq, -1
  br i1 %i.bit, label %bb.ye, label %bb.yd

._crit_edge.i1424.invoke:                         ; preds = %bb.yf, %bb.ye, %bb.yc, %bb.yd, %bb.yg
  %i.biu = phi i64 [ 13463, %bb.yd ], [ 13463, %bb.yg ], [ 13463, %bb.yf ], [ 13463, %bb.yc ], [ %i.bir, %bb.ye ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.biu, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1424.cont unwind label %bb.ym

._crit_edge.i1424.cont:                           ; preds = %._crit_edge.i1424.invoke
  unreachable

bb.yd:                                            ; preds = %.lr.ph.i1420
  %i.biv = and i32 %i.bis, 127
  %i.biw = and i32 %.sroa.02.012.i1422, 31
  %i.bix = shl i32 %i.biv, %i.biw
  %i.biy = or i32 %i.bix, %.sroa.0.013.i1421
  %i.biz = add nuw nsw i32 %.sroa.02.012.i1422, 7
  %exitcond.not.i1423 = icmp eq i64 %i.bir, 13463
  br i1 %exitcond.not.i1423, label %._crit_edge.i1424.invoke, label %.lr.ph.i1420

.body291:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1154, %bb.ek, %bb.ea, %bb.dv, %bb.ar, %bb.xu, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1225, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1181, %bb.eu, %bb.yh
  %lpad.thr_comm.split-lp2689 = landingpad { ptr, i32 }
          cleanup
  br label %.body369

bb.ye:                                            ; preds = %.lr.ph.i1420
  %i.bja = and i32 %.sroa.02.012.i1422, 31
  %i.bjb = shl i32 %i.bis, %i.bja
  %i.bjc = or i32 %i.bjb, %.sroa.0.013.i1421
  %i.bjd = icmp ult i64 %i.bio, 13462
  br i1 %i.bjd, label %bb.yf, label %._crit_edge.i1424.invoke

bb.yf:                                            ; preds = %bb.ye
  %i.bje = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bir
  %i.bjf = load i8, ptr %i.bje, align 1, !noalias !14319, !noundef !21
  %.not5681 = icmp eq i64 %i.bio, 13461
  br i1 %.not5681, label %._crit_edge.i1424.invoke, label %.lr.ph.i1431.preheader

.lr.ph.i1431.preheader:                           ; preds = %bb.yf
  %i.bjg = add nuw nsw i64 %i.bio, 2
  br label %.lr.ph.i1431

.lr.ph.i1431:                                     ; preds = %.lr.ph.i1431.preheader, %bb.yg
  %.sroa.0.013.i1432 = phi i32 [ %i.bjq, %bb.yg ], [ 0, %.lr.ph.i1431.preheader ] ; 2 uses
  %.sroa.02.012.i1433 = phi i32 [ %i.bjr, %bb.yg ], [ 0, %.lr.ph.i1431.preheader ] ; 3 uses
  %i.bjh = phi i64 [ %i.bjk, %bb.yg ], [ %i.bjg, %.lr.ph.i1431.preheader ] ; 2 uses
  %i.bji = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bjh
  %i.bjj = load i8, ptr %i.bji, align 1, !noalias !14320, !noundef !21 ; 2 uses
  %i.bjk = add nuw nsw i64 %i.bjh, 1              ; 3 uses
  %i.bjl = zext i8 %i.bjj to i32                  ; 2 uses
  %i.bjm = icmp sgt i8 %i.bjj, -1
  br i1 %i.bjm, label %bb.yh, label %bb.yg

bb.yg:                                            ; preds = %.lr.ph.i1431
  %i.bjn = and i32 %i.bjl, 127
  %i.bjo = and i32 %.sroa.02.012.i1433, 31
  %i.bjp = shl i32 %i.bjn, %i.bjo
  %i.bjq = or i32 %i.bjp, %.sroa.0.013.i1432
  %i.bjr = add nuw nsw i32 %.sroa.02.012.i1433, 7
  %exitcond.not.i1434 = icmp eq i64 %i.bjk, 13463
  br i1 %exitcond.not.i1434, label %._crit_edge.i1424.invoke, label %.lr.ph.i1431

bb.yh:                                            ; preds = %.lr.ph.i1431
  %i.bjs = and i32 %.sroa.02.012.i1433, 31
  %i.bjt = shl i32 %i.bjl, %i.bjs
  %i.bju = or i32 %i.bjt, %.sroa.0.013.i1432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  store i64 %.sroa.01732.0, ptr %i.dd, align 8
  store ptr %.sroa.50.0, ptr %.sroa.50.0..sroa_idx1855, align 8
  store i64 %.sroa.77.0, ptr %.sroa.77.0..sroa_idx1966, align 8
  %i.bjv = icmp ne i8 %i.bjf, 0
  invoke fastcc void @_RNvMsq_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_19SimpleInstrInfo_os23new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.de, i32 noundef %i.bjc, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dc, i1 noundef zeroext %i.bjv, i32 noundef %i.bju)
          to label %bb.yi unwind label %.body291

bb.yi:                                            ; preds = %bb.yh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14321
  %i.bjw = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14321 ; 3 uses
  %i.bjx = icmp eq ptr %i.bjw, null
  br i1 %i.bjx, label %bb.yj, label %bb.yl, !prof !26

bb.yj:                                            ; preds = %bb.yi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #46
          to label %.noexc1438 unwind label %bb.yk

.noexc1438:                                       ; preds = %bb.yj
  unreachable

bb.yk:                                            ; preds = %bb.yj
  %i.bjy = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info19SimpleInstrInfo_os2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.de) #42
  br label %.body369

bb.yl:                                            ; preds = %bb.yi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bjw, ptr noundef nonnull align 8 dereferenceable(112) %i.de, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  br label %bb.dq

bb.ym:                                            ; preds = %._crit_edge.i1424.invoke
  %lpad.thr_comm2688 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i1440 = load i64, ptr %i.dc, align 8      ; 2 uses
  %i.bjz = icmp eq i64 %.val.i1440, 0
  br i1 %i.bjz, label %.thread2361, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  %i.bka = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.val1.i1441 = load ptr, ptr %i.bka, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1441, i64 noundef %.val.i1440, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14322
  br label %.thread2361

bb.yo:                                            ; preds = %bb.dc
  %i.bkb = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bkc = load i8, ptr %i.bkb, align 1, !noalias !14323, !noundef !21
  %i.bkd = add nuw nsw i64 %.sroa.156.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.experimental.noalias.scope.decl(metadata !14324)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14325
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.yr unwind label %bb.yp, !noalias !14325

bb.yp:                                            ; preds = %bb.yo
  %i.bke = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bkf = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.bkf, label %.body369, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14326
  br label %.body369

bb.yr:                                            ; preds = %bb.yo
  %i.bkg = icmp ne i8 %i.bkc, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62292.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !14327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !14325
  store i64 %.sroa.01732.0, ptr %i.cr, align 8, !noalias !14327
  store ptr %.sroa.50.0, ptr %.sroa.42290.0..sroa_idx, align 8, !noalias !14327
  store i64 %.sroa.77.0, ptr %.sroa.52291.0..sroa_idx, align 8, !noalias !14327
  %i.bkh = zext i1 %i.bkg to i8
  store i8 %i.bkh, ptr %i.gy, align 8, !alias.scope !14324
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14328
  %i.bki = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14328 ; 3 uses
  %i.bkj = icmp eq ptr %i.bki, null
  br i1 %i.bkj, label %bb.ys, label %bb.yu, !prof !26

bb.ys:                                            ; preds = %bb.yr
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1449 unwind label %bb.yt

.noexc1449:                                       ; preds = %bb.ys
  unreachable

bb.yt:                                            ; preds = %bb.ys
  %i.bkk = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info21SimpleInstrInfo_STIG1EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cr) #42
  br label %.body369

bb.yu:                                            ; preds = %bb.yr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bki, ptr noundef nonnull align 8 dereferenceable(56) %i.cr, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.dq

bb.yv:                                            ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62268.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !14329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !13885
  store i64 %.sroa.01732.0, ptr %i.db, align 8, !noalias !14329
  store ptr %.sroa.50.0, ptr %.sroa.42266.0..sroa_idx, align 8, !noalias !14329
  store i64 %.sroa.77.0, ptr %.sroa.52267.0..sroa_idx, align 8, !noalias !14329
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14330
  %i.bkl = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14330 ; 3 uses
  %i.bkm = icmp eq ptr %i.bkl, null
  br i1 %i.bkm, label %bb.yw, label %bb.yy, !prof !26

bb.yw:                                            ; preds = %bb.yv
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1451 unwind label %bb.yx

.noexc1451:                                       ; preds = %bb.yw
  unreachable

bb.yx:                                            ; preds = %bb.yw
  %i.bkn = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info24SimpleInstrInfo_pblendvbEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.db) #42
  br label %.body369

bb.yy:                                            ; preds = %bb.yv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bkl, ptr noundef nonnull align 8 dereferenceable(48) %i.db, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.dq

bb.yz:                                            ; preds = %bb.dg
  %i.bko = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bkp = load i8, ptr %i.bko, align 1, !noalias !14331, !noundef !21 ; 2 uses
  %i.bkq = add nuw nsw i64 %.sroa.156.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  %i.bkr = icmp ult i8 %i.bkp, 32
  call void @llvm.assume(i1 %i.bkr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.m, align 8
  %i.bks = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768) acquire, align 8, !noalias !14332
  %i.bkt = icmp eq i32 %i.bks, 0
  br i1 %i.bkt, label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i, label %bb.za, !prof !34

bb.za:                                            ; preds = %bb.yz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14332
  store ptr %i.m, ptr %i.l, align 8, !noalias !14332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14332
  store ptr %i.l, ptr %i.k, align 8, !noalias !14332
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768), i1 noundef zeroext false, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11256)
          to label %.noexc1453 unwind label %bb.zh

.noexc1453:                                       ; preds = %bb.za
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14332
  br label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i

_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i: ; preds = %.noexc1453, %bb.yz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bku = zext nneg i8 %i.bkp to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read.716, i64 %i.bku
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.bkw = load ptr, ptr %i.bkv, align 8, !nonnull !21, !noundef !21
  %i.bkx = getelementptr inbounds nuw i8, ptr %switch.load, i64 16
  %i.bky = load i64, ptr %i.bkx, align 8, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !14333)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14334
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.zd unwind label %bb.zb, !noalias !14334

bb.zb:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i
  %i.bkz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bla = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.bla, label %.body369, label %bb.zc

bb.zc:                                            ; preds = %bb.zb
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14335
  br label %.body369

bb.zd:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62296.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !14336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14334
  store i64 %.sroa.01732.0, ptr %i.da, align 8, !noalias !14336
  store ptr %.sroa.50.0, ptr %.sroa.42294.0..sroa_idx, align 8, !noalias !14336
  store i64 %.sroa.77.0, ptr %.sroa.52295.0..sroa_idx, align 8, !noalias !14336
  store ptr %i.bkw, ptr %i.gw, align 8, !alias.scope !14333
  store i64 %i.bky, ptr %i.gx, align 8, !alias.scope !14333
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14337
  %i.blb = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14337 ; 3 uses
  %i.blc = icmp eq ptr %i.blb, null
  br i1 %i.blc, label %bb.ze, label %bb.zg, !prof !26

end_hunk_2
begin_hunk_3_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl4read:bb.a

.noexc793:                                        ; preds = %bb.hr
  unreachable

bb.hs:                                            ; preds = %bb.hr
  %i.acd = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info20SimpleInstrInfo_Int3EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ei) #42
  br label %.body382

bb.ht:                                            ; preds = %bb.hq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.acb, ptr noundef nonnull align 8 dereferenceable(48) %i.ei, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  br label %bb.eh

bb.hu:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62174.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !noalias !15351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !15222
  store i64 %.sroa.01598.0, ptr %i.eh, align 8, !noalias !15351
  store ptr %.sroa.53.0, ptr %.sroa.42172.0..sroa_idx, align 8, !noalias !15351
  store i64 %.sroa.69.0, ptr %.sroa.52173.0..sroa_idx, align 8, !noalias !15351
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15352
  %i.ace = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15352 ; 3 uses
  %i.acf = icmp eq ptr %i.ace, null
  br i1 %i.acf, label %bb.hv, label %bb.hx, !prof !26

bb.hv:                                            ; preds = %bb.hu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc795 unwind label %bb.hw

.noexc795:                                        ; preds = %bb.hv
  unreachable

bb.hw:                                            ; preds = %bb.hv
  %i.acg = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info20SimpleInstrInfo_imulEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eh) #42
  br label %.body382

bb.hx:                                            ; preds = %bb.hu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ace, ptr noundef nonnull align 8 dereferenceable(48) %i.eh, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  br label %bb.eh

bb.hy:                                            ; preds = %.lr.ph.i467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call void @llvm.experimental.noalias.scope.decl(metadata !15353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !15354
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.ib unwind label %bb.hz, !noalias !15354

bb.hz:                                            ; preds = %bb.hy
  %i.ach = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aci = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.aci, label %.body382, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15355
  br label %.body382

bb.ib:                                            ; preds = %bb.hy
  %i.acj = and i32 %.sroa.02.012.i469, 31
  %i.ack = shl i32 %i.ov, %i.acj
  %i.acl = or i32 %i.ack, %.sroa.0.013.i468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62210.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !15356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !15354
  store i64 %.sroa.01598.0, ptr %i.eg, align 8, !noalias !15356
  store ptr %.sroa.53.0, ptr %.sroa.42208.0..sroa_idx, align 8, !noalias !15356
  store i64 %.sroa.69.0, ptr %.sroa.52209.0..sroa_idx, align 8, !noalias !15356
  store i32 %i.acl, ptr %i.ih, align 8, !alias.scope !15353
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15357
  %i.acm = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15357 ; 3 uses
  %i.acn = icmp eq ptr %i.acm, null
  br i1 %i.acn, label %bb.ic, label %bb.ie, !prof !26

bb.ic:                                            ; preds = %bb.ib
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc803 unwind label %bb.id

.noexc803:                                        ; preds = %bb.ic
  unreachable

bb.id:                                            ; preds = %bb.ic
  %i.aco = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info23SimpleInstrInfo_invlpgaEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.eg) #42
  br label %.body382

bb.ie:                                            ; preds = %bb.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.acm, ptr noundef nonnull align 8 dereferenceable(56) %i.eg, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %bb.eh

bb.if:                                            ; preds = %.lr.ph.i476
  %i.acp = and i32 %.sroa.02.012.i478, 31
  %i.acq = shl i32 %i.ph, %i.acp
  %i.acr = or i32 %i.acq, %.sroa.0.013.i477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.acs = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.act = icmp eq ptr %i.acs, null
  br i1 %i.act, label %.invoke12306, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit806, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit806: ; preds = %bb.if
  store i64 %.sroa.01598.0, ptr %i.acs, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.51904.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51904.0..sroa_idx, align 8
  store i64 1, ptr %i.ee, align 8
  store ptr %i.acs, ptr %i.id, align 8
  store i64 1, ptr %i.ie, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ef, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ee)
          to label %bb.ig unwind label %bb.ry

bb.ig:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit806
  store i32 %i.acr, ptr %i.if, align 8, !alias.scope !15358
  store i32 0, ptr %i.ig, align 4, !alias.scope !15358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15359
  %i.acu = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15359 ; 3 uses
  %i.acv = icmp eq ptr %i.acu, null
  br i1 %i.acv, label %bb.ih, label %bb.ij, !prof !26

bb.ih:                                            ; preds = %bb.ig
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc808 unwind label %bb.ii

.noexc808:                                        ; preds = %bb.ih
  unreachable

bb.ii:                                            ; preds = %bb.ih
  %i.acw = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ef) #42
  br label %.body382

bb.ij:                                            ; preds = %bb.ig
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acu, ptr noundef nonnull align 8 dereferenceable(32) %i.ef, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  br label %bb.eh

bb.ik:                                            ; preds = %.lr.ph.i485
  %i.acx = and i32 %.sroa.02.012.i487, 31
  %i.acy = shl i32 %i.pt, %i.acx
  %i.acz = or i32 %i.acy, %.sroa.0.013.i486
  %i.ada = zext i32 %i.acz to i64                 ; 3 uses
  %i.adb = icmp ugt i64 %i.lw, %i.ada
  br i1 %i.adb, label %bb.il, label %.invoke12310

bb.il:                                            ; preds = %bb.ik
  %i.adc = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.ada ; 2 uses
  %i.add = load ptr, ptr %i.adc, align 8, !nonnull !21, !noundef !21
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  %i.adf = load i64, ptr %i.ade, align 8, !noundef !21 ; 9 uses
  %.not.i810 = icmp slt i64 %i.adf, 0
  br i1 %.not.i810, label %.invoke12308, label %bb.im, !prof !37

bb.im:                                            ; preds = %bb.il
  %i.adg = icmp eq i64 %i.adf, 0                  ; 2 uses
  br i1 %i.adg, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit813.thread2320, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i811

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i811: ; preds = %bb.im
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15360
  %i.adh = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.adf, i64 noundef range(i64 1, 9) 1) #41, !noalias !15360 ; 3 uses
  %i.adi = icmp eq ptr %i.adh, null
  br i1 %i.adi, label %.invoke12308, label %bb.io

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit813.thread2320: ; preds = %bb.im, %bb.io
  %i.adj = phi ptr [ %i.adh, %bb.io ], [ inttoptr (i64 1 to ptr), %bb.im ] ; 2 uses
  %i.adk = icmp ult i64 %i.pp, 10831
  br i1 %i.adk, label %.lr.ph.i816, label %._crit_edge.i820

.lr.ph.i816:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit813.thread2320, %bb.in
  %.sroa.0.013.i817 = phi i32 [ %i.adu, %bb.in ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit813.thread2320 ] ; 2 uses
  %.sroa.02.012.i818 = phi i32 [ %i.adv, %bb.in ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit813.thread2320 ] ; 3 uses
  %i.adl = phi i64 [ %i.ado, %bb.in ], [ %i.ps, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit813.thread2320 ] ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr @10956, i64 %i.adl
  %i.adn = load i8, ptr %i.adm, align 1, !noalias !15361, !noundef !21 ; 2 uses
  %i.ado = add nuw nsw i64 %i.adl, 1              ; 3 uses
  %i.adp = zext i8 %i.adn to i32                  ; 2 uses
  %i.adq = icmp sgt i8 %i.adn, -1
  br i1 %i.adq, label %bb.ip, label %bb.in

._crit_edge.i820:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit813.thread2320, %bb.in
  %.lcssa7.i815 = phi i64 [ 10832, %bb.in ], [ %i.ps, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit813.thread2320 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i815, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc821 unwind label %bb.iv

.noexc821:                                        ; preds = %._crit_edge.i820
  unreachable

bb.in:                                            ; preds = %.lr.ph.i816
  %i.adr = and i32 %i.adp, 127
  %i.ads = and i32 %.sroa.02.012.i818, 31
  %i.adt = shl i32 %i.adr, %i.ads
  %i.adu = or i32 %i.adt, %.sroa.0.013.i817
  %i.adv = add nuw nsw i32 %.sroa.02.012.i818, 7
  %exitcond.not.i819 = icmp eq i64 %i.ado, 10832
  br i1 %exitcond.not.i819, label %._crit_edge.i820, label %.lr.ph.i816

bb.io:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i811
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.adh, ptr nonnull align 1 %i.add, i64 %i.adf, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit813.thread2320

bb.ip:                                            ; preds = %.lr.ph.i816
  %i.adw = and i32 %.sroa.02.012.i818, 31
  %i.adx = shl i32 %i.adp, %i.adw
  %i.ady = or i32 %i.adx, %.sroa.0.013.i817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.adz = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.aea = icmp eq ptr %i.adz, null
  br i1 %i.aea, label %bb.iq, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit824, !prof !26

bb.iq:                                            ; preds = %bb.ip
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc823 unwind label %bb.iv

.noexc823:                                        ; preds = %bb.iq
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit824: ; preds = %bb.ip
  store i64 %.sroa.01598.0, ptr %i.adz, align 8
  %.sroa.41909.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41909.0..sroa_idx, align 8
  %.sroa.51910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adz, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51910.0..sroa_idx, align 8
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adz, i64 24
  store i64 %i.adf, ptr %i.aeb, align 8
  %.sroa.41912.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adz, i64 32
  store ptr %i.adj, ptr %.sroa.41912.0..sroa_idx, align 8
  %.sroa.51913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adz, i64 40
  store i64 %i.adf, ptr %.sroa.51913.0..sroa_idx, align 8
  store i64 2, ptr %i.ec, align 8
  store ptr %i.adz, ptr %i.hz, align 8
  store i64 2, ptr %i.ia, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ed, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ec)
          to label %bb.ir unwind label %bb.ry

bb.ir:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit824
  store i32 %i.ady, ptr %i.ib, align 8, !alias.scope !15362
  store i32 0, ptr %i.ic, align 4, !alias.scope !15362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15363
  %i.aec = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15363 ; 3 uses
  %i.aed = icmp eq ptr %i.aec, null
  br i1 %i.aed, label %bb.is, label %bb.iu, !prof !26

bb.is:                                            ; preds = %bb.ir
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc827 unwind label %bb.it

.noexc827:                                        ; preds = %bb.is
  unreachable

bb.it:                                            ; preds = %bb.is
  %i.aee = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ed) #42
  br label %.body382

bb.iu:                                            ; preds = %bb.ir
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aec, ptr noundef nonnull align 8 dereferenceable(32) %i.ed, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %bb.eh

bb.iv:                                            ; preds = %._crit_edge.i820, %bb.iq
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.adg, label %.thread2309, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adj, i64 noundef %i.adf, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15364
  br label %.thread2309

bb.ix:                                            ; preds = %.lr.ph.i494
  %i.aef = and i32 %.sroa.02.012.i496, 31
  %i.aeg = shl i32 %i.qf, %i.aef
  %i.aeh = or i32 %i.aeg, %.sroa.0.013.i495
  %i.aei = zext i32 %i.aeh to i64                 ; 3 uses
  %i.aej = icmp ugt i64 %i.lw, %i.aei
  br i1 %i.aej, label %bb.iy, label %.invoke12310

bb.iy:                                            ; preds = %bb.ix
  %i.aek = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.aei ; 2 uses
  %i.ael = load ptr, ptr %i.aek, align 8, !nonnull !21, !noundef !21
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aen = load i64, ptr %i.aem, align 8, !noundef !21 ; 9 uses
  %.not.i832 = icmp slt i64 %i.aen, 0
  br i1 %.not.i832, label %.invoke12308, label %bb.iz, !prof !37

bb.iz:                                            ; preds = %bb.iy
  %i.aeo = icmp eq i64 %i.aen, 0                  ; 2 uses
  br i1 %i.aeo, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit835.thread2337, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i833

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i833: ; preds = %bb.iz
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15365
  %i.aep = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aen, i64 noundef range(i64 1, 9) 1) #41, !noalias !15365 ; 3 uses
  %i.aeq = icmp eq ptr %i.aep, null
  br i1 %i.aeq, label %.invoke12308, label %bb.jb

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit835.thread2337: ; preds = %bb.iz, %bb.jb
  %i.aer = phi ptr [ %i.aep, %bb.jb ], [ inttoptr (i64 1 to ptr), %bb.iz ] ; 2 uses
  %i.aes = icmp ult i64 %i.qb, 10831
  br i1 %i.aes, label %.lr.ph.i838, label %._crit_edge.i842

.lr.ph.i838:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit835.thread2337, %bb.ja
  %.sroa.0.013.i839 = phi i32 [ %i.afc, %bb.ja ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit835.thread2337 ] ; 2 uses
  %.sroa.02.012.i840 = phi i32 [ %i.afd, %bb.ja ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit835.thread2337 ] ; 3 uses
  %i.aet = phi i64 [ %i.aew, %bb.ja ], [ %i.qe, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit835.thread2337 ] ; 3 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr @10956, i64 %i.aet
  %i.aev = load i8, ptr %i.aeu, align 1, !noalias !15366, !noundef !21 ; 2 uses
  %i.aew = add nuw nsw i64 %i.aet, 1              ; 4 uses
  %i.aex = zext i8 %i.aev to i32                  ; 2 uses
  %i.aey = icmp sgt i8 %i.aev, -1
  br i1 %i.aey, label %bb.jd, label %bb.ja

._crit_edge.i842:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit835.thread2337, %bb.ja
  %.lcssa7.i837 = phi i64 [ 10832, %bb.ja ], [ %i.qe, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit835.thread2337 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i837, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc843 unwind label %bb.jc

.noexc843:                                        ; preds = %._crit_edge.i842
  unreachable

bb.ja:                                            ; preds = %.lr.ph.i838
  %i.aez = and i32 %i.aex, 127
  %i.afa = and i32 %.sroa.02.012.i840, 31
  %i.afb = shl i32 %i.aez, %i.afa
  %i.afc = or i32 %i.afb, %.sroa.0.013.i839
  %i.afd = add nuw nsw i32 %.sroa.02.012.i840, 7
  %exitcond.not.i841 = icmp eq i64 %i.aew, 10832
  br i1 %exitcond.not.i841, label %._crit_edge.i842, label %.lr.ph.i838

bb.jb:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i833
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aep, ptr nonnull align 1 %i.ael, i64 %i.aen, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit835.thread2337

bb.jc:                                            ; preds = %._crit_edge.i842, %bb.jh, %bb.jg
  %i.afe = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.jd:                                            ; preds = %.lr.ph.i838
  %i.aff = and i32 %.sroa.02.012.i840, 31
  %i.afg = shl i32 %i.aex, %i.aff
  %i.afh = or i32 %i.afg, %.sroa.0.013.i839
  %i.afi = zext i32 %i.afh to i64                 ; 3 uses
  %i.afj = icmp ugt i64 %i.lw, %i.afi
  br i1 %i.afj, label %bb.je, label %bb.jg

bb.je:                                            ; preds = %bb.jd
  %i.afk = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.afi ; 2 uses
  %i.afl = load ptr, ptr %i.afk, align 8, !nonnull !21, !noundef !21
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %i.afn = load i64, ptr %i.afm, align 8, !noundef !21 ; 8 uses
  %.not.i845 = icmp slt i64 %i.afn, 0
  br i1 %.not.i845, label %bb.jh, label %bb.jf, !prof !37

bb.jf:                                            ; preds = %bb.je
  %i.afo = icmp eq i64 %i.afn, 0                  ; 2 uses
  br i1 %i.afo, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit848.thread2353, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i846

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i846: ; preds = %bb.jf
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15367
  %i.afp = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.afn, i64 noundef range(i64 1, 9) 1) #41, !noalias !15367 ; 3 uses
  %i.afq = icmp eq ptr %i.afp, null
  br i1 %i.afq, label %bb.jh, label %bb.jj

bb.jg:                                            ; preds = %bb.jd
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.afi, i64 noundef %i.lw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10920) #46
          to label %bb.u unwind label %bb.jc

bb.jh:                                            ; preds = %bb.je, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i846
  %.sroa.42112.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i846 ], [ 0, %bb.je ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42112.0.ph, i64 %i.afn) #46
          to label %bb.u unwind label %bb.jc

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit848.thread2353: ; preds = %bb.jf, %bb.jj
  %i.afr = phi ptr [ %i.afp, %bb.jj ], [ inttoptr (i64 1 to ptr), %bb.jf ] ; 2 uses
  %i.afs = icmp ult i64 %i.aet, 10831
  br i1 %i.afs, label %.lr.ph.i851, label %._crit_edge.i855

.lr.ph.i851:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit848.thread2353, %bb.ji
  %.sroa.0.013.i852 = phi i32 [ %i.agc, %bb.ji ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit848.thread2353 ] ; 2 uses
  %.sroa.02.012.i853 = phi i32 [ %i.agd, %bb.ji ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit848.thread2353 ] ; 3 uses
  %i.aft = phi i64 [ %i.afw, %bb.ji ], [ %i.aew, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit848.thread2353 ] ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr @10956, i64 %i.aft
  %i.afv = load i8, ptr %i.afu, align 1, !noalias !15368, !noundef !21 ; 2 uses
  %i.afw = add nuw nsw i64 %i.aft, 1              ; 3 uses
  %i.afx = zext i8 %i.afv to i32                  ; 2 uses
  %i.afy = icmp sgt i8 %i.afv, -1
  br i1 %i.afy, label %bb.jk, label %bb.ji

._crit_edge.i855:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit848.thread2353, %bb.ji
  %.lcssa7.i850 = phi i64 [ 10832, %bb.ji ], [ %i.aew, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit848.thread2353 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i850, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc856 unwind label %bb.jq

.noexc856:                                        ; preds = %._crit_edge.i855
  unreachable

bb.ji:                                            ; preds = %.lr.ph.i851
  %i.afz = and i32 %i.afx, 127
  %i.aga = and i32 %.sroa.02.012.i853, 31
  %i.agb = shl i32 %i.afz, %i.aga
  %i.agc = or i32 %i.agb, %.sroa.0.013.i852
  %i.agd = add nuw nsw i32 %.sroa.02.012.i853, 7
  %exitcond.not.i854 = icmp eq i64 %i.afw, 10832
  br i1 %exitcond.not.i854, label %._crit_edge.i855, label %.lr.ph.i851

bb.jj:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i846
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afp, ptr nonnull align 1 %i.afl, i64 %i.afn, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit848.thread2353

bb.jk:                                            ; preds = %.lr.ph.i851
  %i.age = and i32 %.sroa.02.012.i853, 31
  %i.agf = shl i32 %i.afx, %i.age
  %i.agg = or i32 %i.agf, %.sroa.0.013.i852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.agh = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.agi = icmp eq ptr %i.agh, null
  br i1 %i.agi, label %bb.jl, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit859, !prof !26

bb.jl:                                            ; preds = %bb.jk
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc858 unwind label %bb.jq

.noexc858:                                        ; preds = %bb.jl
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit859: ; preds = %bb.jk
  store i64 %.sroa.01598.0, ptr %i.agh, align 8
  %.sroa.41921.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41921.0..sroa_idx, align 8
  %.sroa.51922.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agh, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51922.0..sroa_idx, align 8
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  store i64 %i.aen, ptr %i.agj, align 8
  %.sroa.41924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agh, i64 32
  store ptr %i.aer, ptr %.sroa.41924.0..sroa_idx, align 8
  %.sroa.51925.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agh, i64 40
  store i64 %i.aen, ptr %.sroa.51925.0..sroa_idx, align 8
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agh, i64 48
  store i64 %i.afn, ptr %i.agk, align 8
  %.sroa.41927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agh, i64 56
  store ptr %i.afr, ptr %.sroa.41927.0..sroa_idx, align 8
  %.sroa.51928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agh, i64 64
  store i64 %i.afn, ptr %.sroa.51928.0..sroa_idx, align 8
  store i64 3, ptr %i.ea, align 8
  store ptr %i.agh, ptr %i.hv, align 8
  store i64 3, ptr %i.hw, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.eb, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ea)
          to label %bb.jm unwind label %bb.ry

bb.jm:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit859
  store i32 %i.agg, ptr %i.hx, align 8, !alias.scope !15369
  store i32 0, ptr %i.hy, align 4, !alias.scope !15369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15370
  %i.agl = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15370 ; 3 uses
  %i.agm = icmp eq ptr %i.agl, null
  br i1 %i.agm, label %bb.jn, label %bb.jp, !prof !26

bb.jn:                                            ; preds = %bb.jm
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc862 unwind label %bb.jo

.noexc862:                                        ; preds = %bb.jn
  unreachable

bb.jo:                                            ; preds = %bb.jn
  %i.agn = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.eb) #42
  br label %.body382

bb.jp:                                            ; preds = %bb.jm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.agl, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %bb.eh

bb.jq:                                            ; preds = %._crit_edge.i855, %bb.jl
  %lpad.thr_comm2361 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.afo, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afr, i64 noundef %i.afn, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15371
  br label %bb.js

bb.js:                                            ; preds = %bb.jc, %bb.jq, %bb.jr
  %.pn228.ph = phi { ptr, i32 } [ %i.afe, %bb.jc ], [ %lpad.thr_comm2361, %bb.jq ], [ %lpad.thr_comm2361, %bb.jr ] ; 2 uses
  br i1 %i.aeo, label %.thread2309, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aer, i64 noundef %i.aen, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15372
  br label %.thread2309

bb.ju:                                            ; preds = %.lr.ph.i503
  %i.ago = and i32 %.sroa.02.012.i505, 31
  %i.agp = shl i32 %i.qr, %i.ago
  %i.agq = or i32 %i.agp, %.sroa.0.013.i504
  %i.agr = icmp ult i64 %i.qn, 10831
  br i1 %i.agr, label %.lr.ph.i872, label %._crit_edge.i1300.invoke

.lr.ph.i872:                                      ; preds = %bb.ju, %bb.jv
  %.sroa.0.013.i873 = phi i32 [ %i.ahb, %bb.jv ], [ 0, %bb.ju ] ; 2 uses
  %.sroa.02.012.i874 = phi i32 [ %i.ahc, %bb.jv ], [ 0, %bb.ju ] ; 3 uses
  %i.ags = phi i64 [ %i.agv, %bb.jv ], [ %i.qq, %bb.ju ] ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr @10956, i64 %i.ags
  %i.agu = load i8, ptr %i.agt, align 1, !noalias !15373, !noundef !21 ; 2 uses
  %i.agv = add nuw nsw i64 %i.ags, 1              ; 3 uses
  %i.agw = zext i8 %i.agu to i32                  ; 2 uses
  %i.agx = icmp sgt i8 %i.agu, -1
  br i1 %i.agx, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %.lr.ph.i872
  %i.agy = and i32 %i.agw, 127
  %i.agz = and i32 %.sroa.02.012.i874, 31
  %i.aha = shl i32 %i.agy, %i.agz
  %i.ahb = or i32 %i.aha, %.sroa.0.013.i873
  %i.ahc = add nuw nsw i32 %.sroa.02.012.i874, 7
  %exitcond.not.i875 = icmp eq i64 %i.agv, 10832
  br i1 %exitcond.not.i875, label %._crit_edge.i1300.invoke, label %.lr.ph.i872

bb.jw:                                            ; preds = %.lr.ph.i872
  %i.ahd = and i32 %.sroa.02.012.i874, 31
  %i.ahe = shl i32 %i.agw, %i.ahd
  %i.ahf = or i32 %i.ahe, %.sroa.0.013.i873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.ahg = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.ahh = icmp eq ptr %i.ahg, null
  br i1 %i.ahh, label %.invoke12306, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit880, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit880: ; preds = %bb.jw
  store i64 %.sroa.01598.0, ptr %i.ahg, align 8
  %.sroa.41930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41930.0..sroa_idx, align 8
  %.sroa.51931.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51931.0..sroa_idx, align 8
  store i64 1, ptr %i.dy, align 8
  store ptr %i.ahg, ptr %i.hr, align 8
  store i64 1, ptr %i.hs, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dz, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dy)
          to label %bb.jx unwind label %bb.ry

bb.jx:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit880
  store i32 %i.agq, ptr %i.ht, align 8, !alias.scope !15374
  store i32 %i.ahf, ptr %i.hu, align 4, !alias.scope !15374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15375
  %i.ahi = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15375 ; 3 uses
  %i.ahj = icmp eq ptr %i.ahi, null
  br i1 %i.ahj, label %bb.jy, label %bb.ka, !prof !26

bb.jy:                                            ; preds = %bb.jx
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc882 unwind label %bb.jz

.noexc882:                                        ; preds = %bb.jy
  unreachable

bb.jz:                                            ; preds = %bb.jy
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dz) #42
  br label %.body382

bb.ka:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ahi, ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  br label %bb.eh

bb.kb:                                            ; preds = %.lr.ph.i512
  %i.ahl = and i32 %.sroa.02.012.i514, 31
  %i.ahm = shl i32 %i.rd, %i.ahl
  %i.ahn = or i32 %i.ahm, %.sroa.0.013.i513
  %i.aho = zext i32 %i.ahn to i64                 ; 3 uses
  %i.ahp = icmp ugt i64 %i.lw, %i.aho
  br i1 %i.ahp, label %bb.kc, label %.invoke12310

bb.kc:                                            ; preds = %bb.kb
  %i.ahq = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.aho ; 2 uses
  %i.ahr = load ptr, ptr %i.ahq, align 8, !nonnull !21, !noundef !21
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  %i.aht = load i64, ptr %i.ahs, align 8, !noundef !21 ; 9 uses
  %.not.i884 = icmp slt i64 %i.aht, 0
  br i1 %.not.i884, label %.invoke12308, label %bb.kd, !prof !37

bb.kd:                                            ; preds = %bb.kc
  %i.ahu = icmp eq i64 %i.aht, 0                  ; 2 uses
  br i1 %i.ahu, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit887.thread2372, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i885

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i885: ; preds = %bb.kd
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15376
  %i.ahv = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aht, i64 noundef range(i64 1, 9) 1) #41, !noalias !15376 ; 3 uses
  %i.ahw = icmp eq ptr %i.ahv, null
  br i1 %i.ahw, label %.invoke12308, label %bb.kf

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit887.thread2372: ; preds = %bb.kd, %bb.kf
  %i.ahx = phi ptr [ %i.ahv, %bb.kf ], [ inttoptr (i64 1 to ptr), %bb.kd ] ; 2 uses
  %i.ahy = icmp ult i64 %i.qz, 10831
  br i1 %i.ahy, label %.lr.ph.i890, label %._crit_edge.i894.invoke

.lr.ph.i890:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit887.thread2372, %bb.ke
  %.sroa.0.013.i891 = phi i32 [ %i.aij, %bb.ke ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit887.thread2372 ] ; 2 uses
  %.sroa.02.012.i892 = phi i32 [ %i.aik, %bb.ke ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit887.thread2372 ] ; 3 uses
  %i.ahz = phi i64 [ %i.aic, %bb.ke ], [ %i.rc, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit887.thread2372 ] ; 3 uses
  %i.aia = getelementptr inbounds nuw i8, ptr @10956, i64 %i.ahz
  %i.aib = load i8, ptr %i.aia, align 1, !noalias !15377, !noundef !21 ; 2 uses
  %i.aic = add nuw nsw i64 %i.ahz, 1              ; 4 uses
  %i.aid = zext i8 %i.aib to i32                  ; 2 uses
  %i.aie = icmp sgt i8 %i.aib, -1
  br i1 %i.aie, label %bb.kg, label %bb.ke

._crit_edge.i894.invoke:                          ; preds = %bb.kg, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit887.thread2372, %bb.ke, %bb.kh
  %i.aif = phi i64 [ 10832, %bb.kh ], [ 10832, %bb.ke ], [ %i.aic, %bb.kg ], [ %i.rc, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit887.thread2372 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aif, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i894.cont unwind label %bb.ko

._crit_edge.i894.cont:                            ; preds = %._crit_edge.i894.invoke
  unreachable

bb.ke:                                            ; preds = %.lr.ph.i890
  %i.aig = and i32 %i.aid, 127
  %i.aih = and i32 %.sroa.02.012.i892, 31
  %i.aii = shl i32 %i.aig, %i.aih
  %i.aij = or i32 %i.aii, %.sroa.0.013.i891
  %i.aik = add nuw nsw i32 %.sroa.02.012.i892, 7
  %exitcond.not.i893 = icmp eq i64 %i.aic, 10832
  br i1 %exitcond.not.i893, label %._crit_edge.i894.invoke, label %.lr.ph.i890

bb.kf:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i885
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ahv, ptr nonnull align 1 %i.ahr, i64 %i.aht, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit887.thread2372

bb.kg:                                            ; preds = %.lr.ph.i890
  %i.ail = and i32 %.sroa.02.012.i892, 31
  %i.aim = shl i32 %i.aid, %i.ail
  %i.ain = or i32 %i.aim, %.sroa.0.013.i891
  %i.aio = icmp ult i64 %i.ahz, 10831
  br i1 %i.aio, label %.lr.ph.i899, label %._crit_edge.i894.invoke

.lr.ph.i899:                                      ; preds = %bb.kg, %bb.kh
  %.sroa.0.013.i900 = phi i32 [ %i.aiy, %bb.kh ], [ 0, %bb.kg ] ; 2 uses
  %.sroa.02.012.i901 = phi i32 [ %i.aiz, %bb.kh ], [ 0, %bb.kg ] ; 3 uses
  %i.aip = phi i64 [ %i.ais, %bb.kh ], [ %i.aic, %bb.kg ] ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr @10956, i64 %i.aip
  %i.air = load i8, ptr %i.aiq, align 1, !noalias !15378, !noundef !21 ; 2 uses
  %i.ais = add nuw nsw i64 %i.aip, 1              ; 3 uses
  %i.ait = zext i8 %i.air to i32                  ; 2 uses
  %i.aiu = icmp sgt i8 %i.air, -1
  br i1 %i.aiu, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %.lr.ph.i899
  %i.aiv = and i32 %i.ait, 127
  %i.aiw = and i32 %.sroa.02.012.i901, 31
  %i.aix = shl i32 %i.aiv, %i.aiw
  %i.aiy = or i32 %i.aix, %.sroa.0.013.i900
  %i.aiz = add nuw nsw i32 %.sroa.02.012.i901, 7
  %exitcond.not.i902 = icmp eq i64 %i.ais, 10832
  br i1 %exitcond.not.i902, label %._crit_edge.i894.invoke, label %.lr.ph.i899

bb.ki:                                            ; preds = %.lr.ph.i899
  %i.aja = and i32 %.sroa.02.012.i901, 31
  %i.ajb = shl i32 %i.ait, %i.aja
  %i.ajc = or i32 %i.ajb, %.sroa.0.013.i900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.ajd = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.aje = icmp eq ptr %i.ajd, null
  br i1 %i.aje, label %bb.kj, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit907, !prof !26

bb.kj:                                            ; preds = %bb.ki
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc906 unwind label %bb.ko

.noexc906:                                        ; preds = %bb.kj
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit907: ; preds = %bb.ki
  store i64 %.sroa.01598.0, ptr %i.ajd, align 8
  %.sroa.41936.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41936.0..sroa_idx, align 8
  %.sroa.51937.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51937.0..sroa_idx, align 8
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajd, i64 24
  store i64 %i.aht, ptr %i.ajf, align 8
  %.sroa.41939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 32
  store ptr %i.ahx, ptr %.sroa.41939.0..sroa_idx, align 8
  %.sroa.51940.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 40
  store i64 %i.aht, ptr %.sroa.51940.0..sroa_idx, align 8
  store i64 2, ptr %i.dw, align 8
  store ptr %i.ajd, ptr %i.hn, align 8
  store i64 2, ptr %i.ho, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dw)
          to label %bb.kk unwind label %bb.ry

bb.kk:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit907
  store i32 %i.ain, ptr %i.hp, align 8, !alias.scope !15379
  store i32 %i.ajc, ptr %i.hq, align 4, !alias.scope !15379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15380
  %i.ajg = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15380 ; 3 uses
  %i.ajh = icmp eq ptr %i.ajg, null
  br i1 %i.ajh, label %bb.kl, label %bb.kn, !prof !26

bb.kl:                                            ; preds = %bb.kk
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc910 unwind label %bb.km

.noexc910:                                        ; preds = %bb.kl
  unreachable

bb.km:                                            ; preds = %bb.kl
  %i.aji = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dx) #42
  br label %.body382

bb.kn:                                            ; preds = %bb.kk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajg, ptr noundef nonnull align 8 dereferenceable(32) %i.dx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  br label %bb.eh

bb.ko:                                            ; preds = %._crit_edge.i894.invoke, %bb.kj
  %lpad.thr_comm2380 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ahu, label %.thread2309, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahx, i64 noundef %i.aht, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15381
  br label %.thread2309

bb.kq:                                            ; preds = %.lr.ph.i521
  %i.ajj = and i32 %.sroa.02.012.i523, 31
  %i.ajk = shl i32 %i.rp, %i.ajj
  %i.ajl = or i32 %i.ajk, %.sroa.0.013.i522
  %i.ajm = zext i32 %i.ajl to i64                 ; 3 uses
  %i.ajn = icmp ugt i64 %i.lw, %i.ajm
  br i1 %i.ajn, label %bb.kr, label %.invoke12310

bb.kr:                                            ; preds = %bb.kq
  %i.ajo = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.ajm ; 2 uses
  %i.ajp = load ptr, ptr %i.ajo, align 8, !nonnull !21, !noundef !21
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.ajr = load i64, ptr %i.ajq, align 8, !noundef !21 ; 9 uses
  %.not.i915 = icmp slt i64 %i.ajr, 0
  br i1 %.not.i915, label %.invoke12308, label %bb.ks, !prof !37

bb.ks:                                            ; preds = %bb.kr
  %i.ajs = icmp eq i64 %i.ajr, 0                  ; 2 uses
  br i1 %i.ajs, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i916

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i916: ; preds = %bb.ks
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15382
  %i.ajt = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ajr, i64 noundef range(i64 1, 9) 1) #41, !noalias !15382 ; 3 uses
  %i.aju = icmp eq ptr %i.ajt, null
  br i1 %i.aju, label %.invoke12308, label %bb.ku

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391: ; preds = %bb.ks, %bb.ku
  %i.ajv = phi ptr [ %i.ajt, %bb.ku ], [ inttoptr (i64 1 to ptr), %bb.ks ] ; 2 uses
  %i.ajw = icmp ult i64 %i.rl, 10831
  br i1 %i.ajw, label %.lr.ph.i921, label %._crit_edge.i925

.lr.ph.i921:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391, %bb.kt
  %.sroa.0.013.i922 = phi i32 [ %i.akg, %bb.kt ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391 ] ; 2 uses
  %.sroa.02.012.i923 = phi i32 [ %i.akh, %bb.kt ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391 ] ; 3 uses
  %i.ajx = phi i64 [ %i.aka, %bb.kt ], [ %i.ro, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391 ] ; 3 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr @10956, i64 %i.ajx
  %i.ajz = load i8, ptr %i.ajy, align 1, !noalias !15383, !noundef !21 ; 2 uses
  %i.aka = add nuw nsw i64 %i.ajx, 1              ; 4 uses
  %i.akb = zext i8 %i.ajz to i32                  ; 2 uses
  %i.akc = icmp sgt i8 %i.ajz, -1
  br i1 %i.akc, label %bb.kw, label %bb.kt

._crit_edge.i925:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391, %bb.kt
  %.lcssa7.i920 = phi i64 [ 10832, %bb.kt ], [ %i.ro, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i920, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc926 unwind label %bb.kv

.noexc926:                                        ; preds = %._crit_edge.i925
  unreachable

bb.kt:                                            ; preds = %.lr.ph.i921
  %i.akd = and i32 %i.akb, 127
  %i.ake = and i32 %.sroa.02.012.i923, 31
  %i.akf = shl i32 %i.akd, %i.ake
  %i.akg = or i32 %i.akf, %.sroa.0.013.i922
  %i.akh = add nuw nsw i32 %.sroa.02.012.i923, 7
  %exitcond.not.i924 = icmp eq i64 %i.aka, 10832
  br i1 %exitcond.not.i924, label %._crit_edge.i925, label %.lr.ph.i921

bb.ku:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i916
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ajt, ptr nonnull align 1 %i.ajp, i64 %i.ajr, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391

bb.kv:                                            ; preds = %._crit_edge.i925, %bb.la, %bb.kz
  %i.aki = landingpad { ptr, i32 }
          cleanup
  br label %bb.ln

bb.kw:                                            ; preds = %.lr.ph.i921
  %i.akj = and i32 %.sroa.02.012.i923, 31
  %i.akk = shl i32 %i.akb, %i.akj
  %i.akl = or i32 %i.akk, %.sroa.0.013.i922
  %i.akm = zext i32 %i.akl to i64                 ; 3 uses
  %i.akn = icmp ugt i64 %i.lw, %i.akm
  br i1 %i.akn, label %bb.kx, label %bb.kz

bb.kx:                                            ; preds = %bb.kw
  %i.ako = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.akm ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 8, !nonnull !21, !noundef !21
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ako, i64 8
  %i.akr = load i64, ptr %i.akq, align 8, !noundef !21 ; 8 uses
  %.not.i928 = icmp slt i64 %i.akr, 0
  br i1 %.not.i928, label %bb.la, label %bb.ky, !prof !37

bb.ky:                                            ; preds = %bb.kx
  %i.aks = icmp eq i64 %i.akr, 0                  ; 2 uses
  br i1 %i.aks, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i929

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i929: ; preds = %bb.ky
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15384
  %i.akt = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.akr, i64 noundef range(i64 1, 9) 1) #41, !noalias !15384 ; 3 uses
  %i.aku = icmp eq ptr %i.akt, null
  br i1 %i.aku, label %bb.la, label %bb.lc

bb.kz:                                            ; preds = %bb.kw
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.akm, i64 noundef %i.lw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10923) #46
          to label %bb.u unwind label %bb.kv

bb.la:                                            ; preds = %bb.kx, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i929
  %.sroa.42124.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i929 ], [ 0, %bb.kx ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42124.0.ph, i64 %i.akr) #46
          to label %bb.u unwind label %bb.kv

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407: ; preds = %bb.ky, %bb.lc
  %i.akv = phi ptr [ %i.akt, %bb.lc ], [ inttoptr (i64 1 to ptr), %bb.ky ] ; 2 uses
  %i.akw = icmp ult i64 %i.ajx, 10831
  br i1 %i.akw, label %.lr.ph.i934, label %._crit_edge.i938.invoke

.lr.ph.i934:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407, %bb.lb
  %.sroa.0.013.i935 = phi i32 [ %i.alh, %bb.lb ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407 ] ; 2 uses
  %.sroa.02.012.i936 = phi i32 [ %i.ali, %bb.lb ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407 ] ; 3 uses
  %i.akx = phi i64 [ %i.ala, %bb.lb ], [ %i.aka, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407 ] ; 3 uses
  %i.aky = getelementptr inbounds nuw i8, ptr @10956, i64 %i.akx
  %i.akz = load i8, ptr %i.aky, align 1, !noalias !15385, !noundef !21 ; 2 uses
  %i.ala = add nuw nsw i64 %i.akx, 1              ; 4 uses
  %i.alb = zext i8 %i.akz to i32                  ; 2 uses
  %i.alc = icmp sgt i8 %i.akz, -1
  br i1 %i.alc, label %bb.ld, label %bb.lb

._crit_edge.i938.invoke:                          ; preds = %bb.ld, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407, %bb.lb, %bb.le
  %i.ald = phi i64 [ 10832, %bb.le ], [ 10832, %bb.lb ], [ %i.ala, %bb.ld ], [ %i.aka, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ald, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i938.cont unwind label %bb.ll

._crit_edge.i938.cont:                            ; preds = %._crit_edge.i938.invoke
  unreachable

bb.lb:                                            ; preds = %.lr.ph.i934
  %i.ale = and i32 %i.alb, 127
  %i.alf = and i32 %.sroa.02.012.i936, 31
  %i.alg = shl i32 %i.ale, %i.alf
  %i.alh = or i32 %i.alg, %.sroa.0.013.i935
  %i.ali = add nuw nsw i32 %.sroa.02.012.i936, 7
  %exitcond.not.i937 = icmp eq i64 %i.ala, 10832
  br i1 %exitcond.not.i937, label %._crit_edge.i938.invoke, label %.lr.ph.i934

bb.lc:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i929
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akt, ptr nonnull align 1 %i.akp, i64 %i.akr, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407

bb.ld:                                            ; preds = %.lr.ph.i934
  %i.alj = and i32 %.sroa.02.012.i936, 31
  %i.alk = shl i32 %i.alb, %i.alj
  %i.all = or i32 %i.alk, %.sroa.0.013.i935
  %i.alm = icmp ult i64 %i.akx, 10831
  br i1 %i.alm, label %.lr.ph.i943, label %._crit_edge.i938.invoke

.lr.ph.i943:                                      ; preds = %bb.ld, %bb.le
  %.sroa.0.013.i944 = phi i32 [ %i.alw, %bb.le ], [ 0, %bb.ld ] ; 2 uses
  %.sroa.02.012.i945 = phi i32 [ %i.alx, %bb.le ], [ 0, %bb.ld ] ; 3 uses
  %i.aln = phi i64 [ %i.alq, %bb.le ], [ %i.ala, %bb.ld ] ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr @10956, i64 %i.aln
  %i.alp = load i8, ptr %i.alo, align 1, !noalias !15386, !noundef !21 ; 2 uses
  %i.alq = add nuw nsw i64 %i.aln, 1              ; 3 uses
  %i.alr = zext i8 %i.alp to i32                  ; 2 uses
  %i.als = icmp sgt i8 %i.alp, -1
  br i1 %i.als, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %.lr.ph.i943
  %i.alt = and i32 %i.alr, 127
  %i.alu = and i32 %.sroa.02.012.i945, 31
  %i.alv = shl i32 %i.alt, %i.alu
  %i.alw = or i32 %i.alv, %.sroa.0.013.i944
  %i.alx = add nuw nsw i32 %.sroa.02.012.i945, 7
  %exitcond.not.i946 = icmp eq i64 %i.alq, 10832
  br i1 %exitcond.not.i946, label %._crit_edge.i938.invoke, label %.lr.ph.i943

bb.lf:                                            ; preds = %.lr.ph.i943
  %i.aly = and i32 %.sroa.02.012.i945, 31
  %i.alz = shl i32 %i.alr, %i.aly
  %i.ama = or i32 %i.alz, %.sroa.0.013.i944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.amb = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.amc = icmp eq ptr %i.amb, null
  br i1 %i.amc, label %bb.lg, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951, !prof !26

bb.lg:                                            ; preds = %bb.lf
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc950 unwind label %bb.ll

.noexc950:                                        ; preds = %bb.lg
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951: ; preds = %bb.lf
  store i64 %.sroa.01598.0, ptr %i.amb, align 8
  %.sroa.41948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41948.0..sroa_idx, align 8
  %.sroa.51949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amb, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51949.0..sroa_idx, align 8
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amb, i64 24
  store i64 %i.ajr, ptr %i.amd, align 8
  %.sroa.41951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amb, i64 32
  store ptr %i.ajv, ptr %.sroa.41951.0..sroa_idx, align 8
  %.sroa.51952.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amb, i64 40
  store i64 %i.ajr, ptr %.sroa.51952.0..sroa_idx, align 8
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amb, i64 48
  store i64 %i.akr, ptr %i.ame, align 8
  %.sroa.41954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amb, i64 56
  store ptr %i.akv, ptr %.sroa.41954.0..sroa_idx, align 8
  %.sroa.51955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amb, i64 64
  store i64 %i.akr, ptr %.sroa.51955.0..sroa_idx, align 8
  store i64 3, ptr %i.du, align 8
  store ptr %i.amb, ptr %i.hj, align 8
  store i64 3, ptr %i.hk, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dv, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.du)
          to label %bb.lh unwind label %bb.ry

bb.lh:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951
  store i32 %i.all, ptr %i.hl, align 8, !alias.scope !15387
  store i32 %i.ama, ptr %i.hm, align 4, !alias.scope !15387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15388
  %i.amf = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15388 ; 3 uses
  %i.amg = icmp eq ptr %i.amf, null
  br i1 %i.amg, label %bb.li, label %bb.lk, !prof !26

bb.li:                                            ; preds = %bb.lh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc954 unwind label %bb.lj

.noexc954:                                        ; preds = %bb.li
  unreachable

bb.lj:                                            ; preds = %bb.li
  %i.amh = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dv) #42
  br label %.body382

bb.lk:                                            ; preds = %bb.lh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amf, ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %bb.eh

bb.ll:                                            ; preds = %._crit_edge.i938.invoke, %bb.lg
  %lpad.thr_comm2415 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aks, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akv, i64 noundef %i.akr, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15389
  br label %bb.ln

bb.ln:                                            ; preds = %bb.kv, %bb.ll, %bb.lm
  %.pn223.ph = phi { ptr, i32 } [ %i.aki, %bb.kv ], [ %lpad.thr_comm2415, %bb.ll ], [ %lpad.thr_comm2415, %bb.lm ] ; 2 uses
  br i1 %i.ajs, label %.thread2309, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajv, i64 noundef %i.ajr, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15390
  br label %.thread2309

bb.lp:                                            ; preds = %.lr.ph.i530
  %i.ami = and i32 %.sroa.02.012.i532, 31
  %i.amj = shl i32 %i.sb, %i.ami
  %i.amk = or i32 %i.amj, %.sroa.0.013.i531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.aml = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.amm = icmp eq ptr %i.aml, null
  br i1 %i.amm, label %.invoke12306, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit963, !prof !26

.invoke12306:                                     ; preds = %bb.lp, %bb.jw, %bb.if
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.cont12307 unwind label %.body.thread.loopexit.split-lp

.cont12307:                                       ; preds = %.invoke12306
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit963: ; preds = %bb.lp
  store i64 %.sroa.01598.0, ptr %i.aml, align 8
  %.sroa.41957.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aml, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41957.0..sroa_idx, align 8
  %.sroa.51958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51958.0..sroa_idx, align 8
  store i64 1, ptr %i.ds, align 8
  store ptr %i.aml, ptr %i.hg, align 8
  store i64 1, ptr %i.hh, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dt, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ds)
          to label %bb.lq unwind label %bb.ry

bb.lq:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit963
  store i32 %i.amk, ptr %i.hi, align 8, !alias.scope !15391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15392
  %i.amn = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15392 ; 3 uses
  %i.amo = icmp eq ptr %i.amn, null
  br i1 %i.amo, label %bb.lr, label %bb.lt, !prof !26

bb.lr:                                            ; preds = %bb.lq
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc965 unwind label %bb.ls

.noexc965:                                        ; preds = %bb.lr
  unreachable

bb.ls:                                            ; preds = %bb.lr
  %i.amp = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info19SimpleInstrInfo_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dt) #42
  br label %.body382

bb.lt:                                            ; preds = %bb.lq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amn, ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.eh

bb.lu:                                            ; preds = %.lr.ph.i539
  %i.amq = and i32 %.sroa.02.012.i541, 31
  %i.amr = shl i32 %i.sn, %i.amq
  %i.ams = or i32 %i.amr, %.sroa.0.013.i540
  %i.amt = zext i32 %i.ams to i64                 ; 3 uses
  %i.amu = icmp ugt i64 %i.lw, %i.amt
  br i1 %i.amu, label %bb.lv, label %.invoke12310

bb.lv:                                            ; preds = %bb.lu
  %i.amv = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.amt ; 2 uses
  %i.amw = load ptr, ptr %i.amv, align 8, !nonnull !21, !noundef !21
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  %i.amy = load i64, ptr %i.amx, align 8, !noundef !21 ; 9 uses
  %.not.i967 = icmp slt i64 %i.amy, 0
  br i1 %.not.i967, label %.invoke12308, label %bb.lw, !prof !37

bb.lw:                                            ; preds = %bb.lv
  %i.amz = icmp eq i64 %i.amy, 0                  ; 2 uses
  br i1 %i.amz, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968: ; preds = %bb.lw
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15393
  %i.ana = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.amy, i64 noundef range(i64 1, 9) 1) #41, !noalias !15393 ; 3 uses
  %i.anb = icmp eq ptr %i.ana, null
  br i1 %i.anb, label %.invoke12308, label %bb.ly

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426: ; preds = %bb.lw, %bb.ly
  %i.anc = phi ptr [ %i.ana, %bb.ly ], [ inttoptr (i64 1 to ptr), %bb.lw ] ; 2 uses
  %i.and = icmp ult i64 %i.sj, 10831
  br i1 %i.and, label %.lr.ph.i973, label %._crit_edge.i977

.lr.ph.i973:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426, %bb.lx
  %.sroa.0.013.i974 = phi i32 [ %i.ann, %bb.lx ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426 ] ; 2 uses
  %.sroa.02.012.i975 = phi i32 [ %i.ano, %bb.lx ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426 ] ; 3 uses
  %i.ane = phi i64 [ %i.anh, %bb.lx ], [ %i.sm, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426 ] ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr @10956, i64 %i.ane
  %i.ang = load i8, ptr %i.anf, align 1, !noalias !15394, !noundef !21 ; 2 uses
  %i.anh = add nuw nsw i64 %i.ane, 1              ; 3 uses
  %i.ani = zext i8 %i.ang to i32                  ; 2 uses
  %i.anj = icmp sgt i8 %i.ang, -1
  br i1 %i.anj, label %bb.lz, label %bb.lx

._crit_edge.i977:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426, %bb.lx
  %.lcssa7.i972 = phi i64 [ 10832, %bb.lx ], [ %i.sm, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i972, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc978 unwind label %bb.mf

.noexc978:                                        ; preds = %._crit_edge.i977
  unreachable

bb.lx:                                            ; preds = %.lr.ph.i973
  %i.ank = and i32 %i.ani, 127
  %i.anl = and i32 %.sroa.02.012.i975, 31
  %i.anm = shl i32 %i.ank, %i.anl
  %i.ann = or i32 %i.anm, %.sroa.0.013.i974
  %i.ano = add nuw nsw i32 %.sroa.02.012.i975, 7
  %exitcond.not.i976 = icmp eq i64 %i.anh, 10832
  br i1 %exitcond.not.i976, label %._crit_edge.i977, label %.lr.ph.i973

bb.ly:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ana, ptr nonnull align 1 %i.amw, i64 %i.amy, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426

bb.lz:                                            ; preds = %.lr.ph.i973
  %i.anp = and i32 %.sroa.02.012.i975, 31
  %i.anq = shl i32 %i.ani, %i.anp
  %i.anr = or i32 %i.anq, %.sroa.0.013.i974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.ans = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.ant = icmp eq ptr %i.ans, null
  br i1 %i.ant, label %bb.ma, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit981, !prof !26

bb.ma:                                            ; preds = %bb.lz
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc980 unwind label %bb.mf

.noexc980:                                        ; preds = %bb.ma
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit981: ; preds = %bb.lz
  store i64 %.sroa.01598.0, ptr %i.ans, align 8
  %.sroa.41963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41963.0..sroa_idx, align 8
  %.sroa.51964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ans, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51964.0..sroa_idx, align 8
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ans, i64 24
  store i64 %i.amy, ptr %i.anu, align 8
  %.sroa.41966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ans, i64 32
  store ptr %i.anc, ptr %.sroa.41966.0..sroa_idx, align 8
  %.sroa.51967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ans, i64 40
  store i64 %i.amy, ptr %.sroa.51967.0..sroa_idx, align 8
  store i64 2, ptr %i.dq, align 8
  store ptr %i.ans, ptr %i.hd, align 8
  store i64 2, ptr %i.he, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dr, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dq)
          to label %bb.mb unwind label %bb.ry

bb.mb:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit981
  store i32 %i.anr, ptr %i.hf, align 8, !alias.scope !15395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15396
  %i.anv = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15396 ; 3 uses
  %i.anw = icmp eq ptr %i.anv, null
  br i1 %i.anw, label %bb.mc, label %bb.me, !prof !26

bb.mc:                                            ; preds = %bb.mb
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc984 unwind label %bb.md

.noexc984:                                        ; preds = %bb.mc
  unreachable

bb.md:                                            ; preds = %bb.mc
  %i.anx = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info19SimpleInstrInfo_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dr) #42
  br label %.body382

bb.me:                                            ; preds = %bb.mb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anv, ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %bb.eh

bb.mf:                                            ; preds = %._crit_edge.i977, %bb.ma
  %lpad.thr_comm2434 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.amz, label %.thread2309, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.anc, i64 noundef %i.amy, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15397
  br label %.thread2309

bb.mh:                                            ; preds = %.lr.ph.i548
  %i.any = and i32 %.sroa.02.012.i550, 31
  %i.anz = shl i32 %i.sz, %i.any
  %i.aoa = or i32 %i.anz, %.sroa.0.013.i549
  %i.aob = zext i32 %i.aoa to i64                 ; 3 uses
  %i.aoc = icmp ugt i64 %i.lw, %i.aob
  br i1 %i.aoc, label %bb.mi, label %.invoke12310

bb.mi:                                            ; preds = %bb.mh
  %i.aod = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.aob ; 2 uses
  %i.aoe = load ptr, ptr %i.aod, align 8, !nonnull !21, !noundef !21
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.aog = load i64, ptr %i.aof, align 8, !noundef !21 ; 9 uses
  %.not.i989 = icmp slt i64 %i.aog, 0
  br i1 %.not.i989, label %.invoke12308, label %bb.mj, !prof !37

bb.mj:                                            ; preds = %bb.mi
  %i.aoh = icmp eq i64 %i.aog, 0                  ; 2 uses
  br i1 %i.aoh, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit992.thread2445, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i990

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i990: ; preds = %bb.mj
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15398
  %i.aoi = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aog, i64 noundef range(i64 1, 9) 1) #41, !noalias !15398 ; 3 uses
  %i.aoj = icmp eq ptr %i.aoi, null
  br i1 %i.aoj, label %.invoke12308, label %bb.ml

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit992.thread2445: ; preds = %bb.mj, %bb.ml
  %i.aok = phi ptr [ %i.aoi, %bb.ml ], [ inttoptr (i64 1 to ptr), %bb.mj ] ; 2 uses
  %i.aol = icmp ult i64 %i.sv, 10831
  br i1 %i.aol, label %.lr.ph.i995, label %._crit_edge.i999

.lr.ph.i995:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit992.thread2445, %bb.mk
  %.sroa.0.013.i996 = phi i32 [ %i.aov, %bb.mk ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit992.thread2445 ] ; 2 uses
  %.sroa.02.012.i997 = phi i32 [ %i.aow, %bb.mk ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit992.thread2445 ] ; 3 uses
  %i.aom = phi i64 [ %i.aop, %bb.mk ], [ %i.sy, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit992.thread2445 ] ; 3 uses
  %i.aon = getelementptr inbounds nuw i8, ptr @10956, i64 %i.aom
  %i.aoo = load i8, ptr %i.aon, align 1, !noalias !15399, !noundef !21 ; 2 uses
  %i.aop = add nuw nsw i64 %i.aom, 1              ; 4 uses
  %i.aoq = zext i8 %i.aoo to i32                  ; 2 uses
  %i.aor = icmp sgt i8 %i.aoo, -1
  br i1 %i.aor, label %bb.mn, label %bb.mk

._crit_edge.i999:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit992.thread2445, %bb.mk
  %.lcssa7.i994 = phi i64 [ 10832, %bb.mk ], [ %i.sy, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit992.thread2445 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i994, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1000 unwind label %bb.mm

.noexc1000:                                       ; preds = %._crit_edge.i999
  unreachable

bb.mk:                                            ; preds = %.lr.ph.i995
  %i.aos = and i32 %i.aoq, 127
  %i.aot = and i32 %.sroa.02.012.i997, 31
  %i.aou = shl i32 %i.aos, %i.aot
  %i.aov = or i32 %i.aou, %.sroa.0.013.i996
  %i.aow = add nuw nsw i32 %.sroa.02.012.i997, 7
  %exitcond.not.i998 = icmp eq i64 %i.aop, 10832
  br i1 %exitcond.not.i998, label %._crit_edge.i999, label %.lr.ph.i995

bb.ml:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i990
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aoi, ptr nonnull align 1 %i.aoe, i64 %i.aog, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit992.thread2445

bb.mm:                                            ; preds = %._crit_edge.i999, %bb.mr, %bb.mq
  %i.aox = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.mn:                                            ; preds = %.lr.ph.i995
  %i.aoy = and i32 %.sroa.02.012.i997, 31
  %i.aoz = shl i32 %i.aoq, %i.aoy
  %i.apa = or i32 %i.aoz, %.sroa.0.013.i996
  %i.apb = zext i32 %i.apa to i64                 ; 3 uses
  %i.apc = icmp ugt i64 %i.lw, %i.apb
  br i1 %i.apc, label %bb.mo, label %bb.mq

bb.mo:                                            ; preds = %bb.mn
  %i.apd = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.apb ; 2 uses
  %i.ape = load ptr, ptr %i.apd, align 8, !nonnull !21, !noundef !21
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apd, i64 8
  %i.apg = load i64, ptr %i.apf, align 8, !noundef !21 ; 8 uses
  %.not.i1002 = icmp slt i64 %i.apg, 0
  br i1 %.not.i1002, label %bb.mr, label %bb.mp, !prof !37

bb.mp:                                            ; preds = %bb.mo
  %i.aph = icmp eq i64 %i.apg, 0                  ; 2 uses
  br i1 %i.aph, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1005.thread2461, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1003

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1003: ; preds = %bb.mp
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15400
  %i.api = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.apg, i64 noundef range(i64 1, 9) 1) #41, !noalias !15400 ; 3 uses
  %i.apj = icmp eq ptr %i.api, null
  br i1 %i.apj, label %bb.mr, label %bb.mt

bb.mq:                                            ; preds = %bb.mn
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.apb, i64 noundef %i.lw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10927) #46
          to label %bb.u unwind label %bb.mm

bb.mr:                                            ; preds = %bb.mo, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1003
  %.sroa.42136.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1003 ], [ 0, %bb.mo ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42136.0.ph, i64 %i.apg) #46
          to label %bb.u unwind label %bb.mm

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1005.thread2461: ; preds = %bb.mp, %bb.mt
  %i.apk = phi ptr [ %i.api, %bb.mt ], [ inttoptr (i64 1 to ptr), %bb.mp ] ; 2 uses
  %i.apl = icmp ult i64 %i.aom, 10831
  br i1 %i.apl, label %.lr.ph.i1008, label %._crit_edge.i1012

.lr.ph.i1008:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1005.thread2461, %bb.ms
  %.sroa.0.013.i1009 = phi i32 [ %i.apv, %bb.ms ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1005.thread2461 ] ; 2 uses
  %.sroa.02.012.i1010 = phi i32 [ %i.apw, %bb.ms ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1005.thread2461 ] ; 3 uses
  %i.apm = phi i64 [ %i.app, %bb.ms ], [ %i.aop, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1005.thread2461 ] ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr @10956, i64 %i.apm
  %i.apo = load i8, ptr %i.apn, align 1, !noalias !15401, !noundef !21 ; 2 uses
  %i.app = add nuw nsw i64 %i.apm, 1              ; 3 uses
  %i.apq = zext i8 %i.apo to i32                  ; 2 uses
  %i.apr = icmp sgt i8 %i.apo, -1
  br i1 %i.apr, label %bb.mu, label %bb.ms

._crit_edge.i1012:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1005.thread2461, %bb.ms
  %.lcssa7.i1007 = phi i64 [ 10832, %bb.ms ], [ %i.aop, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1005.thread2461 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1007, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1013 unwind label %bb.na

.noexc1013:                                       ; preds = %._crit_edge.i1012
  unreachable

bb.ms:                                            ; preds = %.lr.ph.i1008
  %i.aps = and i32 %i.apq, 127
  %i.apt = and i32 %.sroa.02.012.i1010, 31
  %i.apu = shl i32 %i.aps, %i.apt
  %i.apv = or i32 %i.apu, %.sroa.0.013.i1009
  %i.apw = add nuw nsw i32 %.sroa.02.012.i1010, 7
  %exitcond.not.i1011 = icmp eq i64 %i.app, 10832
  br i1 %exitcond.not.i1011, label %._crit_edge.i1012, label %.lr.ph.i1008

bb.mt:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1003
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.api, ptr nonnull align 1 %i.ape, i64 %i.apg, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1005.thread2461

bb.mu:                                            ; preds = %.lr.ph.i1008
  %i.apx = and i32 %.sroa.02.012.i1010, 31
  %i.apy = shl i32 %i.apq, %i.apx
  %i.apz = or i32 %i.apy, %.sroa.0.013.i1009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.aqa = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.aqb = icmp eq ptr %i.aqa, null
  br i1 %i.aqb, label %bb.mv, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1016, !prof !26

bb.mv:                                            ; preds = %bb.mu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1015 unwind label %bb.na

.noexc1015:                                       ; preds = %bb.mv
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1016: ; preds = %bb.mu
  store i64 %.sroa.01598.0, ptr %i.aqa, align 8
  %.sroa.41975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqa, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41975.0..sroa_idx, align 8
  %.sroa.51976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqa, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51976.0..sroa_idx, align 8
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqa, i64 24
  store i64 %i.aog, ptr %i.aqc, align 8
  %.sroa.41978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqa, i64 32
  store ptr %i.aok, ptr %.sroa.41978.0..sroa_idx, align 8
  %.sroa.51979.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqa, i64 40
  store i64 %i.aog, ptr %.sroa.51979.0..sroa_idx, align 8
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqa, i64 48
  store i64 %i.apg, ptr %i.aqd, align 8
  %.sroa.41981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqa, i64 56
  store ptr %i.apk, ptr %.sroa.41981.0..sroa_idx, align 8
  %.sroa.51982.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqa, i64 64
  store i64 %i.apg, ptr %.sroa.51982.0..sroa_idx, align 8
  store i64 3, ptr %i.do, align 8
  store ptr %i.aqa, ptr %i.ha, align 8
  store i64 3, ptr %i.hb, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dp, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.do)
          to label %bb.mw unwind label %bb.ry

bb.mw:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1016
  store i32 %i.apz, ptr %i.hc, align 8, !alias.scope !15402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15403
  %i.aqe = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15403 ; 3 uses
  %i.aqf = icmp eq ptr %i.aqe, null
  br i1 %i.aqf, label %bb.mx, label %bb.mz, !prof !26

bb.mx:                                            ; preds = %bb.mw
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc1019 unwind label %bb.my

.noexc1019:                                       ; preds = %bb.mx
  unreachable

bb.my:                                            ; preds = %bb.mx
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info19SimpleInstrInfo_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dp) #42
  br label %.body382

bb.mz:                                            ; preds = %bb.mw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aqe, ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  br label %bb.eh

bb.na:                                            ; preds = %._crit_edge.i1012, %bb.mv
  %lpad.thr_comm2469 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aph, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.apk, i64 noundef %i.apg, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15404
  br label %bb.nc

bb.nc:                                            ; preds = %bb.mm, %bb.na, %bb.nb
  %.pn218.ph = phi { ptr, i32 } [ %i.aox, %bb.mm ], [ %lpad.thr_comm2469, %bb.na ], [ %lpad.thr_comm2469, %bb.nb ] ; 2 uses
  br i1 %i.aoh, label %.thread2309, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aok, i64 noundef %i.aog, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15405
  br label %.thread2309

bb.ne:                                            ; preds = %.lr.ph.i557
  %i.aqh = and i32 %.sroa.02.012.i559, 31
  %i.aqi = shl i32 %i.tl, %i.aqh
  %i.aqj = or i32 %i.aqi, %.sroa.0.013.i558
  %i.aqk = zext i32 %i.aqj to i64                 ; 3 uses
  %i.aql = icmp ugt i64 %i.lw, %i.aqk
  br i1 %i.aql, label %bb.nf, label %.invoke12310

bb.nf:                                            ; preds = %bb.ne
  %i.aqm = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.aqk ; 2 uses
  %i.aqn = load ptr, ptr %i.aqm, align 8, !nonnull !21, !noundef !21
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqm, i64 8
  %i.aqp = load i64, ptr %i.aqo, align 8, !noundef !21 ; 9 uses
  %.not.i1027 = icmp slt i64 %i.aqp, 0
  br i1 %.not.i1027, label %.invoke12308, label %bb.ng, !prof !37

bb.ng:                                            ; preds = %bb.nf
  %i.aqq = icmp eq i64 %i.aqp, 0                  ; 2 uses
  br i1 %i.aqq, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1028

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1028: ; preds = %bb.ng
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15406
  %i.aqr = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aqp, i64 noundef range(i64 1, 9) 1) #41, !noalias !15406 ; 3 uses
  %i.aqs = icmp eq ptr %i.aqr, null
  br i1 %i.aqs, label %.invoke12308, label %bb.ni

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480: ; preds = %bb.ng, %bb.ni
  %i.aqt = phi ptr [ %i.aqr, %bb.ni ], [ inttoptr (i64 1 to ptr), %bb.ng ] ; 2 uses
  %i.aqu = icmp ult i64 %i.th, 10831
  br i1 %i.aqu, label %.lr.ph.i1033, label %._crit_edge.i1037

.lr.ph.i1033:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480, %bb.nh
  %.sroa.0.013.i1034 = phi i32 [ %i.are, %bb.nh ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480 ] ; 2 uses
  %.sroa.02.012.i1035 = phi i32 [ %i.arf, %bb.nh ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480 ] ; 3 uses
  %i.aqv = phi i64 [ %i.aqy, %bb.nh ], [ %i.tk, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480 ] ; 2 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr @10956, i64 %i.aqv
  %i.aqx = load i8, ptr %i.aqw, align 1, !noalias !15407, !noundef !21 ; 2 uses
  %i.aqy = add nuw nsw i64 %i.aqv, 1              ; 3 uses
  %i.aqz = zext i8 %i.aqx to i32                  ; 2 uses
  %i.ara = icmp sgt i8 %i.aqx, -1
  br i1 %i.ara, label %bb.nj, label %bb.nh

._crit_edge.i1037:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480, %bb.nh
  %.lcssa7.i1032 = phi i64 [ 10832, %bb.nh ], [ %i.tk, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1032, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1038 unwind label %bb.np

.noexc1038:                                       ; preds = %._crit_edge.i1037
  unreachable

bb.nh:                                            ; preds = %.lr.ph.i1033
  %i.arb = and i32 %i.aqz, 127
  %i.arc = and i32 %.sroa.02.012.i1035, 31
  %i.ard = shl i32 %i.arb, %i.arc
  %i.are = or i32 %i.ard, %.sroa.0.013.i1034
  %i.arf = add nuw nsw i32 %.sroa.02.012.i1035, 7
  %exitcond.not.i1036 = icmp eq i64 %i.aqy, 10832
  br i1 %exitcond.not.i1036, label %._crit_edge.i1037, label %.lr.ph.i1033

bb.ni:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1028
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqr, ptr nonnull align 1 %i.aqn, i64 %i.aqp, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480

bb.nj:                                            ; preds = %.lr.ph.i1033
  %i.arg = and i32 %.sroa.02.012.i1035, 31
  %i.arh = shl i32 %i.aqz, %i.arg
  %i.ari = or i32 %i.arh, %.sroa.0.013.i1034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.arj = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.ark = icmp eq ptr %i.arj, null
  br i1 %i.ark, label %bb.nk, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1041, !prof !26

bb.nk:                                            ; preds = %bb.nj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1040 unwind label %bb.np

.noexc1040:                                       ; preds = %bb.nk
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1041: ; preds = %bb.nj
  store i64 %.sroa.01598.0, ptr %i.arj, align 8
  %.sroa.41987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arj, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41987.0..sroa_idx, align 8
  %.sroa.51988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arj, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51988.0..sroa_idx, align 8
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arj, i64 24
  store i64 %i.aqp, ptr %i.arl, align 8
  %.sroa.41990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arj, i64 32
  store ptr %i.aqt, ptr %.sroa.41990.0..sroa_idx, align 8
  %.sroa.51991.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arj, i64 40
  store i64 %i.aqp, ptr %.sroa.51991.0..sroa_idx, align 8
  store i64 2, ptr %i.dm, align 8
  store ptr %i.arj, ptr %i.gw, align 8
  store i64 2, ptr %i.gx, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dm)
          to label %bb.nl unwind label %bb.ry

bb.nl:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1041
  store i32 %i.ari, ptr %i.gy, align 8, !alias.scope !15408
  store i32 0, ptr %i.gz, align 4, !alias.scope !15408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15409
  %i.arm = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15409 ; 3 uses
  %i.arn = icmp eq ptr %i.arm, null
  br i1 %i.arn, label %bb.nm, label %bb.no, !prof !26

bb.nm:                                            ; preds = %bb.nl
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc1044 unwind label %bb.nn

.noexc1044:                                       ; preds = %bb.nm
  unreachable

bb.nn:                                            ; preds = %bb.nm
  %i.aro = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dn) #42
  br label %.body382

bb.no:                                            ; preds = %bb.nl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.arm, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.eh

bb.np:                                            ; preds = %._crit_edge.i1037, %bb.nk
  %lpad.thr_comm2488 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aqq, label %.thread2309, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqt, i64 noundef %i.aqp, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15410
  br label %.thread2309

bb.nr:                                            ; preds = %.lr.ph.i566
  %i.arp = and i32 %.sroa.02.012.i568, 31
  %i.arq = shl i32 %i.tx, %i.arp
  %i.arr = or i32 %i.arq, %.sroa.0.013.i567
  %i.ars = zext i32 %i.arr to i64                 ; 3 uses
  %i.art = icmp ugt i64 %i.lw, %i.ars
  br i1 %i.art, label %bb.ns, label %.invoke12310

bb.ns:                                            ; preds = %bb.nr
  %i.aru = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.ars ; 2 uses
  %i.arv = load ptr, ptr %i.aru, align 8, !nonnull !21, !noundef !21
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aru, i64 8
  %i.arx = load i64, ptr %i.arw, align 8, !noundef !21 ; 10 uses
  %.not.i1049 = icmp slt i64 %i.arx, 0
  br i1 %.not.i1049, label %.invoke12308, label %bb.nt, !prof !37

bb.nt:                                            ; preds = %bb.ns
  %i.ary = icmp eq i64 %i.arx, 0                  ; 2 uses
  br i1 %i.ary, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1052.thread2499, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1050

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1050: ; preds = %bb.nt
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15411
  %i.arz = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.arx, i64 noundef range(i64 1, 9) 1) #41, !noalias !15411 ; 3 uses
  %i.asa = icmp eq ptr %i.arz, null
  br i1 %i.asa, label %.invoke12308, label %bb.nu

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1052.thread2499: ; preds = %bb.nt, %bb.nu
  %i.asb = phi ptr [ %i.arz, %bb.nu ], [ inttoptr (i64 1 to ptr), %bb.nt ] ; 3 uses
  %i.asc = icmp ult i64 %i.tt, 10831
  br i1 %i.asc, label %bb.nv, label %._crit_edge.i1061.invoke

bb.nu:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1050
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.arz, ptr nonnull align 1 %i.arv, i64 %i.arx, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1052.thread2499

.thread2522:                                      ; preds = %bb.op, %bb.oo
  br i1 %.sroa.070.1.ph, label %.thread2505, label %.body382

.thread2505.loopexit.split-lp.loopexit.split-lp:  ; preds = %bb.nx, %._crit_edge.i1061.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread2505

bb.nv:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1052.thread2499
  %i.asd = getelementptr inbounds nuw i8, ptr @10956, i64 %i.tw
  %i.ase = load i8, ptr %i.asd, align 1, !noalias !15412, !noundef !21
  %i.asf = zext i8 %i.ase to i32                  ; 2 uses
  %.not5258 = icmp eq i64 %i.tt, 10830
  br i1 %.not5258, label %._crit_edge.i1061.invoke, label %.lr.ph.i1057.preheader

.lr.ph.i1057.preheader:                           ; preds = %bb.nv
  %i.asg = add nuw nsw i64 %i.tt, 2
  br label %.lr.ph.i1057

.lr.ph.i1057:                                     ; preds = %.lr.ph.i1057.preheader, %bb.nw
  %.sroa.0.013.i1058 = phi i32 [ %i.asr, %bb.nw ], [ 0, %.lr.ph.i1057.preheader ] ; 2 uses
  %.sroa.02.012.i1059 = phi i32 [ %i.ass, %bb.nw ], [ 0, %.lr.ph.i1057.preheader ] ; 3 uses
  %i.ash = phi i64 [ %i.ask, %bb.nw ], [ %i.asg, %.lr.ph.i1057.preheader ] ; 4 uses
  %i.asi = getelementptr inbounds nuw i8, ptr @10956, i64 %i.ash
  %i.asj = load i8, ptr %i.asi, align 1, !noalias !15413, !noundef !21 ; 2 uses
  %i.ask = add nuw nsw i64 %i.ash, 1              ; 4 uses
  %i.asl = zext i8 %i.asj to i32                  ; 2 uses
  %i.asm = icmp sgt i8 %i.asj, -1
  br i1 %i.asm, label %bb.nx, label %bb.nw

._crit_edge.i1061.invoke:                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1052.thread2499, %bb.nv, %bb.nw
  %i.asn = phi i64 [ 10832, %bb.nw ], [ 10832, %bb.nv ], [ %i.tw, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1052.thread2499 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.asn, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1061.cont unwind label %.thread2505.loopexit.split-lp.loopexit.split-lp

._crit_edge.i1061.cont:                           ; preds = %._crit_edge.i1061.invoke
  unreachable

bb.nw:                                            ; preds = %.lr.ph.i1057
  %i.aso = and i32 %i.asl, 127
  %i.asp = and i32 %.sroa.02.012.i1059, 31
  %i.asq = shl i32 %i.aso, %i.asp
  %i.asr = or i32 %i.asq, %.sroa.0.013.i1058
  %i.ass = add nuw nsw i32 %.sroa.02.012.i1059, 7
  %exitcond.not.i1060 = icmp eq i64 %i.ask, 10832
  br i1 %exitcond.not.i1060, label %._crit_edge.i1061.invoke, label %.lr.ph.i1057

bb.nx:                                            ; preds = %.lr.ph.i1057
  %i.ast = and i32 %.sroa.02.012.i1059, 31
  %i.asu = shl i32 %i.asl, %i.ast
  %i.asv = or i32 %i.asu, %.sroa.0.013.i1058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0, i32 noundef %i.asf)
          to label %bb.ny unwind label %.thread2505.loopexit.split-lp.loopexit.split-lp

bb.ny:                                            ; preds = %bb.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.asb, i64 noundef %i.arx, i32 noundef %i.asf)
          to label %bb.oa unwind label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.asw = landingpad { ptr, i32 }
          cleanup
  br label %bb.oo

bb.oa:                                            ; preds = %bb.ny
  %i.asx = icmp ult i64 %i.ash, 10831
  br i1 %i.asx, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ask, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1064 unwind label %.thread2526

.noexc1064:                                       ; preds = %bb.ob
  unreachable

.thread2526:                                      ; preds = %bb.ob, %bb.od
  %i.asy = landingpad { ptr, i32 }
          cleanup
  br label %.thread2516

bb.oc:                                            ; preds = %bb.oa
  %i.asz = getelementptr inbounds nuw i8, ptr @10956, i64 %i.ask
  %i.ata = load i8, ptr %i.asz, align 1, !noalias !15414, !noundef !21 ; 2 uses
  %i.atb = add nuw nsw i64 %i.ash, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  %i.atc = icmp ult i8 %i.ata, 4
  call void @llvm.assume(i1 %i.atc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.atd = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.ate = icmp eq ptr %i.atd, null
  br i1 %i.ate, label %bb.od, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1067, !prof !26

bb.od:                                            ; preds = %bb.oc
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1066 unwind label %.thread2526

.noexc1066:                                       ; preds = %bb.od
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1067: ; preds = %bb.oc
  store i64 %.sroa.01598.0, ptr %i.atd, align 8
  %.sroa.41995.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atd, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41995.0..sroa_idx, align 8
  %.sroa.51996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atd, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51996.0..sroa_idx, align 8
  %i.atf = getelementptr inbounds nuw i8, ptr %i.atd, i64 24
  store i64 %i.arx, ptr %i.atf, align 8
  %.sroa.41998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atd, i64 32
  store ptr %i.asb, ptr %.sroa.41998.0..sroa_idx, align 8
  %.sroa.51999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atd, i64 40
  store i64 %i.arx, ptr %.sroa.51999.0..sroa_idx, align 8
  store i64 2, ptr %i.di, align 8
  store ptr %i.atd, ptr %i.gp, align 8
  store i64 2, ptr %i.gq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.atg = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 4 uses
  %i.ath = icmp eq ptr %i.atg, null
  br i1 %i.ath, label %bb.oe, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1069, !prof !26

bb.oe:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1067
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1068 unwind label %bb.om

.noexc1068:                                       ; preds = %bb.oe
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1069: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atg, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false)
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atg, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ati, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false)
  store i64 2, ptr %i.dh, align 8
  store ptr %i.atg, ptr %i.gr, align 8
  store i64 2, ptr %i.gs, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !15415)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !15416
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.di)
          to label %bb.of unwind label %bb.oh, !noalias !15417

bb.of:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !15416
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dh)
          to label %bb.oi unwind label %bb.og, !noalias !15418

bb.og:                                            ; preds = %bb.of
  %i.atj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #42, !noalias !15416
  br label %.body382

bb.oh:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1069
  %i.atk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.dh) #42, !noalias !15418
  br label %.body382

bb.oi:                                            ; preds = %bb.of
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !15419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !15419
  store i32 %i.asv, ptr %i.gu, align 8, !alias.scope !15415
  store i8 %i.ata, ptr %i.gv, align 4, !alias.scope !15415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !15416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !15416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15420
  %i.atl = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15420 ; 3 uses
  %i.atm = icmp eq ptr %i.atl, null
  br i1 %i.atm, label %bb.oj, label %bb.ol, !prof !26

bb.oj:                                            ; preds = %bb.oi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1072 unwind label %bb.ok

.noexc1072:                                       ; preds = %bb.oj
  unreachable

bb.ok:                                            ; preds = %bb.oj
  %i.atn = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info25SimpleInstrInfo_OpSize_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dj) #42
  br label %.body382

bb.ol:                                            ; preds = %bb.oi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.atl, ptr noundef nonnull align 8 dereferenceable(56) %i.dj, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.eh

bb.om:                                            ; preds = %bb.oe
  %i.ato = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef align 8 dereferenceable(24) %i.di) #42
  br label %.thread2516

.thread2516:                                      ; preds = %bb.om, %.thread2526
  %.sroa.070.22521 = phi i1 [ true, %.thread2526 ], [ false, %bb.om ] ; 2 uses
  %.pn2112520 = phi { ptr, i32 } [ %i.asy, %.thread2526 ], [ %i.ato, %bb.om ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15421)
  %.val.i1074 = load i64, ptr %i.dk, align 8, !alias.scope !15421 ; 2 uses
  %i.atp = icmp eq i64 %.val.i1074, 0
  br i1 %i.atp, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %.thread2516
  %i.atq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1.i1075 = load ptr, ptr %i.atq, align 8, !alias.scope !15421, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1075, i64 noundef %.val.i1074, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15421
  br label %bb.oo

bb.oo:                                            ; preds = %bb.nz, %.thread2516, %bb.on
  %.pn211.pn.ph = phi { ptr, i32 } [ %i.asw, %bb.nz ], [ %.pn2112520, %.thread2516 ], [ %.pn2112520, %bb.on ] ; 2 uses
  %.sroa.070.1.ph = phi i1 [ true, %bb.nz ], [ %.sroa.070.22521, %.thread2516 ], [ %.sroa.070.22521, %bb.on ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15422)
  %.val.i1077 = load i64, ptr %i.dl, align 8, !alias.scope !15422 ; 2 uses
  %i.atr = icmp eq i64 %.val.i1077, 0
  br i1 %i.atr, label %.thread2522, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.ats = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.val1.i1078 = load ptr, ptr %i.ats, align 8, !alias.scope !15422, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1078, i64 noundef %.val.i1077, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15422
  br label %.thread2522

.thread2505:                                      ; preds = %.thread2505.loopexit.split-lp.loopexit.split-lp, %.thread2522
  %.pn211.pn.pn2508 = phi { ptr, i32 } [ %.pn211.pn.ph, %.thread2522 ], [ %lpad.loopexit.split-lp, %.thread2505.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  br i1 %i.ary, label %.thread2309, label %bb.oq

bb.oq:                                            ; preds = %.thread2505
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.asb, i64 noundef %i.arx, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15423
  br label %.thread2309

bb.or:                                            ; preds = %.lr.ph.i575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.experimental.noalias.scope.decl(metadata !15424)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !15425
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.ou unwind label %bb.os, !noalias !15425

bb.os:                                            ; preds = %bb.or
end_hunk_3
begin_hunk_4_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl4read:bb.a
  br label %.thread2309

bb.rr:                                            ; preds = %bb.df
  %i.axf = getelementptr inbounds nuw i8, ptr @10956, i64 %.sroa.138.2
  %i.axg = load i8, ptr %i.axf, align 1, !noalias !15501, !noundef !21
  %i.axh = add nuw nsw i64 %.sroa.138.2, 1        ; 2 uses
  %i.axi = zext i8 %i.axg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0, i32 noundef %i.axi)
          to label %bb.rs unwind label %.body.thread.loopexit.split-lp

bb.rs:                                            ; preds = %bb.rr
  %.not2626 = icmp eq i64 %.sroa.138.2, 10831     ; 3 uses
  br i1 %.not2626, label %bb.rt, label %bb.rv

bb.rt:                                            ; preds = %bb.rs
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.axh, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1177 unwind label %.thread2551

.noexc1177:                                       ; preds = %bb.rt
  unreachable

bb.ru:                                            ; preds = %bb.sb
  %i.axj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringj4_EBG_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(200) %i.cu) #45
  br label %.body382

.thread2551:                                      ; preds = %bb.rt
  %i.axk = landingpad { ptr, i32 }
          cleanup
  br label %.thread2541

bb.rv:                                            ; preds = %bb.rs
  %i.axl = getelementptr inbounds nuw i8, ptr @10956, i64 %i.axh
  %i.axm = load i8, ptr %i.axl, align 1, !noalias !15502, !noundef !21 ; 2 uses
  %i.axn = add nuw nsw i64 %.sroa.138.2, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  %i.axo = icmp ult i8 %i.axm, 4
  call void @llvm.assume(i1 %i.axo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  store i64 %.sroa.01598.0, ptr %i.ct, align 8
  store ptr %.sroa.53.0, ptr %.sroa.53.0..sroa_idx1719, align 8
  store i64 %.sroa.69.0, ptr %.sroa.69.0..sroa_idx1828, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv)
          to label %bb.rx unwind label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.axp = landingpad { ptr, i32 }
          cleanup
  br label %bb.sf

bb.rx:                                            ; preds = %bb.rv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv)
          to label %bb.rz unwind label %bb.sd

bb.ry:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit963, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit880, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit806, %bb.rj, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1041, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1016, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit981, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit907, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit859, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit824, %bb.rz
  %i.axq = landingpad { ptr, i32 }
          cleanup
  br label %.body382

bb.rz:                                            ; preds = %bb.rx
  invoke fastcc void @_RNvMsK_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4infoNtB5_22SimpleInstrInfo_OpSize3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(200) %i.cu, i8 noundef %i.axm, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ct, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cr, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cv)
          to label %bb.sa unwind label %bb.ry

bb.sa:                                            ; preds = %bb.rz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15503
  %i.axr = call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15503 ; 3 uses
  %i.axs = icmp eq ptr %i.axr, null
  br i1 %i.axs, label %bb.sb, label %bb.sc, !prof !26

bb.sb:                                            ; preds = %bb.sa
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #46
          to label %.noexc1179 unwind label %bb.ru

.noexc1179:                                       ; preds = %bb.sb
  unreachable

bb.sc:                                            ; preds = %bb.sa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.axr, ptr noundef nonnull align 8 dereferenceable(200) %i.cu, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.eh

bb.sd:                                            ; preds = %bb.rx
  %i.axt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15504)
  %.val.i1181 = load i64, ptr %i.cs, align 8, !alias.scope !15504 ; 2 uses
  %i.axu = icmp eq i64 %.val.i1181, 0
  br i1 %i.axu, label %bb.sf, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.axv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val1.i1182 = load ptr, ptr %i.axv, align 8, !alias.scope !15504, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1182, i64 noundef %.val.i1181, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15504
  br label %bb.sf

bb.sf:                                            ; preds = %bb.rw, %bb.sd, %bb.se
  %.pn204.ph = phi { ptr, i32 } [ %i.axp, %bb.rw ], [ %i.axt, %bb.sd ], [ %i.axt, %bb.se ] ; 2 uses
  %i.axw = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.axw, label %.thread2541, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15505
  br label %.thread2541

.thread2541:                                      ; preds = %bb.sf, %bb.sg, %.thread2551
  %.sroa.01598.07312 = phi i64 [ %.sroa.01598.0, %.thread2551 ], [ %.sroa.01598.0, %bb.sg ], [ 0, %bb.sf ] ; 2 uses
  %.pn2062545 = phi { ptr, i32 } [ %i.axk, %.thread2551 ], [ %.pn204.ph, %bb.sg ], [ %.pn204.ph, %bb.sf ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15506)
  %.val.i1187 = load i64, ptr %i.cv, align 8, !alias.scope !15506 ; 2 uses
  %i.axx = icmp eq i64 %.val.i1187, 0
  br i1 %i.axx, label %.body, label %.split

.split:                                           ; preds = %.thread2541
  %i.axy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.val1.i1188 = load ptr, ptr %i.axy, align 8, !alias.scope !15506, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1188, i64 noundef %.val.i1187, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15506
  br i1 %.not2626, label %.thread2309, label %.body382

bb.sh:                                            ; preds = %.lr.ph.i624
  %i.axz = and i32 %.sroa.02.012.i626, 31
  %i.aya = shl i32 %i.wc, %i.axz
  %i.ayb = or i32 %i.aya, %.sroa.0.013.i625
  %i.ayc = zext i32 %i.ayb to i64                 ; 3 uses
  %i.ayd = icmp ugt i64 %i.lw, %i.ayc
  br i1 %i.ayd, label %bb.si, label %.invoke12310

bb.si:                                            ; preds = %bb.sh
  %i.aye = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.ayc ; 2 uses
  %i.ayf = load ptr, ptr %i.aye, align 8, !nonnull !21, !noundef !21
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.aye, i64 8
  %i.ayh = load i64, ptr %i.ayg, align 8, !noundef !21 ; 12 uses
  %.not.i1190 = icmp slt i64 %i.ayh, 0
  br i1 %.not.i1190, label %.invoke12308, label %bb.sj, !prof !37

bb.sj:                                            ; preds = %bb.si
  %i.ayi = icmp eq i64 %i.ayh, 0                  ; 5 uses
  br i1 %i.ayi, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1193.thread2566, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1191

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1191: ; preds = %bb.sj
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15507
  %i.ayj = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ayh, i64 noundef range(i64 1, 9) 1) #41, !noalias !15507 ; 3 uses
  %i.ayk = icmp eq ptr %i.ayj, null
  br i1 %i.ayk, label %.invoke12308, label %bb.sl

.invoke12310:                                     ; preds = %bb.sh, %bb.nr, %bb.ne, %bb.mh, %bb.lu, %bb.kq, %bb.kb, %bb.ix, %bb.ik
  %i.ayl = phi i64 [ %i.ars, %bb.nr ], [ %i.aqk, %bb.ne ], [ %i.aob, %bb.mh ], [ %i.amt, %bb.lu ], [ %i.ajm, %bb.kq ], [ %i.aho, %bb.kb ], [ %i.aei, %bb.ix ], [ %i.ada, %bb.ik ], [ %i.ayc, %bb.sh ]
  %i.aym = phi ptr [ @10929, %bb.nr ], [ @10928, %bb.ne ], [ @10926, %bb.mh ], [ @10925, %bb.lu ], [ @10922, %bb.kq ], [ @10921, %bb.kb ], [ @10919, %bb.ix ], [ @10918, %bb.ik ], [ @10940, %bb.sh ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ayl, i64 noundef %i.lw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aym) #46
          to label %.cont12311 unwind label %.body.thread.loopexit.split-lp

.cont12311:                                       ; preds = %.invoke12310
  unreachable

.invoke12308:                                     ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1191, %bb.si, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1050, %bb.ns, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1028, %bb.nf, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i990, %bb.mi, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968, %bb.lv, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i916, %bb.kr, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i885, %bb.kc, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i833, %bb.iy, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i811, %bb.il
  %i.ayn = phi i64 [ 0, %bb.ns ], [ 0, %bb.nf ], [ 0, %bb.mi ], [ 0, %bb.lv ], [ 0, %bb.kr ], [ 0, %bb.kc ], [ 0, %bb.iy ], [ 0, %bb.il ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i811 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i833 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i885 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i916 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i990 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1028 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1050 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1191 ], [ 0, %bb.si ]
  %i.ayo = phi i64 [ %i.arx, %bb.ns ], [ %i.aqp, %bb.nf ], [ %i.aog, %bb.mi ], [ %i.amy, %bb.lv ], [ %i.ajr, %bb.kr ], [ %i.aht, %bb.kc ], [ %i.aen, %bb.iy ], [ %i.adf, %bb.il ], [ %i.adf, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i811 ], [ %i.aen, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i833 ], [ %i.aht, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i885 ], [ %i.ajr, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i916 ], [ %i.amy, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968 ], [ %i.aog, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i990 ], [ %i.aqp, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1028 ], [ %i.arx, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1050 ], [ %i.ayh, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1191 ], [ %i.ayh, %bb.si ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ayn, i64 %i.ayo) #46
          to label %.cont12309 unwind label %.body.thread.loopexit.split-lp

.cont12309:                                       ; preds = %.invoke12308
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1193.thread2566: ; preds = %bb.sj, %bb.sl
  %i.ayp = phi ptr [ %i.ayj, %bb.sl ], [ inttoptr (i64 1 to ptr), %bb.sj ] ; 5 uses
  %i.ayq = icmp ult i64 %i.vy, 10831
  br i1 %i.ayq, label %.lr.ph.i1196, label %._crit_edge.i1200

.lr.ph.i1196:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1193.thread2566, %bb.sk
  %.sroa.0.013.i1197 = phi i32 [ %i.aza, %bb.sk ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1193.thread2566 ] ; 2 uses
  %.sroa.02.012.i1198 = phi i32 [ %i.azb, %bb.sk ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1193.thread2566 ] ; 3 uses
  %i.ayr = phi i64 [ %i.ayu, %bb.sk ], [ %i.wb, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1193.thread2566 ] ; 3 uses
  %i.ays = getelementptr inbounds nuw i8, ptr @10956, i64 %i.ayr
  %i.ayt = load i8, ptr %i.ays, align 1, !noalias !15508, !noundef !21 ; 2 uses
  %i.ayu = add nuw nsw i64 %i.ayr, 1              ; 4 uses
  %i.ayv = zext i8 %i.ayt to i32                  ; 2 uses
  %i.ayw = icmp sgt i8 %i.ayt, -1
  br i1 %i.ayw, label %bb.sn, label %bb.sk

._crit_edge.i1200:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1193.thread2566, %bb.sk
  %.lcssa7.i1195 = phi i64 [ 10832, %bb.sk ], [ %i.wb, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1193.thread2566 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1195, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1201 unwind label %bb.sm

.noexc1201:                                       ; preds = %._crit_edge.i1200
  unreachable

bb.sk:                                            ; preds = %.lr.ph.i1196
  %i.ayx = and i32 %i.ayv, 127
  %i.ayy = and i32 %.sroa.02.012.i1198, 31
  %i.ayz = shl i32 %i.ayx, %i.ayy
  %i.aza = or i32 %i.ayz, %.sroa.0.013.i1197
  %i.azb = add nuw nsw i32 %.sroa.02.012.i1198, 7
  %exitcond.not.i1199 = icmp eq i64 %i.ayu, 10832
  br i1 %exitcond.not.i1199, label %._crit_edge.i1200, label %.lr.ph.i1196

bb.sl:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1191
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ayj, ptr nonnull align 1 %i.ayf, i64 %i.ayh, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1193.thread2566

bb.sm:                                            ; preds = %._crit_edge.i1200, %bb.sr, %bb.sq
  %i.azc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ub

bb.sn:                                            ; preds = %.lr.ph.i1196
  %i.azd = and i32 %.sroa.02.012.i1198, 31
  %i.aze = shl i32 %i.ayv, %i.azd
  %i.azf = or i32 %i.aze, %.sroa.0.013.i1197
  %i.azg = zext i32 %i.azf to i64                 ; 3 uses
  %i.azh = icmp ugt i64 %i.lw, %i.azg
  br i1 %i.azh, label %bb.so, label %bb.sq

bb.so:                                            ; preds = %bb.sn
  %i.azi = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.azg ; 2 uses
  %i.azj = load ptr, ptr %i.azi, align 8, !nonnull !21, !noundef !21
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  %i.azl = load i64, ptr %i.azk, align 8, !noundef !21 ; 12 uses
  %.not.i1203 = icmp slt i64 %i.azl, 0
  br i1 %.not.i1203, label %bb.sr, label %bb.sp, !prof !37

bb.sp:                                            ; preds = %bb.so
  %i.azm = icmp eq i64 %i.azl, 0                  ; 3 uses
  br i1 %i.azm, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1206.thread2582, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1204

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1204: ; preds = %bb.sp
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15509
  %i.azn = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.azl, i64 noundef range(i64 1, 9) 1) #41, !noalias !15509 ; 3 uses
  %i.azo = icmp eq ptr %i.azn, null
  br i1 %i.azo, label %bb.sr, label %bb.st

bb.sq:                                            ; preds = %bb.sn
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.azg, i64 noundef %i.lw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10941) #46
          to label %bb.u unwind label %bb.sm

bb.sr:                                            ; preds = %bb.so, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1204
  %.sroa.42152.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1204 ], [ 0, %bb.so ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42152.0.ph, i64 %i.azl) #46
          to label %bb.u unwind label %bb.sm

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1206.thread2582: ; preds = %bb.sp, %bb.st
  %i.azp = phi ptr [ %i.azn, %bb.st ], [ inttoptr (i64 1 to ptr), %bb.sp ] ; 5 uses
  %i.azq = icmp ult i64 %i.ayr, 10831
  br i1 %i.azq, label %.lr.ph.i1209, label %._crit_edge.i1213

.lr.ph.i1209:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1206.thread2582, %bb.ss
  %.sroa.0.013.i1210 = phi i32 [ %i.baa, %bb.ss ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1206.thread2582 ] ; 2 uses
  %.sroa.02.012.i1211 = phi i32 [ %i.bab, %bb.ss ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1206.thread2582 ] ; 3 uses
  %i.azr = phi i64 [ %i.azu, %bb.ss ], [ %i.ayu, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1206.thread2582 ] ; 4 uses
  %i.azs = getelementptr inbounds nuw i8, ptr @10956, i64 %i.azr
  %i.azt = load i8, ptr %i.azs, align 1, !noalias !15510, !noundef !21 ; 2 uses
  %i.azu = add nuw nsw i64 %i.azr, 1              ; 4 uses
  %i.azv = zext i8 %i.azt to i32                  ; 2 uses
  %i.azw = icmp sgt i8 %i.azt, -1
  br i1 %i.azw, label %bb.sv, label %bb.ss

._crit_edge.i1213:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1206.thread2582, %bb.ss
  %.lcssa7.i1208 = phi i64 [ 10832, %bb.ss ], [ %i.ayu, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1206.thread2582 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1208, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1214 unwind label %bb.su

.noexc1214:                                       ; preds = %._crit_edge.i1213
  unreachable

bb.ss:                                            ; preds = %.lr.ph.i1209
  %i.azx = and i32 %i.azv, 127
  %i.azy = and i32 %.sroa.02.012.i1211, 31
  %i.azz = shl i32 %i.azx, %i.azy
  %i.baa = or i32 %i.azz, %.sroa.0.013.i1210
  %i.bab = add nuw nsw i32 %.sroa.02.012.i1211, 7
  %exitcond.not.i1212 = icmp eq i64 %i.azu, 10832
  br i1 %exitcond.not.i1212, label %._crit_edge.i1213, label %.lr.ph.i1209

bb.st:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1204
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azn, ptr nonnull align 1 %i.azj, i64 %i.azl, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1206.thread2582

bb.su:                                            ; preds = %._crit_edge.i1213, %bb.sz, %bb.sy
  %i.bac = landingpad { ptr, i32 }
          cleanup
  br label %bb.tz

bb.sv:                                            ; preds = %.lr.ph.i1209
  %i.bad = and i32 %.sroa.02.012.i1211, 31
  %i.bae = shl i32 %i.azv, %i.bad
  %i.baf = or i32 %i.bae, %.sroa.0.013.i1210
  %i.bag = zext i32 %i.baf to i64                 ; 3 uses
  %i.bah = icmp ugt i64 %i.lw, %i.bag
  br i1 %i.bah, label %bb.sw, label %bb.sy

bb.sw:                                            ; preds = %bb.sv
  %i.bai = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.bag ; 2 uses
  %i.baj = load ptr, ptr %i.bai, align 8, !nonnull !21, !noundef !21
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bai, i64 8
  %i.bal = load i64, ptr %i.bak, align 8, !noundef !21 ; 11 uses
  %.not.i1216 = icmp slt i64 %i.bal, 0
  br i1 %.not.i1216, label %bb.sz, label %bb.sx, !prof !37

bb.sx:                                            ; preds = %bb.sw
  %i.bam = icmp eq i64 %i.bal, 0                  ; 4 uses
  br i1 %i.bam, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1219.thread2603, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1217

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1217: ; preds = %bb.sx
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15511
  %i.ban = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bal, i64 noundef range(i64 1, 9) 1) #41, !noalias !15511 ; 3 uses
  %i.bao = icmp eq ptr %i.ban, null
  br i1 %i.bao, label %bb.sz, label %bb.tb

bb.sy:                                            ; preds = %bb.sv
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bag, i64 noundef %i.lw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10942) #46
          to label %bb.u unwind label %bb.su

bb.sz:                                            ; preds = %bb.sw, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1217
  %.sroa.42156.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1217 ], [ 0, %bb.sw ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42156.0.ph, i64 %i.bal) #46
          to label %bb.u unwind label %bb.su

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1219.thread2603: ; preds = %bb.sx, %bb.tb
  %i.bap = phi ptr [ %i.ban, %bb.tb ], [ inttoptr (i64 1 to ptr), %bb.sx ] ; 5 uses
  %i.baq = icmp ult i64 %i.azr, 10831
  br i1 %i.baq, label %bb.tc, label %bb.ta

bb.ta:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1219.thread2603
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.azu, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1220 unwind label %bb.tx

.noexc1220:                                       ; preds = %bb.ta
  unreachable

bb.tb:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1217
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ban, ptr nonnull align 1 %i.baj, i64 %i.bal, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1219.thread2603

bb.tc:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1219.thread2603
  %i.bar = getelementptr inbounds nuw i8, ptr @10956, i64 %i.azu
  %i.bas = load i8, ptr %i.bar, align 1, !noalias !15512, !noundef !21
  %i.bat = add nuw nsw i64 %i.azr, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  %i.bau = icmp ne i8 %i.bas, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !15513)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.052.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !15514
  call void @llvm.experimental.noalias.scope.decl(metadata !15515)
  call void @llvm.experimental.noalias.scope.decl(metadata !15516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !15517
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.tf unwind label %bb.td, !noalias !15517

bb.td:                                            ; preds = %bb.tc
  %i.bav = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.baw = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.baw, label %.thread.i1223, label %bb.te

bb.te:                                            ; preds = %bb.td
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15518
  br label %.thread.i1223

bb.tf:                                            ; preds = %bb.tc
  store i64 %.sroa.01598.0, ptr %i.af, align 8, !alias.scope !15519, !noalias !15520
  store ptr %.sroa.53.0, ptr %.sroa.52028.0..sroa_idx, align 8, !alias.scope !15519, !noalias !15520
  store i64 %.sroa.69.0, ptr %.sroa.72029.0..sroa_idx, align 8, !alias.scope !15519, !noalias !15520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !15521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !15517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !15514
  call void @llvm.experimental.noalias.scope.decl(metadata !15522)
  call void @llvm.experimental.noalias.scope.decl(metadata !15523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !15524
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ayp, i64 noundef %i.ayh)
          to label %bb.ti unwind label %bb.tg, !noalias !15524

bb.tg:                                            ; preds = %bb.tf
  %i.bax = landingpad { ptr, i32 }
          cleanup
  br i1 %i.ayi, label %.body9.thread.i, label %bb.th

bb.th:                                            ; preds = %bb.tg
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayp, i64 noundef %i.ayh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15525
  br label %.body9.thread.i

.body9.thread.i:                                  ; preds = %bb.th, %bb.tg
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.af) #42, !noalias !15514
  br label %.thread.i1223

.body9.i:                                         ; preds = %.body19.i, %bb.tk, %bb.tj
  %.pn.i = phi { ptr, i32 } [ %i.baz, %.body19.i ], [ %i.bay, %bb.tj ], [ %i.bay, %bb.tk ] ; 2 uses
  %.sroa.0.2.i = phi i1 [ false, %.body19.i ], [ true, %bb.tj ], [ true, %bb.tk ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae) #42, !noalias !15514
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.af) #42, !noalias !15514
  br i1 %.sroa.0.2.i, label %.thread.i1223, label %.body382

bb.ti:                                            ; preds = %bb.tf
  store i64 %i.ayh, ptr %i.ae, align 8, !alias.scope !15526, !noalias !15514
  store ptr %i.ayp, ptr %.sroa.5.0..sroa_idx29.i, align 8, !alias.scope !15526, !noalias !15514
  store i64 %i.ayh, ptr %.sroa.6.0..sroa_idx31.i, align 8, !alias.scope !15526, !noalias !15514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !15527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !15524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !15514
  call void @llvm.experimental.noalias.scope.decl(metadata !15528)
  call void @llvm.experimental.noalias.scope.decl(metadata !15529)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !15530
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.azp, i64 noundef %i.azl)
          to label %bb.tl unwind label %bb.tj, !noalias !15530

bb.tj:                                            ; preds = %bb.ti
  %i.bay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.azm, label %.body9.i, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azp, i64 noundef %i.azl, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15531
  br label %.body9.i

bb.tl:                                            ; preds = %bb.ti
  store i64 %i.azl, ptr %i.ad, align 8, !alias.scope !15532, !noalias !15514
  store ptr %i.azp, ptr %.sroa.535.0..sroa_idx36.i, align 8, !alias.scope !15532, !noalias !15514
  store i64 %i.azl, ptr %.sroa.638.0..sroa_idx39.i, align 8, !alias.scope !15532, !noalias !15514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !15533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !15534
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bap, i64 noundef %i.bal)
          to label %bb.tt unwind label %bb.tm, !noalias !15534

bb.tm:                                            ; preds = %bb.tl
  %i.baz = landingpad { ptr, i32 }
          cleanup
  br i1 %i.bam, label %.body19.i, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bap, i64 noundef %i.bal, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15535
  br label %.body19.i

.body19.i:                                        ; preds = %bb.tn, %bb.tm
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad) #42, !noalias !15514
  br label %.body9.i

.thread.i1223:                                    ; preds = %.body9.i, %.body9.thread.i, %bb.te, %bb.td
  %.sroa.01.063.i = phi i1 [ false, %.body9.i ], [ true, %bb.td ], [ true, %bb.te ], [ true, %.body9.thread.i ]
  %.sroa.02.061.i = phi i1 [ true, %.body9.i ], [ %i.ayi, %bb.td ], [ %i.ayi, %bb.te ], [ true, %.body9.thread.i ] ; 2 uses
  %.pn.pn.pn59.i = phi { ptr, i32 } [ %.pn.i, %.body9.i ], [ %i.bav, %bb.td ], [ %i.bav, %bb.te ], [ %i.bax, %.body9.thread.i ] ; 3 uses
  br i1 %i.bam, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1226, label %bb.to

bb.to:                                            ; preds = %.thread.i1223
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bap, i64 noundef %i.bal, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15536
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1226

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1226: ; preds = %bb.to, %.thread.i1223
  br i1 %.sroa.01.063.i, label %bb.tq, label %bb.tp

bb.tp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1226
  br i1 %.sroa.02.061.i, label %.body382, label %bb.ts

bb.tq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1226
  %i.bba = icmp eq i64 %i.azl, 0
  br i1 %i.bba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azp, i64 noundef %i.azl, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15537
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i: ; preds = %bb.tr, %bb.tq
  br i1 %.sroa.02.061.i, label %.body382, label %bb.ts

bb.ts:                                            ; preds = %bb.tp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayp, i64 noundef %i.ayh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15538
  br label %.body382

bb.tt:                                            ; preds = %bb.tl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !15539
end_hunk_4
begin_hunk_5_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl4read:bb.a
.noexc1268:                                       ; preds = %bb.uu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15565
  br label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i

_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i: ; preds = %.noexc1268, %bb.ut
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bcb = zext nneg i8 %i.bbw to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read.716, i64 %i.bcb
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.bcd = load ptr, ptr %i.bcc, align 8, !nonnull !21, !noundef !21
  %i.bce = getelementptr inbounds nuw i8, ptr %switch.load, i64 16
  %i.bcf = load i64, ptr %i.bce, align 8, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !15566)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !15567
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.ux unwind label %bb.uv, !noalias !15567

bb.uv:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i
  %i.bcg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bch = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.bch, label %.body382, label %bb.uw

bb.uw:                                            ; preds = %bb.uv
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15568
  br label %.body382

bb.ux:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62226.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !15569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15567
  store i64 %.sroa.01598.0, ptr %i.co, align 8, !noalias !15569
  store ptr %.sroa.53.0, ptr %.sroa.42224.0..sroa_idx, align 8, !noalias !15569
  store i64 %.sroa.69.0, ptr %.sroa.52225.0..sroa_idx, align 8, !noalias !15569
  store ptr %i.bcd, ptr %i.fu, align 8, !alias.scope !15566
  store i64 %i.bcf, ptr %i.fv, align 8, !alias.scope !15566
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15570
  %i.bci = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15570 ; 3 uses
  %i.bcj = icmp eq ptr %i.bci, null
  br i1 %i.bcj, label %bb.uy, label %bb.va, !prof !26

bb.uy:                                            ; preds = %bb.ux
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #46
          to label %.noexc1274 unwind label %bb.uz

.noexc1274:                                       ; preds = %bb.uy
  unreachable

bb.uz:                                            ; preds = %bb.uy
  %i.bck = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info25SimpleInstrInfo_pclmulqdqEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.co) #42
  br label %.body382

bb.va:                                            ; preds = %bb.ux
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bci, ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.eh

bb.vb:                                            ; preds = %bb.uu
  %i.bcl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bcm = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.bcm, label %.body382, label %bb.vc

bb.vc:                                            ; preds = %bb.vb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15571
  br label %.body382

bb.vd:                                            ; preds = %bb.dn
  %i.bcn = getelementptr inbounds nuw i8, ptr @10956, i64 %.sroa.138.2
  %i.bco = load i8, ptr %i.bcn, align 1, !noalias !15572, !noundef !21 ; 2 uses
  %i.bcp = add nuw nsw i64 %.sroa.138.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.bcq = icmp ult i8 %i.bco, 32
  call void @llvm.assume(i1 %i.bcq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.r, align 8
  %i.bcr = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768) acquire, align 8, !noalias !15573
  %i.bcs = icmp eq i32 %i.bcr, 0
  br i1 %i.bcs, label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1279, label %bb.ve, !prof !34

bb.ve:                                            ; preds = %bb.vd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15573
  store ptr %i.r, ptr %i.q, align 8, !noalias !15573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !15573
  store ptr %i.q, ptr %i.p, align 8, !noalias !15573
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768), i1 noundef zeroext false, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11256)
          to label %.noexc1282 unwind label %bb.vl

.noexc1282:                                       ; preds = %bb.ve
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15573
  br label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1279

_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1279: ; preds = %.noexc1282, %bb.vd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.bct = zext nneg i8 %i.bco to i64
  %switch.gep12312 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read.716, i64 %i.bct
  %switch.load12313 = load ptr, ptr %switch.gep12312, align 8 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %switch.load12313, i64 8
  %i.bcv = load ptr, ptr %i.bcu, align 8, !nonnull !21, !noundef !21
  %i.bcw = getelementptr inbounds nuw i8, ptr %switch.load12313, i64 16
  %i.bcx = load i64, ptr %i.bcw, align 8, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !15574)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15575
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.vh unwind label %bb.vf, !noalias !15575

bb.vf:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1279
  %i.bcy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bcz = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.bcz, label %.body382, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15576
  br label %.body382

bb.vh:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62230.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !15577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15575
  store i64 %.sroa.01598.0, ptr %i.cn, align 8, !noalias !15577
  store ptr %.sroa.53.0, ptr %.sroa.42228.0..sroa_idx, align 8, !noalias !15577
  store i64 %.sroa.69.0, ptr %.sroa.52229.0..sroa_idx, align 8, !noalias !15577
  store ptr %i.bcv, ptr %i.fr, align 8, !alias.scope !15574
  store i64 %i.bcx, ptr %i.fs, align 8, !alias.scope !15574
  store i32 0, ptr %i.ft, align 8, !alias.scope !15574
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15578
  %i.bda = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15578 ; 3 uses
  %i.bdb = icmp eq ptr %i.bda, null
  br i1 %i.bdb, label %bb.vi, label %bb.vk, !prof !26

bb.vi:                                            ; preds = %bb.vh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1289 unwind label %bb.vj

.noexc1289:                                       ; preds = %bb.vi
  unreachable

bb.vj:                                            ; preds = %bb.vi
  %i.bdc = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info20SimpleInstrInfo_popsEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cn) #42
  br label %.body382

bb.vk:                                            ; preds = %bb.vh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bda, ptr noundef nonnull align 8 dereferenceable(72) %i.cn, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.eh

bb.vl:                                            ; preds = %bb.ve
  %i.bdd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bde = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.bde, label %.body382, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15579
  br label %.body382

bb.vn:                                            ; preds = %bb.do
  %i.bdf = getelementptr inbounds nuw i8, ptr @10956, i64 %.sroa.138.2
  %i.bdg = load i8, ptr %i.bdf, align 1, !noalias !15580, !noundef !21 ; 2 uses
  %.not2625 = icmp eq i64 %.sroa.138.2, 10831
  br i1 %.not2625, label %._crit_edge.i1300.invoke, label %.lr.ph.i1296.preheader

.lr.ph.i1296.preheader:                           ; preds = %bb.vn
  %i.bdh = add nuw nsw i64 %.sroa.138.2, 1
  br label %.lr.ph.i1296

.lr.ph.i1296:                                     ; preds = %.lr.ph.i1296.preheader, %bb.vo
  %.sroa.0.013.i1297 = phi i32 [ %i.bds, %bb.vo ], [ 0, %.lr.ph.i1296.preheader ] ; 2 uses
  %.sroa.02.012.i1298 = phi i32 [ %i.bdt, %bb.vo ], [ 0, %.lr.ph.i1296.preheader ] ; 3 uses
  %i.bdi = phi i64 [ %i.bdl, %bb.vo ], [ %i.bdh, %.lr.ph.i1296.preheader ] ; 2 uses
  %i.bdj = getelementptr inbounds nuw i8, ptr @10956, i64 %i.bdi
  %i.bdk = load i8, ptr %i.bdj, align 1, !noalias !15581, !noundef !21 ; 2 uses
  %i.bdl = add nuw nsw i64 %i.bdi, 1              ; 3 uses
  %i.bdm = zext i8 %i.bdk to i32                  ; 2 uses
  %i.bdn = icmp sgt i8 %i.bdk, -1
  br i1 %i.bdn, label %bb.vp, label %bb.vo

._crit_edge.i1300.invoke:                         ; preds = %bb.dt, %bb.dr, %bb.dg, %bb.dc, %bb.cr, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.bz, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.ba, %bb.ay, %bb.az, %bb.bc, %bb.bj, %bb.bk, %bb.ct, %bb.cu, %bb.cv, %bb.de, %bb.df, %bb.di, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.eb, %bb.at, %bb.vn, %bb.qu, %bb.qe, %bb.qd, %bb.ju, %bb.du, %bb.ds, %bb.vo, %bb.dh, %bb.dd, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.ca, %bb.jv, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bb, %bb.au
  %i.bdo = phi i64 [ 10832, %bb.au ], [ 10832, %bb.vo ], [ 10832, %bb.bb ], [ 10832, %bb.bs ], [ 10832, %bb.dd ], [ 10832, %bb.du ], [ 10832, %bb.bu ], [ 10832, %bb.jv ], [ 10832, %bb.ca ], [ 10832, %bb.cc ], [ 10832, %bb.ce ], [ 10832, %bb.cg ], [ 10832, %bb.cs ], [ 10832, %bb.by ], [ 10832, %bb.ci ], [ 10832, %bb.cq ], [ 10832, %bb.dh ], [ 10832, %bb.ck ], [ 10832, %bb.cm ], [ 10832, %bb.co ], [ 10832, %bb.ds ], [ 10832, %bb.bw ], [ %.sroa.138.2, %bb.bk ], [ %.sroa.138.2, %bb.ct ], [ %.sroa.138.2, %bb.cu ], [ %.sroa.138.2, %bb.cv ], [ %.sroa.138.2, %bb.de ], [ %.sroa.138.2, %bb.df ], [ %.sroa.138.2, %bb.di ], [ %.sroa.138.2, %bb.dm ], [ %.sroa.138.2, %bb.dn ], [ %.sroa.138.2, %bb.do ], [ %.sroa.138.2, %bb.dp ], [ %.sroa.138.2, %bb.dq ], [ %.sroa.138.2, %bb.eb ], [ 10832, %bb.vn ], [ %.sroa.138.2, %bb.at ], [ %.sroa.138.2, %bb.ay ], [ %.sroa.138.2, %bb.az ], [ %.sroa.138.2, %bb.ba ], [ %.sroa.138.2, %bb.bc ], [ %.sroa.138.2, %bb.bj ], [ %.sroa.138.2, %bb.br ], [ %.sroa.138.2, %bb.bt ], [ %.sroa.138.2, %bb.bv ], [ %.sroa.138.2, %bb.bx ], [ %.sroa.138.2, %bb.bz ], [ %.sroa.138.2, %bb.cb ], [ %.sroa.138.2, %bb.cd ], [ %.sroa.138.2, %bb.cf ], [ %.sroa.138.2, %bb.ch ], [ %.sroa.138.2, %bb.cj ], [ %.sroa.138.2, %bb.cl ], [ %.sroa.138.2, %bb.cn ], [ %.sroa.138.2, %bb.cp ], [ %.sroa.138.2, %bb.cr ], [ %.sroa.138.2, %bb.dc ], [ %.sroa.138.2, %bb.dg ], [ %.sroa.138.2, %bb.dr ], [ %.sroa.138.2, %bb.dt ], [ %i.qq, %bb.ju ], [ %i.avj, %bb.qd ], [ %i.avm, %bb.qe ], [ %i.vn, %bb.qu ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdo, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1300.cont unwind label %.body.thread.loopexit.split-lp

._crit_edge.i1300.cont:                           ; preds = %._crit_edge.i1300.invoke
  unreachable

bb.vo:                                            ; preds = %.lr.ph.i1296
  %i.bdp = and i32 %i.bdm, 127
  %i.bdq = and i32 %.sroa.02.012.i1298, 31
  %i.bdr = shl i32 %i.bdp, %i.bdq
  %i.bds = or i32 %i.bdr, %.sroa.0.013.i1297
  %i.bdt = add nuw nsw i32 %.sroa.02.012.i1298, 7
  %exitcond.not.i1299 = icmp eq i64 %i.bdl, 10832
  br i1 %exitcond.not.i1299, label %._crit_edge.i1300.invoke, label %.lr.ph.i1296

bb.vp:                                            ; preds = %.lr.ph.i1296
  %i.bdu = and i32 %.sroa.02.012.i1298, 31
  %i.bdv = shl i32 %i.bdm, %i.bdu
  %i.bdw = or i32 %i.bdv, %.sroa.0.013.i1297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  %i.bdx = icmp ult i8 %i.bdg, 32
  call void @llvm.assume(i1 %i.bdx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.n, align 8
  %i.bdy = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768) acquire, align 8, !noalias !15582
  %i.bdz = icmp eq i32 %i.bdy, 0
  br i1 %i.bdz, label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1303, label %bb.vq, !prof !34

bb.vq:                                            ; preds = %bb.vp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15582
  store ptr %i.n, ptr %i.m, align 8, !noalias !15582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15582
  store ptr %i.m, ptr %i.l, align 8, !noalias !15582
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768), i1 noundef zeroext false, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11256)
          to label %.noexc1306 unwind label %bb.vx

.noexc1306:                                       ; preds = %bb.vq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15582
  br label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1303

_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1303: ; preds = %.noexc1306, %bb.vp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bea = zext nneg i8 %i.bdg to i64
  %switch.gep12314 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read.716, i64 %i.bea
  %switch.load12315 = load ptr, ptr %switch.gep12314, align 8 ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %switch.load12315, i64 8
  %i.bec = load ptr, ptr %i.beb, align 8, !nonnull !21, !noundef !21
  %i.bed = getelementptr inbounds nuw i8, ptr %switch.load12315, i64 16
  %i.bee = load i64, ptr %i.bed, align 8, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !15583)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15584
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.vt unwind label %bb.vr, !noalias !15584

bb.vr:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1303
  %i.bef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.beg = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.beg, label %.body382, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15585
  br label %.body382

bb.vt:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62234.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !15586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15584
  store i64 %.sroa.01598.0, ptr %i.cm, align 8, !noalias !15586
  store ptr %.sroa.53.0, ptr %.sroa.42232.0..sroa_idx, align 8, !noalias !15586
  store i64 %.sroa.69.0, ptr %.sroa.52233.0..sroa_idx, align 8, !noalias !15586
  store ptr %i.bec, ptr %i.fo, align 8, !alias.scope !15583
  store i64 %i.bee, ptr %i.fp, align 8, !alias.scope !15583
  store i32 %i.bdw, ptr %i.fq, align 8, !alias.scope !15583
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15587
  %i.beh = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15587 ; 3 uses
  %i.bei = icmp eq ptr %i.beh, null
  br i1 %i.bei, label %bb.vu, label %bb.vw, !prof !26

bb.vu:                                            ; preds = %bb.vt
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1313 unwind label %bb.vv

.noexc1313:                                       ; preds = %bb.vu
  unreachable

bb.vv:                                            ; preds = %bb.vu
  %i.bej = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info20SimpleInstrInfo_popsEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cm) #42
  br label %.body382

bb.vw:                                            ; preds = %bb.vt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.beh, ptr noundef nonnull align 8 dereferenceable(72) %i.cm, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.eh

bb.vx:                                            ; preds = %bb.vq
  %i.bek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bel = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.bel, label %.body382, label %bb.vy

bb.vy:                                            ; preds = %bb.vx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15588
  br label %.body382

bb.vz:                                            ; preds = %bb.dp
  %i.bem = getelementptr inbounds nuw i8, ptr @10956, i64 %.sroa.138.2
  %i.ben = load i8, ptr %i.bem, align 1, !noalias !15589, !noundef !21
  %i.beo = add nuw nsw i64 %.sroa.138.2, 1
  %i.bep = zext i8 %i.ben to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0, i32 noundef %i.bep)
          to label %bb.wa unwind label %.body.thread.loopexit.split-lp

bb.wa:                                            ; preds = %bb.vz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.experimental.noalias.scope.decl(metadata !15590)
  call void @llvm.experimental.noalias.scope.decl(metadata !15591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15592
  call void @llvm.experimental.noalias.scope.decl(metadata !15593)
  call void @llvm.experimental.noalias.scope.decl(metadata !15594)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15595
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.wd unwind label %bb.wb, !noalias !15595

bb.wb:                                            ; preds = %bb.wa
  %i.beq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ber = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.ber, label %.thread.i1319, label %bb.wc

bb.wc:                                            ; preds = %bb.wb
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15596
  br label %.thread.i1319

bb.wd:                                            ; preds = %bb.wa
  store i64 %.sroa.01598.0, ptr %i.j, align 8, !alias.scope !15597, !noalias !15598
  store ptr %.sroa.53.0, ptr %.sroa.52077.0..sroa_idx, align 8, !alias.scope !15597, !noalias !15598
  store i64 %.sroa.69.0, ptr %.sroa.72078.0..sroa_idx, align 8, !alias.scope !15597, !noalias !15598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !15599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15595
  %.sroa.0.0.copyload.i1324 = load i64, ptr %i.cc, align 8, !alias.scope !15591 ; 3 uses
  %.sroa.5.0.copyload.i1326 = load ptr, ptr %.sroa.5.0..sroa_idx.i1325, align 8, !alias.scope !15591, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.6.0.copyload.i1328 = load i64, ptr %.sroa.6.0..sroa_idx.i1327, align 8, !alias.scope !15591 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15600
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i1326, i64 noundef %.sroa.6.0.copyload.i1328)
          to label %bb.wh unwind label %bb.we, !noalias !15600

bb.we:                                            ; preds = %bb.wd
  %i.bes = landingpad { ptr, i32 }
          cleanup
  %i.bet = icmp eq i64 %.sroa.0.0.copyload.i1324, 0
  br i1 %i.bet, label %.body5.i1329, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i1326, i64 noundef %.sroa.0.0.copyload.i1324, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15601
  br label %.body5.i1329

.body5.i1329:                                     ; preds = %bb.wf, %bb.we
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.j) #42, !noalias !15592
  br label %.body382

.thread.i1319:                                    ; preds = %bb.wc, %bb.wb
  call void @llvm.experimental.noalias.scope.decl(metadata !15602)
  %.val.i.i1320 = load i64, ptr %i.cc, align 8, !alias.scope !15603 ; 2 uses
  %i.beu = icmp eq i64 %.val.i.i1320, 0
  br i1 %i.beu, label %.body382, label %bb.wg

bb.wg:                                            ; preds = %.thread.i1319
  %.val1.i.i1321 = load ptr, ptr %.sroa.5.0..sroa_idx.i1325, align 8, !alias.scope !15603, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i1321, i64 noundef %.val.i.i1320, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15604
  br label %.body382

bb.wh:                                            ; preds = %bb.wd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i1330, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !15605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cb, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !15605
  store i64 %.sroa.0.0.copyload.i1324, ptr %i.fn, align 8, !alias.scope !15590
  store ptr %.sroa.5.0.copyload.i1326, ptr %.sroa.4.0..sroa_idx.i1331, align 8, !alias.scope !15590
  store i64 %.sroa.6.0.copyload.i1328, ptr %.sroa.514.0..sroa_idx.i1332, align 8, !alias.scope !15590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15592
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15606
  %i.bev = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15606 ; 3 uses
  %i.bew = icmp eq ptr %i.bev, null
  br i1 %i.bew, label %bb.wi, label %bb.wk, !prof !26

bb.wi:                                            ; preds = %bb.wh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #46
          to label %.noexc1336 unwind label %bb.wj

.noexc1336:                                       ; preds = %bb.wi
  unreachable

bb.wj:                                            ; preds = %bb.wi
  %i.bex = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info18SimpleInstrInfo_XYEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.cb) #42
  br label %.body382

bb.wk:                                            ; preds = %bb.wh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bev, ptr noundef nonnull align 8 dereferenceable(96) %i.cb, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.eh

bb.wl:                                            ; preds = %bb.dq
  %i.bey = getelementptr inbounds nuw i8, ptr @10956, i64 %.sroa.138.2
end_hunk_5
begin_hunk_6_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm7fmt_tbl4read:bb.a

bb.gu:                                            ; preds = %.lr.ph.i829
  %i.afj = and i32 %i.afh, 127
  %i.afk = and i32 %.sroa.02.012.i831, 31
  %i.afl = shl i32 %i.afj, %i.afk
  %i.afm = or i32 %i.afl, %.sroa.0.013.i830
  %i.afn = add nuw nsw i32 %.sroa.02.012.i831, 7
  %exitcond.not.i832 = icmp eq i64 %i.afg, 11840
  br i1 %exitcond.not.i832, label %.invoke14249, label %.lr.ph.i829

bb.gv:                                            ; preds = %.lr.ph.i829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.afo = icmp ult i8 %i.aex, 7
  call void @llvm.assume(i1 %i.afo)
  %i.afp = icmp ult i8 %i.afa, 7
  call void @llvm.assume(i1 %i.afp)
  call void @llvm.experimental.noalias.scope.decl(metadata !16549)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !16550
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.gy unwind label %bb.gw, !noalias !16550

bb.gw:                                            ; preds = %bb.gv
  %i.afq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afr = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.afr, label %.body385, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16551
  br label %.body385

bb.gy:                                            ; preds = %bb.gv
  %i.afs = and i32 %.sroa.02.012.i831, 31
  %i.aft = shl i32 %i.afh, %i.afs
  %i.afu = or i32 %i.aft, %.sroa.0.013.i830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !16552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !16550
  store i64 %.sroa.01780.0, ptr %i.br, align 8, !noalias !16552
  store ptr %.sroa.57.0, ptr %.sroa.42415.0..sroa_idx, align 8, !noalias !16552
  store i64 %.sroa.63.0, ptr %.sroa.52416.0..sroa_idx, align 8, !noalias !16552
  store i8 %i.aex, ptr %i.ig, align 4, !alias.scope !16549
  store i8 %i.afa, ptr %i.ih, align 1, !alias.scope !16549
  store i32 %i.afu, ptr %i.ii, align 8, !alias.scope !16549
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16553
  %i.afv = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16553 ; 3 uses
  %i.afw = icmp eq ptr %i.afv, null
  br i1 %i.afw, label %bb.gz, label %bb.hb, !prof !26

bb.gz:                                            ; preds = %bb.gy
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc842 unwind label %bb.ha

.noexc842:                                        ; preds = %bb.gz
  unreachable

bb.ha:                                            ; preds = %bb.gz
  %i.afx = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_SignExtEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.br) #42
  br label %.body385

bb.hb:                                            ; preds = %bb.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.afv, ptr noundef nonnull align 8 dereferenceable(56) %i.br, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.ex

bb.hc:                                            ; preds = %_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString3new.exit.i
  %switch.idx.cast.i = trunc nuw nsw i16 %switch.tableidx.i to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dt, ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i64 48, i1 false), !noalias !16554
  store i8 %switch.offset.i, ptr %i.if, align 8, !alias.scope !16465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !16466
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16555
  %i.afy = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16555 ; 3 uses
  %i.afz = icmp eq ptr %i.afy, null
  br i1 %i.afz, label %bb.hd, label %bb.hf, !prof !26

bb.hd:                                            ; preds = %bb.hc
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc844 unwind label %bb.he

.noexc844:                                        ; preds = %bb.hd
  unreachable

bb.he:                                            ; preds = %bb.hd
  %i.aga = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info27SimpleInstrInfo_DeclareDataEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dt) #42
  br label %.body385

bb.hf:                                            ; preds = %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.afy, ptr noundef nonnull align 8 dereferenceable(56) %i.dt, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.ex

bb.hg:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62373.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !16556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !16473
  store i64 %.sroa.01780.0, ptr %i.bm, align 8, !noalias !16556
  store ptr %.sroa.57.0, ptr %.sroa.42371.0..sroa_idx, align 8, !noalias !16556
  store i64 %.sroa.63.0, ptr %.sroa.52372.0..sroa_idx, align 8, !noalias !16556
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16557
  %i.agb = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16557 ; 3 uses
  %i.agc = icmp eq ptr %i.agb, null
  br i1 %i.agc, label %bb.hh, label %bb.hj, !prof !26

bb.hh:                                            ; preds = %bb.hg
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc846 unwind label %bb.hi

.noexc846:                                        ; preds = %bb.hh
  unreachable

bb.hi:                                            ; preds = %bb.hh
  %i.agd = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info20SimpleInstrInfo_XLATEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bm) #42
  br label %.body385

bb.hj:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.agb, ptr noundef nonnull align 8 dereferenceable(48) %i.bm, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.ex

bb.hk:                                            ; preds = %.lr.ph.i488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.experimental.noalias.scope.decl(metadata !16558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !16559
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.hn unwind label %bb.hl, !noalias !16559

bb.hl:                                            ; preds = %bb.hk
  %i.age = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agf = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.agf, label %.body385, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16560
  br label %.body385

bb.hn:                                            ; preds = %bb.hk
  %i.agg = and i32 %.sroa.02.012.i490, 31
  %i.agh = shl i32 %i.pt, %i.agg
  %i.agi = or i32 %i.agh, %.sroa.0.013.i489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62421.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !16561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !16559
  store i64 %.sroa.01780.0, ptr %i.ds, align 8, !noalias !16561
  store ptr %.sroa.57.0, ptr %.sroa.42419.0..sroa_idx, align 8, !noalias !16561
  store i64 %.sroa.63.0, ptr %.sroa.52420.0..sroa_idx, align 8, !noalias !16561
  store i32 %i.agi, ptr %i.ic, align 8, !alias.scope !16558
  store i32 0, ptr %i.id, align 4, !alias.scope !16558
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16562
  %i.agj = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16562 ; 3 uses
  %i.agk = icmp eq ptr %i.agj, null
  br i1 %i.agk, label %bb.ho, label %bb.hq, !prof !26

bb.ho:                                            ; preds = %bb.hn
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc854 unwind label %bb.hp

.noexc854:                                        ; preds = %bb.ho
  unreachable

bb.hp:                                            ; preds = %bb.ho
  %i.agl = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info18SimpleInstrInfo_erEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ds) #42
  br label %.body385

bb.hq:                                            ; preds = %bb.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.agj, ptr noundef nonnull align 8 dereferenceable(56) %i.ds, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  br label %bb.ex

bb.hr:                                            ; preds = %.lr.ph.i497
  %i.agm = and i32 %.sroa.02.012.i499, 31
  %i.agn = shl i32 %i.qf, %i.agm
  %i.ago = or i32 %i.agn, %.sroa.0.013.i498
  %i.agp = icmp ult i64 %i.qb, 11839
  br i1 %i.agp, label %.lr.ph.i858, label %.invoke14249

.lr.ph.i858:                                      ; preds = %bb.hr, %bb.hs
  %.sroa.0.013.i859 = phi i32 [ %i.agz, %bb.hs ], [ 0, %bb.hr ] ; 2 uses
  %.sroa.02.012.i860 = phi i32 [ %i.aha, %bb.hs ], [ 0, %bb.hr ] ; 3 uses
  %i.agq = phi i64 [ %i.agt, %bb.hs ], [ %i.qe, %bb.hr ] ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr @11046, i64 %i.agq
  %i.ags = load i8, ptr %i.agr, align 1, !noalias !16563, !noundef !21 ; 2 uses
  %i.agt = add nuw nsw i64 %i.agq, 1              ; 3 uses
  %i.agu = zext i8 %i.ags to i32                  ; 2 uses
  %i.agv = icmp sgt i8 %i.ags, -1
  br i1 %i.agv, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %.lr.ph.i858
  %i.agw = and i32 %i.agu, 127
  %i.agx = and i32 %.sroa.02.012.i860, 31
  %i.agy = shl i32 %i.agw, %i.agx
  %i.agz = or i32 %i.agy, %.sroa.0.013.i859
  %i.aha = add nuw nsw i32 %.sroa.02.012.i860, 7
  %exitcond.not.i861 = icmp eq i64 %i.agt, 11840
  br i1 %exitcond.not.i861, label %.invoke14249, label %.lr.ph.i858

bb.ht:                                            ; preds = %.lr.ph.i858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.experimental.noalias.scope.decl(metadata !16564)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !16565
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.hw unwind label %bb.hu, !noalias !16565

bb.hu:                                            ; preds = %bb.ht
  %i.ahb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahc = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.ahc, label %.body385, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16566
  br label %.body385

bb.hw:                                            ; preds = %bb.ht
  %i.ahd = and i32 %.sroa.02.012.i860, 31
  %i.ahe = shl i32 %i.agu, %i.ahd
  %i.ahf = or i32 %i.ahe, %.sroa.0.013.i859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !16567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !16565
  store i64 %.sroa.01780.0, ptr %i.dr, align 8, !noalias !16567
  store ptr %.sroa.57.0, ptr %.sroa.42423.0..sroa_idx, align 8, !noalias !16567
  store i64 %.sroa.63.0, ptr %.sroa.52424.0..sroa_idx, align 8, !noalias !16567
  store i32 %i.ago, ptr %i.ia, align 8, !alias.scope !16564
  store i32 %i.ahf, ptr %i.ib, align 4, !alias.scope !16564
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16568
  %i.ahg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16568 ; 3 uses
  %i.ahh = icmp eq ptr %i.ahg, null
  br i1 %i.ahh, label %bb.hx, label %bb.hz, !prof !26

bb.hx:                                            ; preds = %bb.hw
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc871 unwind label %bb.hy

.noexc871:                                        ; preds = %bb.hx
  unreachable

bb.hy:                                            ; preds = %bb.hx
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info18SimpleInstrInfo_erEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dr) #42
  br label %.body385

bb.hz:                                            ; preds = %bb.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ahg, ptr noundef nonnull align 8 dereferenceable(56) %i.dr, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %bb.ex

bb.ia:                                            ; preds = %.lr.ph.i506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.experimental.noalias.scope.decl(metadata !16569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !16570
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.id unwind label %bb.ib, !noalias !16570

bb.ib:                                            ; preds = %bb.ia
  %i.ahj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahk = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.ahk, label %.body385, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16571
  br label %.body385

bb.id:                                            ; preds = %bb.ia
  %i.ahl = and i32 %.sroa.02.012.i508, 31
  %i.ahm = shl i32 %i.qr, %i.ahl
  %i.ahn = or i32 %i.ahm, %.sroa.0.013.i507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62429.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !16572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !16570
  store i64 %.sroa.01780.0, ptr %i.dq, align 8, !noalias !16572
  store ptr %.sroa.57.0, ptr %.sroa.42427.0..sroa_idx, align 8, !noalias !16572
  store i64 %.sroa.63.0, ptr %.sroa.52428.0..sroa_idx, align 8, !noalias !16572
  store i32 %i.ahn, ptr %i.hz, align 8, !alias.scope !16569
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16573
  %i.aho = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16573 ; 3 uses
  %i.ahp = icmp eq ptr %i.aho, null
  br i1 %i.ahp, label %bb.ie, label %bb.ig, !prof !26

bb.ie:                                            ; preds = %bb.id
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc879 unwind label %bb.if

.noexc879:                                        ; preds = %bb.ie
  unreachable

bb.if:                                            ; preds = %bb.ie
  %i.ahq = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info19SimpleInstrInfo_farEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dq) #42
  br label %.body385

bb.ig:                                            ; preds = %bb.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aho, ptr noundef nonnull align 8 dereferenceable(56) %i.dq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %bb.ex

bb.ih:                                            ; preds = %.lr.ph.i515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.experimental.noalias.scope.decl(metadata !16574)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !16575
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.ik unwind label %bb.ii, !noalias !16575

bb.ii:                                            ; preds = %bb.ih
  %i.ahr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahs = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.ahs, label %.body385, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16576
  br label %.body385

bb.ik:                                            ; preds = %bb.ih
  %i.aht = and i32 %.sroa.02.012.i517, 31
  %i.ahu = shl i32 %i.rd, %i.aht
  %i.ahv = or i32 %i.ahu, %.sroa.0.013.i516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !16577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !16575
  store i64 %.sroa.01780.0, ptr %i.dp, align 8, !noalias !16577
  store ptr %.sroa.57.0, ptr %.sroa.42431.0..sroa_idx, align 8, !noalias !16577
  store i64 %.sroa.63.0, ptr %.sroa.52432.0..sroa_idx, align 8, !noalias !16577
  store i32 %i.ahv, ptr %i.hy, align 8, !alias.scope !16574
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16578
  %i.ahw = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16578 ; 3 uses
  %i.ahx = icmp eq ptr %i.ahw, null
  br i1 %i.ahx, label %bb.il, label %bb.in, !prof !26

bb.il:                                            ; preds = %bb.ik
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc887 unwind label %bb.im

.noexc887:                                        ; preds = %bb.il
  unreachable

bb.im:                                            ; preds = %bb.il
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_far_memEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dp) #42
  br label %.body385

bb.in:                                            ; preds = %bb.ik
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ahw, ptr noundef nonnull align 8 dereferenceable(56) %i.dp, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  br label %bb.ex

bb.io:                                            ; preds = %.lr.ph.i524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @llvm.experimental.noalias.scope.decl(metadata !16579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !16580
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.ir unwind label %bb.ip, !noalias !16580

bb.ip:                                            ; preds = %bb.io
  %i.ahz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aia = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.aia, label %.body385, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16581
  br label %.body385

bb.ir:                                            ; preds = %bb.io
  %i.aib = and i32 %.sroa.02.012.i526, 31
  %i.aic = shl i32 %i.rp, %i.aib
  %i.aid = or i32 %i.aic, %.sroa.0.013.i525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62437.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !16582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !16580
  store i64 %.sroa.01780.0, ptr %i.do, align 8, !noalias !16582
  store ptr %.sroa.57.0, ptr %.sroa.42435.0..sroa_idx, align 8, !noalias !16582
  store i64 %.sroa.63.0, ptr %.sroa.52436.0..sroa_idx, align 8, !noalias !16582
  store i32 %i.aid, ptr %i.hx, align 8, !alias.scope !16579
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16583
  %i.aie = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16583 ; 3 uses
  %i.aif = icmp eq ptr %i.aie, null
  br i1 %i.aif, label %bb.is, label %bb.iu, !prof !26

bb.is:                                            ; preds = %bb.ir
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc895 unwind label %bb.it

.noexc895:                                        ; preds = %bb.is
  unreachable

bb.it:                                            ; preds = %bb.is
  %i.aig = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_invlpgaEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.do) #42
  br label %.body385

bb.iu:                                            ; preds = %bb.ir
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aie, ptr noundef nonnull align 8 dereferenceable(56) %i.do, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  br label %bb.ex

bb.iv:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62377.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !16584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !16480
  store i64 %.sroa.01780.0, ptr %i.dn, align 8, !noalias !16584
  store ptr %.sroa.57.0, ptr %.sroa.42375.0..sroa_idx, align 8, !noalias !16584
  store i64 %.sroa.63.0, ptr %.sroa.52376.0..sroa_idx, align 8, !noalias !16584
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16585
  %i.aih = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16585 ; 3 uses
  %i.aii = icmp eq ptr %i.aih, null
  br i1 %i.aii, label %bb.iw, label %bb.iy, !prof !26

bb.iw:                                            ; preds = %bb.iv
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc897 unwind label %bb.ix

.noexc897:                                        ; preds = %bb.iw
  unreachable

bb.ix:                                            ; preds = %bb.iw
  %i.aij = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info24SimpleInstrInfo_maskmovqEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dn) #42
  br label %.body385

bb.iy:                                            ; preds = %bb.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aih, ptr noundef nonnull align 8 dereferenceable(48) %i.dn, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.ex

bb.iz:                                            ; preds = %bb.cg
  %i.aik = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.166.2
  %i.ail = load i8, ptr %i.aik, align 1, !noalias !16586, !noundef !21 ; 3 uses
  %.not3054 = icmp eq i64 %.sroa.166.2, 11839
  br i1 %.not3054, label %.invoke14249, label %.lr.ph.i901.preheader

.lr.ph.i901.preheader:                            ; preds = %bb.iz
  %i.aim = add nuw nsw i64 %.sroa.166.2, 1
  br label %.lr.ph.i901

.lr.ph.i901:                                      ; preds = %.lr.ph.i901.preheader, %bb.ja
  %.sroa.0.013.i902 = phi i32 [ %i.aiw, %bb.ja ], [ 0, %.lr.ph.i901.preheader ] ; 2 uses
  %.sroa.02.012.i903 = phi i32 [ %i.aix, %bb.ja ], [ 0, %.lr.ph.i901.preheader ] ; 3 uses
  %i.ain = phi i64 [ %i.aiq, %bb.ja ], [ %i.aim, %.lr.ph.i901.preheader ] ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr @11046, i64 %i.ain
  %i.aip = load i8, ptr %i.aio, align 1, !noalias !16587, !noundef !21 ; 2 uses
  %i.aiq = add nuw nsw i64 %i.ain, 1              ; 3 uses
  %i.air = zext i8 %i.aip to i32                  ; 2 uses
  %i.ais = icmp sgt i8 %i.aip, -1
  br i1 %i.ais, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %.lr.ph.i901
  %i.ait = and i32 %i.air, 127
  %i.aiu = and i32 %.sroa.02.012.i903, 31
  %i.aiv = shl i32 %i.ait, %i.aiu
  %i.aiw = or i32 %i.aiv, %.sroa.0.013.i902
  %i.aix = add nuw nsw i32 %.sroa.02.012.i903, 7
  %exitcond.not.i904 = icmp eq i64 %i.aiq, 11840
  br i1 %exitcond.not.i904, label %.invoke14249, label %.lr.ph.i901

bb.jb:                                            ; preds = %.lr.ph.i901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.aiy = icmp ult i8 %i.ail, 7
  call void @llvm.assume(i1 %i.aiy)
  call void @llvm.experimental.noalias.scope.decl(metadata !16588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !16589
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.je unwind label %bb.jc, !noalias !16589

bb.jc:                                            ; preds = %bb.jb
  %i.aiz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aja = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.aja, label %.body385, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16590
  br label %.body385

bb.je:                                            ; preds = %bb.jb
  %i.ajb = and i32 %.sroa.02.012.i903, 31
  %i.ajc = shl i32 %i.air, %i.ajb
  %i.ajd = or i32 %i.ajc, %.sroa.0.013.i902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62441.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !16591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !16589
  store i64 %.sroa.01780.0, ptr %i.bs, align 8, !noalias !16591
  store ptr %.sroa.57.0, ptr %.sroa.42439.0..sroa_idx, align 8, !noalias !16591
  store i64 %.sroa.63.0, ptr %.sroa.52440.0..sroa_idx, align 8, !noalias !16591
  store i8 %i.ail, ptr %i.hu, align 4, !alias.scope !16588
  store i8 %i.ail, ptr %i.hv, align 1, !alias.scope !16588
  store i32 %i.ajd, ptr %i.hw, align 8, !alias.scope !16588
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16592
  %i.aje = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16592 ; 3 uses
  %i.ajf = icmp eq ptr %i.aje, null
  br i1 %i.ajf, label %bb.jf, label %bb.jh, !prof !26

bb.jf:                                            ; preds = %bb.je
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc914 unwind label %bb.jg

.noexc914:                                        ; preds = %bb.jf
  unreachable

bb.jg:                                            ; preds = %bb.jf
  %i.ajg = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_SignExtEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bs) #42
  br label %.body385

bb.jh:                                            ; preds = %bb.je
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aje, ptr noundef nonnull align 8 dereferenceable(56) %i.bs, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.ex

bb.ji:                                            ; preds = %bb.ch
  %i.ajh = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.166.2
  %i.aji = load i8, ptr %i.ajh, align 1, !noalias !16593, !noundef !21
  %i.ajj = add nuw nsw i64 %.sroa.166.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.experimental.noalias.scope.decl(metadata !16594)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !16595
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.jl unwind label %bb.jj, !noalias !16595

bb.jj:                                            ; preds = %bb.ji
  %i.ajk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajl = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.ajl, label %.body385, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16596
  br label %.body385

bb.jl:                                            ; preds = %bb.ji
  %i.ajm = icmp ne i8 %i.aji, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62445.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !16597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !16595
  store i64 %.sroa.01780.0, ptr %i.bp, align 8, !noalias !16597
  store ptr %.sroa.57.0, ptr %.sroa.42443.0..sroa_idx, align 8, !noalias !16597
  store i64 %.sroa.63.0, ptr %.sroa.52444.0..sroa_idx, align 8, !noalias !16597
  %i.ajn = zext i1 %i.ajm to i8
  store i8 %i.ajn, ptr %i.ht, align 8, !alias.scope !16594
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16598
  %i.ajo = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16598 ; 3 uses
  %i.ajp = icmp eq ptr %i.ajo, null
  br i1 %i.ajp, label %bb.jm, label %bb.jo, !prof !26

bb.jm:                                            ; preds = %bb.jl
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc922 unwind label %bb.jn

.noexc922:                                        ; preds = %bb.jm
  unreachable

bb.jn:                                            ; preds = %bb.jm
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info21SimpleInstrInfo_STIG1EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bp) #42
  br label %.body385

bb.jo:                                            ; preds = %bb.jl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ajo, ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.ex

bb.jp:                                            ; preds = %bb.ci
  %i.ajr = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.166.2
  %i.ajs = load i8, ptr %i.ajr, align 1, !noalias !16599, !noundef !21
  %i.ajt = add nuw nsw i64 %.sroa.166.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.experimental.noalias.scope.decl(metadata !16600)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !16601
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.js unwind label %bb.jq, !noalias !16601

bb.jq:                                            ; preds = %bb.jp
  %i.aju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajv = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.ajv, label %.body385, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16602
  br label %.body385

bb.js:                                            ; preds = %bb.jp
  %i.ajw = icmp ne i8 %i.ajs, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62449.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !16603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !16601
  store i64 %.sroa.01780.0, ptr %i.bo, align 8, !noalias !16603
  store ptr %.sroa.57.0, ptr %.sroa.42447.0..sroa_idx, align 8, !noalias !16603
  store i64 %.sroa.63.0, ptr %.sroa.52448.0..sroa_idx, align 8, !noalias !16603
  store i32 0, ptr %i.hr, align 8, !alias.scope !16600
  %i.ajx = zext i1 %i.ajw to i8
  store i8 %i.ajx, ptr %i.hs, align 4, !alias.scope !16600
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16604
  %i.ajy = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16604 ; 3 uses
  %i.ajz = icmp eq ptr %i.ajy, null
  br i1 %i.ajz, label %bb.jt, label %bb.jv, !prof !26

bb.jt:                                            ; preds = %bb.js
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc930 unwind label %bb.ju

.noexc930:                                        ; preds = %bb.jt
  unreachable

bb.ju:                                            ; preds = %bb.jt
  %i.aka = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info21SimpleInstrInfo_STIG2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bo) #42
  br label %.body385

bb.jv:                                            ; preds = %bb.js
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ajy, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.ex

bb.jw:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62381.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !16605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !16482
  store i64 %.sroa.01780.0, ptr %i.dm, align 8, !noalias !16605
  store ptr %.sroa.57.0, ptr %.sroa.42379.0..sroa_idx, align 8, !noalias !16605
  store i64 %.sroa.63.0, ptr %.sroa.52380.0..sroa_idx, align 8, !noalias !16605
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16606
  %i.akb = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16606 ; 3 uses
  %i.akc = icmp eq ptr %i.akb, null
  br i1 %i.akc, label %bb.jx, label %bb.jz, !prof !26

bb.jx:                                            ; preds = %bb.jw
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc932 unwind label %bb.jy

.noexc932:                                        ; preds = %bb.jx
  unreachable

bb.jy:                                            ; preds = %bb.jx
  %i.akd = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_movabsEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dm) #42
  br label %.body385

bb.jz:                                            ; preds = %bb.jw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.akb, ptr noundef nonnull align 8 dereferenceable(48) %i.dm, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.ex

bb.ka:                                            ; preds = %.lr.ph.i551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.experimental.noalias.scope.decl(metadata !16607)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !16608
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
end_hunk_6
begin_hunk_7_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm7fmt_tbl4read:bb.a
bb.le:                                            ; preds = %bb.ld
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52101.0.copyload, i64 noundef %.sroa.02100.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16647
  br label %.body9.i

bb.lf:                                            ; preds = %bb.lc
  store i64 %.sroa.02100.0.copyload, ptr %i.ag, align 8, !alias.scope !16648, !noalias !16630
  store ptr %.sroa.52101.0.copyload, ptr %.sroa.535.0..sroa_idx36.i, align 8, !alias.scope !16648, !noalias !16630
  store i64 %.sroa.72102.0.copyload, ptr %.sroa.638.0..sroa_idx39.i, align 8, !alias.scope !16648, !noalias !16630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !16649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !16646
  %.sroa.041.0.copyload.i = load i64, ptr %i.di, align 8, !alias.scope !16629 ; 3 uses
  %.sroa.543.0.copyload.i = load ptr, ptr %.sroa.543.0..sroa_idx.i, align 8, !alias.scope !16629, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.646.0.copyload.i = load i64, ptr %.sroa.646.0..sroa_idx.i, align 8, !alias.scope !16629 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !16650
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.543.0.copyload.i, i64 noundef %.sroa.646.0.copyload.i)
          to label %bb.ln unwind label %bb.lg, !noalias !16650

bb.lg:                                            ; preds = %bb.lf
  %i.aln = landingpad { ptr, i32 }
          cleanup
  %i.alo = icmp eq i64 %.sroa.041.0.copyload.i, 0
  br i1 %i.alo, label %.body19.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.543.0.copyload.i, i64 noundef %.sroa.041.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16651
  br label %.body19.i

.body19.i:                                        ; preds = %bb.lh, %bb.lg
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ag) #42, !noalias !16630
  br label %.body9.i

.thread.i:                                        ; preds = %.body9.i, %.body9.thread.i, %bb.ky, %bb.kx
  %.sroa.02100.0.copyload7182 = phi i64 [ %.sroa.02100.0.copyload7183, %.body9.i ], [ %.sroa.02100.0.copyload, %bb.kx ], [ %.sroa.02100.0.copyload, %bb.ky ], [ %.sroa.02100.0.copyload, %.body9.thread.i ] ; 2 uses
  %.sroa.01.063.i = phi i1 [ false, %.body9.i ], [ true, %bb.kx ], [ true, %bb.ky ], [ true, %.body9.thread.i ]
  %.sroa.02.061.i = phi i1 [ true, %.body9.i ], [ false, %bb.kx ], [ false, %bb.ky ], [ true, %.body9.thread.i ] ; 2 uses
  %.pn.pn.pn59.i = phi { ptr, i32 } [ %.pn.i, %.body9.i ], [ %i.alh, %bb.kx ], [ %i.alh, %bb.ky ], [ %i.alj, %.body9.thread.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16652)
  %.val.i.i = load i64, ptr %i.di, align 8, !alias.scope !16653 ; 2 uses
  %i.alp = icmp eq i64 %.val.i.i, 0
  br i1 %i.alp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i, label %bb.li

bb.li:                                            ; preds = %.thread.i
  %.val1.i.i = load ptr, ptr %.sroa.543.0..sroa_idx.i, align 8, !alias.scope !16653, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16654
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i: ; preds = %bb.li, %.thread.i
  br i1 %.sroa.01.063.i, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i
  %.old = icmp eq i64 %.sroa.02097.0.copyload, 0
  %or.cond3057 = select i1 %.sroa.02.061.i, i1 true, i1 %.old
  br i1 %or.cond3057, label %.body385, label %bb.lm

bb.lk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i
  %i.alq = icmp eq i64 %.sroa.02100.0.copyload7182, 0
  br i1 %i.alq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52101.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52101.0.copyload, i64 noundef %.sroa.02100.0.copyload7182, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16655
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i: ; preds = %bb.ll, %bb.lk
  %i.alr = icmp eq i64 %.sroa.02097.0.copyload, 0
  %or.cond = select i1 %.sroa.02.061.i, i1 true, i1 %i.alr
  br i1 %or.cond, label %.body385, label %bb.lm

bb.lm:                                            ; preds = %bb.lj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52098.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52098.0.copyload, i64 noundef %.sroa.02097.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16656
  br label %.body385

bb.ln:                                            ; preds = %bb.lf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !16657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !16650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 48, i1 false), !noalias !16630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false), !noalias !16630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.96..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false), !noalias !16630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !16630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !16630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !16630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.dh, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.052.i, i64 144, i1 false), !noalias !16657
  store i64 %.sroa.041.0.copyload.i, ptr %.sroa.653.0..sroa_idx.i, align 8, !alias.scope !16628
  store ptr %.sroa.543.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !16628
  store i64 %.sroa.646.0.copyload.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !16628
  store i8 %i.ald, ptr %i.hl, align 8, !alias.scope !16628
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.052.i)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16658
  %i.als = call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16658 ; 3 uses
  %i.alt = icmp eq ptr %i.als, null
  br i1 %i.alt, label %bb.lo, label %bb.lq, !prof !26

bb.lo:                                            ; preds = %bb.ln
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #46
          to label %.noexc959 unwind label %bb.lp

.noexc959:                                        ; preds = %bb.lo
  unreachable

bb.lp:                                            ; preds = %bb.lo
  %i.alu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringj4_EBG_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(200) %i.dh) #45
  br label %.body385

bb.lq:                                            ; preds = %bb.ln
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.als, ptr noundef nonnull align 8 dereferenceable(200) %i.dh, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %bb.ex

bb.lr:                                            ; preds = %bb.kv
  %i.alv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16659)
  %.val.i961 = load i64, ptr %i.dj, align 8, !alias.scope !16659 ; 2 uses
  %i.alw = icmp eq i64 %.val.i961, 0
  br i1 %i.alw, label %bb.lu, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %.val1.i962 = load ptr, ptr %.sroa.52101.0..sroa_idx, align 8, !alias.scope !16659, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i962, i64 noundef %.val.i961, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16659
  br label %bb.lu

bb.lt:                                            ; preds = %bb.ys
  %i.alx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.lu:                                            ; preds = %bb.ku, %bb.lr, %bb.ls
  %.pn216.ph = phi { ptr, i32 } [ %i.alf, %bb.ku ], [ %i.alv, %bb.lr ], [ %i.alv, %bb.ls ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16660)
  %.val.i964 = load i64, ptr %i.dk, align 8, !alias.scope !16660 ; 2 uses
  %i.aly = icmp eq i64 %.val.i964, 0
  br i1 %i.aly, label %.thread2560, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %.val1.i965 = load ptr, ptr %.sroa.52098.0..sroa_idx, align 8, !alias.scope !16660, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i965, i64 noundef %.val.i964, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16660
  br label %.thread2560

bb.lw:                                            ; preds = %.lr.ph.i571
  %i.alz = and i32 %.sroa.02.012.i573, 31
  %i.ama = shl i32 %i.th, %i.alz
  %i.amb = or i32 %i.ama, %.sroa.0.013.i572
  %i.amc = zext i32 %i.amb to i64                 ; 3 uses
  %i.amd = icmp ugt i64 %i.lo, %i.amc
  br i1 %i.amd, label %bb.lx, label %.invoke14247

bb.lx:                                            ; preds = %bb.lw
  %i.ame = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.amc ; 2 uses
  %i.amf = load ptr, ptr %i.ame, align 8, !nonnull !21, !noundef !21
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  %i.amh = load i64, ptr %i.amg, align 8, !noundef !21 ; 12 uses
  %.not.i967 = icmp slt i64 %i.amh, 0
  br i1 %.not.i967, label %.invoke14251, label %bb.ly, !prof !37

bb.ly:                                            ; preds = %bb.lx
  %i.ami = icmp eq i64 %i.amh, 0                  ; 5 uses
  br i1 %i.ami, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2827, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968: ; preds = %bb.ly
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16661
  %i.amj = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.amh, i64 noundef range(i64 1, 9) 1) #41, !noalias !16661 ; 3 uses
  %i.amk = icmp eq ptr %i.amj, null
  br i1 %i.amk, label %.invoke14251, label %bb.ma

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2827: ; preds = %bb.ly, %bb.ma
  %i.aml = phi ptr [ %i.amj, %bb.ma ], [ inttoptr (i64 1 to ptr), %bb.ly ] ; 5 uses
  %i.amm = icmp ult i64 %i.td, 11839
  br i1 %i.amm, label %.lr.ph.i973, label %._crit_edge.i977

.lr.ph.i973:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2827, %bb.lz
  %.sroa.0.013.i974 = phi i32 [ %i.amw, %bb.lz ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2827 ] ; 2 uses
  %.sroa.02.012.i975 = phi i32 [ %i.amx, %bb.lz ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2827 ] ; 3 uses
  %i.amn = phi i64 [ %i.amq, %bb.lz ], [ %i.tg, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2827 ] ; 3 uses
  %i.amo = getelementptr inbounds nuw i8, ptr @11046, i64 %i.amn
  %i.amp = load i8, ptr %i.amo, align 1, !noalias !16662, !noundef !21 ; 2 uses
  %i.amq = add nuw nsw i64 %i.amn, 1              ; 4 uses
  %i.amr = zext i8 %i.amp to i32                  ; 2 uses
  %i.ams = icmp sgt i8 %i.amp, -1
  br i1 %i.ams, label %bb.mc, label %bb.lz

._crit_edge.i977:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2827, %bb.lz
  %.lcssa7.i972 = phi i64 [ 11840, %bb.lz ], [ %i.tg, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2827 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i972, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc978 unwind label %bb.mb

.noexc978:                                        ; preds = %._crit_edge.i977
  unreachable

bb.lz:                                            ; preds = %.lr.ph.i973
  %i.amt = and i32 %i.amr, 127
  %i.amu = and i32 %.sroa.02.012.i975, 31
  %i.amv = shl i32 %i.amt, %i.amu
  %i.amw = or i32 %i.amv, %.sroa.0.013.i974
  %i.amx = add nuw nsw i32 %.sroa.02.012.i975, 7
  %exitcond.not.i976 = icmp eq i64 %i.amq, 11840
  br i1 %exitcond.not.i976, label %._crit_edge.i977, label %.lr.ph.i973

bb.ma:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amj, ptr nonnull align 1 %i.amf, i64 %i.amh, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2827

bb.mb:                                            ; preds = %._crit_edge.i977, %bb.mg, %bb.mf
  %i.amy = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

bb.mc:                                            ; preds = %.lr.ph.i973
  %i.amz = and i32 %.sroa.02.012.i975, 31
  %i.ana = shl i32 %i.amr, %i.amz
  %i.anb = or i32 %i.ana, %.sroa.0.013.i974
  %i.anc = zext i32 %i.anb to i64                 ; 3 uses
  %i.and = icmp ugt i64 %i.lo, %i.anc
  br i1 %i.and, label %bb.md, label %bb.mf

bb.md:                                            ; preds = %bb.mc
  %i.ane = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.anc ; 2 uses
  %i.anf = load ptr, ptr %i.ane, align 8, !nonnull !21, !noundef !21
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  %i.anh = load i64, ptr %i.ang, align 8, !noundef !21 ; 12 uses
  %.not.i980 = icmp slt i64 %i.anh, 0
  br i1 %.not.i980, label %bb.mg, label %bb.me, !prof !37

bb.me:                                            ; preds = %bb.md
  %i.ani = icmp eq i64 %i.anh, 0                  ; 3 uses
  br i1 %i.ani, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit983.thread2843, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i981

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i981: ; preds = %bb.me
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16663
  %i.anj = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.anh, i64 noundef range(i64 1, 9) 1) #41, !noalias !16663 ; 3 uses
  %i.ank = icmp eq ptr %i.anj, null
  br i1 %i.ank, label %bb.mg, label %bb.mi

bb.mf:                                            ; preds = %bb.mc
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.anc, i64 noundef %i.lo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11015) #46
          to label %bb.u unwind label %bb.mb

bb.mg:                                            ; preds = %bb.md, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i981
  %.sroa.42311.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i981 ], [ 0, %bb.md ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42311.0.ph, i64 %i.anh) #46
          to label %bb.u unwind label %bb.mb

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit983.thread2843: ; preds = %bb.me, %bb.mi
  %i.anl = phi ptr [ %i.anj, %bb.mi ], [ inttoptr (i64 1 to ptr), %bb.me ] ; 5 uses
  %i.anm = icmp ult i64 %i.amn, 11839
  br i1 %i.anm, label %.lr.ph.i986, label %._crit_edge.i990

.lr.ph.i986:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit983.thread2843, %bb.mh
  %.sroa.0.013.i987 = phi i32 [ %i.anw, %bb.mh ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit983.thread2843 ] ; 2 uses
  %.sroa.02.012.i988 = phi i32 [ %i.anx, %bb.mh ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit983.thread2843 ] ; 3 uses
  %i.ann = phi i64 [ %i.anq, %bb.mh ], [ %i.amq, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit983.thread2843 ] ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr @11046, i64 %i.ann
  %i.anp = load i8, ptr %i.ano, align 1, !noalias !16664, !noundef !21 ; 2 uses
  %i.anq = add nuw nsw i64 %i.ann, 1              ; 3 uses
  %i.anr = zext i8 %i.anp to i32                  ; 2 uses
  %i.ans = icmp sgt i8 %i.anp, -1
  br i1 %i.ans, label %bb.mj, label %bb.mh

._crit_edge.i990:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit983.thread2843, %bb.mh
  %.lcssa7.i985 = phi i64 [ 11840, %bb.mh ], [ %i.amq, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit983.thread2843 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i985, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc991 unwind label %bb.nj

.noexc991:                                        ; preds = %._crit_edge.i990
  unreachable

bb.mh:                                            ; preds = %.lr.ph.i986
  %i.ant = and i32 %i.anr, 127
  %i.anu = and i32 %.sroa.02.012.i988, 31
  %i.anv = shl i32 %i.ant, %i.anu
  %i.anw = or i32 %i.anv, %.sroa.0.013.i987
  %i.anx = add nuw nsw i32 %.sroa.02.012.i988, 7
  %exitcond.not.i989 = icmp eq i64 %i.anq, 11840
  br i1 %exitcond.not.i989, label %._crit_edge.i990, label %.lr.ph.i986

bb.mi:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i981
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.anj, ptr nonnull align 1 %i.anf, i64 %i.anh, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit983.thread2843

bb.mj:                                            ; preds = %.lr.ph.i986
  %i.any = and i32 %.sroa.02.012.i988, 31
  %i.anz = shl i32 %i.anr, %i.any
  %i.aoa = or i32 %i.anz, %.sroa.0.013.i987
  %i.aob = zext i32 %i.aoa to i64                 ; 3 uses
  %i.aoc = icmp ugt i64 %i.lo, %i.aob
  br i1 %i.aoc, label %bb.mk, label %bb.mm

bb.mk:                                            ; preds = %bb.mj
  %i.aod = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.aob ; 2 uses
  %i.aoe = load ptr, ptr %i.aod, align 8, !nonnull !21, !noundef !21
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.aog = load i64, ptr %i.aof, align 8, !noundef !21 ; 10 uses
  %.not.i993 = icmp slt i64 %i.aog, 0
  br i1 %.not.i993, label %bb.mn, label %bb.ml, !prof !37

bb.ml:                                            ; preds = %bb.mk
  %i.aoh = icmp eq i64 %i.aog, 0                  ; 3 uses
  br i1 %i.aoh, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit996.thread2858, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i994

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i994: ; preds = %bb.ml
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16665
  %i.aoi = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aog, i64 noundef range(i64 1, 9) 1) #41, !noalias !16665 ; 3 uses
  %i.aoj = icmp eq ptr %i.aoi, null
  br i1 %i.aoj, label %bb.mn, label %bb.ne

bb.mm:                                            ; preds = %bb.mj
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aob, i64 noundef %i.lo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11016) #46
          to label %bb.u unwind label %bb.nj

bb.mn:                                            ; preds = %bb.mk, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i994
  %.sroa.42315.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i994 ], [ 0, %bb.mk ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42315.0.ph, i64 %i.aog) #46
          to label %bb.u unwind label %bb.nj

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit996.thread2858: ; preds = %bb.ml, %bb.ne
  %i.aok = phi ptr [ %i.aoi, %bb.ne ], [ inttoptr (i64 1 to ptr), %bb.ml ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.experimental.noalias.scope.decl(metadata !16666)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.052.i997)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !16667
  call void @llvm.experimental.noalias.scope.decl(metadata !16668)
  call void @llvm.experimental.noalias.scope.decl(metadata !16669)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !16670
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.mq unwind label %bb.mo, !noalias !16670

bb.mo:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit996.thread2858
  %i.aol = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aom = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.aom, label %.thread.i999, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16671
  br label %.thread.i999

bb.mq:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit996.thread2858
  store i64 %.sroa.01780.0, ptr %i.ab, align 8, !alias.scope !16672, !noalias !16673
  store ptr %.sroa.57.0, ptr %.sroa.52113.0..sroa_idx, align 8, !alias.scope !16672, !noalias !16673
  store i64 %.sroa.63.0, ptr %.sroa.72114.0..sroa_idx, align 8, !alias.scope !16672, !noalias !16673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !16674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !16667
  call void @llvm.experimental.noalias.scope.decl(metadata !16675)
  call void @llvm.experimental.noalias.scope.decl(metadata !16676)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !16677
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aml, i64 noundef %i.amh)
          to label %bb.mt unwind label %bb.mr, !noalias !16677

bb.mr:                                            ; preds = %bb.mq
  %i.aon = landingpad { ptr, i32 }
          cleanup
  br i1 %i.ami, label %.body9.thread.i1018, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aml, i64 noundef %i.amh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16678
  br label %.body9.thread.i1018

.body9.thread.i1018:                              ; preds = %bb.ms, %bb.mr
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab) #42, !noalias !16667
  br label %.thread.i999

.body9.i1026:                                     ; preds = %.body19.i1036, %bb.mv, %bb.mu
  %.pn.i1027 = phi { ptr, i32 } [ %i.aop, %.body19.i1036 ], [ %i.aoo, %bb.mu ], [ %i.aoo, %bb.mv ] ; 2 uses
  %.sroa.0.2.i1028 = phi i1 [ false, %.body19.i1036 ], [ true, %bb.mu ], [ true, %bb.mv ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aa) #42, !noalias !16667
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab) #42, !noalias !16667
  br i1 %.sroa.0.2.i1028, label %.thread.i999, label %.body385

bb.mt:                                            ; preds = %bb.mq
  store i64 %i.amh, ptr %i.aa, align 8, !alias.scope !16679, !noalias !16667
  store ptr %i.aml, ptr %.sroa.5.0..sroa_idx29.i1019, align 8, !alias.scope !16679, !noalias !16667
  store i64 %i.amh, ptr %.sroa.6.0..sroa_idx31.i1020, align 8, !alias.scope !16679, !noalias !16667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !16680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !16677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !16667
  call void @llvm.experimental.noalias.scope.decl(metadata !16681)
  call void @llvm.experimental.noalias.scope.decl(metadata !16682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !16683
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.anl, i64 noundef %i.anh)
          to label %bb.mw unwind label %bb.mu, !noalias !16683

bb.mu:                                            ; preds = %bb.mt
  %i.aoo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ani, label %.body9.i1026, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.anl, i64 noundef %i.anh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16684
  br label %.body9.i1026

bb.mw:                                            ; preds = %bb.mt
  store i64 %i.anh, ptr %i.z, align 8, !alias.scope !16685, !noalias !16667
  store ptr %i.anl, ptr %.sroa.535.0..sroa_idx36.i1029, align 8, !alias.scope !16685, !noalias !16667
  store i64 %i.anh, ptr %.sroa.638.0..sroa_idx39.i1030, align 8, !alias.scope !16685, !noalias !16667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !16686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !16687
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aok, i64 noundef %i.aog)
          to label %bb.nf unwind label %bb.mx, !noalias !16687

bb.mx:                                            ; preds = %bb.mw
  %i.aop = landingpad { ptr, i32 }
          cleanup
  br i1 %i.aoh, label %.body19.i1036, label %bb.my

bb.my:                                            ; preds = %bb.mx
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aok, i64 noundef %i.aog, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16688
  br label %.body19.i1036

.body19.i1036:                                    ; preds = %bb.my, %bb.mx
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.z) #42, !noalias !16667
  br label %.body9.i1026

.thread.i999:                                     ; preds = %.body9.i1026, %.body9.thread.i1018, %bb.mp, %bb.mo
  %.sroa.01.063.i1000 = phi i1 [ false, %.body9.i1026 ], [ true, %bb.mo ], [ true, %bb.mp ], [ true, %.body9.thread.i1018 ]
  %.sroa.02.061.i1001 = phi i1 [ true, %.body9.i1026 ], [ %i.ami, %bb.mo ], [ %i.ami, %bb.mp ], [ true, %.body9.thread.i1018 ] ; 2 uses
  %.pn.pn.pn59.i1002 = phi { ptr, i32 } [ %.pn.i1027, %.body9.i1026 ], [ %i.aol, %bb.mo ], [ %i.aol, %bb.mp ], [ %i.aon, %.body9.thread.i1018 ] ; 3 uses
  br i1 %i.aoh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1005, label %bb.mz

bb.mz:                                            ; preds = %.thread.i999
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aok, i64 noundef %i.aog, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16689
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1005

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1005: ; preds = %bb.mz, %.thread.i999
  br i1 %.sroa.01.063.i1000, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1005
  br i1 %.sroa.02.061.i1001, label %.body385, label %bb.nd

bb.nb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1005
  %i.aoq = icmp eq i64 %i.anh, 0
  br i1 %i.aoq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i1012, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.anl, i64 noundef %i.anh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16690
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i1012

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i1012: ; preds = %bb.nc, %bb.nb
  br i1 %.sroa.02.061.i1001, label %.body385, label %bb.nd

bb.nd:                                            ; preds = %bb.na, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i1012
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aml, i64 noundef %i.amh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16691
  br label %.body385

bb.ne:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i994
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aoi, ptr nonnull align 1 %i.aoe, i64 %i.aog, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit996.thread2858

bb.nf:                                            ; preds = %bb.mw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i1037, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !16692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !16687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.i997, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false), !noalias !16667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.48..sroa_idx.i1038, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !noalias !16667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.96..sroa_idx.i1039, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !noalias !16667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !16667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !16667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !16667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.dg, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.052.i997, i64 144, i1 false), !noalias !16692
  store i64 %i.aog, ptr %.sroa.653.0..sroa_idx.i1040, align 8, !alias.scope !16666
  store ptr %i.aok, ptr %.sroa.7.0..sroa_idx.i1041, align 8, !alias.scope !16666
  store i64 %i.aog, ptr %.sroa.8.0..sroa_idx.i1042, align 8, !alias.scope !16666
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.052.i997)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16693
  %i.aor = call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16693 ; 3 uses
  %i.aos = icmp eq ptr %i.aor, null
  br i1 %i.aos, label %bb.ng, label %bb.ni, !prof !26

bb.ng:                                            ; preds = %bb.nf
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #46
          to label %.noexc1046 unwind label %bb.nh

.noexc1046:                                       ; preds = %bb.ng
  unreachable

bb.nh:                                            ; preds = %bb.ng
  %i.aot = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringj4_EBG_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(192) %i.dg) #45
  br label %.body385

bb.ni:                                            ; preds = %bb.nf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.aor, ptr noundef nonnull align 8 dereferenceable(192) %i.dg, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  br label %bb.ex

bb.nj:                                            ; preds = %._crit_edge.i990, %bb.mn, %bb.mm
  %i.aou = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ani, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.anl, i64 noundef %i.anh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16694
  br label %bb.nl

bb.nl:                                            ; preds = %bb.mb, %bb.nj, %bb.nk
  %.pn214.ph = phi { ptr, i32 } [ %i.amy, %bb.mb ], [ %i.aou, %bb.nj ], [ %i.aou, %bb.nk ] ; 2 uses
  br i1 %i.ami, label %.thread2560, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aml, i64 noundef %i.amh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16695
  br label %.thread2560

bb.nn:                                            ; preds = %bb.ct
  %i.aov = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.166.2
  %i.aow = load i8, ptr %i.aov, align 1, !noalias !16696, !noundef !21
  %i.aox = zext i8 %i.aow to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0, i32 noundef %i.aox)
          to label %bb.no unwind label %.thread2812.loopexit.split-lp.loopexit.split-lp

bb.no:                                            ; preds = %bb.nn
  %.not3053 = icmp eq i64 %.sroa.166.2, 11839
  br i1 %.not3053, label %._crit_edge.i1060, label %.lr.ph.i1056.preheader

.lr.ph.i1056.preheader:                           ; preds = %bb.no
  %i.aoy = add nuw nsw i64 %.sroa.166.2, 1
  br label %.lr.ph.i1056

.lr.ph.i1056:                                     ; preds = %.lr.ph.i1056.preheader, %bb.np
  %.sroa.0.013.i1057 = phi i32 [ %i.api, %bb.np ], [ 0, %.lr.ph.i1056.preheader ] ; 2 uses
  %.sroa.02.012.i1058 = phi i32 [ %i.apj, %bb.np ], [ 0, %.lr.ph.i1056.preheader ] ; 3 uses
  %i.aoz = phi i64 [ %i.apc, %bb.np ], [ %i.aoy, %.lr.ph.i1056.preheader ] ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr @11046, i64 %i.aoz
  %i.apb = load i8, ptr %i.apa, align 1, !noalias !16697, !noundef !21 ; 2 uses
  %i.apc = add nuw nsw i64 %i.aoz, 1              ; 3 uses
  %i.apd = zext i8 %i.apb to i32                  ; 2 uses
  %i.ape = icmp sgt i8 %i.apb, -1
  br i1 %i.ape, label %bb.nq, label %bb.np

._crit_edge.i1060:                                ; preds = %bb.no, %bb.np
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 11840, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1061 unwind label %bb.ob

.noexc1061:                                       ; preds = %._crit_edge.i1060
  unreachable

bb.np:                                            ; preds = %.lr.ph.i1056
  %i.apf = and i32 %i.apd, 127
  %i.apg = and i32 %.sroa.02.012.i1058, 31
  %i.aph = shl i32 %i.apf, %i.apg
  %i.api = or i32 %i.aph, %.sroa.0.013.i1057
  %i.apj = add nuw nsw i32 %.sroa.02.012.i1058, 7
  %exitcond.not.i1059 = icmp eq i64 %i.apc, 11840
  br i1 %exitcond.not.i1059, label %._crit_edge.i1060, label %.lr.ph.i1056

bb.nq:                                            ; preds = %.lr.ph.i1056
  %i.apk = and i32 %.sroa.02.012.i1058, 31
  %i.apl = shl i32 %i.apd, %i.apk
  %i.apm = or i32 %i.apl, %.sroa.0.013.i1057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  %.sroa.02127.0.copyload = load i64, ptr %i.df, align 8 ; 3 uses
  %.sroa.52129.0.copyload = load ptr, ptr %.sroa.52129.0..sroa_idx, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16698)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16699
  call void @llvm.experimental.noalias.scope.decl(metadata !16700)
  call void @llvm.experimental.noalias.scope.decl(metadata !16701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16702
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52129.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %bb.nt unwind label %bb.nr, !noalias !16702

bb.nr:                                            ; preds = %bb.nq
  %i.apn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apo = icmp eq i64 %.sroa.02127.0.copyload, 0
  br i1 %i.apo, label %.thread.i1064, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52129.0.copyload, i64 noundef %.sroa.02127.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16703
  br label %.thread.i1064

bb.nt:                                            ; preds = %bb.nq
  store i64 %.sroa.02127.0.copyload, ptr %i.u, align 8, !alias.scope !16704, !noalias !16705
  store ptr %.sroa.52129.0.copyload, ptr %.sroa.52129.0..sroa_idx2130, align 8, !alias.scope !16704, !noalias !16705
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx2132, align 8, !alias.scope !16704, !noalias !16705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !16706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16707
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.nx unwind label %bb.nu, !noalias !16707

bb.nu:                                            ; preds = %bb.nt
  %i.app = landingpad { ptr, i32 }
          cleanup
  %i.apq = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.apq, label %.body5.i, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16708
  br label %.body5.i

.body5.i:                                         ; preds = %bb.nv, %bb.nu
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u) #42, !noalias !16699
  br label %.body385

.thread.i1064:                                    ; preds = %bb.ns, %bb.nr
  %i.apr = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.apr, label %.body385, label %bb.nw

bb.nw:                                            ; preds = %.thread.i1064
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16709
  br label %.body385

bb.nx:                                            ; preds = %bb.nt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !16710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16707
  store i64 %.sroa.01780.0, ptr %i.de, align 8, !alias.scope !16698
  store ptr %.sroa.57.0, ptr %.sroa.4.0..sroa_idx.i1073, align 8, !alias.scope !16698
  store i64 %.sroa.63.0, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !16698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hd, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !16710
  store i32 %i.apm, ptr %i.he, align 8, !alias.scope !16698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16699
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16711
  %i.aps = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16711 ; 3 uses
  %i.apt = icmp eq ptr %i.aps, null
  br i1 %i.apt, label %bb.ny, label %bb.oa, !prof !26

bb.ny:                                            ; preds = %bb.nx
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc1077 unwind label %bb.nz

.noexc1077:                                       ; preds = %bb.ny
  unreachable

bb.nz:                                            ; preds = %bb.ny
  %i.apu = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_OpSize3EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.de) #42
  br label %.body385

bb.oa:                                            ; preds = %bb.nx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aps, ptr noundef nonnull align 8 dereferenceable(104) %i.de, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  br label %bb.ex

bb.ob:                                            ; preds = %._crit_edge.i1060
  %i.apv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16712)
  %.val.i1079 = load i64, ptr %i.df, align 8, !alias.scope !16712 ; 2 uses
  %i.apw = icmp eq i64 %.val.i1079, 0
  br i1 %i.apw, label %.thread2560, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %.val1.i1080 = load ptr, ptr %.sroa.52129.0..sroa_idx, align 8, !alias.scope !16712, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1080, i64 noundef %.val.i1079, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16712
  br label %.thread2560

bb.od:                                            ; preds = %.lr.ph.i582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @llvm.experimental.noalias.scope.decl(metadata !16713)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16714
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.og unwind label %bb.oe, !noalias !16714

bb.oe:                                            ; preds = %bb.od
  %i.apx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apy = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.apy, label %.body385, label %bb.of

bb.of:                                            ; preds = %bb.oe
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16715
  br label %.body385

bb.og:                                            ; preds = %bb.od
  %i.apz = and i32 %.sroa.02.012.i584, 31
  %i.aqa = shl i32 %i.tu, %i.apz
  %i.aqb = or i32 %i.aqa, %.sroa.0.013.i583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62457.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !16716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16714
  store i64 %.sroa.01780.0, ptr %i.dd, align 8, !noalias !16716
  store ptr %.sroa.57.0, ptr %.sroa.42455.0..sroa_idx, align 8, !noalias !16716
  store i64 %.sroa.63.0, ptr %.sroa.52456.0..sroa_idx, align 8, !noalias !16716
  store i32 %i.aqb, ptr %i.ha, align 8, !alias.scope !16713
  store i32 0, ptr %i.hb, align 4, !alias.scope !16713
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16717
  %i.aqc = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16717 ; 3 uses
  %i.aqd = icmp eq ptr %i.aqc, null
  br i1 %i.aqd, label %bb.oh, label %bb.oj, !prof !26

bb.oh:                                            ; preds = %bb.og
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1088 unwind label %bb.oi

.noexc1088:                                       ; preds = %bb.oh
  unreachable

bb.oi:                                            ; preds = %bb.oh
  %i.aqe = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info18SimpleInstrInfo_osEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dd) #42
  br label %.body385

bb.oj:                                            ; preds = %bb.og
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aqc, ptr noundef nonnull align 8 dereferenceable(56) %i.dd, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %bb.ex

bb.ok:                                            ; preds = %.lr.ph.i591
  %i.aqf = and i32 %.sroa.02.012.i593, 31
  %i.aqg = shl i32 %i.ug, %i.aqf
  %i.aqh = or i32 %i.aqg, %.sroa.0.013.i592
  %i.aqi = icmp ult i64 %i.uc, 11839
  br i1 %i.aqi, label %.lr.ph.i1092, label %.invoke14249

.lr.ph.i1092:                                     ; preds = %bb.ok, %bb.ol
  %.sroa.0.013.i1093 = phi i32 [ %i.aqs, %bb.ol ], [ 0, %bb.ok ] ; 2 uses
  %.sroa.02.012.i1094 = phi i32 [ %i.aqt, %bb.ol ], [ 0, %bb.ok ] ; 3 uses
  %i.aqj = phi i64 [ %i.aqm, %bb.ol ], [ %i.uf, %bb.ok ] ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr @11046, i64 %i.aqj
  %i.aql = load i8, ptr %i.aqk, align 1, !noalias !16718, !noundef !21 ; 2 uses
  %i.aqm = add nuw nsw i64 %i.aqj, 1              ; 3 uses
  %i.aqn = zext i8 %i.aql to i32                  ; 2 uses
  %i.aqo = icmp sgt i8 %i.aql, -1
  br i1 %i.aqo, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %.lr.ph.i1092
  %i.aqp = and i32 %i.aqn, 127
  %i.aqq = and i32 %.sroa.02.012.i1094, 31
  %i.aqr = shl i32 %i.aqp, %i.aqq
  %i.aqs = or i32 %i.aqr, %.sroa.0.013.i1093
  %i.aqt = add nuw nsw i32 %.sroa.02.012.i1094, 7
  %exitcond.not.i1095 = icmp eq i64 %i.aqm, 11840
  br i1 %exitcond.not.i1095, label %.invoke14249, label %.lr.ph.i1092

bb.om:                                            ; preds = %.lr.ph.i1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !16719)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16720
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.op unwind label %bb.on, !noalias !16720

bb.on:                                            ; preds = %bb.om
  %i.aqu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqv = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.aqv, label %.body385, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16721
  br label %.body385

bb.op:                                            ; preds = %bb.om
  %i.aqw = and i32 %.sroa.02.012.i1094, 31
  %i.aqx = shl i32 %i.aqn, %i.aqw
  %i.aqy = or i32 %i.aqx, %.sroa.0.013.i1093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62461.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !16722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16720
  store i64 %.sroa.01780.0, ptr %i.dc, align 8, !noalias !16722
  store ptr %.sroa.57.0, ptr %.sroa.42459.0..sroa_idx, align 8, !noalias !16722
  store i64 %.sroa.63.0, ptr %.sroa.52460.0..sroa_idx, align 8, !noalias !16722
  store i32 %i.aqh, ptr %i.gy, align 8, !alias.scope !16719
  store i32 %i.aqy, ptr %i.gz, align 4, !alias.scope !16719
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16723
  %i.aqz = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16723 ; 3 uses
  %i.ara = icmp eq ptr %i.aqz, null
  br i1 %i.ara, label %bb.oq, label %bb.os, !prof !26

bb.oq:                                            ; preds = %bb.op
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1105 unwind label %bb.or

.noexc1105:                                       ; preds = %bb.oq
  unreachable

bb.or:                                            ; preds = %bb.oq
  %i.arb = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info18SimpleInstrInfo_osEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dc) #42
  br label %.body385

bb.os:                                            ; preds = %bb.op
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aqz, ptr noundef nonnull align 8 dereferenceable(56) %i.dc, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.ex

bb.ot:                                            ; preds = %.lr.ph.i600
  %i.arc = and i32 %.sroa.02.012.i602, 31
  %i.ard = shl i32 %i.us, %i.arc
  %i.are = or i32 %i.ard, %.sroa.0.013.i601
  %i.arf = icmp ult i64 %i.uo, 11839
  br i1 %i.arf, label %bb.ou, label %.invoke14249

bb.ou:                                            ; preds = %bb.ot
  %i.arg = getelementptr inbounds nuw i8, ptr @11046, i64 %i.ur
  %i.arh = load i8, ptr %i.arg, align 1, !noalias !16724, !noundef !21
  %i.ari = add nuw nsw i64 %i.uo, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.experimental.noalias.scope.decl(metadata !16725)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16726
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.ox unwind label %bb.ov, !noalias !16726

bb.ov:                                            ; preds = %bb.ou
  %i.arj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ark = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.ark, label %.body385, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16727
  br label %.body385

bb.ox:                                            ; preds = %bb.ou
  %i.arl = icmp ne i8 %i.arh, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62465.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !16728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16726
  store i64 %.sroa.01780.0, ptr %i.db, align 8, !noalias !16728
  store ptr %.sroa.57.0, ptr %.sroa.42463.0..sroa_idx, align 8, !noalias !16728
  store i64 %.sroa.63.0, ptr %.sroa.52464.0..sroa_idx, align 8, !noalias !16728
  store i32 %i.are, ptr %i.gw, align 8, !alias.scope !16725
  %i.arm = zext i1 %i.arl to i8
  store i8 %i.arm, ptr %i.gx, align 4, !alias.scope !16725
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16729
  %i.arn = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16729 ; 3 uses
  %i.aro = icmp eq ptr %i.arn, null
  br i1 %i.aro, label %bb.oy, label %bb.pa, !prof !26

bb.oy:                                            ; preds = %bb.ox
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1115 unwind label %bb.oz

.noexc1115:                                       ; preds = %bb.oy
  unreachable

bb.oz:                                            ; preds = %bb.oy
  %i.arp = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_os_callEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.db) #42
  br label %.body385

bb.pa:                                            ; preds = %bb.ox
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.arn, ptr noundef nonnull align 8 dereferenceable(56) %i.db, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.ex

bb.pb:                                            ; preds = %.lr.ph.i609
  %i.arq = and i32 %.sroa.02.012.i611, 31
  %i.arr = shl i32 %i.ve, %i.arq
  %i.ars = or i32 %i.arr, %.sroa.0.013.i610
  %i.art = icmp ult i64 %i.va, 11839
  br i1 %i.art, label %bb.pc, label %.invoke14249

bb.pc:                                            ; preds = %bb.pb
  %i.aru = getelementptr inbounds nuw i8, ptr @11046, i64 %i.vd
  %i.arv = load i8, ptr %i.aru, align 1, !noalias !16730, !noundef !21 ; 2 uses
  %i.arw = add nuw nsw i64 %i.va, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.arx = icmp ult i8 %i.arv, 7
  call void @llvm.assume(i1 %i.arx)
  call void @llvm.experimental.noalias.scope.decl(metadata !16731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16732
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.pf unwind label %bb.pd, !noalias !16732

bb.pd:                                            ; preds = %bb.pc
  %i.ary = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.arz = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.arz, label %.body385, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16733
  br label %.body385

bb.pf:                                            ; preds = %bb.pc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62469.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !16734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16732
  store i64 %.sroa.01780.0, ptr %i.bt, align 8, !noalias !16734
  store ptr %.sroa.57.0, ptr %.sroa.42467.0..sroa_idx, align 8, !noalias !16734
  store i64 %.sroa.63.0, ptr %.sroa.52468.0..sroa_idx, align 8, !noalias !16734
  store i32 %i.ars, ptr %i.gu, align 8, !alias.scope !16731
  store i8 %i.arv, ptr %i.gv, align 4, !alias.scope !16731
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16735
  %i.asa = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16735 ; 3 uses
  %i.asb = icmp eq ptr %i.asa, null
  br i1 %i.asb, label %bb.pg, label %bb.pi, !prof !26

bb.pg:                                            ; preds = %bb.pf
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1125 unwind label %bb.ph

.noexc1125:                                       ; preds = %bb.pg
  unreachable

bb.ph:                                            ; preds = %bb.pg
  %i.asc = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info24SimpleInstrInfo_push_immEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bt) #42
  br label %.body385

bb.pi:                                            ; preds = %bb.pf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.asa, ptr noundef nonnull align 8 dereferenceable(56) %i.bt, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.ex

bb.pj:                                            ; preds = %.lr.ph.i618
  %i.asd = and i32 %.sroa.02.012.i620, 31
  %i.ase = shl i32 %i.vq, %i.asd
  %i.asf = or i32 %i.ase, %.sroa.0.013.i619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.asg = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.ash = icmp eq ptr %i.asg, null
  br i1 %i.ash, label %.invoke14253, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1128, !prof !26

.invoke14253:                                     ; preds = %bb.vl, %bb.sx, %bb.ra, %bb.pj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.cont14254 unwind label %.thread2812.loopexit.split-lp.loopexit.split-lp

.cont14254:                                       ; preds = %.invoke14253
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1128: ; preds = %bb.pj
  store i64 %.sroa.01780.0, ptr %i.asg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52144.0..sroa_idx, align 8
  store i64 1, ptr %i.cz, align 8
  store ptr %i.asg, ptr %i.gr, align 8
  store i64 1, ptr %i.gs, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cz)
          to label %bb.pk unwind label %.body347

bb.pk:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1128
  store i32 %i.asf, ptr %i.gt, align 8, !alias.scope !16736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16737
  %i.asi = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16737 ; 3 uses
  %i.asj = icmp eq ptr %i.asi, null
  br i1 %i.asj, label %bb.pl, label %bb.pn, !prof !26

bb.pl:                                            ; preds = %bb.pk
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc1130 unwind label %bb.pm

.noexc1130:                                       ; preds = %bb.pl
  unreachable

bb.pm:                                            ; preds = %bb.pl
  %i.ask = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.da) #42
  br label %.body385

bb.pn:                                            ; preds = %bb.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.asi, ptr noundef nonnull align 8 dereferenceable(32) %i.da, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %bb.ex

bb.po:                                            ; preds = %.lr.ph.i627
  %i.asl = and i32 %.sroa.02.012.i629, 31
  %i.asm = shl i32 %i.wc, %i.asl
  %i.asn = or i32 %i.asm, %.sroa.0.013.i628
  %i.aso = zext i32 %i.asn to i64                 ; 3 uses
  %i.asp = icmp ugt i64 %i.lo, %i.aso
  br i1 %i.asp, label %bb.pp, label %.invoke14247

bb.pp:                                            ; preds = %bb.po
  %i.asq = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.aso ; 2 uses
  %i.asr = load ptr, ptr %i.asq, align 8, !nonnull !21, !noundef !21
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asq, i64 8
  %i.ast = load i64, ptr %i.ass, align 8, !noundef !21 ; 9 uses
  %.not.i1132 = icmp slt i64 %i.ast, 0
  br i1 %.not.i1132, label %.invoke14251, label %bb.pq, !prof !37

bb.pq:                                            ; preds = %bb.pp
  %i.asu = icmp eq i64 %i.ast, 0                  ; 2 uses
  br i1 %i.asu, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1135.thread2871, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1133

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1133: ; preds = %bb.pq
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16738
  %i.asv = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ast, i64 noundef range(i64 1, 9) 1) #41, !noalias !16738 ; 3 uses
  %i.asw = icmp eq ptr %i.asv, null
  br i1 %i.asw, label %.invoke14251, label %bb.ps

.invoke14247:                                     ; preds = %bb.uu, %bb.tt, %bb.tc, %bb.ru, %bb.rf, %bb.qb, %bb.po, %bb.lw
  %i.asx = phi i64 [ %i.amc, %bb.lw ], [ %i.axg, %bb.rf ], [ %i.aso, %bb.po ], [ %i.bgc, %bb.tt ], [ %i.bdp, %bb.tc ], [ %i.aty, %bb.qb ], [ %i.aze, %bb.ru ], [ %i.bjq, %bb.uu ]
  %i.asy = phi ptr [ @11014, %bb.lw ], [ @11027, %bb.rf ], [ @11023, %bb.po ], [ @11031, %bb.tt ], [ @11030, %bb.tc ], [ @11024, %bb.qb ], [ @11028, %bb.ru ], [ @11033, %bb.uu ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.asx, i64 noundef %i.lo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.asy) #46
          to label %.cont14248 unwind label %.thread2812.loopexit.split-lp.loopexit.split-lp

.cont14248:                                       ; preds = %.invoke14247
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1135.thread2871: ; preds = %bb.pq, %bb.ps
  %i.asz = phi ptr [ %i.asv, %bb.ps ], [ inttoptr (i64 1 to ptr), %bb.pq ] ; 2 uses
  %i.ata = icmp ult i64 %i.vy, 11839
  br i1 %i.ata, label %.lr.ph.i1138, label %._crit_edge.i1142

.lr.ph.i1138:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1135.thread2871, %bb.pr
  %.sroa.0.013.i1139 = phi i32 [ %i.atk, %bb.pr ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1135.thread2871 ] ; 2 uses
  %.sroa.02.012.i1140 = phi i32 [ %i.atl, %bb.pr ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1135.thread2871 ] ; 3 uses
  %i.atb = phi i64 [ %i.ate, %bb.pr ], [ %i.wb, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1135.thread2871 ] ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr @11046, i64 %i.atb
  %i.atd = load i8, ptr %i.atc, align 1, !noalias !16739, !noundef !21 ; 2 uses
  %i.ate = add nuw nsw i64 %i.atb, 1              ; 3 uses
  %i.atf = zext i8 %i.atd to i32                  ; 2 uses
  %i.atg = icmp sgt i8 %i.atd, -1
  br i1 %i.atg, label %bb.pt, label %bb.pr

._crit_edge.i1142:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1135.thread2871, %bb.pr
  %.lcssa7.i1137 = phi i64 [ 11840, %bb.pr ], [ %i.wb, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1135.thread2871 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1137, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1143 unwind label %bb.pz

.noexc1143:                                       ; preds = %._crit_edge.i1142
  unreachable

bb.pr:                                            ; preds = %.lr.ph.i1138
  %i.ath = and i32 %i.atf, 127
  %i.ati = and i32 %.sroa.02.012.i1140, 31
  %i.atj = shl i32 %i.ath, %i.ati
  %i.atk = or i32 %i.atj, %.sroa.0.013.i1139
  %i.atl = add nuw nsw i32 %.sroa.02.012.i1140, 7
  %exitcond.not.i1141 = icmp eq i64 %i.ate, 11840
  br i1 %exitcond.not.i1141, label %._crit_edge.i1142, label %.lr.ph.i1138

bb.ps:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1133
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.asv, ptr nonnull align 1 %i.asr, i64 %i.ast, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1135.thread2871

bb.pt:                                            ; preds = %.lr.ph.i1138
  %i.atm = and i32 %.sroa.02.012.i1140, 31
  %i.atn = shl i32 %i.atf, %i.atm
  %i.ato = or i32 %i.atn, %.sroa.0.013.i1139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.atp = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.atq = icmp eq ptr %i.atp, null
  br i1 %i.atq, label %bb.pu, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1146, !prof !26

bb.pu:                                            ; preds = %bb.pt
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1145 unwind label %bb.pz

.noexc1145:                                       ; preds = %bb.pu
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1146: ; preds = %bb.pt
  store i64 %.sroa.01780.0, ptr %i.atp, align 8
  %.sroa.42149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atp, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42149.0..sroa_idx, align 8
  %.sroa.52150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atp, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52150.0..sroa_idx, align 8
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atp, i64 24
  store i64 %i.ast, ptr %i.atr, align 8
  %.sroa.42152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atp, i64 32
  store ptr %i.asz, ptr %.sroa.42152.0..sroa_idx, align 8
  %.sroa.52153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atp, i64 40
  store i64 %i.ast, ptr %.sroa.52153.0..sroa_idx, align 8
  store i64 2, ptr %i.cx, align 8
  store ptr %i.atp, ptr %i.go, align 8
  store i64 2, ptr %i.gp, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cx)
          to label %bb.pv unwind label %.body347

bb.pv:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1146
  store i32 %i.ato, ptr %i.gq, align 8, !alias.scope !16740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16741
  %i.ats = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16741 ; 3 uses
  %i.att = icmp eq ptr %i.ats, null
  br i1 %i.att, label %bb.pw, label %bb.py, !prof !26

bb.pw:                                            ; preds = %bb.pv
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc1149 unwind label %bb.px

.noexc1149:                                       ; preds = %bb.pw
  unreachable

bb.px:                                            ; preds = %bb.pw
  %i.atu = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cy) #42
  br label %.body385

bb.py:                                            ; preds = %bb.pv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ats, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.ex

bb.pz:                                            ; preds = %._crit_edge.i1142, %bb.pu
  %lpad.thr_comm2879 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.asu, label %.thread2560, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.asz, i64 noundef %i.ast, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16742
  br label %.thread2560

bb.qb:                                            ; preds = %.lr.ph.i636
  %i.atv = and i32 %.sroa.02.012.i638, 31
  %i.atw = shl i32 %i.wo, %i.atv
  %i.atx = or i32 %i.atw, %.sroa.0.013.i637
  %i.aty = zext i32 %i.atx to i64                 ; 3 uses
  %i.atz = icmp ugt i64 %i.lo, %i.aty
  br i1 %i.atz, label %bb.qc, label %.invoke14247

bb.qc:                                            ; preds = %bb.qb
  %i.aua = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.aty ; 2 uses
  %i.aub = load ptr, ptr %i.aua, align 8, !nonnull !21, !noundef !21
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aua, i64 8
  %i.aud = load i64, ptr %i.auc, align 8, !noundef !21 ; 9 uses
  %.not.i1154 = icmp slt i64 %i.aud, 0
  br i1 %.not.i1154, label %.invoke14251, label %bb.qd, !prof !37

bb.qd:                                            ; preds = %bb.qc
  %i.aue = icmp eq i64 %i.aud, 0                  ; 2 uses
  br i1 %i.aue, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1157.thread2890, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1155

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1155: ; preds = %bb.qd
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16743
  %i.auf = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aud, i64 noundef range(i64 1, 9) 1) #41, !noalias !16743 ; 3 uses
  %i.aug = icmp eq ptr %i.auf, null
  br i1 %i.aug, label %.invoke14251, label %bb.qf

.invoke14251:                                     ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1404, %bb.uv, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1348, %bb.tu, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1308, %bb.td, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1238, %bb.rv, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1207, %bb.rg, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1155, %bb.qc, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1133, %bb.pp, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968, %bb.lx
  %i.auh = phi i64 [ 0, %bb.pp ], [ 0, %bb.td ], [ 0, %bb.qc ], [ 0, %bb.rv ], [ 0, %bb.tu ], [ 0, %bb.lx ], [ 0, %bb.rg ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1133 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1155 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1207 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1238 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1308 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1348 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1404 ], [ 0, %bb.uv ]
  %i.aui = phi i64 [ %i.ast, %bb.pp ], [ %i.bdu, %bb.td ], [ %i.aud, %bb.qc ], [ %i.azj, %bb.rv ], [ %i.bgh, %bb.tu ], [ %i.amh, %bb.lx ], [ %i.axl, %bb.rg ], [ %i.amh, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968 ], [ %i.ast, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1133 ], [ %i.aud, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1155 ], [ %i.axl, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1207 ], [ %i.azj, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1238 ], [ %i.bdu, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1308 ], [ %i.bgh, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1348 ], [ %i.bjv, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1404 ], [ %i.bjv, %bb.uv ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.auh, i64 %i.aui) #46
          to label %.cont14252 unwind label %.thread2812.loopexit.split-lp.loopexit.split-lp

.cont14252:                                       ; preds = %.invoke14251
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1157.thread2890: ; preds = %bb.qd, %bb.qf
  %i.auj = phi ptr [ %i.auf, %bb.qf ], [ inttoptr (i64 1 to ptr), %bb.qd ] ; 2 uses
  %i.auk = icmp ult i64 %i.wk, 11839
  br i1 %i.auk, label %.lr.ph.i1160, label %._crit_edge.i1164

.lr.ph.i1160:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1157.thread2890, %bb.qe
  %.sroa.0.013.i1161 = phi i32 [ %i.auu, %bb.qe ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1157.thread2890 ] ; 2 uses
  %.sroa.02.012.i1162 = phi i32 [ %i.auv, %bb.qe ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1157.thread2890 ] ; 3 uses
  %i.aul = phi i64 [ %i.auo, %bb.qe ], [ %i.wn, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1157.thread2890 ] ; 3 uses
  %i.aum = getelementptr inbounds nuw i8, ptr @11046, i64 %i.aul
  %i.aun = load i8, ptr %i.aum, align 1, !noalias !16744, !noundef !21 ; 2 uses
  %i.auo = add nuw nsw i64 %i.aul, 1              ; 4 uses
  %i.aup = zext i8 %i.aun to i32                  ; 2 uses
  %i.auq = icmp sgt i8 %i.aun, -1
  br i1 %i.auq, label %bb.qh, label %bb.qe

._crit_edge.i1164:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1157.thread2890, %bb.qe
  %.lcssa7.i1159 = phi i64 [ 11840, %bb.qe ], [ %i.wn, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1157.thread2890 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1159, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1165 unwind label %bb.qg

.noexc1165:                                       ; preds = %._crit_edge.i1164
  unreachable

bb.qe:                                            ; preds = %.lr.ph.i1160
  %i.aur = and i32 %i.aup, 127
  %i.aus = and i32 %.sroa.02.012.i1162, 31
  %i.aut = shl i32 %i.aur, %i.aus
  %i.auu = or i32 %i.aut, %.sroa.0.013.i1161
  %i.auv = add nuw nsw i32 %.sroa.02.012.i1162, 7
  %exitcond.not.i1163 = icmp eq i64 %i.auo, 11840
  br i1 %exitcond.not.i1163, label %._crit_edge.i1164, label %.lr.ph.i1160

bb.qf:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1155
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.auf, ptr nonnull align 1 %i.aub, i64 %i.aud, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1157.thread2890

bb.qg:                                            ; preds = %._crit_edge.i1164, %bb.ql, %bb.qk
  %i.auw = landingpad { ptr, i32 }
          cleanup
  br label %bb.qw

bb.qh:                                            ; preds = %.lr.ph.i1160
  %i.aux = and i32 %.sroa.02.012.i1162, 31
  %i.auy = shl i32 %i.aup, %i.aux
  %i.auz = or i32 %i.auy, %.sroa.0.013.i1161
  %i.ava = zext i32 %i.auz to i64                 ; 3 uses
  %i.avb = icmp ugt i64 %i.lo, %i.ava
  br i1 %i.avb, label %bb.qi, label %bb.qk

bb.qi:                                            ; preds = %bb.qh
  %i.avc = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.ava ; 2 uses
  %i.avd = load ptr, ptr %i.avc, align 8, !nonnull !21, !noundef !21
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avc, i64 8
  %i.avf = load i64, ptr %i.ave, align 8, !noundef !21 ; 8 uses
  %.not.i1167 = icmp slt i64 %i.avf, 0
  br i1 %.not.i1167, label %bb.ql, label %bb.qj, !prof !37

bb.qj:                                            ; preds = %bb.qi
  %i.avg = icmp eq i64 %i.avf, 0                  ; 2 uses
  br i1 %i.avg, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1170.thread2906, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1168

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1168: ; preds = %bb.qj
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16745
  %i.avh = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.avf, i64 noundef range(i64 1, 9) 1) #41, !noalias !16745 ; 3 uses
  %i.avi = icmp eq ptr %i.avh, null
  br i1 %i.avi, label %bb.ql, label %bb.qn

bb.qk:                                            ; preds = %bb.qh
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ava, i64 noundef %i.lo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11025) #46
          to label %bb.u unwind label %bb.qg

bb.ql:                                            ; preds = %bb.qi, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1168
  %.sroa.42327.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1168 ], [ 0, %bb.qi ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42327.0.ph, i64 %i.avf) #46
          to label %bb.u unwind label %bb.qg

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1170.thread2906: ; preds = %bb.qj, %bb.qn
  %i.avj = phi ptr [ %i.avh, %bb.qn ], [ inttoptr (i64 1 to ptr), %bb.qj ] ; 2 uses
  %i.avk = icmp ult i64 %i.aul, 11839
  br i1 %i.avk, label %.lr.ph.i1173, label %._crit_edge.i1177

.lr.ph.i1173:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1170.thread2906, %bb.qm
  %.sroa.0.013.i1174 = phi i32 [ %i.avu, %bb.qm ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1170.thread2906 ] ; 2 uses
  %.sroa.02.012.i1175 = phi i32 [ %i.avv, %bb.qm ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1170.thread2906 ] ; 3 uses
  %i.avl = phi i64 [ %i.avo, %bb.qm ], [ %i.auo, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1170.thread2906 ] ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr @11046, i64 %i.avl
  %i.avn = load i8, ptr %i.avm, align 1, !noalias !16746, !noundef !21 ; 2 uses
  %i.avo = add nuw nsw i64 %i.avl, 1              ; 3 uses
  %i.avp = zext i8 %i.avn to i32                  ; 2 uses
  %i.avq = icmp sgt i8 %i.avn, -1
  br i1 %i.avq, label %bb.qo, label %bb.qm

._crit_edge.i1177:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1170.thread2906, %bb.qm
  %.lcssa7.i1172 = phi i64 [ 11840, %bb.qm ], [ %i.auo, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1170.thread2906 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1172, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1178 unwind label %bb.qu

.noexc1178:                                       ; preds = %._crit_edge.i1177
  unreachable

bb.qm:                                            ; preds = %.lr.ph.i1173
  %i.avr = and i32 %i.avp, 127
  %i.avs = and i32 %.sroa.02.012.i1175, 31
  %i.avt = shl i32 %i.avr, %i.avs
  %i.avu = or i32 %i.avt, %.sroa.0.013.i1174
  %i.avv = add nuw nsw i32 %.sroa.02.012.i1175, 7
  %exitcond.not.i1176 = icmp eq i64 %i.avo, 11840
  br i1 %exitcond.not.i1176, label %._crit_edge.i1177, label %.lr.ph.i1173

bb.qn:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1168
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.avh, ptr nonnull align 1 %i.avd, i64 %i.avf, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1170.thread2906

bb.qo:                                            ; preds = %.lr.ph.i1173
  %i.avw = and i32 %.sroa.02.012.i1175, 31
  %i.avx = shl i32 %i.avp, %i.avw
  %i.avy = or i32 %i.avx, %.sroa.0.013.i1174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.avz = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.awa = icmp eq ptr %i.avz, null
  br i1 %i.awa, label %bb.qp, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1181, !prof !26

bb.qp:                                            ; preds = %bb.qo
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1180 unwind label %bb.qu

.noexc1180:                                       ; preds = %bb.qp
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1181: ; preds = %bb.qo
  store i64 %.sroa.01780.0, ptr %i.avz, align 8
  %.sroa.42161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avz, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42161.0..sroa_idx, align 8
  %.sroa.52162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avz, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52162.0..sroa_idx, align 8
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avz, i64 24
  store i64 %i.aud, ptr %i.awb, align 8
  %.sroa.42164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avz, i64 32
  store ptr %i.auj, ptr %.sroa.42164.0..sroa_idx, align 8
  %.sroa.52165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avz, i64 40
  store i64 %i.aud, ptr %.sroa.52165.0..sroa_idx, align 8
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avz, i64 48
  store i64 %i.avf, ptr %i.awc, align 8
  %.sroa.42167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avz, i64 56
  store ptr %i.avj, ptr %.sroa.42167.0..sroa_idx, align 8
  %.sroa.52168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avz, i64 64
  store i64 %i.avf, ptr %.sroa.52168.0..sroa_idx, align 8
  store i64 3, ptr %i.cv, align 8
  store ptr %i.avz, ptr %i.gl, align 8
  store i64 3, ptr %i.gm, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cv)
          to label %bb.qq unwind label %.body347

bb.qq:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1181
  store i32 %i.avy, ptr %i.gn, align 8, !alias.scope !16747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16748
  %i.awd = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16748 ; 3 uses
  %i.awe = icmp eq ptr %i.awd, null
  br i1 %i.awe, label %bb.qr, label %bb.qt, !prof !26

bb.qr:                                            ; preds = %bb.qq
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc1184 unwind label %bb.qs

.noexc1184:                                       ; preds = %bb.qr
  unreachable

bb.qs:                                            ; preds = %bb.qr
  %i.awf = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cw) #42
  br label %.body385

bb.qt:                                            ; preds = %bb.qq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.awd, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.ex

bb.qu:                                            ; preds = %._crit_edge.i1177, %bb.qp
  %lpad.thr_comm2914 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.avg, label %bb.qw, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.avj, i64 noundef %i.avf, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16749
  br label %bb.qw

bb.qw:                                            ; preds = %bb.qg, %bb.qu, %bb.qv
  %.pn208.ph = phi { ptr, i32 } [ %i.auw, %bb.qg ], [ %lpad.thr_comm2914, %bb.qu ], [ %lpad.thr_comm2914, %bb.qv ] ; 2 uses
  br i1 %i.aue, label %.thread2560, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.auj, i64 noundef %i.aud, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16750
  br label %.thread2560

bb.qy:                                            ; preds = %.lr.ph.i645
  %i.awg = and i32 %.sroa.02.012.i647, 31
  %i.awh = shl i32 %i.xa, %i.awg
  %i.awi = or i32 %i.awh, %.sroa.0.013.i646
  %i.awj = icmp ult i64 %i.ww, 11839
  br i1 %i.awj, label %.lr.ph.i1194, label %.invoke14249

.lr.ph.i1194:                                     ; preds = %bb.qy, %bb.qz
  %.sroa.0.013.i1195 = phi i32 [ %i.awt, %bb.qz ], [ 0, %bb.qy ] ; 2 uses
  %.sroa.02.012.i1196 = phi i32 [ %i.awu, %bb.qz ], [ 0, %bb.qy ] ; 3 uses
  %i.awk = phi i64 [ %i.awn, %bb.qz ], [ %i.wz, %bb.qy ] ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr @11046, i64 %i.awk
  %i.awm = load i8, ptr %i.awl, align 1, !noalias !16751, !noundef !21 ; 2 uses
  %i.awn = add nuw nsw i64 %i.awk, 1              ; 3 uses
  %i.awo = zext i8 %i.awm to i32                  ; 2 uses
  %i.awp = icmp sgt i8 %i.awm, -1
  br i1 %i.awp, label %bb.ra, label %bb.qz

bb.qz:                                            ; preds = %.lr.ph.i1194
  %i.awq = and i32 %i.awo, 127
  %i.awr = and i32 %.sroa.02.012.i1196, 31
  %i.aws = shl i32 %i.awq, %i.awr
  %i.awt = or i32 %i.aws, %.sroa.0.013.i1195
  %i.awu = add nuw nsw i32 %.sroa.02.012.i1196, 7
  %exitcond.not.i1197 = icmp eq i64 %i.awn, 11840
  br i1 %exitcond.not.i1197, label %.invoke14249, label %.lr.ph.i1194

bb.ra:                                            ; preds = %.lr.ph.i1194
  %i.awv = and i32 %.sroa.02.012.i1196, 31
  %i.aww = shl i32 %i.awo, %i.awv
  %i.awx = or i32 %i.aww, %.sroa.0.013.i1195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.awy = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.awz = icmp eq ptr %i.awy, null
  br i1 %i.awz, label %.invoke14253, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1202, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1202: ; preds = %bb.ra
  store i64 %.sroa.01780.0, ptr %i.awy, align 8
  %.sroa.42170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42170.0..sroa_idx, align 8
  %.sroa.52171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awy, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52171.0..sroa_idx, align 8
  store i64 1, ptr %i.ct, align 8
  store ptr %i.awy, ptr %i.gg, align 8
  store i64 1, ptr %i.gh, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ct)
          to label %bb.rb unwind label %.body347

bb.rb:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1202
  store i32 %i.awx, ptr %i.gi, align 8, !alias.scope !16752
  store i32 %i.awi, ptr %i.gj, align 4, !alias.scope !16752
  store i32 0, ptr %i.gk, align 8, !alias.scope !16752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16753
  %i.axa = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16753 ; 3 uses
  %i.axb = icmp eq ptr %i.axa, null
  br i1 %i.axb, label %bb.rc, label %bb.re, !prof !26

bb.rc:                                            ; preds = %bb.rb
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1204 unwind label %bb.rd

.noexc1204:                                       ; preds = %bb.rc
  unreachable

bb.rd:                                            ; preds = %bb.rc
  %i.axc = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cu) #42
  br label %.body385

bb.re:                                            ; preds = %bb.rb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.axa, ptr noundef nonnull align 8 dereferenceable(40) %i.cu, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.ex

bb.rf:                                            ; preds = %.lr.ph.i654
  %i.axd = and i32 %.sroa.02.012.i656, 31
  %i.axe = shl i32 %i.xm, %i.axd
  %i.axf = or i32 %i.axe, %.sroa.0.013.i655
  %i.axg = zext i32 %i.axf to i64                 ; 3 uses
  %i.axh = icmp ugt i64 %i.lo, %i.axg
  br i1 %i.axh, label %bb.rg, label %.invoke14247

bb.rg:                                            ; preds = %bb.rf
  %i.axi = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.axg ; 2 uses
  %i.axj = load ptr, ptr %i.axi, align 8, !nonnull !21, !noundef !21
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axi, i64 8
  %i.axl = load i64, ptr %i.axk, align 8, !noundef !21 ; 9 uses
  %.not.i1206 = icmp slt i64 %i.axl, 0
  br i1 %.not.i1206, label %.invoke14251, label %bb.rh, !prof !37

bb.rh:                                            ; preds = %bb.rg
  %i.axm = icmp eq i64 %i.axl, 0                  ; 2 uses
  br i1 %i.axm, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1209.thread2925, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1207

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1207: ; preds = %bb.rh
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16754
  %i.axn = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.axl, i64 noundef range(i64 1, 9) 1) #41, !noalias !16754 ; 3 uses
  %i.axo = icmp eq ptr %i.axn, null
  br i1 %i.axo, label %.invoke14251, label %bb.rj

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1209.thread2925: ; preds = %bb.rh, %bb.rj
  %i.axp = phi ptr [ %i.axn, %bb.rj ], [ inttoptr (i64 1 to ptr), %bb.rh ] ; 2 uses
  %i.axq = icmp ult i64 %i.xi, 11839
  br i1 %i.axq, label %.lr.ph.i1212, label %._crit_edge.i1216.invoke

.lr.ph.i1212:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1209.thread2925, %bb.ri
  %.sroa.0.013.i1213 = phi i32 [ %i.ayb, %bb.ri ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1209.thread2925 ] ; 2 uses
  %.sroa.02.012.i1214 = phi i32 [ %i.ayc, %bb.ri ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1209.thread2925 ] ; 3 uses
  %i.axr = phi i64 [ %i.axu, %bb.ri ], [ %i.xl, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1209.thread2925 ] ; 3 uses
  %i.axs = getelementptr inbounds nuw i8, ptr @11046, i64 %i.axr
  %i.axt = load i8, ptr %i.axs, align 1, !noalias !16755, !noundef !21 ; 2 uses
  %i.axu = add nuw nsw i64 %i.axr, 1              ; 4 uses
  %i.axv = zext i8 %i.axt to i32                  ; 2 uses
  %i.axw = icmp sgt i8 %i.axt, -1
  br i1 %i.axw, label %bb.rk, label %bb.ri

._crit_edge.i1216.invoke:                         ; preds = %bb.rk, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1209.thread2925, %bb.ri, %bb.rl
  %i.axx = phi i64 [ 11840, %bb.rl ], [ 11840, %bb.ri ], [ %i.axu, %bb.rk ], [ %i.xl, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1209.thread2925 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.axx, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1216.cont unwind label %bb.rs

._crit_edge.i1216.cont:                           ; preds = %._crit_edge.i1216.invoke
  unreachable

bb.ri:                                            ; preds = %.lr.ph.i1212
  %i.axy = and i32 %i.axv, 127
  %i.axz = and i32 %.sroa.02.012.i1214, 31
  %i.aya = shl i32 %i.axy, %i.axz
  %i.ayb = or i32 %i.aya, %.sroa.0.013.i1213
  %i.ayc = add nuw nsw i32 %.sroa.02.012.i1214, 7
  %exitcond.not.i1215 = icmp eq i64 %i.axu, 11840
  br i1 %exitcond.not.i1215, label %._crit_edge.i1216.invoke, label %.lr.ph.i1212

bb.rj:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1207
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.axn, ptr nonnull align 1 %i.axj, i64 %i.axl, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1209.thread2925

bb.rk:                                            ; preds = %.lr.ph.i1212
  %i.ayd = and i32 %.sroa.02.012.i1214, 31
  %i.aye = shl i32 %i.axv, %i.ayd
  %i.ayf = or i32 %i.aye, %.sroa.0.013.i1213
  %i.ayg = icmp ult i64 %i.axr, 11839
  br i1 %i.ayg, label %.lr.ph.i1221, label %._crit_edge.i1216.invoke

.lr.ph.i1221:                                     ; preds = %bb.rk, %bb.rl
  %.sroa.0.013.i1222 = phi i32 [ %i.ayq, %bb.rl ], [ 0, %bb.rk ] ; 2 uses
  %.sroa.02.012.i1223 = phi i32 [ %i.ayr, %bb.rl ], [ 0, %bb.rk ] ; 3 uses
  %i.ayh = phi i64 [ %i.ayk, %bb.rl ], [ %i.axu, %bb.rk ] ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr @11046, i64 %i.ayh
  %i.ayj = load i8, ptr %i.ayi, align 1, !noalias !16756, !noundef !21 ; 2 uses
  %i.ayk = add nuw nsw i64 %i.ayh, 1              ; 3 uses
  %i.ayl = zext i8 %i.ayj to i32                  ; 2 uses
  %i.aym = icmp sgt i8 %i.ayj, -1
  br i1 %i.aym, label %bb.rm, label %bb.rl

bb.rl:                                            ; preds = %.lr.ph.i1221
  %i.ayn = and i32 %i.ayl, 127
  %i.ayo = and i32 %.sroa.02.012.i1223, 31
  %i.ayp = shl i32 %i.ayn, %i.ayo
  %i.ayq = or i32 %i.ayp, %.sroa.0.013.i1222
  %i.ayr = add nuw nsw i32 %.sroa.02.012.i1223, 7
  %exitcond.not.i1224 = icmp eq i64 %i.ayk, 11840
  br i1 %exitcond.not.i1224, label %._crit_edge.i1216.invoke, label %.lr.ph.i1221

bb.rm:                                            ; preds = %.lr.ph.i1221
  %i.ays = and i32 %.sroa.02.012.i1223, 31
  %i.ayt = shl i32 %i.ayl, %i.ays
  %i.ayu = or i32 %i.ayt, %.sroa.0.013.i1222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.ayv = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.ayw = icmp eq ptr %i.ayv, null
  br i1 %i.ayw, label %bb.rn, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1229, !prof !26

bb.rn:                                            ; preds = %bb.rm
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1228 unwind label %bb.rs

.noexc1228:                                       ; preds = %bb.rn
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1229: ; preds = %bb.rm
  store i64 %.sroa.01780.0, ptr %i.ayv, align 8
  %.sroa.42176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42176.0..sroa_idx, align 8
  %.sroa.52177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52177.0..sroa_idx, align 8
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 24
  store i64 %i.axl, ptr %i.ayx, align 8
  %.sroa.42179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 32
  store ptr %i.axp, ptr %.sroa.42179.0..sroa_idx, align 8
  %.sroa.52180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 40
  store i64 %i.axl, ptr %.sroa.52180.0..sroa_idx, align 8
  store i64 2, ptr %i.cr, align 8
  store ptr %i.ayv, ptr %i.gb, align 8
  store i64 2, ptr %i.gc, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cr)
          to label %bb.ro unwind label %.body347

bb.ro:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1229
  store i32 %i.ayu, ptr %i.gd, align 8, !alias.scope !16757
  store i32 %i.ayf, ptr %i.ge, align 4, !alias.scope !16757
  store i32 0, ptr %i.gf, align 8, !alias.scope !16757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16758
  %i.ayy = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16758 ; 3 uses
  %i.ayz = icmp eq ptr %i.ayy, null
  br i1 %i.ayz, label %bb.rp, label %bb.rr, !prof !26

bb.rp:                                            ; preds = %bb.ro
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1232 unwind label %bb.rq

.noexc1232:                                       ; preds = %bb.rp
  unreachable

bb.rq:                                            ; preds = %bb.rp
  %i.aza = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs) #42
  br label %.body385

bb.rr:                                            ; preds = %bb.ro
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ayy, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.ex

bb.rs:                                            ; preds = %._crit_edge.i1216.invoke, %bb.rn
  %lpad.thr_comm2933 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.axm, label %.thread2560, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.axp, i64 noundef %i.axl, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16759
  br label %.thread2560

bb.ru:                                            ; preds = %.lr.ph.i663
  %i.azb = and i32 %.sroa.02.012.i665, 31
  %i.azc = shl i32 %i.xy, %i.azb
  %i.azd = or i32 %i.azc, %.sroa.0.013.i664
  %i.aze = zext i32 %i.azd to i64                 ; 3 uses
  %i.azf = icmp ugt i64 %i.lo, %i.aze
  br i1 %i.azf, label %bb.rv, label %.invoke14247

bb.rv:                                            ; preds = %bb.ru
  %i.azg = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.aze ; 2 uses
  %i.azh = load ptr, ptr %i.azg, align 8, !nonnull !21, !noundef !21
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azg, i64 8
  %i.azj = load i64, ptr %i.azi, align 8, !noundef !21 ; 9 uses
  %.not.i1237 = icmp slt i64 %i.azj, 0
  br i1 %.not.i1237, label %.invoke14251, label %bb.rw, !prof !37

bb.rw:                                            ; preds = %bb.rv
  %i.azk = icmp eq i64 %i.azj, 0                  ; 2 uses
  br i1 %i.azk, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1238

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1238: ; preds = %bb.rw
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16760
  %i.azl = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.azj, i64 noundef range(i64 1, 9) 1) #41, !noalias !16760 ; 3 uses
  %i.azm = icmp eq ptr %i.azl, null
  br i1 %i.azm, label %.invoke14251, label %bb.ry

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944: ; preds = %bb.rw, %bb.ry
  %i.azn = phi ptr [ %i.azl, %bb.ry ], [ inttoptr (i64 1 to ptr), %bb.rw ] ; 2 uses
  %i.azo = icmp ult i64 %i.xu, 11839
  br i1 %i.azo, label %.lr.ph.i1243, label %._crit_edge.i1247

.lr.ph.i1243:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944, %bb.rx
  %.sroa.0.013.i1244 = phi i32 [ %i.azy, %bb.rx ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944 ] ; 2 uses
  %.sroa.02.012.i1245 = phi i32 [ %i.azz, %bb.rx ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944 ] ; 3 uses
  %i.azp = phi i64 [ %i.azs, %bb.rx ], [ %i.xx, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944 ] ; 3 uses
  %i.azq = getelementptr inbounds nuw i8, ptr @11046, i64 %i.azp
  %i.azr = load i8, ptr %i.azq, align 1, !noalias !16761, !noundef !21 ; 2 uses
  %i.azs = add nuw nsw i64 %i.azp, 1              ; 4 uses
  %i.azt = zext i8 %i.azr to i32                  ; 2 uses
  %i.azu = icmp sgt i8 %i.azr, -1
  br i1 %i.azu, label %bb.sa, label %bb.rx

._crit_edge.i1247:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944, %bb.rx
  %.lcssa7.i1242 = phi i64 [ 11840, %bb.rx ], [ %i.xx, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1242, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1248 unwind label %bb.rz

.noexc1248:                                       ; preds = %._crit_edge.i1247
  unreachable

bb.rx:                                            ; preds = %.lr.ph.i1243
  %i.azv = and i32 %i.azt, 127
  %i.azw = and i32 %.sroa.02.012.i1245, 31
  %i.azx = shl i32 %i.azv, %i.azw
  %i.azy = or i32 %i.azx, %.sroa.0.013.i1244
  %i.azz = add nuw nsw i32 %.sroa.02.012.i1245, 7
  %exitcond.not.i1246 = icmp eq i64 %i.azs, 11840
  br i1 %exitcond.not.i1246, label %._crit_edge.i1247, label %.lr.ph.i1243

bb.ry:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1238
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azl, ptr nonnull align 1 %i.azh, i64 %i.azj, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944

bb.rz:                                            ; preds = %._crit_edge.i1247, %bb.se, %bb.sd
  %i.baa = landingpad { ptr, i32 }
          cleanup
  br label %bb.sr

bb.sa:                                            ; preds = %.lr.ph.i1243
  %i.bab = and i32 %.sroa.02.012.i1245, 31
  %i.bac = shl i32 %i.azt, %i.bab
  %i.bad = or i32 %i.bac, %.sroa.0.013.i1244
  %i.bae = zext i32 %i.bad to i64                 ; 3 uses
  %i.baf = icmp ugt i64 %i.lo, %i.bae
  br i1 %i.baf, label %bb.sb, label %bb.sd

bb.sb:                                            ; preds = %bb.sa
  %i.bag = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.bae ; 2 uses
  %i.bah = load ptr, ptr %i.bag, align 8, !nonnull !21, !noundef !21
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bag, i64 8
  %i.baj = load i64, ptr %i.bai, align 8, !noundef !21 ; 8 uses
  %.not.i1250 = icmp slt i64 %i.baj, 0
  br i1 %.not.i1250, label %bb.se, label %bb.sc, !prof !37

bb.sc:                                            ; preds = %bb.sb
  %i.bak = icmp eq i64 %i.baj, 0                  ; 2 uses
  br i1 %i.bak, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1251

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1251: ; preds = %bb.sc
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16762
  %i.bal = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.baj, i64 noundef range(i64 1, 9) 1) #41, !noalias !16762 ; 3 uses
  %i.bam = icmp eq ptr %i.bal, null
  br i1 %i.bam, label %bb.se, label %bb.sg

bb.sd:                                            ; preds = %bb.sa
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bae, i64 noundef %i.lo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11029) #46
          to label %bb.u unwind label %bb.rz

bb.se:                                            ; preds = %bb.sb, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1251
  %.sroa.42339.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1251 ], [ 0, %bb.sb ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42339.0.ph, i64 %i.baj) #46
          to label %bb.u unwind label %bb.rz

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960: ; preds = %bb.sc, %bb.sg
  %i.ban = phi ptr [ %i.bal, %bb.sg ], [ inttoptr (i64 1 to ptr), %bb.sc ] ; 2 uses
  %i.bao = icmp ult i64 %i.azp, 11839
  br i1 %i.bao, label %.lr.ph.i1256, label %._crit_edge.i1260.invoke

.lr.ph.i1256:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960, %bb.sf
  %.sroa.0.013.i1257 = phi i32 [ %i.baz, %bb.sf ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960 ] ; 2 uses
  %.sroa.02.012.i1258 = phi i32 [ %i.bba, %bb.sf ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960 ] ; 3 uses
  %i.bap = phi i64 [ %i.bas, %bb.sf ], [ %i.azs, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960 ] ; 3 uses
  %i.baq = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bap
  %i.bar = load i8, ptr %i.baq, align 1, !noalias !16763, !noundef !21 ; 2 uses
  %i.bas = add nuw nsw i64 %i.bap, 1              ; 4 uses
  %i.bat = zext i8 %i.bar to i32                  ; 2 uses
  %i.bau = icmp sgt i8 %i.bar, -1
  br i1 %i.bau, label %bb.sh, label %bb.sf

._crit_edge.i1260.invoke:                         ; preds = %bb.sh, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960, %bb.sf, %bb.si
  %i.bav = phi i64 [ 11840, %bb.si ], [ 11840, %bb.sf ], [ %i.bas, %bb.sh ], [ %i.azs, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bav, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1260.cont unwind label %bb.sp

._crit_edge.i1260.cont:                           ; preds = %._crit_edge.i1260.invoke
  unreachable

bb.sf:                                            ; preds = %.lr.ph.i1256
  %i.baw = and i32 %i.bat, 127
  %i.bax = and i32 %.sroa.02.012.i1258, 31
  %i.bay = shl i32 %i.baw, %i.bax
  %i.baz = or i32 %i.bay, %.sroa.0.013.i1257
  %i.bba = add nuw nsw i32 %.sroa.02.012.i1258, 7
  %exitcond.not.i1259 = icmp eq i64 %i.bas, 11840
  br i1 %exitcond.not.i1259, label %._crit_edge.i1260.invoke, label %.lr.ph.i1256

bb.sg:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1251
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bal, ptr nonnull align 1 %i.bah, i64 %i.baj, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960

bb.sh:                                            ; preds = %.lr.ph.i1256
  %i.bbb = and i32 %.sroa.02.012.i1258, 31
  %i.bbc = shl i32 %i.bat, %i.bbb
  %i.bbd = or i32 %i.bbc, %.sroa.0.013.i1257
  %i.bbe = icmp ult i64 %i.bap, 11839
  br i1 %i.bbe, label %.lr.ph.i1265, label %._crit_edge.i1260.invoke

.lr.ph.i1265:                                     ; preds = %bb.sh, %bb.si
  %.sroa.0.013.i1266 = phi i32 [ %i.bbo, %bb.si ], [ 0, %bb.sh ] ; 2 uses
  %.sroa.02.012.i1267 = phi i32 [ %i.bbp, %bb.si ], [ 0, %bb.sh ] ; 3 uses
  %i.bbf = phi i64 [ %i.bbi, %bb.si ], [ %i.bas, %bb.sh ] ; 2 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bbf
  %i.bbh = load i8, ptr %i.bbg, align 1, !noalias !16764, !noundef !21 ; 2 uses
  %i.bbi = add nuw nsw i64 %i.bbf, 1              ; 3 uses
  %i.bbj = zext i8 %i.bbh to i32                  ; 2 uses
  %i.bbk = icmp sgt i8 %i.bbh, -1
  br i1 %i.bbk, label %bb.sj, label %bb.si

bb.si:                                            ; preds = %.lr.ph.i1265
  %i.bbl = and i32 %i.bbj, 127
  %i.bbm = and i32 %.sroa.02.012.i1267, 31
  %i.bbn = shl i32 %i.bbl, %i.bbm
  %i.bbo = or i32 %i.bbn, %.sroa.0.013.i1266
  %i.bbp = add nuw nsw i32 %.sroa.02.012.i1267, 7
  %exitcond.not.i1268 = icmp eq i64 %i.bbi, 11840
  br i1 %exitcond.not.i1268, label %._crit_edge.i1260.invoke, label %.lr.ph.i1265

bb.sj:                                            ; preds = %.lr.ph.i1265
  %i.bbq = and i32 %.sroa.02.012.i1267, 31
  %i.bbr = shl i32 %i.bbj, %i.bbq
  %i.bbs = or i32 %i.bbr, %.sroa.0.013.i1266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bbt = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.bbu = icmp eq ptr %i.bbt, null
  br i1 %i.bbu, label %bb.sk, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1273, !prof !26

bb.sk:                                            ; preds = %bb.sj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1272 unwind label %bb.sp

.noexc1272:                                       ; preds = %bb.sk
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1273: ; preds = %bb.sj
  store i64 %.sroa.01780.0, ptr %i.bbt, align 8
  %.sroa.42188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42188.0..sroa_idx, align 8
  %.sroa.52189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52189.0..sroa_idx, align 8
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbt, i64 24
  store i64 %i.azj, ptr %i.bbv, align 8
  %.sroa.42191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 32
  store ptr %i.azn, ptr %.sroa.42191.0..sroa_idx, align 8
  %.sroa.52192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 40
  store i64 %i.azj, ptr %.sroa.52192.0..sroa_idx, align 8
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbt, i64 48
  store i64 %i.baj, ptr %i.bbw, align 8
  %.sroa.42194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 56
  store ptr %i.ban, ptr %.sroa.42194.0..sroa_idx, align 8
  %.sroa.52195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 64
  store i64 %i.baj, ptr %.sroa.52195.0..sroa_idx, align 8
  store i64 3, ptr %i.cp, align 8
  store ptr %i.bbt, ptr %i.fw, align 8
  store i64 3, ptr %i.fx, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cp)
          to label %bb.sl unwind label %.body347

bb.sl:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1273
  store i32 %i.bbs, ptr %i.fy, align 8, !alias.scope !16765
  store i32 %i.bbd, ptr %i.fz, align 4, !alias.scope !16765
  store i32 0, ptr %i.ga, align 8, !alias.scope !16765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16766
  %i.bbx = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16766 ; 3 uses
  %i.bby = icmp eq ptr %i.bbx, null
  br i1 %i.bby, label %bb.sm, label %bb.so, !prof !26

bb.sm:                                            ; preds = %bb.sl
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1276 unwind label %bb.sn

.noexc1276:                                       ; preds = %bb.sm
  unreachable

bb.sn:                                            ; preds = %bb.sm
  %i.bbz = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cq) #42
  br label %.body385

bb.so:                                            ; preds = %bb.sl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bbx, ptr noundef nonnull align 8 dereferenceable(40) %i.cq, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.ex

bb.sp:                                            ; preds = %._crit_edge.i1260.invoke, %bb.sk
  %lpad.thr_comm2968 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bak, label %bb.sr, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ban, i64 noundef %i.baj, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16767
  br label %bb.sr

bb.sr:                                            ; preds = %bb.rz, %bb.sp, %bb.sq
  %.pn203.ph = phi { ptr, i32 } [ %i.baa, %bb.rz ], [ %lpad.thr_comm2968, %bb.sp ], [ %lpad.thr_comm2968, %bb.sq ] ; 2 uses
  br i1 %i.azk, label %.thread2560, label %bb.ss

bb.ss:                                            ; preds = %bb.sr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azn, i64 noundef %i.azj, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16768
  br label %.thread2560

bb.st:                                            ; preds = %.lr.ph.i672
  %i.bca = and i32 %.sroa.02.012.i674, 31
  %i.bcb = shl i32 %i.yk, %i.bca
  %i.bcc = or i32 %i.bcb, %.sroa.0.013.i673
  %i.bcd = icmp ult i64 %i.yg, 11839
  br i1 %i.bcd, label %.lr.ph.i1286, label %.invoke14249

.lr.ph.i1286:                                     ; preds = %bb.st, %bb.su
  %.sroa.0.013.i1287 = phi i32 [ %i.bcn, %bb.su ], [ 0, %bb.st ] ; 2 uses
  %.sroa.02.012.i1288 = phi i32 [ %i.bco, %bb.su ], [ 0, %bb.st ] ; 3 uses
  %i.bce = phi i64 [ %i.bch, %bb.su ], [ %i.yj, %bb.st ] ; 3 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bce
  %i.bcg = load i8, ptr %i.bcf, align 1, !noalias !16769, !noundef !21 ; 2 uses
  %i.bch = add nuw nsw i64 %i.bce, 1              ; 4 uses
  %i.bci = zext i8 %i.bcg to i32                  ; 2 uses
  %i.bcj = icmp sgt i8 %i.bcg, -1
  br i1 %i.bcj, label %bb.sv, label %bb.su

bb.su:                                            ; preds = %.lr.ph.i1286
  %i.bck = and i32 %i.bci, 127
  %i.bcl = and i32 %.sroa.02.012.i1288, 31
  %i.bcm = shl i32 %i.bck, %i.bcl
  %i.bcn = or i32 %i.bcm, %.sroa.0.013.i1287
  %i.bco = add nuw nsw i32 %.sroa.02.012.i1288, 7
  %exitcond.not.i1289 = icmp eq i64 %i.bch, 11840
  br i1 %exitcond.not.i1289, label %.invoke14249, label %.lr.ph.i1286

bb.sv:                                            ; preds = %.lr.ph.i1286
  %i.bcp = and i32 %.sroa.02.012.i1288, 31
  %i.bcq = shl i32 %i.bci, %i.bcp
  %i.bcr = or i32 %i.bcq, %.sroa.0.013.i1287
  %i.bcs = icmp ult i64 %i.bce, 11839
  br i1 %i.bcs, label %.lr.ph.i1295, label %.invoke14249

.lr.ph.i1295:                                     ; preds = %bb.sv, %bb.sw
  %.sroa.0.013.i1296 = phi i32 [ %i.bdc, %bb.sw ], [ 0, %bb.sv ] ; 2 uses
  %.sroa.02.012.i1297 = phi i32 [ %i.bdd, %bb.sw ], [ 0, %bb.sv ] ; 3 uses
  %i.bct = phi i64 [ %i.bcw, %bb.sw ], [ %i.bch, %bb.sv ] ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bct
  %i.bcv = load i8, ptr %i.bcu, align 1, !noalias !16770, !noundef !21 ; 2 uses
  %i.bcw = add nuw nsw i64 %i.bct, 1              ; 3 uses
  %i.bcx = zext i8 %i.bcv to i32                  ; 2 uses
  %i.bcy = icmp sgt i8 %i.bcv, -1
  br i1 %i.bcy, label %bb.sx, label %bb.sw

bb.sw:                                            ; preds = %.lr.ph.i1295
  %i.bcz = and i32 %i.bcx, 127
  %i.bda = and i32 %.sroa.02.012.i1297, 31
  %i.bdb = shl i32 %i.bcz, %i.bda
  %i.bdc = or i32 %i.bdb, %.sroa.0.013.i1296
  %i.bdd = add nuw nsw i32 %.sroa.02.012.i1297, 7
  %exitcond.not.i1298 = icmp eq i64 %i.bcw, 11840
  br i1 %exitcond.not.i1298, label %.invoke14249, label %.lr.ph.i1295

bb.sx:                                            ; preds = %.lr.ph.i1295
  %i.bde = and i32 %.sroa.02.012.i1297, 31
  %i.bdf = shl i32 %i.bcx, %i.bde
  %i.bdg = or i32 %i.bdf, %.sroa.0.013.i1296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bdh = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.bdi = icmp eq ptr %i.bdh, null
  br i1 %i.bdi, label %.invoke14253, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1303, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1303: ; preds = %bb.sx
  store i64 %.sroa.01780.0, ptr %i.bdh, align 8
  %.sroa.42197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bdh, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42197.0..sroa_idx, align 8
  %.sroa.52198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bdh, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52198.0..sroa_idx, align 8
  store i64 1, ptr %i.cn, align 8
  store ptr %i.bdh, ptr %i.fr, align 8
  store i64 1, ptr %i.fs, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cn)
          to label %bb.sy unwind label %.body347

bb.sy:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1303
  store i32 %i.bcr, ptr %i.ft, align 8, !alias.scope !16771
  store i32 %i.bcc, ptr %i.fu, align 4, !alias.scope !16771
  store i32 %i.bdg, ptr %i.fv, align 8, !alias.scope !16771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16772
  %i.bdj = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16772 ; 3 uses
  %i.bdk = icmp eq ptr %i.bdj, null
  br i1 %i.bdk, label %bb.sz, label %bb.tb, !prof !26

bb.sz:                                            ; preds = %bb.sy
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1305 unwind label %bb.ta

.noexc1305:                                       ; preds = %bb.sz
  unreachable

bb.ta:                                            ; preds = %bb.sz
  %i.bdl = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.co) #42
  br label %.body385

bb.tb:                                            ; preds = %bb.sy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bdj, ptr noundef nonnull align 8 dereferenceable(40) %i.co, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.ex

bb.tc:                                            ; preds = %.lr.ph.i681
  %i.bdm = and i32 %.sroa.02.012.i683, 31
  %i.bdn = shl i32 %i.yw, %i.bdm
  %i.bdo = or i32 %i.bdn, %.sroa.0.013.i682
  %i.bdp = zext i32 %i.bdo to i64                 ; 3 uses
  %i.bdq = icmp ugt i64 %i.lo, %i.bdp
  br i1 %i.bdq, label %bb.td, label %.invoke14247

bb.td:                                            ; preds = %bb.tc
  %i.bdr = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.bdp ; 2 uses
  %i.bds = load ptr, ptr %i.bdr, align 8, !nonnull !21, !noundef !21
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdr, i64 8
  %i.bdu = load i64, ptr %i.bdt, align 8, !noundef !21 ; 9 uses
  %.not.i1307 = icmp slt i64 %i.bdu, 0
  br i1 %.not.i1307, label %.invoke14251, label %bb.te, !prof !37

bb.te:                                            ; preds = %bb.td
  %i.bdv = icmp eq i64 %i.bdu, 0                  ; 2 uses
  br i1 %i.bdv, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1308

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1308: ; preds = %bb.te
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16773
  %i.bdw = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bdu, i64 noundef range(i64 1, 9) 1) #41, !noalias !16773 ; 3 uses
  %i.bdx = icmp eq ptr %i.bdw, null
  br i1 %i.bdx, label %.invoke14251, label %bb.tg

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979: ; preds = %bb.te, %bb.tg
  %i.bdy = phi ptr [ %i.bdw, %bb.tg ], [ inttoptr (i64 1 to ptr), %bb.te ] ; 2 uses
  %i.bdz = icmp ult i64 %i.ys, 11839
  br i1 %i.bdz, label %.lr.ph.i1313, label %._crit_edge.i1317.invoke

.lr.ph.i1313:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979, %bb.tf
  %.sroa.0.013.i1314 = phi i32 [ %i.bek, %bb.tf ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979 ] ; 2 uses
  %.sroa.02.012.i1315 = phi i32 [ %i.bel, %bb.tf ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979 ] ; 3 uses
  %i.bea = phi i64 [ %i.bed, %bb.tf ], [ %i.yv, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979 ] ; 3 uses
  %i.beb = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bea
  %i.bec = load i8, ptr %i.beb, align 1, !noalias !16774, !noundef !21 ; 2 uses
  %i.bed = add nuw nsw i64 %i.bea, 1              ; 4 uses
  %i.bee = zext i8 %i.bec to i32                  ; 2 uses
  %i.bef = icmp sgt i8 %i.bec, -1
  br i1 %i.bef, label %bb.th, label %bb.tf

._crit_edge.i1317.invoke:                         ; preds = %bb.tj, %bb.th, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979, %bb.tf, %bb.ti, %bb.tk
  %i.beg = phi i64 [ 11840, %bb.tf ], [ 11840, %bb.ti ], [ 11840, %bb.tk ], [ %i.bet, %bb.tj ], [ %i.bed, %bb.th ], [ %i.yv, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.beg, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1317.cont unwind label %bb.tr

._crit_edge.i1317.cont:                           ; preds = %._crit_edge.i1317.invoke
  unreachable

bb.tf:                                            ; preds = %.lr.ph.i1313
  %i.beh = and i32 %i.bee, 127
  %i.bei = and i32 %.sroa.02.012.i1315, 31
  %i.bej = shl i32 %i.beh, %i.bei
  %i.bek = or i32 %i.bej, %.sroa.0.013.i1314
  %i.bel = add nuw nsw i32 %.sroa.02.012.i1315, 7
  %exitcond.not.i1316 = icmp eq i64 %i.bed, 11840
  br i1 %exitcond.not.i1316, label %._crit_edge.i1317.invoke, label %.lr.ph.i1313

bb.tg:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1308
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bdw, ptr nonnull align 1 %i.bds, i64 %i.bdu, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979

bb.th:                                            ; preds = %.lr.ph.i1313
  %i.bem = and i32 %.sroa.02.012.i1315, 31
  %i.ben = shl i32 %i.bee, %i.bem
  %i.beo = or i32 %i.ben, %.sroa.0.013.i1314
  %i.bep = icmp ult i64 %i.bea, 11839
  br i1 %i.bep, label %.lr.ph.i1322, label %._crit_edge.i1317.invoke

.lr.ph.i1322:                                     ; preds = %bb.th, %bb.ti
  %.sroa.0.013.i1323 = phi i32 [ %i.bez, %bb.ti ], [ 0, %bb.th ] ; 2 uses
  %.sroa.02.012.i1324 = phi i32 [ %i.bfa, %bb.ti ], [ 0, %bb.th ] ; 3 uses
  %i.beq = phi i64 [ %i.bet, %bb.ti ], [ %i.bed, %bb.th ] ; 3 uses
  %i.ber = getelementptr inbounds nuw i8, ptr @11046, i64 %i.beq
  %i.bes = load i8, ptr %i.ber, align 1, !noalias !16775, !noundef !21 ; 2 uses
  %i.bet = add nuw nsw i64 %i.beq, 1              ; 4 uses
  %i.beu = zext i8 %i.bes to i32                  ; 2 uses
  %i.bev = icmp sgt i8 %i.bes, -1
  br i1 %i.bev, label %bb.tj, label %bb.ti

bb.ti:                                            ; preds = %.lr.ph.i1322
  %i.bew = and i32 %i.beu, 127
  %i.bex = and i32 %.sroa.02.012.i1324, 31
  %i.bey = shl i32 %i.bew, %i.bex
  %i.bez = or i32 %i.bey, %.sroa.0.013.i1323
  %i.bfa = add nuw nsw i32 %.sroa.02.012.i1324, 7
  %exitcond.not.i1325 = icmp eq i64 %i.bet, 11840
  br i1 %exitcond.not.i1325, label %._crit_edge.i1317.invoke, label %.lr.ph.i1322

bb.tj:                                            ; preds = %.lr.ph.i1322
  %i.bfb = and i32 %.sroa.02.012.i1324, 31
  %i.bfc = shl i32 %i.beu, %i.bfb
  %i.bfd = or i32 %i.bfc, %.sroa.0.013.i1323
  %i.bfe = icmp ult i64 %i.beq, 11839
  br i1 %i.bfe, label %.lr.ph.i1331, label %._crit_edge.i1317.invoke

.lr.ph.i1331:                                     ; preds = %bb.tj, %bb.tk
  %.sroa.0.013.i1332 = phi i32 [ %i.bfo, %bb.tk ], [ 0, %bb.tj ] ; 2 uses
  %.sroa.02.012.i1333 = phi i32 [ %i.bfp, %bb.tk ], [ 0, %bb.tj ] ; 3 uses
  %i.bff = phi i64 [ %i.bfi, %bb.tk ], [ %i.bet, %bb.tj ] ; 2 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bff
  %i.bfh = load i8, ptr %i.bfg, align 1, !noalias !16776, !noundef !21 ; 2 uses
  %i.bfi = add nuw nsw i64 %i.bff, 1              ; 3 uses
  %i.bfj = zext i8 %i.bfh to i32                  ; 2 uses
  %i.bfk = icmp sgt i8 %i.bfh, -1
  br i1 %i.bfk, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %.lr.ph.i1331
  %i.bfl = and i32 %i.bfj, 127
  %i.bfm = and i32 %.sroa.02.012.i1333, 31
  %i.bfn = shl i32 %i.bfl, %i.bfm
  %i.bfo = or i32 %i.bfn, %.sroa.0.013.i1332
  %i.bfp = add nuw nsw i32 %.sroa.02.012.i1333, 7
  %exitcond.not.i1334 = icmp eq i64 %i.bfi, 11840
  br i1 %exitcond.not.i1334, label %._crit_edge.i1317.invoke, label %.lr.ph.i1331

bb.tl:                                            ; preds = %.lr.ph.i1331
  %i.bfq = and i32 %.sroa.02.012.i1333, 31
  %i.bfr = shl i32 %i.bfj, %i.bfq
  %i.bfs = or i32 %i.bfr, %.sroa.0.013.i1332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bft = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.bfu = icmp eq ptr %i.bft, null
  br i1 %i.bfu, label %bb.tm, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1339, !prof !26

bb.tm:                                            ; preds = %bb.tl
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1338 unwind label %bb.tr

.noexc1338:                                       ; preds = %bb.tm
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1339: ; preds = %bb.tl
  store i64 %.sroa.01780.0, ptr %i.bft, align 8
  %.sroa.42203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bft, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42203.0..sroa_idx, align 8
  %.sroa.52204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bft, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52204.0..sroa_idx, align 8
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bft, i64 24
  store i64 %i.bdu, ptr %i.bfv, align 8
  %.sroa.42206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bft, i64 32
  store ptr %i.bdy, ptr %.sroa.42206.0..sroa_idx, align 8
  %.sroa.52207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bft, i64 40
  store i64 %i.bdu, ptr %.sroa.52207.0..sroa_idx, align 8
  store i64 2, ptr %i.cl, align 8
  store ptr %i.bft, ptr %i.fm, align 8
  store i64 2, ptr %i.fn, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cl)
          to label %bb.tn unwind label %.body347

bb.tn:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1339
  store i32 %i.bfd, ptr %i.fo, align 8, !alias.scope !16777
  store i32 %i.beo, ptr %i.fp, align 4, !alias.scope !16777
  store i32 %i.bfs, ptr %i.fq, align 8, !alias.scope !16777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16778
  %i.bfw = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16778 ; 3 uses
  %i.bfx = icmp eq ptr %i.bfw, null
  br i1 %i.bfx, label %bb.to, label %bb.tq, !prof !26

bb.to:                                            ; preds = %bb.tn
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1342 unwind label %bb.tp

.noexc1342:                                       ; preds = %bb.to
  unreachable

bb.tp:                                            ; preds = %bb.to
  %i.bfy = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cm) #42
  br label %.body385

bb.tq:                                            ; preds = %bb.tn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bfw, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.ex

bb.tr:                                            ; preds = %._crit_edge.i1317.invoke, %bb.tm
  %lpad.thr_comm2987 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bdv, label %.thread2560, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bdy, i64 noundef %i.bdu, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16779
  br label %.thread2560

bb.tt:                                            ; preds = %.lr.ph.i690
  %i.bfz = and i32 %.sroa.02.012.i692, 31
  %i.bga = shl i32 %i.zi, %i.bfz
  %i.bgb = or i32 %i.bga, %.sroa.0.013.i691
  %i.bgc = zext i32 %i.bgb to i64                 ; 3 uses
  %i.bgd = icmp ugt i64 %i.lo, %i.bgc
  br i1 %i.bgd, label %bb.tu, label %.invoke14247

bb.tu:                                            ; preds = %bb.tt
  %i.bge = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.bgc ; 2 uses
  %i.bgf = load ptr, ptr %i.bge, align 8, !nonnull !21, !noundef !21
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bge, i64 8
  %i.bgh = load i64, ptr %i.bgg, align 8, !noundef !21 ; 9 uses
  %.not.i1347 = icmp slt i64 %i.bgh, 0
  br i1 %.not.i1347, label %.invoke14251, label %bb.tv, !prof !37

bb.tv:                                            ; preds = %bb.tu
  %i.bgi = icmp eq i64 %i.bgh, 0                  ; 2 uses
  br i1 %i.bgi, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1348

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1348: ; preds = %bb.tv
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16780
  %i.bgj = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bgh, i64 noundef range(i64 1, 9) 1) #41, !noalias !16780 ; 3 uses
  %i.bgk = icmp eq ptr %i.bgj, null
  br i1 %i.bgk, label %.invoke14251, label %bb.tx

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998: ; preds = %bb.tv, %bb.tx
  %i.bgl = phi ptr [ %i.bgj, %bb.tx ], [ inttoptr (i64 1 to ptr), %bb.tv ] ; 2 uses
  %i.bgm = icmp ult i64 %i.ze, 11839
  br i1 %i.bgm, label %.lr.ph.i1353, label %._crit_edge.i1357

.lr.ph.i1353:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998, %bb.tw
  %.sroa.0.013.i1354 = phi i32 [ %i.bgw, %bb.tw ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998 ] ; 2 uses
  %.sroa.02.012.i1355 = phi i32 [ %i.bgx, %bb.tw ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998 ] ; 3 uses
  %i.bgn = phi i64 [ %i.bgq, %bb.tw ], [ %i.zh, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998 ] ; 3 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bgn
  %i.bgp = load i8, ptr %i.bgo, align 1, !noalias !16781, !noundef !21 ; 2 uses
  %i.bgq = add nuw nsw i64 %i.bgn, 1              ; 4 uses
  %i.bgr = zext i8 %i.bgp to i32                  ; 2 uses
  %i.bgs = icmp sgt i8 %i.bgp, -1
  br i1 %i.bgs, label %bb.tz, label %bb.tw

._crit_edge.i1357:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998, %bb.tw
  %.lcssa7.i1352 = phi i64 [ 11840, %bb.tw ], [ %i.zh, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1352, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1358 unwind label %bb.ty

.noexc1358:                                       ; preds = %._crit_edge.i1357
  unreachable

bb.tw:                                            ; preds = %.lr.ph.i1353
  %i.bgt = and i32 %i.bgr, 127
  %i.bgu = and i32 %.sroa.02.012.i1355, 31
  %i.bgv = shl i32 %i.bgt, %i.bgu
  %i.bgw = or i32 %i.bgv, %.sroa.0.013.i1354
  %i.bgx = add nuw nsw i32 %.sroa.02.012.i1355, 7
  %exitcond.not.i1356 = icmp eq i64 %i.bgq, 11840
  br i1 %exitcond.not.i1356, label %._crit_edge.i1357, label %.lr.ph.i1353

bb.tx:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1348
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bgj, ptr nonnull align 1 %i.bgf, i64 %i.bgh, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998

bb.ty:                                            ; preds = %._crit_edge.i1357, %bb.ud, %bb.uc
  %i.bgy = landingpad { ptr, i32 }
          cleanup
  br label %bb.us

bb.tz:                                            ; preds = %.lr.ph.i1353
  %i.bgz = and i32 %.sroa.02.012.i1355, 31
  %i.bha = shl i32 %i.bgr, %i.bgz
  %i.bhb = or i32 %i.bha, %.sroa.0.013.i1354
  %i.bhc = zext i32 %i.bhb to i64                 ; 3 uses
  %i.bhd = icmp ugt i64 %i.lo, %i.bhc
  br i1 %i.bhd, label %bb.ua, label %bb.uc

bb.ua:                                            ; preds = %bb.tz
  %i.bhe = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.bhc ; 2 uses
  %i.bhf = load ptr, ptr %i.bhe, align 8, !nonnull !21, !noundef !21
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhe, i64 8
  %i.bhh = load i64, ptr %i.bhg, align 8, !noundef !21 ; 8 uses
  %.not.i1360 = icmp slt i64 %i.bhh, 0
  br i1 %.not.i1360, label %bb.ud, label %bb.ub, !prof !37

bb.ub:                                            ; preds = %bb.ua
  %i.bhi = icmp eq i64 %i.bhh, 0                  ; 2 uses
  br i1 %i.bhi, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1361

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1361: ; preds = %bb.ub
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16782
  %i.bhj = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bhh, i64 noundef range(i64 1, 9) 1) #41, !noalias !16782 ; 3 uses
  %i.bhk = icmp eq ptr %i.bhj, null
  br i1 %i.bhk, label %bb.ud, label %bb.uf

bb.uc:                                            ; preds = %bb.tz
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bhc, i64 noundef %i.lo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11032) #46
          to label %bb.u unwind label %bb.ty

bb.ud:                                            ; preds = %bb.ua, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1361
  %.sroa.42351.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1361 ], [ 0, %bb.ua ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42351.0.ph, i64 %i.bhh) #46
          to label %bb.u unwind label %bb.ty

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014: ; preds = %bb.ub, %bb.uf
  %i.bhl = phi ptr [ %i.bhj, %bb.uf ], [ inttoptr (i64 1 to ptr), %bb.ub ] ; 2 uses
  %i.bhm = icmp ult i64 %i.bgn, 11839
  br i1 %i.bhm, label %.lr.ph.i1366, label %._crit_edge.i1370.invoke

.lr.ph.i1366:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014, %bb.ue
  %.sroa.0.013.i1367 = phi i32 [ %i.bhx, %bb.ue ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014 ] ; 2 uses
  %.sroa.02.012.i1368 = phi i32 [ %i.bhy, %bb.ue ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014 ] ; 3 uses
  %i.bhn = phi i64 [ %i.bhq, %bb.ue ], [ %i.bgq, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014 ] ; 3 uses
  %i.bho = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bhn
  %i.bhp = load i8, ptr %i.bho, align 1, !noalias !16783, !noundef !21 ; 2 uses
  %i.bhq = add nuw nsw i64 %i.bhn, 1              ; 4 uses
  %i.bhr = zext i8 %i.bhp to i32                  ; 2 uses
  %i.bhs = icmp sgt i8 %i.bhp, -1
  br i1 %i.bhs, label %bb.ug, label %bb.ue

._crit_edge.i1370.invoke:                         ; preds = %bb.ui, %bb.ug, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014, %bb.ue, %bb.uh, %bb.uj
  %i.bht = phi i64 [ 11840, %bb.ue ], [ 11840, %bb.uh ], [ 11840, %bb.uj ], [ %i.big, %bb.ui ], [ %i.bhq, %bb.ug ], [ %i.bgq, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bht, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1370.cont unwind label %bb.uq

._crit_edge.i1370.cont:                           ; preds = %._crit_edge.i1370.invoke
  unreachable

bb.ue:                                            ; preds = %.lr.ph.i1366
  %i.bhu = and i32 %i.bhr, 127
  %i.bhv = and i32 %.sroa.02.012.i1368, 31
  %i.bhw = shl i32 %i.bhu, %i.bhv
  %i.bhx = or i32 %i.bhw, %.sroa.0.013.i1367
  %i.bhy = add nuw nsw i32 %.sroa.02.012.i1368, 7
  %exitcond.not.i1369 = icmp eq i64 %i.bhq, 11840
  br i1 %exitcond.not.i1369, label %._crit_edge.i1370.invoke, label %.lr.ph.i1366

bb.uf:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1361
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhj, ptr nonnull align 1 %i.bhf, i64 %i.bhh, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014

bb.ug:                                            ; preds = %.lr.ph.i1366
  %i.bhz = and i32 %.sroa.02.012.i1368, 31
  %i.bia = shl i32 %i.bhr, %i.bhz
  %i.bib = or i32 %i.bia, %.sroa.0.013.i1367
  %i.bic = icmp ult i64 %i.bhn, 11839
  br i1 %i.bic, label %.lr.ph.i1375, label %._crit_edge.i1370.invoke

.lr.ph.i1375:                                     ; preds = %bb.ug, %bb.uh
  %.sroa.0.013.i1376 = phi i32 [ %i.bim, %bb.uh ], [ 0, %bb.ug ] ; 2 uses
  %.sroa.02.012.i1377 = phi i32 [ %i.bin, %bb.uh ], [ 0, %bb.ug ] ; 3 uses
  %i.bid = phi i64 [ %i.big, %bb.uh ], [ %i.bhq, %bb.ug ] ; 3 uses
  %i.bie = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bid
  %i.bif = load i8, ptr %i.bie, align 1, !noalias !16784, !noundef !21 ; 2 uses
  %i.big = add nuw nsw i64 %i.bid, 1              ; 4 uses
  %i.bih = zext i8 %i.bif to i32                  ; 2 uses
  %i.bii = icmp sgt i8 %i.bif, -1
  br i1 %i.bii, label %bb.ui, label %bb.uh

bb.uh:                                            ; preds = %.lr.ph.i1375
  %i.bij = and i32 %i.bih, 127
  %i.bik = and i32 %.sroa.02.012.i1377, 31
  %i.bil = shl i32 %i.bij, %i.bik
  %i.bim = or i32 %i.bil, %.sroa.0.013.i1376
  %i.bin = add nuw nsw i32 %.sroa.02.012.i1377, 7
  %exitcond.not.i1378 = icmp eq i64 %i.big, 11840
  br i1 %exitcond.not.i1378, label %._crit_edge.i1370.invoke, label %.lr.ph.i1375

bb.ui:                                            ; preds = %.lr.ph.i1375
  %i.bio = and i32 %.sroa.02.012.i1377, 31
  %i.bip = shl i32 %i.bih, %i.bio
  %i.biq = or i32 %i.bip, %.sroa.0.013.i1376
  %i.bir = icmp ult i64 %i.bid, 11839
  br i1 %i.bir, label %.lr.ph.i1384, label %._crit_edge.i1370.invoke

.lr.ph.i1384:                                     ; preds = %bb.ui, %bb.uj
  %.sroa.0.013.i1385 = phi i32 [ %i.bjb, %bb.uj ], [ 0, %bb.ui ] ; 2 uses
  %.sroa.02.012.i1386 = phi i32 [ %i.bjc, %bb.uj ], [ 0, %bb.ui ] ; 3 uses
  %i.bis = phi i64 [ %i.biv, %bb.uj ], [ %i.big, %bb.ui ] ; 2 uses
  %i.bit = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bis
  %i.biu = load i8, ptr %i.bit, align 1, !noalias !16785, !noundef !21 ; 2 uses
  %i.biv = add nuw nsw i64 %i.bis, 1              ; 3 uses
  %i.biw = zext i8 %i.biu to i32                  ; 2 uses
  %i.bix = icmp sgt i8 %i.biu, -1
  br i1 %i.bix, label %bb.uk, label %bb.uj

bb.uj:                                            ; preds = %.lr.ph.i1384
  %i.biy = and i32 %i.biw, 127
  %i.biz = and i32 %.sroa.02.012.i1386, 31
  %i.bja = shl i32 %i.biy, %i.biz
  %i.bjb = or i32 %i.bja, %.sroa.0.013.i1385
  %i.bjc = add nuw nsw i32 %.sroa.02.012.i1386, 7
  %exitcond.not.i1387 = icmp eq i64 %i.biv, 11840
  br i1 %exitcond.not.i1387, label %._crit_edge.i1370.invoke, label %.lr.ph.i1384

bb.uk:                                            ; preds = %.lr.ph.i1384
  %i.bjd = and i32 %.sroa.02.012.i1386, 31
  %i.bje = shl i32 %i.biw, %i.bjd
  %i.bjf = or i32 %i.bje, %.sroa.0.013.i1385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bjg = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.bjh = icmp eq ptr %i.bjg, null
  br i1 %i.bjh, label %bb.ul, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1392, !prof !26

bb.ul:                                            ; preds = %bb.uk
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1391 unwind label %bb.uq

.noexc1391:                                       ; preds = %bb.ul
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1392: ; preds = %bb.uk
  store i64 %.sroa.01780.0, ptr %i.bjg, align 8
  %.sroa.42215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjg, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42215.0..sroa_idx, align 8
  %.sroa.52216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjg, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52216.0..sroa_idx, align 8
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjg, i64 24
  store i64 %i.bgh, ptr %i.bji, align 8
  %.sroa.42218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjg, i64 32
  store ptr %i.bgl, ptr %.sroa.42218.0..sroa_idx, align 8
  %.sroa.52219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjg, i64 40
  store i64 %i.bgh, ptr %.sroa.52219.0..sroa_idx, align 8
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bjg, i64 48
  store i64 %i.bhh, ptr %i.bjj, align 8
  %.sroa.42221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjg, i64 56
  store ptr %i.bhl, ptr %.sroa.42221.0..sroa_idx, align 8
  %.sroa.52222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjg, i64 64
  store i64 %i.bhh, ptr %.sroa.52222.0..sroa_idx, align 8
  store i64 3, ptr %i.cj, align 8
  store ptr %i.bjg, ptr %i.fh, align 8
  store i64 3, ptr %i.fi, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cj)
          to label %bb.um unwind label %.body347

bb.um:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1392
  store i32 %i.biq, ptr %i.fj, align 8, !alias.scope !16786
  store i32 %i.bib, ptr %i.fk, align 4, !alias.scope !16786
  store i32 %i.bjf, ptr %i.fl, align 8, !alias.scope !16786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16787
  %i.bjk = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16787 ; 3 uses
  %i.bjl = icmp eq ptr %i.bjk, null
  br i1 %i.bjl, label %bb.un, label %bb.up, !prof !26

bb.un:                                            ; preds = %bb.um
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1395 unwind label %bb.uo

.noexc1395:                                       ; preds = %bb.un
  unreachable

bb.uo:                                            ; preds = %bb.un
  %i.bjm = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ck) #42
  br label %.body385

bb.up:                                            ; preds = %bb.um
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bjk, ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.ex

bb.uq:                                            ; preds = %._crit_edge.i1370.invoke, %bb.ul
  %lpad.thr_comm3022 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bhi, label %bb.us, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bhl, i64 noundef %i.bhh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16788
  br label %bb.us

bb.us:                                            ; preds = %bb.ty, %bb.uq, %bb.ur
  %.pn.ph = phi { ptr, i32 } [ %i.bgy, %bb.ty ], [ %lpad.thr_comm3022, %bb.uq ], [ %lpad.thr_comm3022, %bb.ur ] ; 2 uses
  br i1 %i.bgi, label %.thread2560, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bgl, i64 noundef %i.bgh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16789
  br label %.thread2560

bb.uu:                                            ; preds = %.lr.ph.i699
  %i.bjn = and i32 %.sroa.02.012.i701, 31
  %i.bjo = shl i32 %i.zu, %i.bjn
  %i.bjp = or i32 %i.bjo, %.sroa.0.013.i700
  %i.bjq = zext i32 %i.bjp to i64                 ; 3 uses
  %i.bjr = icmp ugt i64 %i.lo, %i.bjq
  br i1 %i.bjr, label %bb.uv, label %.invoke14247

bb.uv:                                            ; preds = %bb.uu
  %i.bjs = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.bjq ; 2 uses
  %i.bjt = load ptr, ptr %i.bjs, align 8, !nonnull !21, !noundef !21
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjs, i64 8
  %i.bjv = load i64, ptr %i.bju, align 8, !noundef !21 ; 9 uses
  %.not.i1403 = icmp slt i64 %i.bjv, 0
  br i1 %.not.i1403, label %.invoke14251, label %bb.uw, !prof !37

bb.uw:                                            ; preds = %bb.uv
  %i.bjw = icmp eq i64 %i.bjv, 0                  ; 2 uses
  br i1 %i.bjw, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1404

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1404: ; preds = %bb.uw
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16790
  %i.bjx = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bjv, i64 noundef range(i64 1, 9) 1) #41, !noalias !16790 ; 3 uses
  %i.bjy = icmp eq ptr %i.bjx, null
  br i1 %i.bjy, label %.invoke14251, label %bb.uy

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033: ; preds = %bb.uw, %bb.uy
  %i.bjz = phi ptr [ %i.bjx, %bb.uy ], [ inttoptr (i64 1 to ptr), %bb.uw ] ; 2 uses
  %i.bka = icmp ult i64 %i.zq, 11839
  br i1 %i.bka, label %.lr.ph.i1409, label %._crit_edge.i1413.invoke

.lr.ph.i1409:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033, %bb.ux
  %.sroa.0.013.i1410 = phi i32 [ %i.bkl, %bb.ux ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033 ] ; 2 uses
  %.sroa.02.012.i1411 = phi i32 [ %i.bkm, %bb.ux ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033 ] ; 3 uses
  %i.bkb = phi i64 [ %i.bke, %bb.ux ], [ %i.zt, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033 ] ; 3 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bkb
  %i.bkd = load i8, ptr %i.bkc, align 1, !noalias !16791, !noundef !21 ; 2 uses
  %i.bke = add nuw nsw i64 %i.bkb, 1              ; 4 uses
  %i.bkf = zext i8 %i.bkd to i32                  ; 2 uses
  %i.bkg = icmp sgt i8 %i.bkd, -1
  br i1 %i.bkg, label %bb.uz, label %bb.ux

._crit_edge.i1413.invoke:                         ; preds = %bb.vb, %bb.uz, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033, %bb.ux, %bb.va
  %i.bkh = phi i64 [ 11840, %bb.ux ], [ 11840, %bb.va ], [ %i.bku, %bb.vb ], [ %i.bke, %bb.uz ], [ %i.zt, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bkh, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1413.cont unwind label %bb.vi

._crit_edge.i1413.cont:                           ; preds = %._crit_edge.i1413.invoke
  unreachable

bb.ux:                                            ; preds = %.lr.ph.i1409
  %i.bki = and i32 %i.bkf, 127
  %i.bkj = and i32 %.sroa.02.012.i1411, 31
  %i.bkk = shl i32 %i.bki, %i.bkj
  %i.bkl = or i32 %i.bkk, %.sroa.0.013.i1410
  %i.bkm = add nuw nsw i32 %.sroa.02.012.i1411, 7
  %exitcond.not.i1412 = icmp eq i64 %i.bke, 11840
  br i1 %exitcond.not.i1412, label %._crit_edge.i1413.invoke, label %.lr.ph.i1409

bb.uy:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1404
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bjx, ptr nonnull align 1 %i.bjt, i64 %i.bjv, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033

.body347:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1392, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1339, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1273, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1229, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1181, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1146, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1438, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1303, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1202, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1128, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1428
  %lpad.thr_comm.split-lp3042 = landingpad { ptr, i32 }
          cleanup
  br label %.body385

bb.uz:                                            ; preds = %.lr.ph.i1409
  %i.bkn = and i32 %.sroa.02.012.i1411, 31
  %i.bko = shl i32 %i.bkf, %i.bkn
  %i.bkp = or i32 %i.bko, %.sroa.0.013.i1410
  %i.bkq = icmp ult i64 %i.bkb, 11839
  br i1 %i.bkq, label %.lr.ph.i1418, label %._crit_edge.i1413.invoke

.lr.ph.i1418:                                     ; preds = %bb.uz, %bb.va
  %.sroa.0.013.i1419 = phi i32 [ %i.bla, %bb.va ], [ 0, %bb.uz ] ; 2 uses
  %.sroa.02.012.i1420 = phi i32 [ %i.blb, %bb.va ], [ 0, %bb.uz ] ; 3 uses
  %i.bkr = phi i64 [ %i.bku, %bb.va ], [ %i.bke, %bb.uz ] ; 4 uses
  %i.bks = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bkr
  %i.bkt = load i8, ptr %i.bks, align 1, !noalias !16792, !noundef !21 ; 2 uses
  %i.bku = add nuw nsw i64 %i.bkr, 1              ; 4 uses
  %i.bkv = zext i8 %i.bkt to i32                  ; 2 uses
  %i.bkw = icmp sgt i8 %i.bkt, -1
  br i1 %i.bkw, label %bb.vb, label %bb.va

bb.va:                                            ; preds = %.lr.ph.i1418
  %i.bkx = and i32 %i.bkv, 127
  %i.bky = and i32 %.sroa.02.012.i1420, 31
  %i.bkz = shl i32 %i.bkx, %i.bky
  %i.bla = or i32 %i.bkz, %.sroa.0.013.i1419
  %i.blb = add nuw nsw i32 %.sroa.02.012.i1420, 7
  %exitcond.not.i1421 = icmp eq i64 %i.bku, 11840
  br i1 %exitcond.not.i1421, label %._crit_edge.i1413.invoke, label %.lr.ph.i1418

bb.vb:                                            ; preds = %.lr.ph.i1418
  %i.blc = and i32 %.sroa.02.012.i1420, 31
  %i.bld = shl i32 %i.bkv, %i.blc
  %i.ble = or i32 %i.bld, %.sroa.0.013.i1419
  %i.blf = icmp ult i64 %i.bkr, 11839
  br i1 %i.blf, label %bb.vc, label %._crit_edge.i1413.invoke

bb.vc:                                            ; preds = %bb.vb
  %i.blg = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bku
  %i.blh = load i8, ptr %i.blg, align 1, !noalias !16793, !noundef !21
  %i.bli = add nuw nsw i64 %i.bkr, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.blj = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.blk = icmp eq ptr %i.blj, null
  br i1 %i.blk, label %bb.vd, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1428, !prof !26

bb.vd:                                            ; preds = %bb.vc
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1427 unwind label %bb.vi

.noexc1427:                                       ; preds = %bb.vd
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1428: ; preds = %bb.vc
  store i64 %.sroa.01780.0, ptr %i.blj, align 8
  %.sroa.42227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.blj, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42227.0..sroa_idx, align 8
  %.sroa.52228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.blj, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52228.0..sroa_idx, align 8
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blj, i64 24
  store i64 %i.bjv, ptr %i.bll, align 8
  %.sroa.42230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.blj, i64 32
  store ptr %i.bjz, ptr %.sroa.42230.0..sroa_idx, align 8
  %.sroa.52231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.blj, i64 40
  store i64 %i.bjv, ptr %.sroa.52231.0..sroa_idx, align 8
  store i64 2, ptr %i.ch, align 8
  store ptr %i.blj, ptr %i.fc, align 8
  store i64 2, ptr %i.fd, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ch)
          to label %bb.ve unwind label %.body347

bb.ve:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1428
  store i32 %i.ble, ptr %i.fe, align 8, !alias.scope !16794
  store i32 %i.bkp, ptr %i.ff, align 4, !alias.scope !16794
  store i8 %i.blh, ptr %i.fg, align 8, !alias.scope !16794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16795
  %i.blm = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16795 ; 3 uses
  %i.bln = icmp eq ptr %i.blm, null
  br i1 %i.bln, label %bb.vf, label %bb.vh, !prof !26

bb.vf:                                            ; preds = %bb.ve
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1430 unwind label %bb.vg

.noexc1430:                                       ; preds = %bb.vf
  unreachable

bb.vg:                                            ; preds = %bb.vf
  %i.blo = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_os_loopEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ci) #42
  br label %.body385

bb.vh:                                            ; preds = %bb.ve
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.blm, ptr noundef nonnull align 8 dereferenceable(40) %i.ci, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.ex

bb.vi:                                            ; preds = %._crit_edge.i1413.invoke, %bb.vd
  %lpad.thr_comm3041 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bjw, label %.thread2560, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bjz, i64 noundef %i.bjv, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16796
  br label %.thread2560

bb.vk:                                            ; preds = %.lr.ph.i708
  %i.blp = and i32 %.sroa.02.012.i710, 31
  %i.blq = shl i32 %i.aag, %i.blp
  %i.blr = or i32 %i.blq, %.sroa.0.013.i709
  %i.bls = icmp ult i64 %i.aac, 11839
  br i1 %i.bls, label %bb.vl, label %.invoke14249

bb.vl:                                            ; preds = %bb.vk
  %i.blt = getelementptr inbounds nuw i8, ptr @11046, i64 %i.aaf
  %i.blu = load i8, ptr %i.blt, align 1, !noalias !16797, !noundef !21
  %i.blv = add nuw nsw i64 %i.aac, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.blw = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.blx = icmp eq ptr %i.blw, null
  br i1 %i.blx, label %.invoke14253, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1438, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1438: ; preds = %bb.vl
  store i64 %.sroa.01780.0, ptr %i.blw, align 8
  %.sroa.42233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.blw, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42233.0..sroa_idx, align 8
  %.sroa.52234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.blw, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52234.0..sroa_idx, align 8
  store i64 1, ptr %i.cf, align 8
  store ptr %i.blw, ptr %i.ex, align 8
  store i64 1, ptr %i.ey, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cf)
          to label %bb.vm unwind label %.body347

bb.vm:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1438
  store i32 %i.blr, ptr %i.ez, align 8, !alias.scope !16798
  store i32 -1, ptr %i.fa, align 4, !alias.scope !16798
  store i8 %i.blu, ptr %i.fb, align 8, !alias.scope !16798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16799
  %i.bly = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16799 ; 3 uses
  %i.blz = icmp eq ptr %i.bly, null
  br i1 %i.blz, label %bb.vn, label %bb.vp, !prof !26

bb.vn:                                            ; preds = %bb.vm
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1441 unwind label %bb.vo

.noexc1441:                                       ; preds = %bb.vn
  unreachable

bb.vo:                                            ; preds = %bb.vn
  %i.bma = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_os_loopEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cg) #42
  br label %.body385

bb.vp:                                            ; preds = %bb.vm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bly, ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.ex

bb.vq:                                            ; preds = %.lr.ph.i717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.experimental.noalias.scope.decl(metadata !16800)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16801
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.vt unwind label %bb.vr, !noalias !16801

bb.vr:                                            ; preds = %bb.vq
  %i.bmb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bmc = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.bmc, label %.body385, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16802
  br label %.body385

bb.vt:                                            ; preds = %bb.vq
  %i.bmd = and i32 %.sroa.02.012.i719, 31
  %i.bme = shl i32 %i.aas, %i.bmd
  %i.bmf = or i32 %i.bme, %.sroa.0.013.i718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62473.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !16803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16801
  store i64 %.sroa.01780.0, ptr %i.ce, align 8, !noalias !16803
  store ptr %.sroa.57.0, ptr %.sroa.42471.0..sroa_idx, align 8, !noalias !16803
  store i64 %.sroa.63.0, ptr %.sroa.52472.0..sroa_idx, align 8, !noalias !16803
  store i32 %i.bmf, ptr %i.ew, align 8, !alias.scope !16800
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16804
  %i.bmg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16804 ; 3 uses
  %i.bmh = icmp eq ptr %i.bmg, null
  br i1 %i.bmh, label %bb.vu, label %bb.vw, !prof !26

bb.vu:                                            ; preds = %bb.vt
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1449 unwind label %bb.vv

.noexc1449:                                       ; preds = %bb.vu
  unreachable

bb.vv:                                            ; preds = %bb.vu
  %i.bmi = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_os_memEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ce) #42
  br label %.body385

bb.vw:                                            ; preds = %bb.vt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bmg, ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.ex

bb.vx:                                            ; preds = %.lr.ph.i726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.experimental.noalias.scope.decl(metadata !16805)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16806
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.wa unwind label %bb.vy, !noalias !16806

bb.vy:                                            ; preds = %bb.vx
  %i.bmj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bmk = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.bmk, label %.body385, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16807
  br label %.body385

bb.wa:                                            ; preds = %bb.vx
  %i.bml = and i32 %.sroa.02.012.i728, 31
  %i.bmm = shl i32 %i.abe, %i.bml
  %i.bmn = or i32 %i.bmm, %.sroa.0.013.i727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62477.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !16808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16806
  store i64 %.sroa.01780.0, ptr %i.cd, align 8, !noalias !16808
  store ptr %.sroa.57.0, ptr %.sroa.42475.0..sroa_idx, align 8, !noalias !16808
  store i64 %.sroa.63.0, ptr %.sroa.52476.0..sroa_idx, align 8, !noalias !16808
  store i32 %i.bmn, ptr %i.ev, align 8, !alias.scope !16805
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16809
  %i.bmo = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16809 ; 3 uses
  %i.bmp = icmp eq ptr %i.bmo, null
  br i1 %i.bmp, label %bb.wb, label %bb.wd, !prof !26

bb.wb:                                            ; preds = %bb.wa
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1457 unwind label %bb.wc

.noexc1457:                                       ; preds = %bb.wb
  unreachable

bb.wc:                                            ; preds = %bb.wb
  %i.bmq = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info28SimpleInstrInfo_os_mem_reg16EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cd) #42
  br label %.body385

bb.wd:                                            ; preds = %bb.wa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bmo, ptr noundef nonnull align 8 dereferenceable(56) %i.cd, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %bb.ex

bb.we:                                            ; preds = %.lr.ph.i735
  %i.bmr = and i32 %.sroa.02.012.i737, 31
  %i.bms = shl i32 %i.abq, %i.bmr
  %i.bmt = or i32 %i.bms, %.sroa.0.013.i736
  %i.bmu = icmp ult i64 %i.abm, 11839
  br i1 %i.bmu, label %.lr.ph.i1461, label %.invoke14249

.lr.ph.i1461:                                     ; preds = %bb.we, %bb.wf
  %.sroa.0.013.i1462 = phi i32 [ %i.bne, %bb.wf ], [ 0, %bb.we ] ; 2 uses
  %.sroa.02.012.i1463 = phi i32 [ %i.bnf, %bb.wf ], [ 0, %bb.we ] ; 3 uses
  %i.bmv = phi i64 [ %i.bmy, %bb.wf ], [ %i.abp, %bb.we ] ; 2 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bmv
  %i.bmx = load i8, ptr %i.bmw, align 1, !noalias !16810, !noundef !21 ; 2 uses
  %i.bmy = add nuw nsw i64 %i.bmv, 1              ; 3 uses
  %i.bmz = zext i8 %i.bmx to i32                  ; 2 uses
  %i.bna = icmp sgt i8 %i.bmx, -1
  br i1 %i.bna, label %bb.wg, label %bb.wf

bb.wf:                                            ; preds = %.lr.ph.i1461
  %i.bnb = and i32 %i.bmz, 127
  %i.bnc = and i32 %.sroa.02.012.i1463, 31
  %i.bnd = shl i32 %i.bnb, %i.bnc
  %i.bne = or i32 %i.bnd, %.sroa.0.013.i1462
  %i.bnf = add nuw nsw i32 %.sroa.02.012.i1463, 7
  %exitcond.not.i1464 = icmp eq i64 %i.bmy, 11840
  br i1 %exitcond.not.i1464, label %.invoke14249, label %.lr.ph.i1461

bb.wg:                                            ; preds = %.lr.ph.i1461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.experimental.noalias.scope.decl(metadata !16811)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16812
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.wj unwind label %bb.wh, !noalias !16812

bb.wh:                                            ; preds = %bb.wg
  %i.bng = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bnh = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.bnh, label %.body385, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16813
  br label %.body385

bb.wj:                                            ; preds = %bb.wg
  %i.bni = and i32 %.sroa.02.012.i1463, 31
  %i.bnj = shl i32 %i.bmz, %i.bni
  %i.bnk = or i32 %i.bnj, %.sroa.0.013.i1462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62481.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !16814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16812
  store i64 %.sroa.01780.0, ptr %i.cc, align 8, !noalias !16814
  store ptr %.sroa.57.0, ptr %.sroa.42479.0..sroa_idx, align 8, !noalias !16814
  store i64 %.sroa.63.0, ptr %.sroa.52480.0..sroa_idx, align 8, !noalias !16814
  store i32 %i.bmt, ptr %i.et, align 8, !alias.scope !16811
  store i32 %i.bnk, ptr %i.eu, align 4, !alias.scope !16811
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16815
  %i.bnl = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16815 ; 3 uses
  %i.bnm = icmp eq ptr %i.bnl, null
  br i1 %i.bnm, label %bb.wk, label %bb.wm, !prof !26

bb.wk:                                            ; preds = %bb.wj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1474 unwind label %bb.wl

.noexc1474:                                       ; preds = %bb.wk
  unreachable

bb.wl:                                            ; preds = %bb.wk
  %i.bnn = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_os_mem2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cc) #42
  br label %.body385

bb.wm:                                            ; preds = %bb.wj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bnl, ptr noundef nonnull align 8 dereferenceable(56) %i.cc, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.ex

bb.wn:                                            ; preds = %bb.ee
  %i.bno = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.166.2
  %i.bnp = load i8, ptr %i.bno, align 1, !noalias !16816, !noundef !21 ; 2 uses
  %i.bnq = add nuw nsw i64 %.sroa.166.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.bnr = icmp ult i8 %i.bnp, -94
  call void @llvm.assume(i1 %i.bnr)
  call void @llvm.experimental.noalias.scope.decl(metadata !16817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16818
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.wq unwind label %bb.wo, !noalias !16818

bb.wo:                                            ; preds = %bb.wn
  %i.bns = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bnt = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.bnt, label %.body385, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16819
  br label %.body385

bb.wq:                                            ; preds = %bb.wn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62485.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !16820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16818
  store i64 %.sroa.01780.0, ptr %i.cb, align 8, !noalias !16820
  store ptr %.sroa.57.0, ptr %.sroa.42483.0..sroa_idx, align 8, !noalias !16820
  store i64 %.sroa.63.0, ptr %.sroa.52484.0..sroa_idx, align 8, !noalias !16820
  store i8 %i.bnp, ptr %i.es, align 8, !alias.scope !16817
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16821
  %i.bnu = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16821 ; 3 uses
  %i.bnv = icmp eq ptr %i.bnu, null
  br i1 %i.bnv, label %bb.wr, label %bb.wt, !prof !26

bb.wr:                                            ; preds = %bb.wq
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1482 unwind label %bb.ws

.noexc1482:                                       ; preds = %bb.wr
  unreachable

bb.ws:                                            ; preds = %bb.wr
  %i.bnw = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info24SimpleInstrInfo_pblendvbEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cb) #42
  br label %.body385

bb.wt:                                            ; preds = %bb.wq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bnu, ptr noundef nonnull align 8 dereferenceable(56) %i.cb, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %bb.ex

bb.wu:                                            ; preds = %.lr.ph.i746
  %i.bnx = and i32 %.sroa.02.012.i748, 31
  %i.bny = shl i32 %i.acd, %i.bnx
  %i.bnz = or i32 %i.bny, %.sroa.0.013.i747
  %i.boa = icmp ult i64 %i.abz, 11839
  br i1 %i.boa, label %bb.wv, label %.invoke14249

bb.wv:                                            ; preds = %bb.wu
  %i.bob = getelementptr inbounds nuw i8, ptr @11046, i64 %i.acc
  %i.boc = load i8, ptr %i.bob, align 1, !noalias !16822, !noundef !21 ; 2 uses
  %i.bod = add nuw nsw i64 %i.abz, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.boe = icmp ult i8 %i.boc, 7
  call void @llvm.assume(i1 %i.boe)
  call void @llvm.experimental.noalias.scope.decl(metadata !16823)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16824
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.wy unwind label %bb.ww, !noalias !16824

bb.ww:                                            ; preds = %bb.wv
  %i.bof = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bog = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.bog, label %.body385, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16825
  br label %.body385

bb.wy:                                            ; preds = %bb.wv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62489.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !16826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16824
  store i64 %.sroa.01780.0, ptr %i.bu, align 8, !noalias !16826
  store ptr %.sroa.57.0, ptr %.sroa.42487.0..sroa_idx, align 8, !noalias !16826
  store i64 %.sroa.63.0, ptr %.sroa.52488.0..sroa_idx, align 8, !noalias !16826
  store i32 %i.bnz, ptr %i.eq, align 8, !alias.scope !16823
  store i8 %i.boc, ptr %i.er, align 4, !alias.scope !16823
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16827
  %i.boh = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16827 ; 3 uses
  %i.boi = icmp eq ptr %i.boh, null
  br i1 %i.boi, label %bb.wz, label %bb.xb, !prof !26

bb.wz:                                            ; preds = %bb.wy
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1492 unwind label %bb.xa

.noexc1492:                                       ; preds = %bb.wz
  unreachable

bb.xa:                                            ; preds = %bb.wz
  %i.boj = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info25SimpleInstrInfo_push_imm8EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bu) #42
  br label %.body385

bb.xb:                                            ; preds = %bb.wy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.boh, ptr noundef nonnull align 8 dereferenceable(56) %i.bu, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.ex

bb.xc:                                            ; preds = %bb.eh
  %i.bok = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.166.2
  %i.bol = load i8, ptr %i.bok, align 1, !noalias !16828, !noundef !21 ; 2 uses
  %i.bom = add nuw nsw i64 %.sroa.166.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.bon = icmp ult i8 %i.bol, 32
  call void @llvm.assume(i1 %i.bon)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.i, align 8
  %i.boo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768) acquire, align 8, !noalias !16829
  %i.bop = icmp eq i32 %i.boo, 0
  br i1 %i.bop, label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i, label %bb.xd, !prof !34

bb.xd:                                            ; preds = %bb.xc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16829
  store ptr %i.i, ptr %i.h, align 8, !noalias !16829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16829
  store ptr %i.h, ptr %i.g, align 8, !noalias !16829
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768), i1 noundef zeroext false, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11256)
          to label %.noexc1494 unwind label %bb.xk

.noexc1494:                                       ; preds = %bb.xd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16829
  br label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i

_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i: ; preds = %.noexc1494, %bb.xc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.boq = zext nneg i8 %i.bol to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read.716, i64 %i.boq
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read:bb.a
  %i.aaa = icmp eq ptr %i.zz, null
  br i1 %i.aaa, label %bb.hq, label %bb.hs, !prof !26

bb.hq:                                            ; preds = %bb.hp
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc693 unwind label %bb.hr

.noexc693:                                        ; preds = %bb.hq
  unreachable

bb.hr:                                            ; preds = %bb.hq
  %i.aab = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_movabsEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bu) #42
  br label %.body295

bb.hs:                                            ; preds = %bb.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zz, ptr noundef nonnull align 8 dereferenceable(48) %i.bu, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.ec

bb.ht:                                            ; preds = %.lr.ph.i436
  %i.aac = and i32 %.sroa.02.012.i438, 31
  %i.aad = shl i32 %i.oc, %i.aac
  %i.aae = or i32 %i.aad, %.sroa.0.013.i437
  %i.aaf = icmp ult i64 %i.ny, 10869
  br i1 %i.aaf, label %bb.hu, label %._crit_edge.i467.invoke

bb.hu:                                            ; preds = %bb.ht
  %i.aag = getelementptr inbounds nuw i8, ptr @11098, i64 %i.ob
  %i.aah = load i8, ptr %i.aag, align 1, !noalias !17516, !noundef !21
  %i.aai = add nuw nsw i64 %i.ny, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.experimental.noalias.scope.decl(metadata !17517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !17518
  call void @llvm.experimental.noalias.scope.decl(metadata !17519)
  call void @llvm.experimental.noalias.scope.decl(metadata !17520)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !17521
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.44.0, i64 noundef %.sroa.46.0)
          to label %_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString3new.exit.i700 unwind label %bb.hv, !noalias !17521

bb.hv:                                            ; preds = %bb.hu
  %i.aaj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aak = icmp eq i64 %.sroa.01285.0, 0
  br i1 %i.aak, label %.body295, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.44.0, i64 noundef %.sroa.01285.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17522
  br label %.body295

_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString3new.exit.i700: ; preds = %bb.hu
  store i64 %.sroa.01285.0, ptr %i.q, align 8, !alias.scope !17523, !noalias !17517
  store ptr %.sroa.44.0, ptr %.sroa.51526.0..sroa_idx, align 8, !alias.scope !17523, !noalias !17517
  store i64 %.sroa.46.0, ptr %.sroa.71527.0..sroa_idx, align 8, !alias.scope !17523, !noalias !17517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !17524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17521
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17525
  %i.aal = call noundef dereferenceable_or_null(4) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 1) #41, !noalias !17525 ; 4 uses
  %i.aam = icmp eq ptr %i.aal, null
  br i1 %i.aam, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i.i, label %bb.hx

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i.i: ; preds = %_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString3new.exit.i700
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #46
          to label %.noexc.i unwind label %bb.hz, !noalias !17518

.noexc.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i.i
  unreachable

bb.hx:                                            ; preds = %_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString3new.exit.i700
  store i32 1734894456, ptr %i.aal, align 1, !noalias !17526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17527
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @354, i64 noundef 4)
          to label %bb.ia unwind label %bb.hy, !noalias !17526

bb.hy:                                            ; preds = %bb.hx
  %i.aan = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aal, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17528
  br label %.body.i

bb.hz:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i.i
  %i.aao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.hz, %bb.hy
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aao, %bb.hz ], [ %i.aan, %bb.hy ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.q) #42, !noalias !17518
  br label %.body295

bb.ia:                                            ; preds = %bb.hx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !17529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !17529
  store i32 %i.aae, ptr %i.ff, align 8, !alias.scope !17517
  store i8 %i.aah, ptr %i.fg, align 4, !alias.scope !17517
  store i64 4, ptr %i.fh, align 8, !alias.scope !17517
  store ptr %i.aal, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !17517
  store i64 4, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !17517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17518
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17530
  %i.aap = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17530 ; 3 uses
  %i.aaq = icmp eq ptr %i.aap, null
  br i1 %i.aaq, label %bb.ib, label %bb.id, !prof !26

bb.ib:                                            ; preds = %bb.ia
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc704 unwind label %bb.ic

.noexc704:                                        ; preds = %bb.ib
  unreachable

bb.ic:                                            ; preds = %bb.ib
  %i.aar = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info19SimpleInstrInfo_nopEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.bt) #42
  br label %.body295

bb.id:                                            ; preds = %bb.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aap, ptr noundef nonnull align 8 dereferenceable(104) %i.bt, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.ec

bb.ie:                                            ; preds = %.lr.ph.i445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.experimental.noalias.scope.decl(metadata !17531)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17532
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.44.0, i64 noundef %.sroa.46.0)
          to label %bb.ih unwind label %bb.if, !noalias !17532

bb.if:                                            ; preds = %bb.ie
  %i.aas = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aat = icmp eq i64 %.sroa.01285.0, 0
  br i1 %i.aat, label %.body295, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.44.0, i64 noundef %.sroa.01285.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17533
  br label %.body295

bb.ih:                                            ; preds = %bb.ie
  %i.aau = and i32 %.sroa.02.012.i447, 31
  %i.aav = shl i32 %i.oo, %i.aau
  %i.aaw = or i32 %i.aav, %.sroa.0.013.i446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61783.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !17534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17532
  store i64 %.sroa.01285.0, ptr %i.bs, align 8, !noalias !17534
  store ptr %.sroa.44.0, ptr %.sroa.41781.0..sroa_idx, align 8, !noalias !17534
  store i64 %.sroa.46.0, ptr %.sroa.51782.0..sroa_idx, align 8, !noalias !17534
  store i32 %i.aaw, ptr %i.fc, align 8, !alias.scope !17531
  store i32 0, ptr %i.fd, align 4, !alias.scope !17531
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17535
  %i.aax = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17535 ; 3 uses
  %i.aay = icmp eq ptr %i.aax, null
  br i1 %i.aay, label %bb.ii, label %bb.ik, !prof !26

bb.ii:                                            ; preds = %bb.ih
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc712 unwind label %bb.ij

.noexc712:                                        ; preds = %bb.ii
  unreachable

bb.ij:                                            ; preds = %bb.ii
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info18SimpleInstrInfo_osEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bs) #42
  br label %.body295

bb.ik:                                            ; preds = %bb.ih
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aax, ptr noundef nonnull align 8 dereferenceable(56) %i.bs, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.ec

bb.il:                                            ; preds = %.lr.ph.i454
  %i.aba = and i32 %.sroa.02.012.i456, 31
  %i.abb = shl i32 %i.pa, %i.aba
  %i.abc = or i32 %i.abb, %.sroa.0.013.i455
  %i.abd = icmp ult i64 %i.ow, 10869
  br i1 %i.abd, label %.lr.ph.i716, label %._crit_edge.i467.invoke

.lr.ph.i716:                                      ; preds = %bb.il, %bb.im
  %.sroa.0.013.i717 = phi i32 [ %i.abn, %bb.im ], [ 0, %bb.il ] ; 2 uses
  %.sroa.02.012.i718 = phi i32 [ %i.abo, %bb.im ], [ 0, %bb.il ] ; 3 uses
  %i.abe = phi i64 [ %i.abh, %bb.im ], [ %i.oz, %bb.il ] ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr @11098, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1, !noalias !17536, !noundef !21 ; 2 uses
  %i.abh = add nuw nsw i64 %i.abe, 1              ; 3 uses
  %i.abi = zext i8 %i.abg to i32                  ; 2 uses
  %i.abj = icmp sgt i8 %i.abg, -1
  br i1 %i.abj, label %bb.in, label %bb.im

bb.im:                                            ; preds = %.lr.ph.i716
  %i.abk = and i32 %i.abi, 127
  %i.abl = and i32 %.sroa.02.012.i718, 31
  %i.abm = shl i32 %i.abk, %i.abl
  %i.abn = or i32 %i.abm, %.sroa.0.013.i717
  %i.abo = add nuw nsw i32 %.sroa.02.012.i718, 7
  %exitcond.not.i719 = icmp eq i64 %i.abh, 10870
  br i1 %exitcond.not.i719, label %._crit_edge.i467.invoke, label %.lr.ph.i716

bb.in:                                            ; preds = %.lr.ph.i716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !17537)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17538
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.44.0, i64 noundef %.sroa.46.0)
          to label %bb.iq unwind label %bb.io, !noalias !17538

bb.io:                                            ; preds = %bb.in
  %i.abp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abq = icmp eq i64 %.sroa.01285.0, 0
  br i1 %i.abq, label %.body295, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.44.0, i64 noundef %.sroa.01285.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17539
  br label %.body295

bb.iq:                                            ; preds = %bb.in
  %i.abr = and i32 %.sroa.02.012.i718, 31
  %i.abs = shl i32 %i.abi, %i.abr
  %i.abt = or i32 %i.abs, %.sroa.0.013.i717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61787.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !17540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17538
  store i64 %.sroa.01285.0, ptr %i.br, align 8, !noalias !17540
  store ptr %.sroa.44.0, ptr %.sroa.41785.0..sroa_idx, align 8, !noalias !17540
  store i64 %.sroa.46.0, ptr %.sroa.51786.0..sroa_idx, align 8, !noalias !17540
  store i32 %i.abc, ptr %i.fa, align 8, !alias.scope !17537
  store i32 %i.abt, ptr %i.fb, align 4, !alias.scope !17537
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17541
  %i.abu = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17541 ; 3 uses
  %i.abv = icmp eq ptr %i.abu, null
  br i1 %i.abv, label %bb.ir, label %bb.it, !prof !26

bb.ir:                                            ; preds = %bb.iq
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc729 unwind label %bb.is

.noexc729:                                        ; preds = %bb.ir
  unreachable

bb.is:                                            ; preds = %bb.ir
  %i.abw = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info18SimpleInstrInfo_osEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.br) #42
  br label %.body295

bb.it:                                            ; preds = %bb.iq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.abu, ptr noundef nonnull align 8 dereferenceable(56) %i.br, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.ec

bb.iu:                                            ; preds = %.lr.ph.i463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.experimental.noalias.scope.decl(metadata !17542)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17543
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.44.0, i64 noundef %.sroa.46.0)
          to label %bb.ix unwind label %bb.iv, !noalias !17543

bb.iv:                                            ; preds = %bb.iu
  %i.abx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aby = icmp eq i64 %.sroa.01285.0, 0
  br i1 %i.aby, label %.body295, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.44.0, i64 noundef %.sroa.01285.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17544
  br label %.body295

bb.ix:                                            ; preds = %bb.iu
  %i.abz = and i32 %.sroa.02.012.i465, 31
  %i.aca = shl i32 %i.pm, %i.abz
  %i.acb = or i32 %i.aca, %.sroa.0.013.i464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61791.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !17545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17543
  store i64 %.sroa.01285.0, ptr %i.bq, align 8, !noalias !17545
  store ptr %.sroa.44.0, ptr %.sroa.41789.0..sroa_idx, align 8, !noalias !17545
  store i64 %.sroa.46.0, ptr %.sroa.51790.0..sroa_idx, align 8, !noalias !17545
  store i32 %i.acb, ptr %i.ez, align 8, !alias.scope !17542
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17546
  %i.acc = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17546 ; 3 uses
  %i.acd = icmp eq ptr %i.acc, null
  br i1 %i.acd, label %bb.iy, label %bb.ja, !prof !26

bb.iy:                                            ; preds = %bb.ix
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc737 unwind label %bb.iz

.noexc737:                                        ; preds = %bb.iy
  unreachable

bb.iz:                                            ; preds = %bb.iy
  %i.ace = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_os_bndEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bq) #42
  br label %.body295

bb.ja:                                            ; preds = %bb.ix
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.acc, ptr noundef nonnull align 8 dereferenceable(56) %i.bq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.ec

bb.jb:                                            ; preds = %.lr.ph.i472
  %i.acf = and i32 %.sroa.02.012.i474, 31
  %i.acg = shl i32 %i.pz, %i.acf
  %i.ach = or i32 %i.acg, %.sroa.0.013.i473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.aci = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.acj = icmp eq ptr %i.aci, null
  br i1 %i.acj, label %.invoke10470, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit740, !prof !26

.invoke10470:                                     ; preds = %bb.pe, %bb.kt, %bb.mq, %bb.jb
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.cont10471 unwind label %.thread2062

.cont10471:                                       ; preds = %.invoke10470
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit740: ; preds = %bb.jb
  store i64 %.sroa.01285.0, ptr %i.aci, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.51538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51538.0..sroa_idx, align 8
  store i64 1, ptr %i.bo, align 8
  store ptr %i.aci, ptr %i.ew, align 8
  store i64 1, ptr %i.ex, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bo)
          to label %bb.jc unwind label %.body268

bb.jc:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit740
  store i32 %i.ach, ptr %i.ey, align 8, !alias.scope !17547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17548
  %i.ack = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17548 ; 3 uses
  %i.acl = icmp eq ptr %i.ack, null
  br i1 %i.acl, label %bb.jd, label %bb.jf, !prof !26

bb.jd:                                            ; preds = %bb.jc
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc742 unwind label %bb.je

.noexc742:                                        ; preds = %bb.jd
  unreachable

bb.je:                                            ; preds = %bb.jd
  %i.acm = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bp) #42
  br label %.body295

bb.jf:                                            ; preds = %bb.jc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ack, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.ec

bb.jg:                                            ; preds = %.lr.ph.i481
  %i.acn = and i32 %.sroa.02.012.i483, 31
  %i.aco = shl i32 %i.ql, %i.acn
  %i.acp = or i32 %i.aco, %.sroa.0.013.i482
  %i.acq = zext i32 %i.acp to i64                 ; 3 uses
  %i.acr = icmp ugt i64 %i.is, %i.acq
  br i1 %i.acr, label %bb.jh, label %.invoke10466

bb.jh:                                            ; preds = %bb.jg
  %i.acs = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.acq ; 2 uses
  %i.act = load ptr, ptr %i.acs, align 8, !nonnull !21, !noundef !21
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  %i.acv = load i64, ptr %i.acu, align 8, !noundef !21 ; 9 uses
  %.not.i744 = icmp slt i64 %i.acv, 0
  br i1 %.not.i744, label %.invoke10468, label %bb.ji, !prof !37

bb.ji:                                            ; preds = %bb.jh
  %i.acw = icmp eq i64 %i.acv, 0                  ; 2 uses
  br i1 %i.acw, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit747.thread2070, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i745

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i745: ; preds = %bb.ji
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17549
  %i.acx = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.acv, i64 noundef range(i64 1, 9) 1) #41, !noalias !17549 ; 3 uses
  %i.acy = icmp eq ptr %i.acx, null
  br i1 %i.acy, label %.invoke10468, label %bb.jk

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit747.thread2070: ; preds = %bb.ji, %bb.jk
  %i.acz = phi ptr [ %i.acx, %bb.jk ], [ inttoptr (i64 1 to ptr), %bb.ji ] ; 2 uses
  %i.ada = icmp ult i64 %i.qh, 10869
  br i1 %i.ada, label %.lr.ph.i750, label %._crit_edge.i754

.lr.ph.i750:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit747.thread2070, %bb.jj
  %.sroa.0.013.i751 = phi i32 [ %i.adk, %bb.jj ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit747.thread2070 ] ; 2 uses
  %.sroa.02.012.i752 = phi i32 [ %i.adl, %bb.jj ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit747.thread2070 ] ; 3 uses
  %i.adb = phi i64 [ %i.ade, %bb.jj ], [ %i.qk, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit747.thread2070 ] ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr @11098, i64 %i.adb
  %i.add = load i8, ptr %i.adc, align 1, !noalias !17550, !noundef !21 ; 2 uses
  %i.ade = add nuw nsw i64 %i.adb, 1              ; 3 uses
  %i.adf = zext i8 %i.add to i32                  ; 2 uses
  %i.adg = icmp sgt i8 %i.add, -1
  br i1 %i.adg, label %bb.jl, label %bb.jj

._crit_edge.i754:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit747.thread2070, %bb.jj
  %.lcssa7.i749 = phi i64 [ 10870, %bb.jj ], [ %i.qk, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit747.thread2070 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i749, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc755 unwind label %bb.jr

.noexc755:                                        ; preds = %._crit_edge.i754
  unreachable

bb.jj:                                            ; preds = %.lr.ph.i750
  %i.adh = and i32 %i.adf, 127
  %i.adi = and i32 %.sroa.02.012.i752, 31
  %i.adj = shl i32 %i.adh, %i.adi
  %i.adk = or i32 %i.adj, %.sroa.0.013.i751
  %i.adl = add nuw nsw i32 %.sroa.02.012.i752, 7
  %exitcond.not.i753 = icmp eq i64 %i.ade, 10870
  br i1 %exitcond.not.i753, label %._crit_edge.i754, label %.lr.ph.i750

bb.jk:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i745
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.acx, ptr nonnull align 1 %i.act, i64 %i.acv, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit747.thread2070

bb.jl:                                            ; preds = %.lr.ph.i750
  %i.adm = and i32 %.sroa.02.012.i752, 31
  %i.adn = shl i32 %i.adf, %i.adm
  %i.ado = or i32 %i.adn, %.sroa.0.013.i751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.adp = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.adq = icmp eq ptr %i.adp, null
  br i1 %i.adq, label %bb.jm, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit758, !prof !26

bb.jm:                                            ; preds = %bb.jl
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc757 unwind label %bb.jr

.noexc757:                                        ; preds = %bb.jm
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit758: ; preds = %bb.jl
  store i64 %.sroa.01285.0, ptr %i.adp, align 8
  %.sroa.41543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41543.0..sroa_idx, align 8
  %.sroa.51544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adp, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51544.0..sroa_idx, align 8
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adp, i64 24
  store i64 %i.acv, ptr %i.adr, align 8
  %.sroa.41546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adp, i64 32
  store ptr %i.acz, ptr %.sroa.41546.0..sroa_idx, align 8
  %.sroa.51547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adp, i64 40
  store i64 %i.acv, ptr %.sroa.51547.0..sroa_idx, align 8
  store i64 2, ptr %i.bm, align 8
  store ptr %i.adp, ptr %i.et, align 8
  store i64 2, ptr %i.eu, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bm)
          to label %bb.jn unwind label %.body268

bb.jn:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit758
  store i32 %i.ado, ptr %i.ev, align 8, !alias.scope !17551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17552
  %i.ads = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17552 ; 3 uses
  %i.adt = icmp eq ptr %i.ads, null
  br i1 %i.adt, label %bb.jo, label %bb.jq, !prof !26

bb.jo:                                            ; preds = %bb.jn
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc761 unwind label %bb.jp

.noexc761:                                        ; preds = %bb.jo
  unreachable

bb.jp:                                            ; preds = %bb.jo
  %i.adu = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bn) #42
  br label %.body295

bb.jq:                                            ; preds = %bb.jn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ads, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.ec

bb.jr:                                            ; preds = %._crit_edge.i754, %bb.jm
  %lpad.thr_comm2078 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.acw, label %.thread1870, label %bb.js

bb.js:                                            ; preds = %bb.jr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acz, i64 noundef %i.acv, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17553
  br label %.thread1870

bb.jt:                                            ; preds = %bb.rk
  %i.adv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ju:                                            ; preds = %.lr.ph.i490
  %i.adw = and i32 %.sroa.02.012.i492, 31
  %i.adx = shl i32 %i.qx, %i.adw
  %i.ady = or i32 %i.adx, %.sroa.0.013.i491
  %i.adz = zext i32 %i.ady to i64                 ; 3 uses
  %i.aea = icmp ugt i64 %i.is, %i.adz
  br i1 %i.aea, label %bb.jv, label %.invoke10466

bb.jv:                                            ; preds = %bb.ju
  %i.aeb = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.adz ; 2 uses
  %i.aec = load ptr, ptr %i.aeb, align 8, !nonnull !21, !noundef !21
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aee = load i64, ptr %i.aed, align 8, !noundef !21 ; 9 uses
  %.not.i766 = icmp slt i64 %i.aee, 0
  br i1 %.not.i766, label %.invoke10468, label %bb.jw, !prof !37

bb.jw:                                            ; preds = %bb.jv
  %i.aef = icmp eq i64 %i.aee, 0                  ; 2 uses
  br i1 %i.aef, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit769.thread2089, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i767

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i767: ; preds = %bb.jw
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17554
  %i.aeg = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aee, i64 noundef range(i64 1, 9) 1) #41, !noalias !17554 ; 3 uses
  %i.aeh = icmp eq ptr %i.aeg, null
  br i1 %i.aeh, label %.invoke10468, label %bb.jy

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit769.thread2089: ; preds = %bb.jw, %bb.jy
  %i.aei = phi ptr [ %i.aeg, %bb.jy ], [ inttoptr (i64 1 to ptr), %bb.jw ] ; 2 uses
  %i.aej = icmp ult i64 %i.qt, 10869
  br i1 %i.aej, label %.lr.ph.i772, label %._crit_edge.i776

.lr.ph.i772:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit769.thread2089, %bb.jx
  %.sroa.0.013.i773 = phi i32 [ %i.aet, %bb.jx ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit769.thread2089 ] ; 2 uses
  %.sroa.02.012.i774 = phi i32 [ %i.aeu, %bb.jx ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit769.thread2089 ] ; 3 uses
  %i.aek = phi i64 [ %i.aen, %bb.jx ], [ %i.qw, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit769.thread2089 ] ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aek
  %i.aem = load i8, ptr %i.ael, align 1, !noalias !17555, !noundef !21 ; 2 uses
  %i.aen = add nuw nsw i64 %i.aek, 1              ; 4 uses
  %i.aeo = zext i8 %i.aem to i32                  ; 2 uses
  %i.aep = icmp sgt i8 %i.aem, -1
  br i1 %i.aep, label %bb.ka, label %bb.jx

._crit_edge.i776:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit769.thread2089, %bb.jx
  %.lcssa7.i771 = phi i64 [ 10870, %bb.jx ], [ %i.qw, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit769.thread2089 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i771, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc777 unwind label %bb.jz

.noexc777:                                        ; preds = %._crit_edge.i776
  unreachable

bb.jx:                                            ; preds = %.lr.ph.i772
  %i.aeq = and i32 %i.aeo, 127
  %i.aer = and i32 %.sroa.02.012.i774, 31
  %i.aes = shl i32 %i.aeq, %i.aer
  %i.aet = or i32 %i.aes, %.sroa.0.013.i773
  %i.aeu = add nuw nsw i32 %.sroa.02.012.i774, 7
  %exitcond.not.i775 = icmp eq i64 %i.aen, 10870
  br i1 %exitcond.not.i775, label %._crit_edge.i776, label %.lr.ph.i772

bb.jy:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i767
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aeg, ptr nonnull align 1 %i.aec, i64 %i.aee, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit769.thread2089

bb.jz:                                            ; preds = %._crit_edge.i776, %bb.ke, %bb.kd
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

bb.ka:                                            ; preds = %.lr.ph.i772
  %i.aew = and i32 %.sroa.02.012.i774, 31
  %i.aex = shl i32 %i.aeo, %i.aew
  %i.aey = or i32 %i.aex, %.sroa.0.013.i773
  %i.aez = zext i32 %i.aey to i64                 ; 3 uses
  %i.afa = icmp ugt i64 %i.is, %i.aez
  br i1 %i.afa, label %bb.kb, label %bb.kd

bb.kb:                                            ; preds = %bb.ka
  %i.afb = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.aez ; 2 uses
  %i.afc = load ptr, ptr %i.afb, align 8, !nonnull !21, !noundef !21
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.afe = load i64, ptr %i.afd, align 8, !noundef !21 ; 8 uses
  %.not.i779 = icmp slt i64 %i.afe, 0
  br i1 %.not.i779, label %bb.ke, label %bb.kc, !prof !37

bb.kc:                                            ; preds = %bb.kb
  %i.aff = icmp eq i64 %i.afe, 0                  ; 2 uses
  br i1 %i.aff, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit782.thread2105, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i780

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i780: ; preds = %bb.kc
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17556
  %i.afg = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.afe, i64 noundef range(i64 1, 9) 1) #41, !noalias !17556 ; 3 uses
  %i.afh = icmp eq ptr %i.afg, null
  br i1 %i.afh, label %bb.ke, label %bb.kg

bb.kd:                                            ; preds = %bb.ka
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aez, i64 noundef %i.is, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11082) #46
          to label %bb.u unwind label %bb.jz

bb.ke:                                            ; preds = %bb.kb, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i780
  %.sroa.41677.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i780 ], [ 0, %bb.kb ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41677.0.ph, i64 %i.afe) #46
          to label %bb.u unwind label %bb.jz

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit782.thread2105: ; preds = %bb.kc, %bb.kg
  %i.afi = phi ptr [ %i.afg, %bb.kg ], [ inttoptr (i64 1 to ptr), %bb.kc ] ; 2 uses
  %i.afj = icmp ult i64 %i.aek, 10869
  br i1 %i.afj, label %.lr.ph.i785, label %._crit_edge.i789

.lr.ph.i785:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit782.thread2105, %bb.kf
  %.sroa.0.013.i786 = phi i32 [ %i.aft, %bb.kf ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit782.thread2105 ] ; 2 uses
  %.sroa.02.012.i787 = phi i32 [ %i.afu, %bb.kf ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit782.thread2105 ] ; 3 uses
  %i.afk = phi i64 [ %i.afn, %bb.kf ], [ %i.aen, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit782.thread2105 ] ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr @11098, i64 %i.afk
  %i.afm = load i8, ptr %i.afl, align 1, !noalias !17557, !noundef !21 ; 2 uses
  %i.afn = add nuw nsw i64 %i.afk, 1              ; 3 uses
  %i.afo = zext i8 %i.afm to i32                  ; 2 uses
  %i.afp = icmp sgt i8 %i.afm, -1
  br i1 %i.afp, label %bb.kh, label %bb.kf

._crit_edge.i789:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit782.thread2105, %bb.kf
  %.lcssa7.i784 = phi i64 [ 10870, %bb.kf ], [ %i.aen, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit782.thread2105 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i784, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc790 unwind label %bb.kn

.noexc790:                                        ; preds = %._crit_edge.i789
  unreachable

bb.kf:                                            ; preds = %.lr.ph.i785
  %i.afq = and i32 %i.afo, 127
  %i.afr = and i32 %.sroa.02.012.i787, 31
  %i.afs = shl i32 %i.afq, %i.afr
  %i.aft = or i32 %i.afs, %.sroa.0.013.i786
  %i.afu = add nuw nsw i32 %.sroa.02.012.i787, 7
  %exitcond.not.i788 = icmp eq i64 %i.afn, 10870
  br i1 %exitcond.not.i788, label %._crit_edge.i789, label %.lr.ph.i785

bb.kg:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i780
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afg, ptr nonnull align 1 %i.afc, i64 %i.afe, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit782.thread2105

bb.kh:                                            ; preds = %.lr.ph.i785
  %i.afv = and i32 %.sroa.02.012.i787, 31
  %i.afw = shl i32 %i.afo, %i.afv
  %i.afx = or i32 %i.afw, %.sroa.0.013.i786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.afy = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.afz = icmp eq ptr %i.afy, null
  br i1 %i.afz, label %bb.ki, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit793, !prof !26

bb.ki:                                            ; preds = %bb.kh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc792 unwind label %bb.kn

.noexc792:                                        ; preds = %bb.ki
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit793: ; preds = %bb.kh
  store i64 %.sroa.01285.0, ptr %i.afy, align 8
  %.sroa.41555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afy, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41555.0..sroa_idx, align 8
  %.sroa.51556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afy, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51556.0..sroa_idx, align 8
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afy, i64 24
  store i64 %i.aee, ptr %i.aga, align 8
  %.sroa.41558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afy, i64 32
  store ptr %i.aei, ptr %.sroa.41558.0..sroa_idx, align 8
  %.sroa.51559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afy, i64 40
  store i64 %i.aee, ptr %.sroa.51559.0..sroa_idx, align 8
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afy, i64 48
  store i64 %i.afe, ptr %i.agb, align 8
  %.sroa.41561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afy, i64 56
  store ptr %i.afi, ptr %.sroa.41561.0..sroa_idx, align 8
  %.sroa.51562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afy, i64 64
  store i64 %i.afe, ptr %.sroa.51562.0..sroa_idx, align 8
  store i64 3, ptr %i.bk, align 8
  store ptr %i.afy, ptr %i.eq, align 8
  store i64 3, ptr %i.er, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bk)
          to label %bb.kj unwind label %.body268

bb.kj:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit793
  store i32 %i.afx, ptr %i.es, align 8, !alias.scope !17558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17559
  %i.agc = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17559 ; 3 uses
  %i.agd = icmp eq ptr %i.agc, null
  br i1 %i.agd, label %bb.kk, label %bb.km, !prof !26

bb.kk:                                            ; preds = %bb.kj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc796 unwind label %bb.kl

.noexc796:                                        ; preds = %bb.kk
  unreachable

bb.kl:                                            ; preds = %bb.kk
  %i.age = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bl) #42
  br label %.body295

bb.km:                                            ; preds = %bb.kj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.agc, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.ec

bb.kn:                                            ; preds = %._crit_edge.i789, %bb.ki
  %lpad.thr_comm2113 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aff, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afi, i64 noundef %i.afe, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17560
  br label %bb.kp

bb.kp:                                            ; preds = %bb.jz, %bb.kn, %bb.ko
  %.pn163.ph = phi { ptr, i32 } [ %i.aev, %bb.jz ], [ %lpad.thr_comm2113, %bb.kn ], [ %lpad.thr_comm2113, %bb.ko ] ; 2 uses
  br i1 %i.aef, label %.thread1870, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aei, i64 noundef %i.aee, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17561
  br label %.thread1870

bb.kr:                                            ; preds = %.lr.ph.i499
  %i.agf = and i32 %.sroa.02.012.i501, 31
  %i.agg = shl i32 %i.rj, %i.agf
  %i.agh = or i32 %i.agg, %.sroa.0.013.i500
  %i.agi = icmp ult i64 %i.rf, 10869
  br i1 %i.agi, label %.lr.ph.i806, label %._crit_edge.i467.invoke

.lr.ph.i806:                                      ; preds = %bb.kr, %bb.ks
  %.sroa.0.013.i807 = phi i32 [ %i.ags, %bb.ks ], [ 0, %bb.kr ] ; 2 uses
  %.sroa.02.012.i808 = phi i32 [ %i.agt, %bb.ks ], [ 0, %bb.kr ] ; 3 uses
  %i.agj = phi i64 [ %i.agm, %bb.ks ], [ %i.ri, %bb.kr ] ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr @11098, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1, !noalias !17562, !noundef !21 ; 2 uses
  %i.agm = add nuw nsw i64 %i.agj, 1              ; 3 uses
  %i.agn = zext i8 %i.agl to i32                  ; 2 uses
  %i.ago = icmp sgt i8 %i.agl, -1
  br i1 %i.ago, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %.lr.ph.i806
  %i.agp = and i32 %i.agn, 127
  %i.agq = and i32 %.sroa.02.012.i808, 31
  %i.agr = shl i32 %i.agp, %i.agq
  %i.ags = or i32 %i.agr, %.sroa.0.013.i807
  %i.agt = add nuw nsw i32 %.sroa.02.012.i808, 7
  %exitcond.not.i809 = icmp eq i64 %i.agm, 10870
  br i1 %exitcond.not.i809, label %._crit_edge.i467.invoke, label %.lr.ph.i806

bb.kt:                                            ; preds = %.lr.ph.i806
  %i.agu = and i32 %.sroa.02.012.i808, 31
  %i.agv = shl i32 %i.agn, %i.agu
  %i.agw = or i32 %i.agv, %.sroa.0.013.i807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.agx = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.agy = icmp eq ptr %i.agx, null
  br i1 %i.agy, label %.invoke10470, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit814, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit814: ; preds = %bb.kt
  store i64 %.sroa.01285.0, ptr %i.agx, align 8
  %.sroa.41564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41564.0..sroa_idx, align 8
  %.sroa.51565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agx, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51565.0..sroa_idx, align 8
  store i64 1, ptr %i.bi, align 8
  store ptr %i.agx, ptr %i.el, align 8
  store i64 1, ptr %i.em, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bi)
          to label %bb.ku unwind label %.body268

bb.ku:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit814
  store i32 %i.agw, ptr %i.en, align 8, !alias.scope !17563
  store i32 %i.agh, ptr %i.eo, align 4, !alias.scope !17563
  store i32 0, ptr %i.ep, align 8, !alias.scope !17563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17564
  %i.agz = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17564 ; 3 uses
  %i.aha = icmp eq ptr %i.agz, null
  br i1 %i.aha, label %bb.kv, label %bb.kx, !prof !26

bb.kv:                                            ; preds = %bb.ku
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc816 unwind label %bb.kw

.noexc816:                                        ; preds = %bb.kv
  unreachable

bb.kw:                                            ; preds = %bb.kv
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bj) #42
  br label %.body295

bb.kx:                                            ; preds = %bb.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.agz, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.ec

bb.ky:                                            ; preds = %.lr.ph.i508
  %i.ahc = and i32 %.sroa.02.012.i510, 31
  %i.ahd = shl i32 %i.rv, %i.ahc
  %i.ahe = or i32 %i.ahd, %.sroa.0.013.i509
  %i.ahf = zext i32 %i.ahe to i64                 ; 3 uses
  %i.ahg = icmp ugt i64 %i.is, %i.ahf
  br i1 %i.ahg, label %bb.kz, label %.invoke10466

bb.kz:                                            ; preds = %bb.ky
  %i.ahh = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.ahf ; 2 uses
  %i.ahi = load ptr, ptr %i.ahh, align 8, !nonnull !21, !noundef !21
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8
  %i.ahk = load i64, ptr %i.ahj, align 8, !noundef !21 ; 9 uses
  %.not.i818 = icmp slt i64 %i.ahk, 0
  br i1 %.not.i818, label %.invoke10468, label %bb.la, !prof !37

bb.la:                                            ; preds = %bb.kz
  %i.ahl = icmp eq i64 %i.ahk, 0                  ; 2 uses
  br i1 %i.ahl, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit821.thread2124, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i819

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i819: ; preds = %bb.la
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17565
  %i.ahm = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ahk, i64 noundef range(i64 1, 9) 1) #41, !noalias !17565 ; 3 uses
  %i.ahn = icmp eq ptr %i.ahm, null
  br i1 %i.ahn, label %.invoke10468, label %bb.lc

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit821.thread2124: ; preds = %bb.la, %bb.lc
  %i.aho = phi ptr [ %i.ahm, %bb.lc ], [ inttoptr (i64 1 to ptr), %bb.la ] ; 2 uses
  %i.ahp = icmp ult i64 %i.rr, 10869
  br i1 %i.ahp, label %.lr.ph.i824, label %._crit_edge.i828.invoke

.lr.ph.i824:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit821.thread2124, %bb.lb
  %.sroa.0.013.i825 = phi i32 [ %i.aia, %bb.lb ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit821.thread2124 ] ; 2 uses
  %.sroa.02.012.i826 = phi i32 [ %i.aib, %bb.lb ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit821.thread2124 ] ; 3 uses
  %i.ahq = phi i64 [ %i.aht, %bb.lb ], [ %i.ru, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit821.thread2124 ] ; 3 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr @11098, i64 %i.ahq
  %i.ahs = load i8, ptr %i.ahr, align 1, !noalias !17566, !noundef !21 ; 2 uses
  %i.aht = add nuw nsw i64 %i.ahq, 1              ; 4 uses
  %i.ahu = zext i8 %i.ahs to i32                  ; 2 uses
  %i.ahv = icmp sgt i8 %i.ahs, -1
  br i1 %i.ahv, label %bb.ld, label %bb.lb

._crit_edge.i828.invoke:                          ; preds = %bb.ld, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit821.thread2124, %bb.lb, %bb.le
  %i.ahw = phi i64 [ 10870, %bb.le ], [ 10870, %bb.lb ], [ %i.aht, %bb.ld ], [ %i.ru, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit821.thread2124 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ahw, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i828.cont unwind label %bb.ll

._crit_edge.i828.cont:                            ; preds = %._crit_edge.i828.invoke
  unreachable

bb.lb:                                            ; preds = %.lr.ph.i824
  %i.ahx = and i32 %i.ahu, 127
  %i.ahy = and i32 %.sroa.02.012.i826, 31
  %i.ahz = shl i32 %i.ahx, %i.ahy
  %i.aia = or i32 %i.ahz, %.sroa.0.013.i825
  %i.aib = add nuw nsw i32 %.sroa.02.012.i826, 7
  %exitcond.not.i827 = icmp eq i64 %i.aht, 10870
  br i1 %exitcond.not.i827, label %._crit_edge.i828.invoke, label %.lr.ph.i824

bb.lc:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i819
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ahm, ptr nonnull align 1 %i.ahi, i64 %i.ahk, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit821.thread2124

bb.ld:                                            ; preds = %.lr.ph.i824
  %i.aic = and i32 %.sroa.02.012.i826, 31
  %i.aid = shl i32 %i.ahu, %i.aic
  %i.aie = or i32 %i.aid, %.sroa.0.013.i825
  %i.aif = icmp ult i64 %i.ahq, 10869
  br i1 %i.aif, label %.lr.ph.i833, label %._crit_edge.i828.invoke

.lr.ph.i833:                                      ; preds = %bb.ld, %bb.le
  %.sroa.0.013.i834 = phi i32 [ %i.aip, %bb.le ], [ 0, %bb.ld ] ; 2 uses
  %.sroa.02.012.i835 = phi i32 [ %i.aiq, %bb.le ], [ 0, %bb.ld ] ; 3 uses
  %i.aig = phi i64 [ %i.aij, %bb.le ], [ %i.aht, %bb.ld ] ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aig
  %i.aii = load i8, ptr %i.aih, align 1, !noalias !17567, !noundef !21 ; 2 uses
  %i.aij = add nuw nsw i64 %i.aig, 1              ; 3 uses
  %i.aik = zext i8 %i.aii to i32                  ; 2 uses
  %i.ail = icmp sgt i8 %i.aii, -1
  br i1 %i.ail, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %.lr.ph.i833
  %i.aim = and i32 %i.aik, 127
  %i.ain = and i32 %.sroa.02.012.i835, 31
  %i.aio = shl i32 %i.aim, %i.ain
  %i.aip = or i32 %i.aio, %.sroa.0.013.i834
  %i.aiq = add nuw nsw i32 %.sroa.02.012.i835, 7
  %exitcond.not.i836 = icmp eq i64 %i.aij, 10870
  br i1 %exitcond.not.i836, label %._crit_edge.i828.invoke, label %.lr.ph.i833

bb.lf:                                            ; preds = %.lr.ph.i833
  %i.air = and i32 %.sroa.02.012.i835, 31
  %i.ais = shl i32 %i.aik, %i.air
  %i.ait = or i32 %i.ais, %.sroa.0.013.i834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.aiu = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.aiv = icmp eq ptr %i.aiu, null
  br i1 %i.aiv, label %bb.lg, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit841, !prof !26

bb.lg:                                            ; preds = %bb.lf
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc840 unwind label %bb.ll

.noexc840:                                        ; preds = %bb.lg
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit841: ; preds = %bb.lf
  store i64 %.sroa.01285.0, ptr %i.aiu, align 8
  %.sroa.41570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41570.0..sroa_idx, align 8
  %.sroa.51571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51571.0..sroa_idx, align 8
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiu, i64 24
  store i64 %i.ahk, ptr %i.aiw, align 8
  %.sroa.41573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiu, i64 32
  store ptr %i.aho, ptr %.sroa.41573.0..sroa_idx, align 8
  %.sroa.51574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiu, i64 40
  store i64 %i.ahk, ptr %.sroa.51574.0..sroa_idx, align 8
  store i64 2, ptr %i.bg, align 8
  store ptr %i.aiu, ptr %i.eg, align 8
  store i64 2, ptr %i.eh, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bg)
          to label %bb.lh unwind label %.body268

bb.lh:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit841
  store i32 %i.ait, ptr %i.ei, align 8, !alias.scope !17568
  store i32 %i.aie, ptr %i.ej, align 4, !alias.scope !17568
  store i32 0, ptr %i.ek, align 8, !alias.scope !17568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17569
  %i.aix = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17569 ; 3 uses
  %i.aiy = icmp eq ptr %i.aix, null
  br i1 %i.aiy, label %bb.li, label %bb.lk, !prof !26

bb.li:                                            ; preds = %bb.lh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc844 unwind label %bb.lj

.noexc844:                                        ; preds = %bb.li
  unreachable

bb.lj:                                            ; preds = %bb.li
  %i.aiz = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bh) #42
  br label %.body295

bb.lk:                                            ; preds = %bb.lh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aix, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.ec

bb.ll:                                            ; preds = %._crit_edge.i828.invoke, %bb.lg
  %lpad.thr_comm2132 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ahl, label %.thread1870, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aho, i64 noundef %i.ahk, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17570
  br label %.thread1870

bb.ln:                                            ; preds = %.lr.ph.i517
  %i.aja = and i32 %.sroa.02.012.i519, 31
  %i.ajb = shl i32 %i.sh, %i.aja
  %i.ajc = or i32 %i.ajb, %.sroa.0.013.i518
  %i.ajd = zext i32 %i.ajc to i64                 ; 3 uses
  %i.aje = icmp ugt i64 %i.is, %i.ajd
  br i1 %i.aje, label %bb.lo, label %.invoke10466

bb.lo:                                            ; preds = %bb.ln
  %i.ajf = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.ajd ; 2 uses
  %i.ajg = load ptr, ptr %i.ajf, align 8, !nonnull !21, !noundef !21
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  %i.aji = load i64, ptr %i.ajh, align 8, !noundef !21 ; 9 uses
  %.not.i849 = icmp slt i64 %i.aji, 0
  br i1 %.not.i849, label %.invoke10468, label %bb.lp, !prof !37

bb.lp:                                            ; preds = %bb.lo
  %i.ajj = icmp eq i64 %i.aji, 0                  ; 2 uses
  br i1 %i.ajj, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i850

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i850: ; preds = %bb.lp
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17571
  %i.ajk = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aji, i64 noundef range(i64 1, 9) 1) #41, !noalias !17571 ; 3 uses
  %i.ajl = icmp eq ptr %i.ajk, null
  br i1 %i.ajl, label %.invoke10468, label %bb.lr

.invoke10466:                                     ; preds = %bb.on, %bb.nm, %bb.mv, %bb.ln, %bb.ky, %bb.ju, %bb.jg
  %i.ajm = phi i64 [ %i.ahf, %bb.ky ], [ %i.ajd, %bb.ln ], [ %i.acq, %bb.jg ], [ %i.ans, %bb.mv ], [ %i.adz, %bb.ju ], [ %i.aqf, %bb.nm ], [ %i.att, %bb.on ]
  %i.ajn = phi ptr [ @11084, %bb.ky ], [ @11085, %bb.ln ], [ @11080, %bb.jg ], [ @11087, %bb.mv ], [ @11081, %bb.ju ], [ @11088, %bb.nm ], [ @11090, %bb.on ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ajm, i64 noundef %i.is, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajn) #46
          to label %.cont10467 unwind label %.thread2062

.cont10467:                                       ; preds = %.invoke10466
  unreachable

.invoke10468:                                     ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1016, %bb.oo, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i960, %bb.nn, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i920, %bb.mw, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i850, %bb.lo, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i819, %bb.kz, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i767, %bb.jv, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i745, %bb.jh
  %i.ajo = phi i64 [ 0, %bb.kz ], [ 0, %bb.jh ], [ 0, %bb.lo ], [ 0, %bb.mw ], [ 0, %bb.jv ], [ 0, %bb.nn ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i745 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i767 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i819 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i850 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i920 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i960 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1016 ], [ 0, %bb.oo ]
  %i.ajp = phi i64 [ %i.ahk, %bb.kz ], [ %i.acv, %bb.jh ], [ %i.aji, %bb.lo ], [ %i.anx, %bb.mw ], [ %i.aee, %bb.jv ], [ %i.aqk, %bb.nn ], [ %i.acv, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i745 ], [ %i.aee, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i767 ], [ %i.ahk, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i819 ], [ %i.aji, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i850 ], [ %i.anx, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i920 ], [ %i.aqk, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i960 ], [ %i.aty, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1016 ], [ %i.aty, %bb.oo ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ajo, i64 %i.ajp) #46
          to label %.cont10469 unwind label %.thread2062

.cont10469:                                       ; preds = %.invoke10468
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143: ; preds = %bb.lp, %bb.lr
  %i.ajq = phi ptr [ %i.ajk, %bb.lr ], [ inttoptr (i64 1 to ptr), %bb.lp ] ; 2 uses
  %i.ajr = icmp ult i64 %i.sd, 10869
  br i1 %i.ajr, label %.lr.ph.i855, label %._crit_edge.i859

.lr.ph.i855:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143, %bb.lq
  %.sroa.0.013.i856 = phi i32 [ %i.akb, %bb.lq ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143 ] ; 2 uses
  %.sroa.02.012.i857 = phi i32 [ %i.akc, %bb.lq ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143 ] ; 3 uses
  %i.ajs = phi i64 [ %i.ajv, %bb.lq ], [ %i.sg, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143 ] ; 3 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr @11098, i64 %i.ajs
  %i.aju = load i8, ptr %i.ajt, align 1, !noalias !17572, !noundef !21 ; 2 uses
  %i.ajv = add nuw nsw i64 %i.ajs, 1              ; 4 uses
  %i.ajw = zext i8 %i.aju to i32                  ; 2 uses
  %i.ajx = icmp sgt i8 %i.aju, -1
  br i1 %i.ajx, label %bb.lt, label %bb.lq

._crit_edge.i859:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143, %bb.lq
  %.lcssa7.i854 = phi i64 [ 10870, %bb.lq ], [ %i.sg, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i854, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc860 unwind label %bb.ls

.noexc860:                                        ; preds = %._crit_edge.i859
  unreachable

bb.lq:                                            ; preds = %.lr.ph.i855
  %i.ajy = and i32 %i.ajw, 127
  %i.ajz = and i32 %.sroa.02.012.i857, 31
  %i.aka = shl i32 %i.ajy, %i.ajz
  %i.akb = or i32 %i.aka, %.sroa.0.013.i856
  %i.akc = add nuw nsw i32 %.sroa.02.012.i857, 7
  %exitcond.not.i858 = icmp eq i64 %i.ajv, 10870
  br i1 %exitcond.not.i858, label %._crit_edge.i859, label %.lr.ph.i855

bb.lr:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i850
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ajk, ptr nonnull align 1 %i.ajg, i64 %i.aji, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143

bb.ls:                                            ; preds = %._crit_edge.i859, %bb.lx, %bb.lw
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.lt:                                            ; preds = %.lr.ph.i855
  %i.ake = and i32 %.sroa.02.012.i857, 31
  %i.akf = shl i32 %i.ajw, %i.ake
  %i.akg = or i32 %i.akf, %.sroa.0.013.i856
  %i.akh = zext i32 %i.akg to i64                 ; 3 uses
  %i.aki = icmp ugt i64 %i.is, %i.akh
  br i1 %i.aki, label %bb.lu, label %bb.lw

bb.lu:                                            ; preds = %bb.lt
  %i.akj = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.akh ; 2 uses
  %i.akk = load ptr, ptr %i.akj, align 8, !nonnull !21, !noundef !21
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.akm = load i64, ptr %i.akl, align 8, !noundef !21 ; 8 uses
  %.not.i862 = icmp slt i64 %i.akm, 0
  br i1 %.not.i862, label %bb.lx, label %bb.lv, !prof !37

bb.lv:                                            ; preds = %bb.lu
  %i.akn = icmp eq i64 %i.akm, 0                  ; 2 uses
  br i1 %i.akn, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i863

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i863: ; preds = %bb.lv
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17573
  %i.ako = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.akm, i64 noundef range(i64 1, 9) 1) #41, !noalias !17573 ; 3 uses
  %i.akp = icmp eq ptr %i.ako, null
  br i1 %i.akp, label %bb.lx, label %bb.lz

bb.lw:                                            ; preds = %bb.lt
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.akh, i64 noundef %i.is, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11086) #46
          to label %bb.u unwind label %bb.ls

bb.lx:                                            ; preds = %bb.lu, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i863
  %.sroa.41689.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i863 ], [ 0, %bb.lu ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41689.0.ph, i64 %i.akm) #46
          to label %bb.u unwind label %bb.ls

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159: ; preds = %bb.lv, %bb.lz
  %i.akq = phi ptr [ %i.ako, %bb.lz ], [ inttoptr (i64 1 to ptr), %bb.lv ] ; 2 uses
  %i.akr = icmp ult i64 %i.ajs, 10869
  br i1 %i.akr, label %.lr.ph.i868, label %._crit_edge.i872.invoke

.lr.ph.i868:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159, %bb.ly
  %.sroa.0.013.i869 = phi i32 [ %i.alc, %bb.ly ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159 ] ; 2 uses
  %.sroa.02.012.i870 = phi i32 [ %i.ald, %bb.ly ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159 ] ; 3 uses
  %i.aks = phi i64 [ %i.akv, %bb.ly ], [ %i.ajv, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159 ] ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aks
  %i.aku = load i8, ptr %i.akt, align 1, !noalias !17574, !noundef !21 ; 2 uses
  %i.akv = add nuw nsw i64 %i.aks, 1              ; 4 uses
  %i.akw = zext i8 %i.aku to i32                  ; 2 uses
  %i.akx = icmp sgt i8 %i.aku, -1
  br i1 %i.akx, label %bb.ma, label %bb.ly

._crit_edge.i872.invoke:                          ; preds = %bb.ma, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159, %bb.ly, %bb.mb
  %i.aky = phi i64 [ 10870, %bb.mb ], [ 10870, %bb.ly ], [ %i.akv, %bb.ma ], [ %i.ajv, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aky, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i872.cont unwind label %bb.mi

._crit_edge.i872.cont:                            ; preds = %._crit_edge.i872.invoke
  unreachable

bb.ly:                                            ; preds = %.lr.ph.i868
  %i.akz = and i32 %i.akw, 127
  %i.ala = and i32 %.sroa.02.012.i870, 31
  %i.alb = shl i32 %i.akz, %i.ala
  %i.alc = or i32 %i.alb, %.sroa.0.013.i869
  %i.ald = add nuw nsw i32 %.sroa.02.012.i870, 7
  %exitcond.not.i871 = icmp eq i64 %i.akv, 10870
  br i1 %exitcond.not.i871, label %._crit_edge.i872.invoke, label %.lr.ph.i868

bb.lz:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i863
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ako, ptr nonnull align 1 %i.akk, i64 %i.akm, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159

bb.ma:                                            ; preds = %.lr.ph.i868
  %i.ale = and i32 %.sroa.02.012.i870, 31
  %i.alf = shl i32 %i.akw, %i.ale
  %i.alg = or i32 %i.alf, %.sroa.0.013.i869
  %i.alh = icmp ult i64 %i.aks, 10869
  br i1 %i.alh, label %.lr.ph.i877, label %._crit_edge.i872.invoke

.lr.ph.i877:                                      ; preds = %bb.ma, %bb.mb
  %.sroa.0.013.i878 = phi i32 [ %i.alr, %bb.mb ], [ 0, %bb.ma ] ; 2 uses
  %.sroa.02.012.i879 = phi i32 [ %i.als, %bb.mb ], [ 0, %bb.ma ] ; 3 uses
  %i.ali = phi i64 [ %i.all, %bb.mb ], [ %i.akv, %bb.ma ] ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr @11098, i64 %i.ali
  %i.alk = load i8, ptr %i.alj, align 1, !noalias !17575, !noundef !21 ; 2 uses
  %i.all = add nuw nsw i64 %i.ali, 1              ; 3 uses
  %i.alm = zext i8 %i.alk to i32                  ; 2 uses
  %i.aln = icmp sgt i8 %i.alk, -1
  br i1 %i.aln, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %.lr.ph.i877
  %i.alo = and i32 %i.alm, 127
  %i.alp = and i32 %.sroa.02.012.i879, 31
  %i.alq = shl i32 %i.alo, %i.alp
  %i.alr = or i32 %i.alq, %.sroa.0.013.i878
  %i.als = add nuw nsw i32 %.sroa.02.012.i879, 7
  %exitcond.not.i880 = icmp eq i64 %i.all, 10870
  br i1 %exitcond.not.i880, label %._crit_edge.i872.invoke, label %.lr.ph.i877

bb.mc:                                            ; preds = %.lr.ph.i877
  %i.alt = and i32 %.sroa.02.012.i879, 31
  %i.alu = shl i32 %i.alm, %i.alt
  %i.alv = or i32 %i.alu, %.sroa.0.013.i878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.alw = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.alx = icmp eq ptr %i.alw, null
  br i1 %i.alx, label %bb.md, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit885, !prof !26

bb.md:                                            ; preds = %bb.mc
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc884 unwind label %bb.mi

.noexc884:                                        ; preds = %bb.md
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit885: ; preds = %bb.mc
  store i64 %.sroa.01285.0, ptr %i.alw, align 8
  %.sroa.41582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41582.0..sroa_idx, align 8
  %.sroa.51583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51583.0..sroa_idx, align 8
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alw, i64 24
  store i64 %i.aji, ptr %i.aly, align 8
  %.sroa.41585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 32
  store ptr %i.ajq, ptr %.sroa.41585.0..sroa_idx, align 8
  %.sroa.51586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 40
  store i64 %i.aji, ptr %.sroa.51586.0..sroa_idx, align 8
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 48
  store i64 %i.akm, ptr %i.alz, align 8
  %.sroa.41588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 56
  store ptr %i.akq, ptr %.sroa.41588.0..sroa_idx, align 8
  %.sroa.51589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 64
  store i64 %i.akm, ptr %.sroa.51589.0..sroa_idx, align 8
  store i64 3, ptr %i.be, align 8
  store ptr %i.alw, ptr %i.eb, align 8
  store i64 3, ptr %i.ec, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.be)
          to label %bb.me unwind label %.body268

bb.me:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit885
  store i32 %i.alv, ptr %i.ed, align 8, !alias.scope !17576
  store i32 %i.alg, ptr %i.ee, align 4, !alias.scope !17576
  store i32 0, ptr %i.ef, align 8, !alias.scope !17576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17577
  %i.ama = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17577 ; 3 uses
  %i.amb = icmp eq ptr %i.ama, null
  br i1 %i.amb, label %bb.mf, label %bb.mh, !prof !26

bb.mf:                                            ; preds = %bb.me
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc888 unwind label %bb.mg

.noexc888:                                        ; preds = %bb.mf
  unreachable

bb.mg:                                            ; preds = %bb.mf
  %i.amc = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bf) #42
  br label %.body295

bb.mh:                                            ; preds = %bb.me
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ama, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.ec

bb.mi:                                            ; preds = %._crit_edge.i872.invoke, %bb.md
  %lpad.thr_comm2167 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.akn, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akq, i64 noundef %i.akm, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17578
  br label %bb.mk

bb.mk:                                            ; preds = %bb.ls, %bb.mi, %bb.mj
  %.pn158.ph = phi { ptr, i32 } [ %i.akd, %bb.ls ], [ %lpad.thr_comm2167, %bb.mi ], [ %lpad.thr_comm2167, %bb.mj ] ; 2 uses
  br i1 %i.ajj, label %.thread1870, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajq, i64 noundef %i.aji, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17579
  br label %.thread1870

bb.mm:                                            ; preds = %.lr.ph.i526
  %i.amd = and i32 %.sroa.02.012.i528, 31
  %i.ame = shl i32 %i.st, %i.amd
  %i.amf = or i32 %i.ame, %.sroa.0.013.i527
  %i.amg = icmp ult i64 %i.sp, 10869
  br i1 %i.amg, label %.lr.ph.i898, label %._crit_edge.i467.invoke

.lr.ph.i898:                                      ; preds = %bb.mm, %bb.mn
  %.sroa.0.013.i899 = phi i32 [ %i.amq, %bb.mn ], [ 0, %bb.mm ] ; 2 uses
  %.sroa.02.012.i900 = phi i32 [ %i.amr, %bb.mn ], [ 0, %bb.mm ] ; 3 uses
  %i.amh = phi i64 [ %i.amk, %bb.mn ], [ %i.ss, %bb.mm ] ; 3 uses
  %i.ami = getelementptr inbounds nuw i8, ptr @11098, i64 %i.amh
  %i.amj = load i8, ptr %i.ami, align 1, !noalias !17580, !noundef !21 ; 2 uses
  %i.amk = add nuw nsw i64 %i.amh, 1              ; 4 uses
  %i.aml = zext i8 %i.amj to i32                  ; 2 uses
  %i.amm = icmp sgt i8 %i.amj, -1
  br i1 %i.amm, label %bb.mo, label %bb.mn

bb.mn:                                            ; preds = %.lr.ph.i898
  %i.amn = and i32 %i.aml, 127
  %i.amo = and i32 %.sroa.02.012.i900, 31
  %i.amp = shl i32 %i.amn, %i.amo
  %i.amq = or i32 %i.amp, %.sroa.0.013.i899
  %i.amr = add nuw nsw i32 %.sroa.02.012.i900, 7
  %exitcond.not.i901 = icmp eq i64 %i.amk, 10870
  br i1 %exitcond.not.i901, label %._crit_edge.i467.invoke, label %.lr.ph.i898

bb.mo:                                            ; preds = %.lr.ph.i898
  %i.ams = and i32 %.sroa.02.012.i900, 31
  %i.amt = shl i32 %i.aml, %i.ams
  %i.amu = or i32 %i.amt, %.sroa.0.013.i899
  %i.amv = icmp ult i64 %i.amh, 10869
  br i1 %i.amv, label %.lr.ph.i907, label %._crit_edge.i467.invoke

.lr.ph.i907:                                      ; preds = %bb.mo, %bb.mp
  %.sroa.0.013.i908 = phi i32 [ %i.anf, %bb.mp ], [ 0, %bb.mo ] ; 2 uses
  %.sroa.02.012.i909 = phi i32 [ %i.ang, %bb.mp ], [ 0, %bb.mo ] ; 3 uses
  %i.amw = phi i64 [ %i.amz, %bb.mp ], [ %i.amk, %bb.mo ] ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr @11098, i64 %i.amw
  %i.amy = load i8, ptr %i.amx, align 1, !noalias !17581, !noundef !21 ; 2 uses
  %i.amz = add nuw nsw i64 %i.amw, 1              ; 3 uses
  %i.ana = zext i8 %i.amy to i32                  ; 2 uses
  %i.anb = icmp sgt i8 %i.amy, -1
  br i1 %i.anb, label %bb.mq, label %bb.mp

bb.mp:                                            ; preds = %.lr.ph.i907
  %i.anc = and i32 %i.ana, 127
  %i.and = and i32 %.sroa.02.012.i909, 31
  %i.ane = shl i32 %i.anc, %i.and
  %i.anf = or i32 %i.ane, %.sroa.0.013.i908
  %i.ang = add nuw nsw i32 %.sroa.02.012.i909, 7
  %exitcond.not.i910 = icmp eq i64 %i.amz, 10870
  br i1 %exitcond.not.i910, label %._crit_edge.i467.invoke, label %.lr.ph.i907

bb.mq:                                            ; preds = %.lr.ph.i907
  %i.anh = and i32 %.sroa.02.012.i909, 31
  %i.ani = shl i32 %i.ana, %i.anh
  %i.anj = or i32 %i.ani, %.sroa.0.013.i908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.ank = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.anl = icmp eq ptr %i.ank, null
  br i1 %i.anl, label %.invoke10470, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit915, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit915: ; preds = %bb.mq
  store i64 %.sroa.01285.0, ptr %i.ank, align 8
  %.sroa.41591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ank, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41591.0..sroa_idx, align 8
  %.sroa.51592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51592.0..sroa_idx, align 8
  store i64 1, ptr %i.bc, align 8
  store ptr %i.ank, ptr %i.dw, align 8
  store i64 1, ptr %i.dx, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bc)
          to label %bb.mr unwind label %.body268

bb.mr:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit915
  store i32 %i.amu, ptr %i.dy, align 8, !alias.scope !17582
  store i32 %i.amf, ptr %i.dz, align 4, !alias.scope !17582
  store i32 %i.anj, ptr %i.ea, align 8, !alias.scope !17582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17583
  %i.anm = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17583 ; 3 uses
  %i.ann = icmp eq ptr %i.anm, null
  br i1 %i.ann, label %bb.ms, label %bb.mu, !prof !26

bb.ms:                                            ; preds = %bb.mr
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc917 unwind label %bb.mt

.noexc917:                                        ; preds = %bb.ms
  unreachable

bb.mt:                                            ; preds = %bb.ms
  %i.ano = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bd) #42
  br label %.body295

bb.mu:                                            ; preds = %bb.mr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.anm, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.ec

bb.mv:                                            ; preds = %.lr.ph.i535
  %i.anp = and i32 %.sroa.02.012.i537, 31
  %i.anq = shl i32 %i.tf, %i.anp
  %i.anr = or i32 %i.anq, %.sroa.0.013.i536
  %i.ans = zext i32 %i.anr to i64                 ; 3 uses
  %i.ant = icmp ugt i64 %i.is, %i.ans
  br i1 %i.ant, label %bb.mw, label %.invoke10466

bb.mw:                                            ; preds = %bb.mv
  %i.anu = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.ans ; 2 uses
  %i.anv = load ptr, ptr %i.anu, align 8, !nonnull !21, !noundef !21
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anu, i64 8
  %i.anx = load i64, ptr %i.anw, align 8, !noundef !21 ; 9 uses
  %.not.i919 = icmp slt i64 %i.anx, 0
  br i1 %.not.i919, label %.invoke10468, label %bb.mx, !prof !37

bb.mx:                                            ; preds = %bb.mw
  %i.any = icmp eq i64 %i.anx, 0                  ; 2 uses
  br i1 %i.any, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i920

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i920: ; preds = %bb.mx
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17584
  %i.anz = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.anx, i64 noundef range(i64 1, 9) 1) #41, !noalias !17584 ; 3 uses
  %i.aoa = icmp eq ptr %i.anz, null
  br i1 %i.aoa, label %.invoke10468, label %bb.mz

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178: ; preds = %bb.mx, %bb.mz
  %i.aob = phi ptr [ %i.anz, %bb.mz ], [ inttoptr (i64 1 to ptr), %bb.mx ] ; 2 uses
  %i.aoc = icmp ult i64 %i.tb, 10869
  br i1 %i.aoc, label %.lr.ph.i925, label %._crit_edge.i929.invoke

.lr.ph.i925:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178, %bb.my
  %.sroa.0.013.i926 = phi i32 [ %i.aon, %bb.my ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178 ] ; 2 uses
  %.sroa.02.012.i927 = phi i32 [ %i.aoo, %bb.my ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178 ] ; 3 uses
  %i.aod = phi i64 [ %i.aog, %bb.my ], [ %i.te, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178 ] ; 3 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aod
  %i.aof = load i8, ptr %i.aoe, align 1, !noalias !17585, !noundef !21 ; 2 uses
  %i.aog = add nuw nsw i64 %i.aod, 1              ; 4 uses
  %i.aoh = zext i8 %i.aof to i32                  ; 2 uses
  %i.aoi = icmp sgt i8 %i.aof, -1
  br i1 %i.aoi, label %bb.na, label %bb.my

._crit_edge.i929.invoke:                          ; preds = %bb.nc, %bb.na, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178, %bb.my, %bb.nb, %bb.nd
  %i.aoj = phi i64 [ 10870, %bb.my ], [ 10870, %bb.nb ], [ 10870, %bb.nd ], [ %i.aow, %bb.nc ], [ %i.aog, %bb.na ], [ %i.te, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aoj, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i929.cont unwind label %bb.nk

._crit_edge.i929.cont:                            ; preds = %._crit_edge.i929.invoke
  unreachable

bb.my:                                            ; preds = %.lr.ph.i925
  %i.aok = and i32 %i.aoh, 127
  %i.aol = and i32 %.sroa.02.012.i927, 31
  %i.aom = shl i32 %i.aok, %i.aol
  %i.aon = or i32 %i.aom, %.sroa.0.013.i926
  %i.aoo = add nuw nsw i32 %.sroa.02.012.i927, 7
  %exitcond.not.i928 = icmp eq i64 %i.aog, 10870
  br i1 %exitcond.not.i928, label %._crit_edge.i929.invoke, label %.lr.ph.i925

bb.mz:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i920
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.anz, ptr nonnull align 1 %i.anv, i64 %i.anx, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178

bb.na:                                            ; preds = %.lr.ph.i925
  %i.aop = and i32 %.sroa.02.012.i927, 31
  %i.aoq = shl i32 %i.aoh, %i.aop
  %i.aor = or i32 %i.aoq, %.sroa.0.013.i926
  %i.aos = icmp ult i64 %i.aod, 10869
  br i1 %i.aos, label %.lr.ph.i934, label %._crit_edge.i929.invoke

.lr.ph.i934:                                      ; preds = %bb.na, %bb.nb
  %.sroa.0.013.i935 = phi i32 [ %i.apc, %bb.nb ], [ 0, %bb.na ] ; 2 uses
  %.sroa.02.012.i936 = phi i32 [ %i.apd, %bb.nb ], [ 0, %bb.na ] ; 3 uses
  %i.aot = phi i64 [ %i.aow, %bb.nb ], [ %i.aog, %bb.na ] ; 3 uses
  %i.aou = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aot
  %i.aov = load i8, ptr %i.aou, align 1, !noalias !17586, !noundef !21 ; 2 uses
  %i.aow = add nuw nsw i64 %i.aot, 1              ; 4 uses
  %i.aox = zext i8 %i.aov to i32                  ; 2 uses
  %i.aoy = icmp sgt i8 %i.aov, -1
  br i1 %i.aoy, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %.lr.ph.i934
  %i.aoz = and i32 %i.aox, 127
  %i.apa = and i32 %.sroa.02.012.i936, 31
  %i.apb = shl i32 %i.aoz, %i.apa
  %i.apc = or i32 %i.apb, %.sroa.0.013.i935
  %i.apd = add nuw nsw i32 %.sroa.02.012.i936, 7
  %exitcond.not.i937 = icmp eq i64 %i.aow, 10870
  br i1 %exitcond.not.i937, label %._crit_edge.i929.invoke, label %.lr.ph.i934

bb.nc:                                            ; preds = %.lr.ph.i934
  %i.ape = and i32 %.sroa.02.012.i936, 31
  %i.apf = shl i32 %i.aox, %i.ape
  %i.apg = or i32 %i.apf, %.sroa.0.013.i935
  %i.aph = icmp ult i64 %i.aot, 10869
  br i1 %i.aph, label %.lr.ph.i943, label %._crit_edge.i929.invoke

.lr.ph.i943:                                      ; preds = %bb.nc, %bb.nd
  %.sroa.0.013.i944 = phi i32 [ %i.apr, %bb.nd ], [ 0, %bb.nc ] ; 2 uses
  %.sroa.02.012.i945 = phi i32 [ %i.aps, %bb.nd ], [ 0, %bb.nc ] ; 3 uses
  %i.api = phi i64 [ %i.apl, %bb.nd ], [ %i.aow, %bb.nc ] ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr @11098, i64 %i.api
  %i.apk = load i8, ptr %i.apj, align 1, !noalias !17587, !noundef !21 ; 2 uses
  %i.apl = add nuw nsw i64 %i.api, 1              ; 3 uses
  %i.apm = zext i8 %i.apk to i32                  ; 2 uses
  %i.apn = icmp sgt i8 %i.apk, -1
  br i1 %i.apn, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %.lr.ph.i943
  %i.apo = and i32 %i.apm, 127
  %i.app = and i32 %.sroa.02.012.i945, 31
  %i.apq = shl i32 %i.apo, %i.app
  %i.apr = or i32 %i.apq, %.sroa.0.013.i944
  %i.aps = add nuw nsw i32 %.sroa.02.012.i945, 7
  %exitcond.not.i946 = icmp eq i64 %i.apl, 10870
  br i1 %exitcond.not.i946, label %._crit_edge.i929.invoke, label %.lr.ph.i943

bb.ne:                                            ; preds = %.lr.ph.i943
  %i.apt = and i32 %.sroa.02.012.i945, 31
  %i.apu = shl i32 %i.apm, %i.apt
  %i.apv = or i32 %i.apu, %.sroa.0.013.i944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.apw = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.apx = icmp eq ptr %i.apw, null
  br i1 %i.apx, label %bb.nf, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951, !prof !26

bb.nf:                                            ; preds = %bb.ne
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc950 unwind label %bb.nk

.noexc950:                                        ; preds = %bb.nf
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951: ; preds = %bb.ne
  store i64 %.sroa.01285.0, ptr %i.apw, align 8
  %.sroa.41597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41597.0..sroa_idx, align 8
  %.sroa.51598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51598.0..sroa_idx, align 8
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apw, i64 24
  store i64 %i.anx, ptr %i.apy, align 8
  %.sroa.41600.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 32
  store ptr %i.aob, ptr %.sroa.41600.0..sroa_idx, align 8
  %.sroa.51601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 40
  store i64 %i.anx, ptr %.sroa.51601.0..sroa_idx, align 8
  store i64 2, ptr %i.ba, align 8
  store ptr %i.apw, ptr %i.dr, align 8
  store i64 2, ptr %i.ds, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ba)
          to label %bb.ng unwind label %.body268

bb.ng:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951
  store i32 %i.apg, ptr %i.dt, align 8, !alias.scope !17588
  store i32 %i.aor, ptr %i.du, align 4, !alias.scope !17588
  store i32 %i.apv, ptr %i.dv, align 8, !alias.scope !17588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17589
  %i.apz = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17589 ; 3 uses
  %i.aqa = icmp eq ptr %i.apz, null
  br i1 %i.aqa, label %bb.nh, label %bb.nj, !prof !26

bb.nh:                                            ; preds = %bb.ng
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc954 unwind label %bb.ni

.noexc954:                                        ; preds = %bb.nh
  unreachable

bb.ni:                                            ; preds = %bb.nh
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bb) #42
  br label %.body295

bb.nj:                                            ; preds = %bb.ng
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.apz, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.ec

bb.nk:                                            ; preds = %._crit_edge.i929.invoke, %bb.nf
  %lpad.thr_comm2186 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.any, label %.thread1870, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aob, i64 noundef %i.anx, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17590
  br label %.thread1870

bb.nm:                                            ; preds = %.lr.ph.i544
  %i.aqc = and i32 %.sroa.02.012.i546, 31
  %i.aqd = shl i32 %i.tr, %i.aqc
  %i.aqe = or i32 %i.aqd, %.sroa.0.013.i545
  %i.aqf = zext i32 %i.aqe to i64                 ; 3 uses
  %i.aqg = icmp ugt i64 %i.is, %i.aqf
  br i1 %i.aqg, label %bb.nn, label %.invoke10466

bb.nn:                                            ; preds = %bb.nm
  %i.aqh = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.aqf ; 2 uses
  %i.aqi = load ptr, ptr %i.aqh, align 8, !nonnull !21, !noundef !21
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  %i.aqk = load i64, ptr %i.aqj, align 8, !noundef !21 ; 9 uses
  %.not.i959 = icmp slt i64 %i.aqk, 0
  br i1 %.not.i959, label %.invoke10468, label %bb.no, !prof !37

bb.no:                                            ; preds = %bb.nn
  %i.aql = icmp eq i64 %i.aqk, 0                  ; 2 uses
  br i1 %i.aql, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i960

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i960: ; preds = %bb.no
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17591
  %i.aqm = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aqk, i64 noundef range(i64 1, 9) 1) #41, !noalias !17591 ; 3 uses
  %i.aqn = icmp eq ptr %i.aqm, null
  br i1 %i.aqn, label %.invoke10468, label %bb.nq

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197: ; preds = %bb.no, %bb.nq
  %i.aqo = phi ptr [ %i.aqm, %bb.nq ], [ inttoptr (i64 1 to ptr), %bb.no ] ; 2 uses
  %i.aqp = icmp ult i64 %i.tn, 10869
  br i1 %i.aqp, label %.lr.ph.i965, label %._crit_edge.i969

.lr.ph.i965:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197, %bb.np
  %.sroa.0.013.i966 = phi i32 [ %i.aqz, %bb.np ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197 ] ; 2 uses
  %.sroa.02.012.i967 = phi i32 [ %i.ara, %bb.np ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197 ] ; 3 uses
  %i.aqq = phi i64 [ %i.aqt, %bb.np ], [ %i.tq, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197 ] ; 3 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aqq
  %i.aqs = load i8, ptr %i.aqr, align 1, !noalias !17592, !noundef !21 ; 2 uses
  %i.aqt = add nuw nsw i64 %i.aqq, 1              ; 4 uses
  %i.aqu = zext i8 %i.aqs to i32                  ; 2 uses
  %i.aqv = icmp sgt i8 %i.aqs, -1
  br i1 %i.aqv, label %bb.ns, label %bb.np

._crit_edge.i969:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197, %bb.np
  %.lcssa7.i964 = phi i64 [ 10870, %bb.np ], [ %i.tq, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i964, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc970 unwind label %bb.nr

.noexc970:                                        ; preds = %._crit_edge.i969
  unreachable

bb.np:                                            ; preds = %.lr.ph.i965
  %i.aqw = and i32 %i.aqu, 127
  %i.aqx = and i32 %.sroa.02.012.i967, 31
  %i.aqy = shl i32 %i.aqw, %i.aqx
  %i.aqz = or i32 %i.aqy, %.sroa.0.013.i966
  %i.ara = add nuw nsw i32 %.sroa.02.012.i967, 7
  %exitcond.not.i968 = icmp eq i64 %i.aqt, 10870
  br i1 %exitcond.not.i968, label %._crit_edge.i969, label %.lr.ph.i965

bb.nq:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i960
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqm, ptr nonnull align 1 %i.aqi, i64 %i.aqk, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197

bb.nr:                                            ; preds = %._crit_edge.i969, %bb.nw, %bb.nv
  %i.arb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ol

bb.ns:                                            ; preds = %.lr.ph.i965
  %i.arc = and i32 %.sroa.02.012.i967, 31
  %i.ard = shl i32 %i.aqu, %i.arc
  %i.are = or i32 %i.ard, %.sroa.0.013.i966
  %i.arf = zext i32 %i.are to i64                 ; 3 uses
  %i.arg = icmp ugt i64 %i.is, %i.arf
  br i1 %i.arg, label %bb.nt, label %bb.nv

bb.nt:                                            ; preds = %bb.ns
  %i.arh = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.arf ; 2 uses
  %i.ari = load ptr, ptr %i.arh, align 8, !nonnull !21, !noundef !21
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arh, i64 8
  %i.ark = load i64, ptr %i.arj, align 8, !noundef !21 ; 8 uses
  %.not.i972 = icmp slt i64 %i.ark, 0
  br i1 %.not.i972, label %bb.nw, label %bb.nu, !prof !37

bb.nu:                                            ; preds = %bb.nt
  %i.arl = icmp eq i64 %i.ark, 0                  ; 2 uses
  br i1 %i.arl, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i973

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i973: ; preds = %bb.nu
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17593
  %i.arm = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ark, i64 noundef range(i64 1, 9) 1) #41, !noalias !17593 ; 3 uses
  %i.arn = icmp eq ptr %i.arm, null
  br i1 %i.arn, label %bb.nw, label %bb.ny

bb.nv:                                            ; preds = %bb.ns
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.arf, i64 noundef %i.is, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11089) #46
          to label %bb.u unwind label %bb.nr

bb.nw:                                            ; preds = %bb.nt, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i973
  %.sroa.41701.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i973 ], [ 0, %bb.nt ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41701.0.ph, i64 %i.ark) #46
          to label %bb.u unwind label %bb.nr

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213: ; preds = %bb.nu, %bb.ny
  %i.aro = phi ptr [ %i.arm, %bb.ny ], [ inttoptr (i64 1 to ptr), %bb.nu ] ; 2 uses
  %i.arp = icmp ult i64 %i.aqq, 10869
  br i1 %i.arp, label %.lr.ph.i978, label %._crit_edge.i982.invoke

.lr.ph.i978:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213, %bb.nx
  %.sroa.0.013.i979 = phi i32 [ %i.asa, %bb.nx ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213 ] ; 2 uses
  %.sroa.02.012.i980 = phi i32 [ %i.asb, %bb.nx ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213 ] ; 3 uses
  %i.arq = phi i64 [ %i.art, %bb.nx ], [ %i.aqt, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213 ] ; 3 uses
  %i.arr = getelementptr inbounds nuw i8, ptr @11098, i64 %i.arq
  %i.ars = load i8, ptr %i.arr, align 1, !noalias !17594, !noundef !21 ; 2 uses
  %i.art = add nuw nsw i64 %i.arq, 1              ; 4 uses
  %i.aru = zext i8 %i.ars to i32                  ; 2 uses
  %i.arv = icmp sgt i8 %i.ars, -1
  br i1 %i.arv, label %bb.nz, label %bb.nx

._crit_edge.i982.invoke:                          ; preds = %bb.ob, %bb.nz, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213, %bb.nx, %bb.oa, %bb.oc
  %i.arw = phi i64 [ 10870, %bb.nx ], [ 10870, %bb.oa ], [ 10870, %bb.oc ], [ %i.asj, %bb.ob ], [ %i.art, %bb.nz ], [ %i.aqt, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.arw, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i982.cont unwind label %bb.oj

._crit_edge.i982.cont:                            ; preds = %._crit_edge.i982.invoke
  unreachable

bb.nx:                                            ; preds = %.lr.ph.i978
  %i.arx = and i32 %i.aru, 127
  %i.ary = and i32 %.sroa.02.012.i980, 31
  %i.arz = shl i32 %i.arx, %i.ary
  %i.asa = or i32 %i.arz, %.sroa.0.013.i979
  %i.asb = add nuw nsw i32 %.sroa.02.012.i980, 7
  %exitcond.not.i981 = icmp eq i64 %i.art, 10870
  br i1 %exitcond.not.i981, label %._crit_edge.i982.invoke, label %.lr.ph.i978

bb.ny:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i973
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.arm, ptr nonnull align 1 %i.ari, i64 %i.ark, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213

bb.nz:                                            ; preds = %.lr.ph.i978
  %i.asc = and i32 %.sroa.02.012.i980, 31
  %i.asd = shl i32 %i.aru, %i.asc
  %i.ase = or i32 %i.asd, %.sroa.0.013.i979
  %i.asf = icmp ult i64 %i.arq, 10869
  br i1 %i.asf, label %.lr.ph.i987, label %._crit_edge.i982.invoke

.lr.ph.i987:                                      ; preds = %bb.nz, %bb.oa
  %.sroa.0.013.i988 = phi i32 [ %i.asp, %bb.oa ], [ 0, %bb.nz ] ; 2 uses
  %.sroa.02.012.i989 = phi i32 [ %i.asq, %bb.oa ], [ 0, %bb.nz ] ; 3 uses
  %i.asg = phi i64 [ %i.asj, %bb.oa ], [ %i.art, %bb.nz ] ; 3 uses
  %i.ash = getelementptr inbounds nuw i8, ptr @11098, i64 %i.asg
  %i.asi = load i8, ptr %i.ash, align 1, !noalias !17595, !noundef !21 ; 2 uses
  %i.asj = add nuw nsw i64 %i.asg, 1              ; 4 uses
  %i.ask = zext i8 %i.asi to i32                  ; 2 uses
  %i.asl = icmp sgt i8 %i.asi, -1
  br i1 %i.asl, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %.lr.ph.i987
  %i.asm = and i32 %i.ask, 127
  %i.asn = and i32 %.sroa.02.012.i989, 31
  %i.aso = shl i32 %i.asm, %i.asn
  %i.asp = or i32 %i.aso, %.sroa.0.013.i988
  %i.asq = add nuw nsw i32 %.sroa.02.012.i989, 7
  %exitcond.not.i990 = icmp eq i64 %i.asj, 10870
  br i1 %exitcond.not.i990, label %._crit_edge.i982.invoke, label %.lr.ph.i987

bb.ob:                                            ; preds = %.lr.ph.i987
  %i.asr = and i32 %.sroa.02.012.i989, 31
  %i.ass = shl i32 %i.ask, %i.asr
  %i.ast = or i32 %i.ass, %.sroa.0.013.i988
  %i.asu = icmp ult i64 %i.asg, 10869
  br i1 %i.asu, label %.lr.ph.i996, label %._crit_edge.i982.invoke

.lr.ph.i996:                                      ; preds = %bb.ob, %bb.oc
  %.sroa.0.013.i997 = phi i32 [ %i.ate, %bb.oc ], [ 0, %bb.ob ] ; 2 uses
  %.sroa.02.012.i998 = phi i32 [ %i.atf, %bb.oc ], [ 0, %bb.ob ] ; 3 uses
  %i.asv = phi i64 [ %i.asy, %bb.oc ], [ %i.asj, %bb.ob ] ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr @11098, i64 %i.asv
  %i.asx = load i8, ptr %i.asw, align 1, !noalias !17596, !noundef !21 ; 2 uses
  %i.asy = add nuw nsw i64 %i.asv, 1              ; 3 uses
  %i.asz = zext i8 %i.asx to i32                  ; 2 uses
  %i.ata = icmp sgt i8 %i.asx, -1
  br i1 %i.ata, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %.lr.ph.i996
  %i.atb = and i32 %i.asz, 127
  %i.atc = and i32 %.sroa.02.012.i998, 31
  %i.atd = shl i32 %i.atb, %i.atc
  %i.ate = or i32 %i.atd, %.sroa.0.013.i997
  %i.atf = add nuw nsw i32 %.sroa.02.012.i998, 7
  %exitcond.not.i999 = icmp eq i64 %i.asy, 10870
  br i1 %exitcond.not.i999, label %._crit_edge.i982.invoke, label %.lr.ph.i996

bb.od:                                            ; preds = %.lr.ph.i996
  %i.atg = and i32 %.sroa.02.012.i998, 31
  %i.ath = shl i32 %i.asz, %i.atg
  %i.ati = or i32 %i.ath, %.sroa.0.013.i997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.atj = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.atk = icmp eq ptr %i.atj, null
  br i1 %i.atk, label %bb.oe, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1004, !prof !26

bb.oe:                                            ; preds = %bb.od
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1003 unwind label %bb.oj

.noexc1003:                                       ; preds = %bb.oe
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1004: ; preds = %bb.od
  store i64 %.sroa.01285.0, ptr %i.atj, align 8
  %.sroa.41609.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atj, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41609.0..sroa_idx, align 8
  %.sroa.51610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atj, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51610.0..sroa_idx, align 8
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atj, i64 24
  store i64 %i.aqk, ptr %i.atl, align 8
  %.sroa.41612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atj, i64 32
  store ptr %i.aqo, ptr %.sroa.41612.0..sroa_idx, align 8
  %.sroa.51613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atj, i64 40
  store i64 %i.aqk, ptr %.sroa.51613.0..sroa_idx, align 8
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atj, i64 48
  store i64 %i.ark, ptr %i.atm, align 8
  %.sroa.41615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atj, i64 56
  store ptr %i.aro, ptr %.sroa.41615.0..sroa_idx, align 8
  %.sroa.51616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atj, i64 64
  store i64 %i.ark, ptr %.sroa.51616.0..sroa_idx, align 8
  store i64 3, ptr %i.ay, align 8
  store ptr %i.atj, ptr %i.dm, align 8
  store i64 3, ptr %i.dn, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ay)
          to label %bb.of unwind label %.body268

bb.of:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1004
  store i32 %i.ast, ptr %i.do, align 8, !alias.scope !17597
  store i32 %i.ase, ptr %i.dp, align 4, !alias.scope !17597
  store i32 %i.ati, ptr %i.dq, align 8, !alias.scope !17597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17598
  %i.atn = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17598 ; 3 uses
  %i.ato = icmp eq ptr %i.atn, null
  br i1 %i.ato, label %bb.og, label %bb.oi, !prof !26

bb.og:                                            ; preds = %bb.of
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1007 unwind label %bb.oh

.noexc1007:                                       ; preds = %bb.og
  unreachable

bb.oh:                                            ; preds = %bb.og
  %i.atp = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.az) #42
  br label %.body295

bb.oi:                                            ; preds = %bb.of
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.atn, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.ec

bb.oj:                                            ; preds = %._crit_edge.i982.invoke, %bb.oe
  %lpad.thr_comm2221 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.arl, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aro, i64 noundef %i.ark, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17599
  br label %bb.ol

bb.ol:                                            ; preds = %bb.nr, %bb.oj, %bb.ok
  %.pn.ph = phi { ptr, i32 } [ %i.arb, %bb.nr ], [ %lpad.thr_comm2221, %bb.oj ], [ %lpad.thr_comm2221, %bb.ok ] ; 2 uses
  br i1 %i.aql, label %.thread1870, label %bb.om

bb.om:                                            ; preds = %bb.ol
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqo, i64 noundef %i.aqk, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17600
  br label %.thread1870

bb.on:                                            ; preds = %.lr.ph.i553
  %i.atq = and i32 %.sroa.02.012.i555, 31
  %i.atr = shl i32 %i.ud, %i.atq
  %i.ats = or i32 %i.atr, %.sroa.0.013.i554
  %i.att = zext i32 %i.ats to i64                 ; 3 uses
  %i.atu = icmp ugt i64 %i.is, %i.att
  br i1 %i.atu, label %bb.oo, label %.invoke10466

bb.oo:                                            ; preds = %bb.on
  %i.atv = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.att ; 2 uses
  %i.atw = load ptr, ptr %i.atv, align 8, !nonnull !21, !noundef !21
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atv, i64 8
  %i.aty = load i64, ptr %i.atx, align 8, !noundef !21 ; 9 uses
  %.not.i1015 = icmp slt i64 %i.aty, 0
  br i1 %.not.i1015, label %.invoke10468, label %bb.op, !prof !37

bb.op:                                            ; preds = %bb.oo
  %i.atz = icmp eq i64 %i.aty, 0                  ; 2 uses
  br i1 %i.atz, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1016

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1016: ; preds = %bb.op
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17601
  %i.aua = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aty, i64 noundef range(i64 1, 9) 1) #41, !noalias !17601 ; 3 uses
  %i.aub = icmp eq ptr %i.aua, null
  br i1 %i.aub, label %.invoke10468, label %bb.or

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232: ; preds = %bb.op, %bb.or
  %i.auc = phi ptr [ %i.aua, %bb.or ], [ inttoptr (i64 1 to ptr), %bb.op ] ; 2 uses
  %i.aud = icmp ult i64 %i.tz, 10869
  br i1 %i.aud, label %.lr.ph.i1021, label %._crit_edge.i1025.invoke

.lr.ph.i1021:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232, %bb.oq
  %.sroa.0.013.i1022 = phi i32 [ %i.auo, %bb.oq ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232 ] ; 2 uses
  %.sroa.02.012.i1023 = phi i32 [ %i.aup, %bb.oq ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232 ] ; 3 uses
  %i.aue = phi i64 [ %i.auh, %bb.oq ], [ %i.uc, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232 ] ; 3 uses
  %i.auf = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aue
  %i.aug = load i8, ptr %i.auf, align 1, !noalias !17602, !noundef !21 ; 2 uses
  %i.auh = add nuw nsw i64 %i.aue, 1              ; 4 uses
  %i.aui = zext i8 %i.aug to i32                  ; 2 uses
  %i.auj = icmp sgt i8 %i.aug, -1
  br i1 %i.auj, label %bb.os, label %bb.oq

._crit_edge.i1025.invoke:                         ; preds = %bb.ou, %bb.os, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232, %bb.oq, %bb.ot
  %i.auk = phi i64 [ 10870, %bb.oq ], [ 10870, %bb.ot ], [ %i.aux, %bb.ou ], [ %i.auh, %bb.os ], [ %i.uc, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.auk, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1025.cont unwind label %bb.pb

._crit_edge.i1025.cont:                           ; preds = %._crit_edge.i1025.invoke
  unreachable

bb.oq:                                            ; preds = %.lr.ph.i1021
  %i.aul = and i32 %i.aui, 127
  %i.aum = and i32 %.sroa.02.012.i1023, 31
  %i.aun = shl i32 %i.aul, %i.aum
  %i.auo = or i32 %i.aun, %.sroa.0.013.i1022
  %i.aup = add nuw nsw i32 %.sroa.02.012.i1023, 7
  %exitcond.not.i1024 = icmp eq i64 %i.auh, 10870
  br i1 %exitcond.not.i1024, label %._crit_edge.i1025.invoke, label %.lr.ph.i1021

bb.or:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1016
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aua, ptr nonnull align 1 %i.atw, i64 %i.aty, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232

.body268:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1004, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit885, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit841, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit793, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit758, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1050, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit915, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit814, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit740, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1040
  %lpad.thr_comm.split-lp2241 = landingpad { ptr, i32 }
          cleanup
  br label %.body295

bb.os:                                            ; preds = %.lr.ph.i1021
  %i.auq = and i32 %.sroa.02.012.i1023, 31
  %i.aur = shl i32 %i.aui, %i.auq
  %i.aus = or i32 %i.aur, %.sroa.0.013.i1022
  %i.aut = icmp ult i64 %i.aue, 10869
  br i1 %i.aut, label %.lr.ph.i1030, label %._crit_edge.i1025.invoke

.lr.ph.i1030:                                     ; preds = %bb.os, %bb.ot
  %.sroa.0.013.i1031 = phi i32 [ %i.avd, %bb.ot ], [ 0, %bb.os ] ; 2 uses
  %.sroa.02.012.i1032 = phi i32 [ %i.ave, %bb.ot ], [ 0, %bb.os ] ; 3 uses
  %i.auu = phi i64 [ %i.aux, %bb.ot ], [ %i.auh, %bb.os ] ; 4 uses
  %i.auv = getelementptr inbounds nuw i8, ptr @11098, i64 %i.auu
  %i.auw = load i8, ptr %i.auv, align 1, !noalias !17603, !noundef !21 ; 2 uses
  %i.aux = add nuw nsw i64 %i.auu, 1              ; 4 uses
  %i.auy = zext i8 %i.auw to i32                  ; 2 uses
  %i.auz = icmp sgt i8 %i.auw, -1
  br i1 %i.auz, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %.lr.ph.i1030
  %i.ava = and i32 %i.auy, 127
  %i.avb = and i32 %.sroa.02.012.i1032, 31
  %i.avc = shl i32 %i.ava, %i.avb
  %i.avd = or i32 %i.avc, %.sroa.0.013.i1031
  %i.ave = add nuw nsw i32 %.sroa.02.012.i1032, 7
  %exitcond.not.i1033 = icmp eq i64 %i.aux, 10870
  br i1 %exitcond.not.i1033, label %._crit_edge.i1025.invoke, label %.lr.ph.i1030

bb.ou:                                            ; preds = %.lr.ph.i1030
  %i.avf = and i32 %.sroa.02.012.i1032, 31
  %i.avg = shl i32 %i.auy, %i.avf
  %i.avh = or i32 %i.avg, %.sroa.0.013.i1031
  %i.avi = icmp ult i64 %i.auu, 10869
  br i1 %i.avi, label %bb.ov, label %._crit_edge.i1025.invoke

bb.ov:                                            ; preds = %bb.ou
  %i.avj = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aux
  %i.avk = load i8, ptr %i.avj, align 1, !noalias !17604, !noundef !21
  %i.avl = add nuw nsw i64 %i.auu, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.avm = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.avn = icmp eq ptr %i.avm, null
  br i1 %i.avn, label %bb.ow, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1040, !prof !26

bb.ow:                                            ; preds = %bb.ov
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1039 unwind label %bb.pb

.noexc1039:                                       ; preds = %bb.ow
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1040: ; preds = %bb.ov
  store i64 %.sroa.01285.0, ptr %i.avm, align 8
  %.sroa.41621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avm, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41621.0..sroa_idx, align 8
  %.sroa.51622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avm, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51622.0..sroa_idx, align 8
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avm, i64 24
  store i64 %i.aty, ptr %i.avo, align 8
  %.sroa.41624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avm, i64 32
  store ptr %i.auc, ptr %.sroa.41624.0..sroa_idx, align 8
  %.sroa.51625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avm, i64 40
  store i64 %i.aty, ptr %.sroa.51625.0..sroa_idx, align 8
  store i64 2, ptr %i.aw, align 8
  store ptr %i.avm, ptr %i.dh, align 8
  store i64 2, ptr %i.di, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aw)
          to label %bb.ox unwind label %.body268

bb.ox:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1040
  store i32 %i.avh, ptr %i.dj, align 8, !alias.scope !17605
  store i32 %i.aus, ptr %i.dk, align 4, !alias.scope !17605
  store i8 %i.avk, ptr %i.dl, align 8, !alias.scope !17605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17606
  %i.avp = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17606 ; 3 uses
  %i.avq = icmp eq ptr %i.avp, null
  br i1 %i.avq, label %bb.oy, label %bb.pa, !prof !26

bb.oy:                                            ; preds = %bb.ox
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1042 unwind label %bb.oz

.noexc1042:                                       ; preds = %bb.oy
  unreachable

bb.oz:                                            ; preds = %bb.oy
  %i.avr = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info23SimpleInstrInfo_os_loopEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ax) #42
  br label %.body295

bb.pa:                                            ; preds = %bb.ox
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.avp, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.ec

bb.pb:                                            ; preds = %._crit_edge.i1025.invoke, %bb.ow
  %lpad.thr_comm2240 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.atz, label %.thread1870, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.auc, i64 noundef %i.aty, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17607
  br label %.thread1870

bb.pd:                                            ; preds = %.lr.ph.i562
  %i.avs = and i32 %.sroa.02.012.i564, 31
  %i.avt = shl i32 %i.up, %i.avs
  %i.avu = or i32 %i.avt, %.sroa.0.013.i563
  %i.avv = icmp ult i64 %i.ul, 10869
  br i1 %i.avv, label %bb.pe, label %._crit_edge.i467.invoke

bb.pe:                                            ; preds = %bb.pd
  %i.avw = getelementptr inbounds nuw i8, ptr @11098, i64 %i.uo
  %i.avx = load i8, ptr %i.avw, align 1, !noalias !17608, !noundef !21
  %i.avy = add nuw nsw i64 %i.ul, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.avz = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.awa = icmp eq ptr %i.avz, null
  br i1 %i.awa, label %.invoke10470, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1050, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1050: ; preds = %bb.pe
  store i64 %.sroa.01285.0, ptr %i.avz, align 8
  %.sroa.41627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avz, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41627.0..sroa_idx, align 8
  %.sroa.51628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avz, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51628.0..sroa_idx, align 8
  store i64 1, ptr %i.au, align 8
  store ptr %i.avz, ptr %i.dc, align 8
  store i64 1, ptr %i.dd, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.au)
          to label %bb.pf unwind label %.body268

bb.pf:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1050
  store i32 %i.avu, ptr %i.de, align 8, !alias.scope !17609
  store i32 -1, ptr %i.df, align 4, !alias.scope !17609
  store i8 %i.avx, ptr %i.dg, align 8, !alias.scope !17609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17610
  %i.awb = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17610 ; 3 uses
  %i.awc = icmp eq ptr %i.awb, null
  br i1 %i.awc, label %bb.pg, label %bb.pi, !prof !26

bb.pg:                                            ; preds = %bb.pf
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1053 unwind label %bb.ph

.noexc1053:                                       ; preds = %bb.pg
  unreachable

bb.ph:                                            ; preds = %bb.pg
  %i.awd = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info23SimpleInstrInfo_os_loopEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.av) #42
  br label %.body295

bb.pi:                                            ; preds = %bb.pf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.awb, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ec

bb.pj:                                            ; preds = %bb.dl
  %i.awe = getelementptr inbounds nuw i8, ptr @11098, i64 %.sroa.120.2
  %i.awf = load i8, ptr %i.awe, align 1, !noalias !17611, !noundef !21 ; 2 uses
  %i.awg = add nuw nsw i64 %.sroa.120.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.awh = icmp ult i8 %i.awf, 32
  call void @llvm.assume(i1 %i.awh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.k, align 8
  %i.awi = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768) acquire, align 8, !noalias !17612
  %i.awj = icmp eq i32 %i.awi, 0
  br i1 %i.awj, label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i, label %bb.pk, !prof !34

bb.pk:                                            ; preds = %bb.pj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17612
  store ptr %i.k, ptr %i.j, align 8, !noalias !17612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17612
  store ptr %i.j, ptr %i.i, align 8, !noalias !17612
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768), i1 noundef zeroext false, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11256)
          to label %.noexc1055 unwind label %bb.pr

.noexc1055:                                       ; preds = %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17612
  br label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i

_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i: ; preds = %.noexc1055, %bb.pj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.awk = zext nneg i8 %i.awf to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read.716, i64 %i.awk
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.awm = load ptr, ptr %i.awl, align 8, !nonnull !21, !noundef !21
  %i.awn = getelementptr inbounds nuw i8, ptr %switch.load, i64 16
  %i.awo = load i64, ptr %i.awn, align 8, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !17613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17614
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.44.0, i64 noundef %.sroa.46.0)
          to label %bb.pn unwind label %bb.pl, !noalias !17614

bb.pl:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i
  %i.awp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.awq = icmp eq i64 %.sroa.01285.0, 0
  br i1 %i.awq, label %.body295, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.44.0, i64 noundef %.sroa.01285.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17615
  br label %.body295

bb.pn:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61795.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !17616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17614
  store i64 %.sroa.01285.0, ptr %i.at, align 8, !noalias !17616
  store ptr %.sroa.44.0, ptr %.sroa.41793.0..sroa_idx, align 8, !noalias !17616
  store i64 %.sroa.46.0, ptr %.sroa.51794.0..sroa_idx, align 8, !noalias !17616
  store ptr %i.awm, ptr %i.da, align 8, !alias.scope !17613
  store i64 %i.awo, ptr %i.db, align 8, !alias.scope !17613
end_hunk_8
