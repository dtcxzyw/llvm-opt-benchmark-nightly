Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.13?download=true
inline.NumInlined: 1791
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RNvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_13CicpTransform3new:bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshGoo8nsRtFZ_6moxcms7profile12ColorProfileECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(2576) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit124 unwind label %bb.cx

bb.cu:                                            ; preds = %bb.cs, %bb.cm
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cv:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshGoo8nsRtFZ_6moxcms7profile12ColorProfileECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(2576) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit125 unwind label %bb.cw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit124: ; preds = %bb.ct, %bb.cw
  %.pn47 = phi { ptr, i32 } [ %i.df, %bb.cw ], [ %.pn45, %bb.ct ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshGoo8nsRtFZ_6moxcms7profile12ColorProfileECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(2576) %i.af)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cy, %bb.cv
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit124

bb.cx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit124, %bb.ct, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit105, %bb.bz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit70, %bb.be, %bb.ap, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit69, %bb.da, %bb.cz, %bb.cq, %bb.co, %bb.cj, %bb.bw, %bb.bn, %bb.az
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.cy:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshGoo8nsRtFZ_6moxcms7profile12ColorProfileECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(2576) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit127 unwind label %bb.cw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit127: ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshGoo8nsRtFZ_6moxcms7profile12ColorProfileECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(2576) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.s

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit124, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit105, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit70, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit69
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit69 ], [ %.pn37.pn.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit105 ], [ %.pn32.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit70 ], [ %.pn47, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit124 ]
  resume { ptr, i32 } %.pn51.pn

bb.cz:                                            ; preds = %bb.cj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformshEEBI_(ptr noalias nofree noundef align 8 dereferenceable(256) %i.y) #20
          to label %bb.bw unwind label %bb.cx

bb.da:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB28_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %i.aa) #20
          to label %bb.be unwind label %bb.cx

bb.db:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshGoo8nsRtFZ_6moxcms7profile12ColorProfileECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(2576) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp12ColorProfileEBH_.exit128 unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs8_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_4Cicp25to_moxcms_compute_profile(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(2576) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 8 uses
  %i.b = alloca [2576 x i8], align 8              ; 7 uses
  %.sroa.42.0.extract.shift = lshr i32 %1, 8
  %.sroa.42.0.extract.trunc = trunc i32 %.sroa.42.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i32 %1, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i32 %1, 24
  %.sroa.6.0.extract.trunc = trunc nuw i32 %.sroa.6.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCshGoo8nsRtFZ_6moxcms8defaultsNtNtB4_7profile12ColorProfile8new_srgb(ptr noalias nofree noundef nonnull sret([2576 x i8]) align 8 captures(none) dereferenceable(2576) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i8 %.sroa.5.0.extract.trunc, label %bb.b [
    i8 0, label %bb.r
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.q
    i8 17, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.r
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshGoo8nsRtFZ_6moxcms7profile12ColorProfileECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(2576) %i.b) #20
          to label %bb.v unwind label %bb.u

bb.d:                                             ; preds = %bb.a
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  br label %bb.r

bb.p:                                             ; preds = %bb.a
  br label %bb.r

bb.q:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 2, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshGoo8nsRtFZ_6moxcms7profile12ColorProfileECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(2576) %i.b)
  br label %bb.t

bb.r:                                             ; preds = %bb.a, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.06.0 = phi i32 [ 14, %bb.p ], [ 1, %bb.d ], [ 2, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 0, %bb.a ]
  %i.e = and i32 %1, 255
  %i.f = icmp ne i32 %i.e, 0
  store i8 %.sroa.6.0.extract.trunc, ptr %i.a, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sroa.42.0.extract.trunc, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.06.0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = zext i1 %i.f to i8
  store i8 %i.j, ptr %i.i, align 4
  %i.k = invoke noundef zeroext i1 @_RNvMso_NtCshGoo8nsRtFZ_6moxcms7profileNtB5_12ColorProfile32update_rgb_colorimetry_from_cicp(ptr noalias nofree noundef nonnull align 8 dereferenceable(2576) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a)
          to label %bb.s unwind label %bb.c       ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2576) %0, ptr noundef nonnull align 8 dereferenceable(2576) %i.b, i64 2576, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.u:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.v:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMaptNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE6insertCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i16 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [2 x i8], align 2                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.11 = alloca [16 x i8], align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5859)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %2, ptr %i.b, align 2, !noalias !5860
  %i.f = load ptr, ptr %1, align 8, !alias.scope !5859, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMaptNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE5entryCsa5QsYiPB8Gl_5image.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5860
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !5859, !noundef !4
  call void @_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1i_14LeafOrInternalE11search_treetECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.b), !noalias !5860
  %i.i = load i64, ptr %i.a, align 8, !range !17, !noalias !5860, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.8.copyload2 = load ptr, ptr %i.k, align 8, !noalias !5859 ; 2 uses
  %.sroa.11.8..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.8..sroa_idx4, i64 16, i1 false), !noalias !5859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.d, label %bb.c

