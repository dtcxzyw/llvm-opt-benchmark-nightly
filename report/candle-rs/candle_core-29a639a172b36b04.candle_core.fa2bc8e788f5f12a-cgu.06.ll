Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.06?download=true
inline.NumInlined: 1431
inline.NumDeleted: 572
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs8_NtCsltEA4u8Pgfu_11candle_core11safetensorsNtB5_10MmapedFile11deserialize:bb.a
  call void @_RNvMs2_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_11SafeTensors11deserialize(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f)
  %i.g = load i64, ptr %i.b, align 8, !range !20, !noundef !8 ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  store i64 -9223372036854775773, ptr %i.a, align 8
  call void @_RINvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB5_5Error9with_pathRNtNtCs5Xr050g3D4S_3std4path7PathBufEB7_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %.sroa.66, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.66, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 %i.g, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object11int_or_long(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  switch i64 %i.d, label %bb.b [
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !noundef !8
  %i.g = sext i32 %i.f to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object15persistent_load(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775796
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  store i64 0, ptr %0, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 48, i64 noundef 8) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object16into_tensor_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.497 = alloca [40 x i8], align 8          ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [56 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.035 = alloca [104 x i8], align 8         ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [96 x i8], align 8                ; 9 uses
  %.sroa.626 = alloca [72 x i8], align 8          ; 7 uses
  %.sroa.10 = alloca [7 x i8], align 1            ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %i.t = alloca [96 x i8], align 8                ; 6 uses
  %.sroa.620 = alloca [88 x i8], align 8          ; 8 uses
  %.sroa.8295 = alloca [24 x i8], align 8         ; 6 uses
  %.sroa.10297 = alloca [16 x i8], align 8        ; 4 uses
  %.sroa.7203 = alloca [24 x i8], align 8         ; 5 uses
  %.sroa.611 = alloca [24 x i8], align 8          ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7197 = alloca [24 x i8], align 8         ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %i.ac = alloca [48 x i8], align 8               ; 24 uses
  %i.ad = alloca [96 x i8], align 8               ; 14 uses
  %i.ae = alloca [48 x i8], align 8               ; 23 uses
  %i.af = alloca [48 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  %i.ah = load i64, ptr %2, align 8, !range !23, !alias.scope !1887, !noundef !8
  %i.ai = icmp eq i64 %i.ah, -9223372036854775805
  %.sink1.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sink1.i.sroa.gep186 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  br i1 %i.ai, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit.thread, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit

_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit.thread: ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !alias.scope !1888
  br label %bb.b

.body165:                                         ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i164
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.am = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  br label %bb.cq

_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !alias.scope !1888
  %.pr = load i64, ptr %i.af, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.b, label %bb.cp

bb.b:                                             ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit, %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5189.0.copyload = load ptr, ptr %.sroa.5189.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6192.0.copyload = load ptr, ptr %.sroa.6192.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %i.ao = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775798
  br i1 %i.ao, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit.thread

_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit.thread: ; preds = %bb.b
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.0.copyload, ptr %.sink1.i.sroa.gep186, align 8, !alias.scope !1891
  %.sroa.5189.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.5189.0.copyload, ptr %.sroa.5189.0..sroa_idx190, align 8, !alias.scope !1891
  %.sroa.6192.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.sroa.6192.0.copyload, ptr %.sroa.6192.0..sroa_idx193, align 8, !alias.scope !1891
  %.sroa.7.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx195, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  store i64 -1, ptr %i.ad, align 8, !alias.scope !1889
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBC_EEBG_.exit.i170

.critedge143:                                     ; preds = %.critedge141.thread, %bb.cn, %.critedge141
  %.sroa.36.2289 = phi i32 [ %.sroa.36.2290, %.critedge141.thread ], [ %.sroa.36.2290, %bb.cn ], [ %.sroa.36.2, %.critedge141 ] ; 2 uses
  %.sroa.0101.2287 = phi ptr [ %.sroa.0101.2288, %.critedge141.thread ], [ %.sroa.0101.2288, %bb.cn ], [ %.sroa.0101.2, %.critedge141 ] ; 2 uses
  %.sroa.055.2285 = phi i1 [ %.sroa.055.2286, %.critedge141.thread ], [ %.sroa.055.2286, %bb.cn ], [ %.sroa.055.2, %.critedge141 ]
  br i1 %.sroa.055.2285, label %bb.co, label %bb.cq

.body.thread230:                                  ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBC_EEBG_.exit.i170, %bb.cg
  %lpad.thr_comm228 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = extractvalue { ptr, i32 } %lpad.thr_comm228, 0
  %i.aq = extractvalue { ptr, i32 } %lpad.thr_comm228, 1
  br label %bb.co

.body:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp229 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp229, 0
  %i.as = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp229, 1
  br label %bb.cq

_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5189.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6192.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5189.0.copyload, i64 48, i1 false), !noalias !1891
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6192.0.copyload, i64 48, i1 false), !noalias !1891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !1890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6192.0.copyload, i64 noundef 48, i64 noundef 8) #29, !noalias !1891
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5189.0.copyload, i64 noundef 48, i64 noundef 8) #29, !noalias !1891
  %.pr233 = load i64, ptr %i.ad, align 8
  %i.au = icmp eq i64 %.pr233, -1
  br i1 %i.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBC_EEBG_.exit.i170, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  %.sroa.0299.0.copyload = load i64, ptr %.sink1.i.sroa.gep, align 8 ; 5 uses
  %.sroa.2300.0..sink1.i.sroa.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2300.0..sink1.i.sroa.gep.sroa_idx, i64 24, i1 false)
  %.sroa.3.0..sink1.i.sroa.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10297, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sink1.i.sroa.gep.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.av = load i64, ptr %i.ae, align 8, !range !23, !noundef !8 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, -1
  br i1 %i.aw, label %bb.e, label %.thread

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i155, %bb.bx, %bb.bq, %bb.ax, %bb.au, %bb.ag, %bb.x
  %.sroa.055.3 = phi i1 [ true, %bb.ax ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i155 ], [ true, %bb.bx ], [ false, %bb.bq ], [ true, %bb.au ], [ true, %bb.ag ], [ true, %bb.x ]
  %.sroa.042.1 = phi i8 [ 1, %bb.ax ], [ %.sroa.042.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i155 ], [ %.sroa.042.2, %bb.bx ], [ %.sroa.042.2, %bb.bq ], [ 1, %bb.au ], [ 1, %bb.ag ], [ 1, %bb.x ]
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %.body146.a

