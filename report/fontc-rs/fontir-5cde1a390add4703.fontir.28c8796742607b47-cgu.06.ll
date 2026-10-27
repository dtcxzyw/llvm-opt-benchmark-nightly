Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontir-5cde1a390add4703.fontir.28c8796742607b47-cgu.06?download=true
inline.NumInlined: 772
inline.NumDeleted: 401
begin_hunk_0_@_RNvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB4_16GlyphPathBuilder5build:bb.a
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
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #26
          to label %.body3.i unwind label %bb.s

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit.i: ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body3.i unwind label %bb.o

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit5.i unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

.body3.i:                                         ; preds = %bb.p, %bb.m, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.t, %bb.p ], [ %i.q, %bb.m ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #26
          to label %common.resume unwind label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit5.i: ; preds = %bb.n
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs3v5ql5U6hxj_6fontir2ir12path_builder16GlyphPathBuilderEBH_.exit unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit5.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body, %bb.ad, %bb.y, %.body3.i, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.y ], [ %.pn.i, %.body3.i ], [ %i.v, %bb.q ], [ %eh.lpad-body, %.body ], [ %i.i, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %.body3.i, %.body.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs3v5ql5U6hxj_6fontir2ir12path_builder16GlyphPathBuilderEBH_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit5.i
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.aa

bb.t:                                             ; preds = %.noexc2, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1197
  store i64 -1, ptr %1, align 8, !alias.scope !1196
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.x ], [ %i.ab, %bb.u ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #26
          to label %common.resume unwind label %bb.ab

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.v
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit5 unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit5: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir.exit5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs3v5ql5U6hxj_6fontir2ir12path_builder16GlyphPathBuilderEBH_.exit
  ret void

bb.ab:                                            ; preds = %bb.ad, %bb.ac, %.body, %bb.g
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ac:                                            ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #26
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #26
          to label %common.resume unwind label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1N_15NormalizedSpaceEB1K_EE6insertCs3v5ql5U6hxj_6fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i32 noundef %2, double noundef %3, double noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.11 = alloca [16 x i8], align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %2, ptr %i.b, align 4, !noalias !1205
  %i.f = load ptr, ptr %1, align 8, !alias.scope !1204, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1205
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1204, !noundef !4
  call void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB2e_15NormalizedSpaceEB2b_ENtB1i_14LeafOrInternalE11search_treeB1y_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.b), !noalias !1205
  %i.i = load i64, ptr %i.a, align 8, !range !5, !noalias !1205, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.8.copyload6 = load ptr, ptr %i.k, align 8, !noalias !1204 ; 2 uses
  %.sroa.11.8..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.8..sroa_idx8, i64 16, i1 false), !noalias !1204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1205
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.7.8.copyload6, ptr %i.e, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %.sroa.119.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %1, ptr %.sroa.119.8..sroa_idx, align 8
  %i.l = call { double, double } @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB21_15NormalizedSpaceEB1Y_EE6insertCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, double noundef %3, double noundef %4) ; 2 uses
  %i.m = extractvalue { double, double } %i.l, 0
  %i.n = extractvalue { double, double } %i.l, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.n, ptr %i.p, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.7.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.7.8.copyload6, %bb.b ]
  %.sroa.119.0.ph.in = zext i32 %2 to i64
  %.sroa.119.0.ph = inttoptr i64 %.sroa.119.0.ph.in to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.7.0.ph, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %.sroa.119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.119.0.ph, ptr %.sroa.119.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1Z_15NormalizedSpaceEB1W_EE12insert_entryCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, double noundef %3, double noundef %4)
  %i.q = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB21_15NormalizedSpaceEB1Y_EE8into_mutCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNtNtB7_7set_val9SetValZSTE6insertCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i16 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [2 x i8], align 2                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.11 = alloca [16 x i8], align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %1, ptr %i.b, align 2, !noalias !1210
  %i.f = load ptr, ptr %0, align 8, !alias.scope !1209, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1210
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1209, !noundef !4
  call void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.b), !noalias !1210
  %i.i = load i64, ptr %i.a, align 8, !range !5, !noalias !1210, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.8.copyload3 = load ptr, ptr %i.k, align 8, !noalias !1209 ; 2 uses
  %.sroa.11.8..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.8..sroa_idx5, i64 16, i1 false), !noalias !1209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1210
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.7.8.copyload3, ptr %i.e, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %.sroa.116.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %0, ptr %.sroa.116.8..sroa_idx, align 8
  call void @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNtNtB9_7set_val9SetValZSTE6insertCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.7.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.7.8.copyload3, %bb.b ]
  %.sroa.116.0.ph.in = zext i16 %1 to i64
  %.sroa.116.0.ph = inttoptr i64 %.sroa.116.0.ph.in to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.7.0.ph, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %.sroa.116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.116.0.ph, ptr %.sroa.116.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNtNtB9_7set_val9SetValZSTE12insert_entryCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
  %i.l = call noundef nonnull ptr @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNtNtB9_7set_val9SetValZSTE8into_mutCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.m = phi i1 [ true, %bb.c ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E6insertCs3v5ql5U6hxj_6fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [23 x i8], align 1            ; 7 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1246, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1248
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1246, !noundef !4
  invoke void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1y_NtB1i_14LeafOrInternalE11search_treeB1y_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.g, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.e unwind label %bb.j, !noalias !1249

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload5 = load i8, ptr %2, align 8, !alias.scope !1250
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.0..sroa_idx7, i64 23, i1 false), !alias.scope !1250
  br label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit

