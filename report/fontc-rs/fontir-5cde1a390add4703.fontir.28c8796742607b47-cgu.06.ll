Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontir-5cde1a390add4703.fontir.28c8796742607b47-cgu.06?download=true
inline.NumInlined: 772
inline.NumDeleted: 401
begin_hunk_0_@_RNvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB4_16GlyphPathBuilder18erase_open_corners:bb.a
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !1182
  %cond.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1183
  call fastcc void @_RNvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB4_16GlyphPathBuilder10close_path(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1), !noalias !1184
  %i.h = load i64, ptr %i.b, align 8, !range !15, !noalias !1183, !noundef !4 ; 2 uses
  %.not6.i = icmp eq i64 %i.h, -1
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.8.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx14, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1183
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1183
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1187, !noundef !4 ; 3 uses
  %i.k = icmp ult i64 %i.j, 576460752303423488
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.h, label %_RINvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB5_16GlyphPathBuilder18check_num_offcurveNCNvB2_8end_paths_0EB9_.exit.i

_RINvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB5_16GlyphPathBuilder18check_num_offcurveNCNvB2_8end_paths_0EB9_.exit.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m), !noalias !1184
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1185, !noalias !1183
  %.pr.i = load i64, ptr %i.a, align 8, !noalias !1183 ; 2 uses
  %.not7.i = icmp eq i64 %.pr.i, -1
  br i1 %.not7.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_RINvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB5_16GlyphPathBuilder18check_num_offcurveNCNvB2_8end_paths_0EB9_.exit.i
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx15, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1183
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.026.ph = phi i64 [ %i.h, %bb.c ], [ %.pr.i, %bb.f ]
  store i64 %.sroa.0.026.ph, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  br label %bb.r

bb.h:                                             ; preds = %_RINvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB5_16GlyphPathBuilder18check_num_offcurveNCNvB2_8end_paths_0EB9_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1183
  store i64 -1, ptr %1, align 8, !alias.scope !1182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store i64 0, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvNtNtCs3v5ql5U6hxj_6fontir2ir18erase_open_corners18erase_open_corners(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.o = load i64, ptr %i.f, align 8, !range !1188, !noundef !4 ; 2 uses
  %i.p = icmp ne i64 %i.o, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br i1 %i.p, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECs3v5ql5U6hxj_6fontir.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread33 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECs3v5ql5U6hxj_6fontir.exit.i: ; preds = %bb.j
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathECs3v5ql5U6hxj_6fontir.exit

bb.m:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %i.y = load i64, ptr %i.c, align 8, !range !14, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathECs3v5ql5U6hxj_6fontir.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathECs3v5ql5U6hxj_6fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECs3v5ql5U6hxj_6fontir.exit.i, %bb.m
  %.sroa.04.0 = phi i64 [ %i.y, %bb.m ], [ %i.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECs3v5ql5U6hxj_6fontir.exit.i ]
  %.sroa.02.0 = phi i64 [ %i.aa, %bb.m ], [ %i.t, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECs3v5ql5U6hxj_6fontir.exit.i ] ; 2 uses
  %.sroa.05.0 = phi ptr [ %i.x, %bb.m ], [ %i.r, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECs3v5ql5U6hxj_6fontir.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = icmp ult i64 %.sroa.02.0, 164703072086692426
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %.sroa.05.0, i64 %.sroa.02.0
  store ptr %.sroa.05.0, ptr %i.d, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.04.0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.05.0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.ac, ptr %i.af, align 8
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB6_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathECs3v5ql5U6hxj_6fontir.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.thread unwind label %bb.p

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathECs3v5ql5U6hxj_6fontir.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECs3v5ql5U6hxj_6fontir.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.n
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %i.ag, %bb.n ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %.thread33

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = zext i1 %i.p to i8
  store i8 %i.ak, ptr %i.aj, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECs3v5ql5U6hxj_6fontir.exit, %bb.g
  ret void

.thread33:                                        ; preds = %bb.k, %.thread, %bb.s
  %.pn32 = phi { ptr, i32 } [ %eh.lpad-body11, %.thread ], [ %lpad.thr_comm.split-lp, %bb.s ], [ %i.u, %bb.k ]
  resume { ptr, i32 } %.pn32

bb.s:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #26
          to label %.thread33 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB4_16GlyphPathBuilder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %2 = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 1) ; 2 uses
  %3 = icmp sgt i64 %2, -1
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %2, i1 false)
  %i.f = sub nuw nsw i64 64, %i.e
  %i.g = shl nuw i64 1, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.h = icmp eq i64 %.sroa.03.0, %1
  %i.i = add nuw i64 %.sroa.03.0, 4
  %spec.select = select i1 %i.h, i64 %i.i, i64 %.sroa.03.0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.j = load i64, ptr %i.b, align 8, !range !5, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !1189, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.q = icmp samesign ugt i64 %i.m, 1
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.m, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %spec.select, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #26
          to label %bb.l unwind label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.a, align 8, !range !5, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !1189, !noundef !4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.aa, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #25
          to label %bb.j unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ad = icmp ule i64 %spec.select, %i.z
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.z, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.l:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #26
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.v
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB4_16GlyphPathBuilder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !1196
  %cond.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1197
  invoke fastcc void @_RNvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB4_16GlyphPathBuilder10close_path(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %.noexc unwind label %bb.g, !noalias !1198

.noexc:                                           ; preds = %bb.b
  %i.c = load i64, ptr %i.b, align 8, !range !15, !noalias !1197, !noundef !4 ; 2 uses
  %.not6.i = icmp eq i64 %i.c, -1
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1197
  br label %bb.h

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1197
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1201, !noundef !4 ; 3 uses
  %i.f = icmp ult i64 %i.e, 576460752303423488
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.t, label %_RINvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB5_16GlyphPathBuilder18check_num_offcurveNCNvB2_8end_paths_0EB9_.exit.i

_RINvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB5_16GlyphPathBuilder18check_num_offcurveNCNvB2_8end_paths_0EB9_.exit.i: ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %.noexc2 unwind label %bb.g, !noalias !1198

.noexc2:                                          ; preds = %_RINvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB5_16GlyphPathBuilder18check_num_offcurveNCNvB2_8end_paths_0EB9_.exit.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1199, !noalias !1197
  %.pr.i = load i64, ptr %i.a, align 8, !noalias !1197 ; 2 uses
  %.not7.i = icmp eq i64 %.pr.i, -1
  br i1 %.not7.i, label %bb.t, label %bb.f

bb.f:                                             ; preds = %.noexc2
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1197
  br label %bb.h

bb.g:                                             ; preds = %_RINvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB5_16GlyphPathBuilder18check_num_offcurveNCNvB2_8end_paths_0EB9_.exit.i, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #26
          to label %bb.ac unwind label %bb.ab

bb.h:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.0.ph = phi i64 [ %i.c, %bb.c ], [ %.pr.i, %bb.f ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit.i unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.l ], [ %i.l, %bb.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_0