.body146.a:                                       ; preds = %bb.cd, %bb.d
  %.sroa.055.3.lpad-body157 = phi i1 [ %.sroa.055.3, %bb.d ], [ true, %bb.cd ]
  %.sroa.042.1.lpad-body159 = phi i8 [ %.sroa.042.1, %bb.d ], [ %.sroa.042.2, %bb.cd ]
  %eh.lpad-body160 = phi { ptr, i32 } [ %5, %bb.d ], [ %i.fy, %bb.cd ] ; 2 uses
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body160, 0
  %i.ay = extractvalue { ptr, i32 } %eh.lpad-body160, 1
  br label %.critedge141

bb.e:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !8
  switch i64 %i.bb, label %.thread [
    i64 13, label %bb.f
    i64 12, label %bb.j
  ]

.thread:                                          ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.l, %bb.k, %bb.j, %bb.c
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497.0..sroa_idx, i64 40, i1 false)
  store i64 %.sroa.0299.0.copyload, ptr %i.b, align 8
  %.sroa.8295.0..sroa_idx296 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295.0..sroa_idx296, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295, i64 24, i1 false)
  %.sroa.10297.0..sroa_idx298 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10297.0..sroa_idx298, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10297, i64 16, i1 false)
  br label %bb.z

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.az, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 1
  %i.be = xor i64 %i.bd, 8385472057067073396
  %i.bf = getelementptr i8, ptr %i.bc, i64 5
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = xor i64 %i.bg, 8245936360724389678
  %i.bi = or i64 %i.be, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !8
  %i.bp = icmp eq i64 %i.bo, 21
  br i1 %i.bp, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bs = load i128, ptr %i.br, align 1
  %i.bt = xor i128 %i.bs, 161440829424838058664436849268020834911
  %i.bu = getelementptr i8, ptr %i.br, i64 5
  %i.bv = load i128, ptr %i.bu, align 1
  %i.bw = xor i128 %i.bv, 67076025684318814833747688482805148777
  %i.bx = or i128 %i.bt, %i.bw
  %i.by = icmp ne i128 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7197)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7197, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295, i64 24, i1 false)
  switch i64 %.sroa.0299.0.copyload, label %bb.al [
    i64 -9223372036854775802, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit.thread
    i64 -1, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit.thread
  ]