bb.d:                                             ; preds = %bb.l
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !1249
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !range !5, !noalias !1248, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.l, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.7.8..sroa_idx8 = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.7.8..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !1251
  %.sroa.9.8..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.9.8.copyload10 = load ptr, ptr %.sroa.9.8..sroa_idx9, align 8, !noalias !1251 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  %i.n = load i8, ptr %2, align 8, !range !6, !alias.scope !1255, !noundef !4
  %switch.i.i.i11.i = icmp samesign ult i8 %i.n, 25
  br i1 %switch.i.i.i11.i, label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1258, !nonnull !4, !noundef !4
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !1259
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit.thread

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #23
          to label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit.thread unwind label %bb.m

bb.i:                                             ; preds = %bb.e
  %.sroa.11.32.copyload = load ptr, ptr %i.m, align 8, !noalias !1251
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.32..sroa_idx, i64 16, i1 false), !noalias !1251
  %.sroa.0.0.copyload4 = load i8, ptr %2, align 8, !alias.scope !1250
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.0..sroa_idx6, i64 23, i1 false), !alias.scope !1250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1248
  br label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit

bb.j:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.t = load i8, ptr %2, align 8, !range !6, !alias.scope !1263, !noundef !4
  %switch.i.i.i16.i = icmp samesign ult i8 %i.t, 25
  br i1 %switch.i.i.i16.i, label %.thread15, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1266, !nonnull !4, !noundef !4
  %i.w = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !1267
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.l, label %.thread15

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #23
          to label %.thread15 unwind label %bb.d, !noalias !1249

bb.m:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread15

_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.i, %bb.c
  %.sroa.11.0 = phi ptr [ null, %bb.c ], [ %.sroa.11.32.copyload, %bb.i ] ; 2 uses
  %.sroa.0.011 = phi i8 [ %.sroa.0.0.copyload5, %bb.c ], [ %.sroa.0.0.copyload4, %bb.i ] ; 2 uses
  %i.y = icmp eq i8 %.sroa.0.011, -1
  br i1 %i.y, label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit.thread, label %bb.n

_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit.thread: ; preds = %bb.h, %bb.g, %bb.f, %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit
  %.sroa.9.027 = phi ptr [ %1, %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit ], [ %.sroa.9.8.copyload10, %bb.f ], [ %.sroa.9.8.copyload10, %bb.g ], [ %.sroa.9.8.copyload10, %bb.h ]
  %.sroa.11.026 = phi ptr [ %.sroa.11.0, %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit ], [ %1, %bb.f ], [ %1, %bb.g ], [ %1, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.7.8..sroa_idx, i64 16, i1 false)
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.9.027, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.11.026, ptr %.sroa.11.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1l_E6insertCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

bb.n:                                             ; preds = %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.sroa.0.011, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7, i64 23, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1j_E12insert_entryCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  %i.z = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1l_E8into_mutCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.o:                                             ; preds = %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB17_E5entryCs3v5ql5U6hxj_6fontir.exit.thread, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.p, %.thread15, %bb.q
  resume { ptr, i32 } %eh.lpad-body18

.thread15:                                        ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %eh.lpad-body18 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.m ], [ %i.s, %bb.l ], [ %i.s, %bb.k ], [ %i.s, %bb.j ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.aa = load i8, ptr %3, align 8, !range !6, !alias.scope !1271, !noundef !4
  %switch.i.i.i = icmp samesign ult i8 %i.aa, 25
  br i1 %switch.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs3v5ql5U6hxj_6fontir.exit, label %bb.p

bb.p:                                             ; preds = %.thread15
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1274, !nonnull !4, !noundef !4
  %i.ad = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !1274
end_hunk_0
