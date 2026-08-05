inline.NumInlined: 762
inline.NumDeleted: 300
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs0_NtNtCscmhy3HNZezq_8protobuf10descriptor19generated_code_infoNtB5_10AnnotationNtNtB9_7message7Message10merge_from:bb.a
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %.sroa.620.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.723.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !align !14, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.w = load i32, ptr %i.h, align 4, !range !417, !noundef !5
  %i.x = load i32, ptr %i.i, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.y = trunc nuw i32 %i.w to i1
  br i1 %i.y, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.x, label %bb.d [
    i32 10, label %bb.e
    i32 8, label %bb.f
    i32 18, label %bb.g
    i32 24, label %bb.h
    i32 32, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef align 8 ptr @_RNvNtNtCscmhy3HNZezq_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) ; 2 uses
  %.not40 = icmp eq ptr %i.z, null
  br i1 %.not40, label %bb.j, label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.aa = tail call noundef align 8 ptr @_RNvMNtCscmhy3HNZezq_8protobuf18coded_input_streamNtB2_16CodedInputStream31read_repeated_packed_int32_into(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.j, label %.loopexit

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtCscmhy3HNZezq_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int32(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.ab = load i32, ptr %i.d, align 8, !range !417, !noundef !5
  %i.ac = trunc nuw i32 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCscmhy3HNZezq_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.ad = load i64, ptr %i.c, align 8, !range !4, !noundef !5 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, -1
  %i.af = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.ae, label %bb.n, label %bb.o

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCscmhy3HNZezq_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int32(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.ag = load i32, ptr %i.b, align 8, !range !417, !noundef !5
  %i.ah = trunc nuw i32 %i.ag to i1
  br i1 %i.ah, label %bb.t, label %bb.u

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCscmhy3HNZezq_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int32(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.ai = load i32, ptr %i.a, align 8, !range !417, !noundef !5
  %i.aj = trunc nuw i32 %i.ai to i1
  br i1 %i.aj, label %bb.v, label %bb.w

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.w, %bb.u, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECscmhy3HNZezq_8protobuf.exit, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VeclE8push_mutCscmhy3HNZezq_8protobuf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMNtCscmhy3HNZezq_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) #30
  %i.ak = load i32, ptr %i.e, align 8, !range !417, !noundef !5
  %i.al = trunc nuw i32 %i.ak to i1
  br i1 %i.al, label %._crit_edge, label %bb.b

bb.k:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5, !align !14, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.l:                                             ; preds = %bb.f
  %i.ao = load i32, ptr %i.q, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ap = load i64, ptr %i.r, align 8, !alias.scope !874, !noundef !5 ; 3 uses
  %i.aq = load i64, ptr %0, align 8, !range !15, !alias.scope !874, !noundef !5
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.m, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VeclE8push_mutCscmhy3HNZezq_8protobuf.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #26
  br label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VeclE8push_mutCscmhy3HNZezq_8protobuf.exit

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VeclE8push_mutCscmhy3HNZezq_8protobuf.exit: ; preds = %bb.l, %bb.m
  %i.as = load ptr, ptr %i.s, align 8, !alias.scope !874, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ap
  store i32 %i.ao, ptr %i.at, align 4
  %i.au = add i64 %i.ap, 1
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !874
  br label %bb.j

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.o:                                             ; preds = %bb.g
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = load i64, ptr %i.p, align 8, !range !4, !alias.scope !877, !noundef !5
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECscmhy3HNZezq_8protobuf.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscmhy3HNZezq_8protobuf.exit.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscmhy3HNZezq_8protobuf.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECscmhy3HNZezq_8protobuf.exit unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscmhy3HNZezq_8protobuf.exit.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.az, %bb.s ], [ %i.ax, %bb.q ]
  store i64 %i.ad, ptr %i.p, align 8
  store ptr %i.af, ptr %.sroa.620.0..sroa_idx21, align 8
  store i64 %.sroa.536.0.copyload, ptr %.sroa.723.0..sroa_idx24, align 8
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECscmhy3HNZezq_8protobuf.exit: ; preds = %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscmhy3HNZezq_8protobuf.exit.i
  store i64 %i.ad, ptr %i.p, align 8
  store ptr %i.af, ptr %.sroa.620.0..sroa_idx21, align 8
  store i64 %.sroa.536.0.copyload, ptr %.sroa.723.0..sroa_idx24, align 8
  br label %bb.j

bb.t:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !align !14, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.u:                                             ; preds = %bb.h
  %i.bc = load i32, ptr %i.m, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 1, ptr %i.n, align 8
  store i32 %i.bc, ptr %i.o, align 4
  br label %bb.j

bb.v:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !5, !align !14, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.w:                                             ; preds = %bb.i
  %i.bf = load i32, ptr %i.j, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.k, align 8
  store i32 %i.bf, ptr %i.l, align 4
  br label %bb.j

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.b, %._crit_edge, %bb.v, %bb.t, %bb.n, %bb.k
  %.sroa.0.1 = phi ptr [ %i.af, %bb.n ], [ %i.v, %._crit_edge ], [ %i.bb, %bb.t ], [ %i.be, %bb.v ], [ %i.an, %bb.k ], [ %i.z, %bb.d ], [ %i.aa, %bb.e ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs0_NtNtCscmhy3HNZezq_8protobuf10descriptor19generated_code_infoNtB5_10AnnotationNtNtB9_7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtNtCscmhy3HNZezq_8protobuf2rt6packed22vec_packed_varint_sizelEB6_.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.d, 1
  %1 = icmp eq i64 %i.d, 1
  br i1 %1, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.l, %.preheader.i ] ; 3 uses
  %.sroa.02.0.i.i.a = phi i64 [ 0, %.preheader.i.preheader.new ], [ %10, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %2, align 4, !alias.scope !880, !noundef !5
  %3 = or i32 %.val.i.i, 1
  %4 = sext i32 %3 to i64
  %5 = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %4, i1 true)
  %6 = trunc nuw nsw i64 %5 to i8
  %.lhs.trunc.i.i.i.i.i = sub nuw nsw i8 70, %6
  %7 = udiv i8 %.lhs.trunc.i.i.i.i.i, 7
  %.zext.i.i.i.i.i = zext nneg i8 %7 to i64
  %8 = add i64 %.sroa.02.0.i.i.a, %.zext.i.i.i.i.i
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.04.0.i.i
  %9 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val.i.i.1 = load i32, ptr %9, align 4, !alias.scope !880, !noundef !5
  %i.g = or i32 %.val.i.i.1, 1
  %i.h = sext i32 %i.g to i64
  %i.i = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i8
  %.lhs.trunc.i.i.i.i.i.1 = sub nuw nsw i8 70, %i.j
  %i.k = udiv i8 %.lhs.trunc.i.i.i.i.i.1, 7
  %.zext.i.i.i.i.i.1 = zext nneg i8 %i.k to i64
  %10 = add i64 %8, %.zext.i.i.i.i.i.1            ; 3 uses
  %i.l = add nuw nsw i64 %.sroa.04.0.i.i, 2       ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters3map8map_foldRlyyNCINvNtNtCscmhy3HNZezq_8protobuf2rt6packed27vec_packed_varint_data_sizelE0NCINvXsC_NtBW_5accumyNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2o_.exit.i.unr-lcssa, label %.preheader.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters3map8map_foldRlyyNCINvNtNtCscmhy3HNZezq_8protobuf2rt6packed27vec_packed_varint_data_sizelE0NCINvXsC_NtBW_5accumyNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2o_.exit.i.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters3map8map_foldRlyyNCINvNtNtCscmhy3HNZezq_8protobuf2rt6packed27vec_packed_varint_data_sizelE0NCINvXsC_NtBW_5accumyNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2o_.exit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters3map8map_foldRlyyNCINvNtNtCscmhy3HNZezq_8protobuf2rt6packed27vec_packed_varint_data_sizelE0NCINvXsC_NtBW_5accumyNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2o_.exit.i.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters3map8map_foldRlyyNCINvNtNtCscmhy3HNZezq_8protobuf2rt6packed27vec_packed_varint_data_sizelE0NCINvXsC_NtBW_5accumyNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2o_.exit.i.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %10, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters3map8map_foldRlyyNCINvNtNtCscmhy3HNZezq_8protobuf2rt6packed27vec_packed_varint_data_sizelE0NCINvXsC_NtBW_5accumyNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2o_.exit.i.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.04.0.i.i.epil.init
  %.val.i.i.epil = load i32, ptr %11, align 4, !alias.scope !880, !noundef !5
  %12 = or i32 %.val.i.i.epil, 1
  %13 = sext i32 %12 to i64
  %14 = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %13, i1 true)
  %15 = trunc nuw nsw i64 %14 to i8
  %.lhs.trunc.i.i.i.i.i.epil = sub nuw nsw i8 70, %15
  %16 = udiv i8 %.lhs.trunc.i.i.i.i.i.epil, 7
  %.zext.i.i.i.i.i.epil = zext nneg i8 %16 to i64
  %17 = add i64 %.sroa.02.0.i.i.epil.init, %.zext.i.i.i.i.i.epil
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters3map8map_foldRlyyNCINvNtNtCscmhy3HNZezq_8protobuf2rt6packed27vec_packed_varint_data_sizelE0NCINvXsC_NtBW_5accumyNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2o_.exit.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters3map8map_foldRlyyNCINvNtNtCscmhy3HNZezq_8protobuf2rt6packed27vec_packed_varint_data_sizelE0NCINvXsC_NtBW_5accumyNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2o_.exit.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters3map8map_foldRlyyNCINvNtNtCscmhy3HNZezq_8protobuf2rt6packed27vec_packed_varint_data_sizelE0NCINvXsC_NtBW_5accumyNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2o_.exit.i.unr-lcssa, %.preheader.i.epil.preheader
  %.lcssa = phi i64 [ %10, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters3map8map_foldRlyyNCINvNtNtCscmhy3HNZezq_8protobuf2rt6packed27vec_packed_varint_data_sizelE0NCINvXsC_NtBW_5accumyNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2o_.exit.i.unr-lcssa ], [ %17, %.preheader.i.epil.preheader ] ; 2 uses
  %i.m = or i64 %.lcssa, 1
  %i.n = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = trunc nuw nsw i64 %i.n to i8
  %.lhs.trunc.i = sub nuw nsw i8 70, %i.o
  %i.p = udiv i8 %.lhs.trunc.i, 7
  %narrow.i = add nuw nsw i8 %i.p, 1
  %i.q = zext nneg i8 %narrow.i to i64
  %i.r = add i64 %.lcssa, %i.q
  br label %_RINvNtNtCscmhy3HNZezq_8protobuf2rt6packed22vec_packed_varint_sizelEB6_.exit

_RINvNtNtCscmhy3HNZezq_8protobuf2rt6packed22vec_packed_varint_sizelEB6_.exit: ; preds = %bb.a, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters3map8map_foldRlyyNCINvNtNtCscmhy3HNZezq_8protobuf2rt6packed27vec_packed_varint_data_sizelE0NCINvXsC_NtBW_5accumyNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2o_.exit.i
  %.sroa.0.0.i = phi i64 [ %i.r, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters3map8map_foldRlyyNCINvNtNtCscmhy3HNZezq_8protobuf2rt6packed27vec_packed_varint_data_sizelE0NCINvXsC_NtBW_5accumyNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2o_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.t, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvNtNtCscmhy3HNZezq_8protobuf2rt6packed22vec_packed_varint_sizelEB6_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 2 uses
  %i.w = or i64 %i.v, 1
  %i.x = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = trunc nuw nsw i64 %i.x to i8
  %.lhs.trunc = sub nuw nsw i8 70, %i.y
  %i.z = udiv i8 %.lhs.trunc, 7
  %.zext = zext nneg i8 %i.z to i64
  %i.aa = add i64 %.sroa.0.0.i, 1
  %i.ab = add i64 %i.aa, %i.v
  %i.ac = add i64 %i.ab, %.zext
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtNtCscmhy3HNZezq_8protobuf2rt6packed22vec_packed_varint_sizelEB6_.exit, %bb.b
  %.sroa.0.0 = phi i64 [ %i.ac, %bb.b ], [ %.sroa.0.0.i, %_RINvNtNtCscmhy3HNZezq_8protobuf2rt6packed22vec_packed_varint_sizelEB6_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !range !417, !noundef !5
  %i.af = trunc nuw i32 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !5
  %i.ai = or i32 %i.ah, 1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aj, i1 true)
  %i.al = trunc nuw nsw i64 %i.ak to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 70, %i.al
  %i.am = udiv i8 %.lhs.trunc.i.i, 7
  %narrow.i8 = add nuw nsw i8 %i.am, 1
  %i.an = zext nneg i8 %narrow.i8 to i64
  %i.ao = add i64 %.sroa.0.0, %i.an
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.1 = phi i64 [ %i.ao, %bb.d ], [ %.sroa.0.0, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i32, ptr %i.ap, align 8, !range !417, !noundef !5
  %i.ar = trunc nuw i32 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.at = load i32, ptr %i.as, align 4, !noundef !5
  %i.au = or i32 %i.at, 1
  %i.av = sext i32 %i.au to i64
  %i.aw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.av, i1 true)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  %.lhs.trunc.i.i9 = sub nuw nsw i8 70, %i.ax
  %i.ay = udiv i8 %.lhs.trunc.i.i9, 7
  %narrow.i10 = add nuw nsw i8 %i.ay, 1
  %i.az = zext nneg i8 %narrow.i10 to i64
  %i.ba = add i64 %.sroa.0.1, %i.az
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.2 = phi i64 [ %i.ba, %bb.f ], [ %.sroa.0.1, %bb.e ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = tail call noundef i64 @_RNvNtNtCscmhy3HNZezq_8protobuf2rt16unknown_or_group19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb)
  %i.bd = add i64 %i.bc, %.sroa.0.2               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = trunc i64 %i.bd to i32
  tail call void @_RNvMNtCscmhy3HNZezq_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.be, i32 noundef %i.bf)
  ret i64 %i.bd
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtCscmhy3HNZezq_8protobuf10descriptor19generated_code_infoNtB5_10AnnotationNtNtB9_7message7Message26write_to_with_cached_sizes(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef align 8 ptr @_RNvMNtCscmhy3HNZezq_8protobuf19coded_output_streamNtB2_17CodedOutputStream27write_repeated_packed_int32(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef %i.d) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !range !4, !noundef !5
  %.not17 = icmp eq i64 %i.g, -1
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = tail call noundef align 8 ptr @_RNvMNtCscmhy3HNZezq_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_string(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k) ; 2 uses
  %.not18 = icmp eq ptr %i.l, null
  br i1 %.not18, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8, !range !417, !noundef !5
  %i.o = trunc nuw i32 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.q = load i32, ptr %i.p, align 4, !noundef !5
  %i.r = tail call noundef align 8 ptr @_RNvMNtCscmhy3HNZezq_8protobuf19coded_output_streamNtB2_17CodedOutputStream11write_int32(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 3, i32 noundef %i.q) ; 2 uses
  %.not19 = icmp eq ptr %i.r, null
  br i1 %.not19, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i32, ptr %i.s, align 8, !range !417, !noundef !5
  %i.u = trunc nuw i32 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %i.r, %bb.e ], [ %i.e, %bb.a ], [ %i.l, %bb.c ], [ %i.z, %bb.i ], [ %i.x, %bb.h ]
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = load i32, ptr %i.v, align 4, !noundef !5
  %i.x = tail call noundef align 8 ptr @_RNvMNtCscmhy3HNZezq_8protobuf19coded_output_streamNtB2_17CodedOutputStream11write_int32(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 4, i32 noundef %i.w) ; 2 uses
  %.not20 = icmp eq ptr %i.x, null
  br i1 %.not20, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = tail call noundef align 8 ptr @_RNvMNtCscmhy3HNZezq_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCscmhy3HNZezq_8protobuf10descriptor19generated_code_infoNtB5_10AnnotationNtNtB9_7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(80) initializes((16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !range !4, !alias.scope !883, !noundef !5
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECscmhy3HNZezq_8protobuf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscmhy3HNZezq_8protobuf.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscmhy3HNZezq_8protobuf.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECscmhy3HNZezq_8protobuf.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscmhy3HNZezq_8protobuf.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  store i64 -1, ptr %i.b, align 8
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECscmhy3HNZezq_8protobuf.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscmhy3HNZezq_8protobuf.exit.i
  store i64 -1, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvMNtCscmhy3HNZezq_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtCscmhy3HNZezq_8protobuf10descriptor21enum_descriptor_protoNtB5_17EnumReservedRangeNtNtB9_7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtCscmhy3HNZezq_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #30
  %i.d = load i32, ptr %i.c, align 8, !range !417, !noundef !5
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %._crit_edge, label %.lr.ph
end_hunk_0