bb.j:                                             ; preds = %bb.e
  %i.cb = load ptr, ptr %i.az, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 1
  %i.cd = xor i64 %i.cc, 8457529651105001332
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  %i.cf = load i32, ptr %i.ce, align 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = xor i64 %i.cg, 1936484724
  %i.ci = or i64 %i.cd, %i.ch
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.co = load i64, ptr %i.cn, align 8, !noundef !8
  %i.cp = icmp eq i64 %i.co, 18
  br i1 %i.cp, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.cs = load i128, ptr %i.cr, align 1
  %i.ct = xor i128 %i.cs, 154717087996939908351899155867327885919
  %i.cu = getelementptr i8, ptr %i.cr, i64 16
  %i.cv = load i16, ptr %i.cu, align 1
  %i.cw = zext i16 %i.cv to i128
  %i.cx = xor i128 %i.cw, 29285
  %i.cy = or i128 %i.ct, %i.cx
  %i.cz = icmp ne i128 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7203)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7203, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295, i64 24, i1 false)
  switch i64 %.sroa.0299.0.copyload, label %bb.p [
    i64 -9223372036854775802, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit149.thread
    i64 -1, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit149.thread
  ]

bb.n:                                             ; preds = %bb.aa, %bb.q, %bb.o
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.o ], [ %i.dm, %bb.aa ], [ %i.dd, %bb.q ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #26
          to label %bb.v unwind label %bb.ae

bb.o:                                             ; preds = %bb.ab, %bb.t, %bb.p
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10297, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7203)
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295, i64 24, i1 false)
  store i64 %.sroa.0299.0.copyload, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs4_NtCsltEA4u8Pgfu_11candle_core6pickleNtNtB7_5error5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_6ObjectE4from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.af unwind label %bb.o

_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit149.thread: ; preds = %bb.m, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7203, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7203)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE6removeBI_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit149.thread
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #26
          to label %bb.n unwind label %bb.ae

bb.r:                                             ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit149.thread
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.de = load i64, ptr %i.t, align 8, !range !33, !noundef !8 ; 2 uses
  %i.df = icmp eq i64 %i.de, -1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(48) %i.dg, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.620, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtCsltEA4u8Pgfu_11candle_core6pickleNtNtB7_5error5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_6ObjectE4from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.ab unwind label %bb.aa

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(88) %i.dg, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, i64 40, i1 false)
  %.sroa.620.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.620, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.620.48..sroa_idx, i64 48, i1 false)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u)
          to label %bb.u unwind label %bb.o

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.n
  %.pn113 = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %.pn, %bb.n ] ; 2 uses
  %.sroa.36.4 = extractvalue { ptr, i32 } %.pn113, 1
  %.sroa.0101.4 = extractvalue { ptr, i32 } %.pn113, 0
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #26
          to label %.critedge141.thread unwind label %bb.ae

bb.w:                                             ; preds = %bb.ad, %bb.u
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.y unwind label %bb.d

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.z

bb.z:                                             ; preds = %bb.av, %bb.y, %.thread
  %.sroa.042.2 = phi i8 [ 1, %bb.av ], [ 1, %bb.y ], [ 0, %.thread ] ; 10 uses
  %.sroa.094.0 = phi i64 [ %.sroa.094.0.copyload96, %bb.av ], [ %i.de, %bb.y ], [ %i.av, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %.sroa.094.0, ptr %i.ac, align 8
  %.sroa.497.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497.0..sroa_idx98, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.di = icmp sgt i64 %.sroa.094.0, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = icmp eq i64 %i.dk, 12
  %or.cond135 = select i1 %i.di, i1 %i.dl, i1 false
  br i1 %or.cond135, label %bb.ba, label %bb.az

bb.aa:                                            ; preds = %bb.s
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #26
          to label %bb.n unwind label %bb.ae

bb.ab:                                            ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dn, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u)
          to label %bb.ac unwind label %bb.o

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.ag unwind label %bb.w

