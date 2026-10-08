Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.06?download=true
inline.NumInlined: 159
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa10decompress:bb.a
          cleanup
  br label %.body

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w)
          to label %bb.bt unwind label %bb.p

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
          to label %bb.bu unwind label %bb.f

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %2)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.ct, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit, %bb.bu
  ret void

bb.bw:                                            ; preds = %bb.bi, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_hEEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.by unwind label %bb.aw

bb.bx:                                            ; preds = %.body232, %.body, %bb.bg, %bb.bb, %bb.av, %bb.aq, %bb.al, %bb.ag, %bb.ab, %bb.s, %.body229
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.by:                                            ; preds = %bb.bw, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_hEEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %bb.bz unwind label %bb.ar

bb.bz:                                            ; preds = %bb.by, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l)
          to label %bb.ca unwind label %bb.am

bb.ca:                                            ; preds = %bb.bz, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n)
          to label %bb.cb unwind label %bb.ah

bb.cb:                                            ; preds = %bb.ca, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p)
          to label %bb.cc unwind label %bb.ac

bb.cc:                                            ; preds = %bb.cb, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r)
          to label %bb.cd unwind label %bb.t

bb.cd:                                            ; preds = %bb.cc, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ci, %bb.cd, %bb.w
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAjj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.cg unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAjj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body unwind label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAjj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAjj3_EECsdsTQD3x2eOp_3exr.exit unwind label %bb.br

bb.ch:                                            ; preds = %bb.cf
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ci:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ce

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAjj3_EECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ck unwind label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAjj3_EECsdsTQD3x2eOp_3exr.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body229 unwind label %bb.cl

bb.ck:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAjj3_EECsdsTQD3x2eOp_3exr.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEEB1e_.exit unwind label %bb.p

bb.cl:                                            ; preds = %bb.cj
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEEB1e_.exit: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.cn unwind label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEEB1e_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body232 unwind label %bb.co

bb.cn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEEB1e_.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_.exit unwind label %bb.f

bb.co:                                            ; preds = %bb.cm
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.cp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cu, %bb.cp
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body232, %bb.cr
  %common.resume.op = phi { ptr, i32 } [ %i.es, %bb.cr ], [ %.pn221, %.body232 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.cq
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.bv

bb.ct:                                            ; preds = %bb.b
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 -1, ptr %0, align 8, !alias.scope !75, !noalias !76
  br label %bb.bv

bb.cu:                                            ; preds = %.noexc
  %i.ev = load ptr, ptr %i.al, align 8, !noalias !71, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !71
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.ew, align 8
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ev, ptr %.sroa.4234.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cq

.body232:                                         ; preds = %bb.cm, %bb.f, %.body229
  %.pn221 = phi { ptr, i32 } [ %.pn219, %.body229 ], [ %i.aq, %bb.f ], [ %i.eq, %bb.cm ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #17
          to label %common.resume unwind label %bb.bx
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa14channel_suffix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %.not.i.i = icmp ugt i64 %i.e, %1
  br i1 %.not.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ]   ; 2 uses
  %i.b = tail call { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr15memrchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.a), !noalias !84 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.e = extractvalue { i64, i64 } %i.b, 1        ; 6 uses
  %i.f = icmp ult i64 %i.e, %i.a
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %lhsc.i = load i8, ptr %i.g, align 1, !alias.scope !85
  %i.h = icmp eq i8 %lhsc.i, 46
  br i1 %i.h, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 2 uses
  %i.i = add nuw i64 %i.e, 1                      ; 4 uses
  %.not.i = icmp ult i64 %i.i, %1
  br i1 %.not.i, label %bb.f, label %.split.i

.split.i:                                         ; preds = %bb.e
  %i.j = icmp eq i64 %i.i, %1
  br i1 %i.j, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !86, !noundef !4
  %i.m = icmp sgt i8 %i.l, -65
  br i1 %i.m, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %bb.g

_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %.split.i, %bb.f
  %i.n = sub nuw i64 %1, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %.pn13 = phi ptr [ %i.o, %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit ], [ %0, %bb.c ], [ %0, %bb.b ]
  %.pn11 = phi i64 [ %i.n, %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit ], [ %1, %bb.c ], [ %1, %bb.b ]
  %.pn = insertvalue { ptr, i64 } poison, ptr %.pn13, 0
  %.merged = insertvalue { ptr, i64 } %.pn, i64 %.pn11, 1
  ret { ptr, i64 } %.merged

bb.g:                                             ; preds = %bb.f, %.split.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %i.i, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %1, i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 192153584101141163) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !110, !noalias !111, !noundef !4 ; 3 uses
  %i.o = icmp ugt i64 %i.n, 5                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %.sink12.i = select i1 %i.o, i64 %i.q, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.sink12.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.r = load i64, ptr %i.e, align 8, !range !11, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !12, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.s, label %bb.a, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit39, !prof !8