_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMaptNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE5entryCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.7.8.copyload2, ptr %i.e, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %.sroa.115.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %1, ptr %.sroa.115.8..sroa_idx, align 8
  call void @_RNvMs5_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_13OccupiedEntrytNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE6insertCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMaptNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE5entryCsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.7.0.ph = phi ptr [ null, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMaptNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE5entryCsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.7.8.copyload2, %bb.b ]
  %.sroa.115.0.ph.in = zext i16 %2 to i64
  %.sroa.115.0.ph = inttoptr i64 %.sroa.115.0.ph.in to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.7.0.ph, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %.sroa.115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.115.0.ph, ptr %.sroa.115.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntrytNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE12insert_entryCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3)
  %i.l = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_13OccupiedEntrytNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE8into_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 0, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoItertNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE10dying_nextCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE10take_frontCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !5872, !noundef !4
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE16deallocating_endNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE16deallocating_endNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE16deallocating_endNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE10init_frontCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !5873 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5874
  invoke void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !5875

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !5874, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, !prof !5

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #26
          to label %.noexc1.i.i unwind label %bb.g, !noalias !5876

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #26, !noalias !5873
  unreachable

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE16deallocating_endNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMaptNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5881
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoItertNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE10dying_nextCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.e = load ptr, ptr %i.a, align 8, !noalias !5881, !noundef !4
  %.not5.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8IntoItertNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryEECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5881
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoItertNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE10dying_nextCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.f = load ptr, ptr %i.a, align 8, !noalias !5881, !noundef !4
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8IntoItertNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryEECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8IntoItertNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryEECsa5QsYiPB8Gl_5image.exit: ; preds = %.lr.ph.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB9_6marker4SendNtB2J_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3m_17NeverShortCircuitB1d_E10wrap_mut_1BR_NvMBU_BR_6unwrapE0EINtNtB3o_8function5FnMutTjEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.b, label %_RNCINvMNtNtCsj6eKBz9Db1c_4core3ops9try_traitINtB5_17NeverShortCircuitINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB9_6marker4SendNtB2B_4SyncEL_EE10wrap_mut_1INtNtB9_6option6OptionB15_ENvMB3n_B3k_6unwrapE0Csa5QsYiPB8Gl_5image.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #26
  unreachable

_RNCINvMNtNtCsj6eKBz9Db1c_4core3ops9try_traitINtB5_17NeverShortCircuitINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB9_6marker4SendNtB2B_4SyncEL_EE10wrap_mut_1INtNtB9_6option6OptionB15_ENvMB3n_B3k_6unwrapE0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.f, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB2J_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3m_17NeverShortCircuitB1d_E10wrap_mut_1BR_NvMBU_BR_6unwrapE0EINtNtB3o_8function5FnMutTjEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.b, label %_RNCINvMNtNtCsj6eKBz9Db1c_4core3ops9try_traitINtB5_17NeverShortCircuitINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB2B_4SyncEL_EE10wrap_mut_1INtNtB9_6option6OptionB15_ENvMB3n_B3k_6unwrapE0Csa5QsYiPB8Gl_5image.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #26
  unreachable

_RNCINvMNtNtCsj6eKBz9Db1c_4core3ops9try_traitINtB5_17NeverShortCircuitINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB2B_4SyncEL_EE10wrap_mut_1INtNtB9_6option6OptionB15_ENvMB3n_B3k_6unwrapE0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.f, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB9_6marker4SendNtB2J_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3m_17NeverShortCircuitB1d_E10wrap_mut_1BR_NvMBU_BR_6unwrapE0EINtNtB3o_8function5FnMutTjEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 {
end_hunk_0