bb.ae:                                            ; preds = %bb.cr, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %.body151, %.thread238, %bb.bv, %bb.bu, %bb.bm, %bb.bj, %bb.bd, %bb.as, %bb.ap, %bb.am, %bb.aj, %bb.aa, %bb.v, %bb.q, %bb.n
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.af:                                            ; preds = %bb.p
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dp, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ah unwind label %bb.d

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ay, %bb.ah
  %.old = load i64, ptr %i.ae, align 8, !range !23, !noundef !8
  %.old131 = icmp sgt i64 %.old, -1
  br i1 %.old131, label %bb.cf, label %bb.cg

bb.aj:                                            ; preds = %bb.am, %bb.ak
  %.pn125 = phi { ptr, i32 } [ %i.dq, %bb.ak ], [ %.pn116, %bb.am ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #26
          to label %bb.as unwind label %bb.ae

bb.ak:                                            ; preds = %bb.aq, %bb.al
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10297, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7197)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295, i64 24, i1 false)
  store i64 %.sroa.0299.0.copyload, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs4_NtCsltEA4u8Pgfu_11candle_core6pickleNtNtB7_5error5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_6ObjectE4from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.aw unwind label %bb.ak

_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit.thread: ; preds = %bb.i, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7197, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7197)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE6removeBI_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128)
          to label %bb.ao unwind label %bb.an

bb.am:                                            ; preds = %bb.ap, %bb.an
  %.pn116 = phi { ptr, i32 } [ %i.ds, %bb.ap ], [ %i.dr, %bb.an ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #26
          to label %bb.aj unwind label %bb.ae

bb.an:                                            ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit.thread
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit.thread
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE6removeBI_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.x) #26
          to label %bb.am unwind label %bb.ae

bb.aq:                                            ; preds = %bb.ao
  %.sroa.094.0.copyload96 = load i64, ptr %i.x, align 8
  %.sroa.497.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497.0..sroa_idx99, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
          to label %bb.ar unwind label %bb.ak

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.au unwind label %bb.at

bb.as:                                            ; preds = %bb.at, %bb.aj
  %.pn127 = phi { ptr, i32 } [ %i.dt, %bb.at ], [ %.pn125, %bb.aj ] ; 2 uses
  %.sroa.36.7 = extractvalue { ptr, i32 } %.pn127, 1
  %.sroa.0101.7 = extractvalue { ptr, i32 } %.pn127, 0
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #26
          to label %.critedge141.thread unwind label %bb.ae

bb.at:                                            ; preds = %bb.aw, %bb.ar
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.av unwind label %bb.d

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.z

bb.aw:                                            ; preds = %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.du, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.ax unwind label %bb.at

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.ay unwind label %bb.d

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ai

bb.az:                                            ; preds = %bb.bb, %bb.ba, %bb.z
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab)
          to label %bb.bw unwind label %.thread244.thread

bb.ba:                                            ; preds = %bb.z
  %i.dv = load ptr, ptr %.sroa.497.0..sroa_idx98, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 1
  %i.dx = xor i64 %i.dw, 8457529651105001332
  %i.dy = getelementptr i8, ptr %i.dv, i64 8
  %i.dz = load i32, ptr %i.dy, align 1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = xor i64 %i.ea, 1936484724
  %i.ec = or i64 %i.dx, %i.eb
  %i.ed = icmp ne i64 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = icmp eq i64 %i.eh, 18
  %or.cond.a = select i1 %i.ef, i1 %i.ei, i1 false
  br i1 %or.cond.a, label %bb.bb, label %bb.az

bb.bb:                                            ; preds = %bb.ba
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.el = load i128, ptr %i.ek, align 1
  %i.em = xor i128 %i.el, 126870841934310674893648038352394744415
  %i.en = getelementptr i8, ptr %i.ek, i64 16
  %i.eo = load i16, ptr %i.en, align 1
  %i.ep = zext i16 %i.eo to i128
  %i.eq = xor i128 %i.ep, 12918
  %i.er = or i128 %i.em, %i.eq
  %i.es = icmp ne i128 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.bc, label %bb.az

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.497, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 24, i1 false)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #26
          to label %.thread238 unwind label %bb.ae

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.bg unwind label %bb.bf