bb.a:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit
  %i.w = load i64, ptr %i.v, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #18
  unreachable

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit39: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit
  %i.x = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.y = icmp ule i64 %.sink12.i, %i.u
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.u, ptr %i.k, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 6 uses
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sink13.i36 = select i1 %i.o, ptr %i.ae, ptr %i.ah ; 2 uses
  %.sink12.i37 = select i1 %i.o, i64 %i.ag, i64 %i.n ; 2 uses
  %.idx107 = shl nuw nsw i64 %.sink12.i37, 6
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink13.i36, i64 %.idx107
  %i.aj = icmp eq i64 %.sink12.i37, 0
  br i1 %i.aj, label %.thread25, label %.lr.ph106

bb.b:                                             ; preds = %.thread25
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.lr.ph106:                                        ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit39
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.idx108 = mul nuw nsw i64 %3, 48
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %.idx108
  %i.at = icmp eq i64 %3, 0
  %i.au = add i64 %.0.val, -1
  %i.av = add i64 %.8.val, -1
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph106, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit57
  %.sroa.0.0105 = phi ptr [ %.sink13.i36, %.lr.ph106 ], [ %i.aw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit57 ] ; 7 uses
  %.sroa.7.0104 = phi i64 [ 0, %.lr.ph106 ], [ %i.ax, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit57 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 64 ; 2 uses
  %i.ax = add nuw nsw i64 %.sroa.7.0104, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !112
  store i64 0, ptr %i.c, align 8, !noalias !112
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !112
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  store i64 1610612768, ptr %i.al, align 8, !noalias !112
  store ptr %i.c, ptr %i.b, align 8, !noalias !112
  store ptr @33, ptr %i.am, align 8, !noalias !112
  %i.ay = invoke noundef zeroext i1 @_RNvXs7_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_4TextNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0105, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %.loopexit44, !noalias !113

.loopexit44:                                      ; preds = %bb.c
  %lpad.loopexit46 = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp45:                             ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp45, %.loopexit44
  %lpad.phi47 = phi { ptr, i32 } [ %lpad.loopexit46, %.loopexit44 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp45 ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #17
          to label %.thread17 unwind label %bb.g, !noalias !113

bb.e:                                             ; preds = %bb.c
  br i1 %i.ay, label %bb.f, label %bb.i, !prof !8

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #19
          to label %.noexc.i unwind label %.loopexit.split-lp45, !noalias !113

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !113
  unreachable

.thread25.loopexit:                               ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit57
  %.pre = load ptr, ptr %i.ab, align 8
  %.pre166 = load i64, ptr %i.j, align 8, !range !114
  %.pre167 = load i64, ptr %i.ac, align 8
  br label %.thread25

.thread25:                                        ; preds = %.thread25.loopexit, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit39
  %i.ba = phi i64 [ %.pre167, %.thread25.loopexit ], [ 0, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit39 ] ; 2 uses
  %i.bb = phi i64 [ %.pre166, %.thread25.loopexit ], [ 0, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit39 ]
  %i.bc = phi ptr [ %.pre, %.thread25.loopexit ], [ inttoptr (i64 8 to ptr), %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit39 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bd = icmp ult i64 %i.ba, 128102389400760776
  call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [72 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bc, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bc, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bb, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.be, ptr %.sroa.614.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.k, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.l, ptr %i.bg, align 8
  invoke void @_RINvNtNtCs4wP2HXfJTCR_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterTNtNtB6_6string6StringAINtNtB1f_6option6OptionjEj3_EENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0EAjB3l_EB3y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %.thread25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !112
  %i.bi = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.bj = load i64, ptr %i.ao, align 8, !noundef !4 ; 9 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.l
  %.not.i.i.i = icmp ugt i64 %i.bo, %i.bj
  br i1 %.not.i.i.i, label %.loopexit43, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = phi i64 [ %i.bj, %bb.i ], [ %i.bo, %bb.j ] ; 2 uses
  %i.bl = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr15memrchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef %i.bk)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.bm = extractvalue { i64, i64 } %i.bl, 0
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.l, label %.loopexit43

bb.l:                                             ; preds = %.noexc
  %i.bo = extractvalue { i64, i64 } %i.bl, 1      ; 6 uses
  %i.bp = icmp ult i64 %i.bo, %i.bk
  call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bo
  %lhsc.i.i = load i8, ptr %i.bq, align 1, !alias.scope !116
  %i.br = icmp eq i8 %lhsc.i.i, 46
  br i1 %i.br, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l
  %4 = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bo ; 2 uses
  %i.bs = add nuw i64 %i.bo, 1                    ; 4 uses
  %.not.i.i = icmp ult i64 %i.bs, %i.bj
  br i1 %.not.i.i, label %bb.n, label %.split.i.i

.split.i.i:                                       ; preds = %bb.m
  %i.bt = icmp eq i64 %i.bs, %i.bj
  br i1 %i.bt, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !117, !noundef !4
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %bb.o

_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %bb.n, %.split.i.i
  %i.bx = sub nuw i64 %i.bj, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %.loopexit43

bb.o:                                             ; preds = %bb.n, %.split.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef %i.bj, i64 noundef %i.bs, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.o
  unreachable

.loopexit38:                                      ; preds = %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body47

.loopexit.split-lp.loopexit:                      ; preds = %bb.k
  %lpad.loopexit40 = landingpad { ptr, i32 }
          cleanup
  br label %.body47

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.loopexit39, %bb.ap
  %lpad.loopexit48 = landingpad { ptr, i32 }
          cleanup
  br label %.body47

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.x, %bb.ao, %bb.o
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup
  br label %.body47

.body47:                                          ; preds = %.loopexit38, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ac
  %eh.lpad-body48 = phi { ptr, i32 } [ %i.dc, %bb.ac ], [ %lpad.loopexit, %.loopexit38 ], [ %lpad.loopexit40, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit48, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.p

bb.p:                                             ; preds = %.body47
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body41 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i: ; preds = %.body47
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread17 unwind label %bb.at

.loopexit43:                                      ; preds = %.noexc, %bb.j, %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i
  %.pn13.i = phi ptr [ %i.by, %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %i.bi, %bb.j ], [ %i.bi, %.noexc ]
  %.pn11.i = phi i64 [ %i.bx, %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %i.bj, %bb.j ], [ %i.bj, %.noexc ] ; 4 uses
  %i.cb = load i64, ptr %i.ao, align 8, !noundef !4 ; 5 uses
  %i.cc = icmp sgt i64 %i.cb, -1
  call void @llvm.assume(i1 %i.cc)
  %i.cd = sub i64 %i.cb, %.pn11.i                 ; 13 uses
  %i.ce = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.cf = icmp eq i64 %i.cb, %.pn11.i             ; 2 uses
  br i1 %i.cf, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.loopexit43
  %.not.i = icmp ult i64 %i.cd, %i.cb
  br i1 %.not.i, label %bb.s, label %.split.i

.split.i:                                         ; preds = %bb.r
  %i.cg = icmp eq i64 %.pn11.i, 0
  br i1 %i.cg, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !118, !noundef !4
  %i.cj = icmp sgt i8 %i.ci, -65
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %.split.i, %.loopexit43
  %i.ck = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cl = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.cl, 72
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx
  %.not.i45 = icmp eq i64 %i.cl, 0
  br i1 %.not.i45, label %.loopexit39, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0B7_.exit.backedge.i
  %i.cn = phi ptr [ %i.co, %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0B7_.exit.backedge.i ], [ %i.ck, %bb.t ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 72 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cn, i64 16
  %.val3.i = load i64, ptr %i.cp, align 8, !noalias !119, !noundef !4
  %i.cq = icmp eq i64 %.val3.i, %i.cd
  br i1 %i.cq, label %.split.i46, label %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0B7_.exit.backedge.i

.split.i46:                                       ; preds = %.lr.ph.i
  %i.cr = getelementptr i8, ptr %i.cn, i64 8
  %.val2.i = load ptr, ptr %i.cr, align 8, !noalias !119, !nonnull !4, !noundef !4
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i, ptr nonnull %i.ce, i64 %i.cd), !noalias !119
  %i.cs = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cs, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBb_6option6OptionjEj3_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0EB2O_.exit, label %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0B7_.exit.backedge.i

_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0B7_.exit.backedge.i: ; preds = %.split.i46, %.lr.ph.i
  %.not7.i = icmp eq ptr %i.co, %i.cm
  br i1 %.not7.i, label %.loopexit39, label %.lr.ph.i

bb.u:                                             ; preds = %bb.s, %.split.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cb, i64 noundef 0, i64 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.ao, %bb.x, %bb.u
  unreachable

.loopexit39:                                      ; preds = %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0B7_.exit.backedge.i, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.cd, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.w:                                             ; preds = %.loopexit39
  %i.ct = load i64, ptr %i.d, align 8, !range !11, !noundef !4
  %i.cu = trunc nuw i64 %i.ct to i1
  %i.cv = load i64, ptr %i.ap, align 8, !range !12, !noundef !4 ; 3 uses
  br i1 %i.cu, label %bb.x, label %bb.y, !prof !8

bb.x:                                             ; preds = %bb.w
  %i.cw = load i64, ptr %i.aq, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.cv, i64 %i.cw) #18
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.w
  %i.cx = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cy = icmp ule i64 %i.cd, %i.cv
  call void @llvm.assume(i1 %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.aa, %bb.y
  store i64 %i.cv, ptr %i.h, align 8
  store ptr %i.cx, ptr %.sroa.424.0..sroa_idx, align 8
  store i64 %i.cd, ptr %.sroa.525.0..sroa_idx, align 8
  store i64 0, ptr %i.ar, align 8
  store i64 0, ptr %.sroa.4163.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5165.0..sroa_idx, align 8
  %i.cz = load i64, ptr %i.ac, align 8, !alias.scope !120, !noalias !121, !noundef !4 ; 3 uses
  %i.da = load i64, ptr %i.j, align 8, !range !114, !alias.scope !120, !noalias !121, !noundef !4
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %bb.ab, label %bb.ae

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr nonnull align 1 %i.ce, i64 %i.cd, i1 false)
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringAINtNtCsj6eKBz9Db1c_4core6option6OptionjEj3_EE8grow_oneCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ae unwind label %bb.ac, !noalias !121

bb.ac:                                            ; preds = %bb.ab
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h) #17
          to label %.body47 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ae:                                            ; preds = %bb.ab, %bb.z
  %i.de = load ptr, ptr %i.ab, align 8, !alias.scope !120, !noalias !121, !nonnull !4, !noundef !4
  %i.df = getelementptr inbounds nuw [72 x i8], ptr %i.de, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.df, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  %i.dg = add i64 %i.cz, 1
  store i64 %i.dg, ptr %i.ac, align 8, !alias.scope !120, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBb_6option6OptionjEj3_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0EB2O_.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBb_6option6OptionjEj3_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0EB2O_.exit: ; preds = %.split.i46, %bb.ae
  br i1 %i.at, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBb_6option6OptionjEj3_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0EB2O_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 57
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph103, %.loopexit
  %.sroa.04.0102 = phi ptr [ %2, %.lr.ph103 ], [ %i.di, %.loopexit ] ; 5 uses
  %.sroa.07.0101 = phi i8 [ 0, %.lr.ph103 ], [ %.sroa.07.1, %.loopexit ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.04.0102, i64 48 ; 2 uses
  %i.dj = load i8, ptr %i.dh, align 1, !range !13, !noundef !4
  %i.dk = invoke noundef zeroext i1 @_RNvMNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rulesNtB2_4Rule7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.04.0102, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pn13.i, i64 noundef %.pn11.i, i8 noundef %i.dj)
          to label %bb.ag unwind label %.loopexit38

bb.ag:                                            ; preds = %bb.af
  br i1 %i.dk, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.0102, i64 41
  %i.dm = load i8, ptr %i.dl, align 1, !range !13, !noundef !4 ; 4 uses
  %i.dn = load i64, ptr %.sroa.04.0102, align 8, !range !11, !noundef !4
  %i.do = trunc nuw i64 %i.dn to i1
  br i1 %i.do, label %bb.ai, label %.loopexit

.loopexit:                                        ; preds = %bb.an, %bb.al, %bb.ai, %bb.ag, %bb.ah
end_hunk_0