.thread251:                                       ; preds = %bb.bn, %bb.bg
  %.sroa.055.5.ph = phi i1 [ true, %bb.bg ], [ false, %bb.bn ]
  %lpad.thr_comm249 = landingpad { ptr, i32 }
          cleanup
  br label %.thread244

bb.bf:                                            ; preds = %bb.be
  %lpad.thr_comm.split-lp250 = landingpad { ptr, i32 }
          cleanup
  br label %.thread238

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.626)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false)
  invoke fastcc void @_RNvNtCsltEA4u8Pgfu_11candle_core6pickle12rebuild_args(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.o, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n)
          to label %bb.bh unwind label %.thread251

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ex = load i64, ptr %i.o, align 8, !range !20, !noundef !8 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, -1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.626, ptr noundef nonnull align 8 dereferenceable(72) %i.ez, i64 72, i1 false)
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.sroa.479.0.copyload = load i8, ptr %.sroa.479.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.ey, label %.thread255, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.774.0.copyload = load i64, ptr %.sroa.774.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.626, i64 48, i1 false)
  %.sroa.626.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.626, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.626.56..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  store i64 %i.ex, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.bl unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bm, %bb.bk
  %.pn120 = phi { ptr, i32 } [ %i.fa, %bb.bk ], [ %i.fc, %bb.bm ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #26
          to label %bb.bu unwind label %bb.ae

bb.bk:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit, %bb.bi
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsb_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CoweENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsltEA4u8Pgfu_11candle_core, ptr %.sroa.487.0..sroa_idx, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.p, ptr %i.fb, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.491.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @130, ptr noundef nonnull %i.i)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #26
          to label %bb.bj unwind label %bb.ae

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %bb.bn unwind label %bb.bk

bb.bn:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.035, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %.sroa.035.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.035, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.035.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  %.sroa.035.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.035, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.035.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.035, i64 104, i1 false)
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.774.0.copyload, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %.sroa.479.0.copyload, ptr %.sroa.540.0..sroa_idx, align 8
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bo unwind label %.thread251

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.fd = load i64, ptr %i.ac, align 8, !range !23, !noundef !8
  %i.fe = icmp sgt i64 %i.fd, -1
  br i1 %i.fe, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bq, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %6 = trunc nuw i8 %.sroa.042.2 to i1
  %i.ff = load i64, ptr %i.ae, align 8, !range !23
  %7 = icmp slt i64 %i.ff, 0
  %or.cond139.not = select i1 %6, i1 %7, i1 false
  br i1 %or.cond139.not, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %bb.bo
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ac)
          to label %bb.bp unwind label %bb.d

bb.br:                                            ; preds = %bb.bs, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bp
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae)
          to label %bb.br unwind label %.body

bb.bt:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1D_.exit185, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit168, %bb.br
  ret void

bb.bu:                                            ; preds = %bb.bj
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #26
          to label %bb.bv unwind label %bb.ae

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #26
          to label %.thread244 unwind label %bb.ae

bb.bw:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.fg = load i64, ptr %i.ac, align 8, !range !23, !noundef !8
  %i.fh = icmp sgt i64 %i.fg, -1
  br i1 %i.fh, label %bb.by, label %bb.bx

.thread255:                                       ; preds = %bb.bh
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.580.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fi, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.626, i64 72, i1 false)
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.583.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, i64 7, i1 false)
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sroa.479.0.copyload, ptr %.sroa.482.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.fj = load i64, ptr %i.ac, align 8, !range !23, !noundef !8
  %i.fk = icmp sgt i64 %i.fj, -1
  br i1 %i.fk, label %.critedge, label %bb.bx

.thread244:                                       ; preds = %bb.bv, %.thread251, %.thread238
  %.sroa.055.6 = phi i1 [ true, %.thread238 ], [ %.sroa.055.5.ph, %.thread251 ], [ false, %bb.bv ] ; 2 uses
  %.pn122.pn = phi { ptr, i32 } [ %.pn122243, %.thread238 ], [ %lpad.thr_comm249, %.thread251 ], [ %.pn120, %bb.bv ] ; 2 uses
  %.sroa.36.10 = extractvalue { ptr, i32 } %.pn122.pn, 1 ; 2 uses
  %.sroa.0101.10 = extractvalue { ptr, i32 } %.pn122.pn, 0 ; 2 uses
  %i.fl = load i64, ptr %i.ac, align 8, !range !23, !noundef !8
  %i.fm = icmp sgt i64 %i.fl, -1
  br i1 %i.fm, label %.critedge141, label %bb.ck

.thread244.thread:                                ; preds = %bb.az
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.36.10263 = extractvalue { ptr, i32 } %i.fn, 1 ; 2 uses
  %.sroa.0101.10264 = extractvalue { ptr, i32 } %i.fn, 0 ; 2 uses
  %i.fo = load i64, ptr %i.ac, align 8, !range !23, !noundef !8
  %i.fp = icmp sgt i64 %i.fo, -1
  br i1 %i.fp, label %bb.cl, label %bb.ck

.thread238:                                       ; preds = %bb.bd, %bb.bf
  %.pn122243 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp250, %bb.bf ], [ %i.ew, %bb.bd ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab) #26
          to label %.thread244 unwind label %bb.ae

bb.bx:                                            ; preds = %.thread255, %bb.bw
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ac)
          to label %.critedge unwind label %bb.d

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body151 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i: ; preds = %bb.by
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body151

.body151:                                         ; preds = %bb.bz, %bb.cb
  %eh.lpad-body152 = phi { ptr, i32 } [ %i.fs, %bb.cb ], [ %i.fq, %bb.bz ] ; 2 uses
  %i.ft = extractvalue { ptr, i32 } %eh.lpad-body152, 1
  %i.fu = extractvalue { ptr, i32 } %eh.lpad-body152, 0
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fv) #26
          to label %.critedge141 unwind label %bb.ae

.critedge:                                        ; preds = %.thread255, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i155, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %8 = trunc nuw i8 %.sroa.042.2 to i1
  %i.fw = load i64, ptr %i.ae, align 8, !range !23
  %9 = icmp slt i64 %i.fw, 0
  %or.cond.not = select i1 %8, i1 %9, i1 false
  br i1 %or.cond.not, label %bb.cg, label %bb.cf

bb.cc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i155 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fx)
          to label %.body146.a unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i155: ; preds = %bb.cc
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fx)
          to label %.critedge unwind label %bb.d

bb.cf:                                            ; preds = %bb.cg, %.critedge, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ch

bb.cg:                                            ; preds = %.critedge, %bb.ai
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae)
          to label %bb.cf unwind label %.body.thread230

bb.ch:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBY_EBY_EEB12_.exit177, %bb.cf
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i164 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body165.thread215 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.body165.thread215:                               ; preds = %bb.ci
  %i.gc = extractvalue { ptr, i32 } %i.ga, 0
  %i.gd = extractvalue { ptr, i32 } %i.ga, 1
  br label %bb.cq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i164: ; preds = %bb.ch
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit168 unwind label %.body165

bb.ck:                                            ; preds = %.thread244.thread, %.thread244
  %.sroa.0101.10270 = phi ptr [ %.sroa.0101.10264, %.thread244.thread ], [ %.sroa.0101.10, %.thread244 ]
  %.sroa.36.10268 = phi i32 [ %.sroa.36.10263, %.thread244.thread ], [ %.sroa.36.10, %.thread244 ]
  %.sroa.055.6266 = phi i1 [ true, %.thread244.thread ], [ %.sroa.055.6, %.thread244 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ac) #26
          to label %.critedge141 unwind label %bb.ae

bb.cl:                                            ; preds = %.thread244.thread
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #26
          to label %bb.cm unwind label %bb.ae

bb.cm:                                            ; preds = %bb.cl
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ge) #26
          to label %.critedge141 unwind label %bb.ae

.critedge141:                                     ; preds = %.body146.a, %.body151, %bb.ck, %bb.cm, %.thread244
  %.sroa.055.2 = phi i1 [ %.sroa.055.3.lpad-body157, %.body146.a ], [ %.sroa.055.6, %.thread244 ], [ true, %.body151 ], [ %.sroa.055.6266, %bb.ck ], [ true, %bb.cm ] ; 2 uses
  %.sroa.042.0 = phi i8 [ %.sroa.042.1.lpad-body159, %.body146.a ], [ %.sroa.042.2, %.thread244 ], [ %.sroa.042.2, %.body151 ], [ %.sroa.042.2, %bb.ck ], [ %.sroa.042.2, %bb.cm ]
  %.sroa.0101.2 = phi ptr [ %i.ax, %.body146.a ], [ %.sroa.0101.10, %.thread244 ], [ %i.fu, %.body151 ], [ %.sroa.0101.10270, %bb.ck ], [ %.sroa.0101.10264, %bb.cm ] ; 2 uses
  %.sroa.36.2 = phi i32 [ %i.ay, %.body146.a ], [ %.sroa.36.10, %.thread244 ], [ %i.ft, %.body151 ], [ %.sroa.36.10268, %bb.ck ], [ %.sroa.36.10263, %bb.cm ] ; 2 uses
  %10 = trunc nuw i8 %.sroa.042.0 to i1
  br i1 %10, label %.critedge141.thread, label %.critedge143

.critedge141.thread:                              ; preds = %bb.v, %bb.as, %.critedge141
  %.sroa.36.2290 = phi i32 [ %.sroa.36.2, %.critedge141 ], [ %.sroa.36.4, %bb.v ], [ %.sroa.36.7, %bb.as ] ; 2 uses
  %.sroa.0101.2288 = phi ptr [ %.sroa.0101.2, %.critedge141 ], [ %.sroa.0101.4, %bb.v ], [ %.sroa.0101.7, %bb.as ] ; 2 uses
  %.sroa.055.2286 = phi i1 [ %.sroa.055.2, %.critedge141 ], [ true, %bb.v ], [ true, %bb.as ] ; 2 uses
  %i.gf = load i64, ptr %i.ae, align 8, !range !23, !noundef !8
  %i.gg = icmp sgt i64 %i.gf, -1
  br i1 %i.gg, label %.critedge143, label %bb.cn

bb.cn:                                            ; preds = %.critedge141.thread
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae) #26
          to label %.critedge143 unwind label %bb.ae

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBC_EEBG_.exit.i170: ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit.thread, %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %.sink1.i.sroa.gep186)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBY_EBY_EEB12_.exit177 unwind label %.body.thread230

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBY_EBY_EEB12_.exit177: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBC_EEBG_.exit.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ch

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit168: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bt

bb.co:                                            ; preds = %.body.thread230, %.critedge143
  %.sroa.36.1224 = phi i32 [ %i.aq, %.body.thread230 ], [ %.sroa.36.2289, %.critedge143 ]
  %.sroa.0101.1223 = phi ptr [ %i.ap, %.body.thread230 ], [ %.sroa.0101.2287, %.critedge143 ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #26
          to label %bb.cq unwind label %bb.ae

bb.cp:                                            ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1D_.exit185 unwind label %bb.cr

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1D_.exit185: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  br label %bb.bt

bb.cq:                                            ; preds = %.critedge143, %bb.co, %.body, %.body165, %.body165.thread215, %bb.cr
  %.sroa.36.0211 = phi i32 [ %i.am, %.body165 ], [ %i.gk, %bb.cr ], [ %i.gd, %.body165.thread215 ], [ %.sroa.36.2289, %.critedge143 ], [ %.sroa.36.1224, %bb.co ], [ %i.as, %.body ]
  %.sroa.0101.0209 = phi ptr [ %i.al, %.body165 ], [ %i.gj, %bb.cr ], [ %i.gc, %.body165.thread215 ], [ %.sroa.0101.2287, %.critedge143 ], [ %.sroa.0101.1223, %bb.co ], [ %i.ar, %.body ]
  %i.gh = insertvalue { ptr, i32 } poison, ptr %.sroa.0101.0209, 0
  %i.gi = insertvalue { ptr, i32 } %i.gh, i32 %.sroa.36.0211, 1
  resume { ptr, i32 } %i.gi

bb.cr:                                            ; preds = %bb.cp
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.gk = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #26
          to label %bb.cq unwind label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object3int(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 12)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object4bool(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 9)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775804
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !28, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.d, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object4dict(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775799
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object4none(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775803
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5class(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775802
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
end_hunk_0
