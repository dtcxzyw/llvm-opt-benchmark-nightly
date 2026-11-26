Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/dpxoutput?download=true
inline.NumInlined: 3613
inline.NumDeleted: 1063
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN11OpenImageIO4v3_19DPXOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE:bb.a
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"struct.OpenImageIO::v3_1::ROI", align 16 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %25 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %27 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 7 uses
  %28 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %29 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %31 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %32 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %33 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %34 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %35 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %36 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %37 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %38 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %39 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %40 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %41 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %42 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %44 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %45 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %46 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %47 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %48 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %49 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %50 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %51 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %52 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %53 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %55 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %56 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %57 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %58 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %59 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %60 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %61 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %62 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %63 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %64 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %65 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %66 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %67 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %68 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %69 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %70 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %71 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %72 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %73 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %74 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %75 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %76 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %77 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %78 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %79 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %80 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %81 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %82 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %83 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %85 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %86 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %87 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %88 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %89 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %90 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %92 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 7 uses
  %93 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %94 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %96 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 7 uses
  %97 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %98 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %99 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %100 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.k = icmp eq i32 %3, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !281
  %.not315 = icmp eq ptr %i.m, null               ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %.not315, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.2)
  br label %bb.fx

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2392 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !288, !range !294, !noundef !295
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_ZN11OpenImageIO4v3_19DPXOutput12write_bufferEv.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !283
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !282  ; 2 uses
  %.not.i154 = icmp eq ptr %i.s, %i.t
  br i1 %.not.i154, label %_ZN11OpenImageIO4v3_19DPXOutput12write_bufferEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.w = load i32, ptr %i.v, align 8, !tbaa !284
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.y = load i32, ptr %i.x, align 8, !tbaa !296
  %i.z = tail call noundef zeroext i1 @_ZN3dpx6Writer12WriteElementEiPvNS_8DataSizeE(ptr noundef nonnull align 8 dereferenceable(2080) %i.u, i32 noundef %i.w, ptr noundef %i.t, i32 noundef %i.y)
  br i1 %i.z, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call ptr @__errno_location() #31
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !48
  %i.ac = tail call ptr @strerror(i32 noundef %i.ab) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  %.not8.i = icmp eq ptr %i.ac, null
  br i1 %.not8.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !297
  %.not9.i = icmp eq i8 %i.ad, 0
  %spec.select.i155 = select i1 %.not9.i, ptr @.str.80, ptr %i.ac
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi ptr [ @.str.80, %bb.g ], [ %spec.select.i155, %bb.h ]
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !298
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(2424) %0, ptr noundef nonnull @.str.79, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  store i8 0, ptr %i.n, align 8, !tbaa !288
  br label %_ZN11OpenImageIO4v3_19DPXOutput12write_bufferEv.exit

_ZN11OpenImageIO4v3_19DPXOutput12write_bufferEv.exit: ; preds = %bb.j, %bb.e, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !284
  %i.ah = add nsw i32 %i.ag, 1                    ; 3 uses
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !284
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2364 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !285
  %.not153 = icmp slt i32 %i.ah, %i.aj
  br i1 %.not153, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_19DPXOutput12write_bufferEv.exit
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.ai)
  br label %bb.fx

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_19DPXOutput12write_bufferEv.exit
  %i.ak = call noundef zeroext i1 @_ZN11OpenImageIO4v3_19DPXOutput13prep_subimageEib(ptr noundef nonnull align 8 dereferenceable(2424) %0, i32 noundef %i.ah, i1 noundef zeroext true)
  br label %bb.fx

bb.m:                                             ; preds = %bb.a
  br i1 %.not315, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_19DPXOutput5closeEv(ptr noundef nonnull align 8 dereferenceable(2424) %0) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store <4 x i32> <i32 0, i32 1048576, i32 0, i32 1048576>, ptr %12, align 16, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <4 x i32> <i32 0, i32 1, i32 0, i32 256>, ptr %i.am, align 16, !tbaa !48
  %i.an = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, i64 noundef 0)
  br i1 %i.an, label %bb.p, label %bb.fx

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_111ImageOutput28ioproxy_retrieve_from_configERKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.ao)
  %i.ap = load ptr, ptr %1, align 8, !tbaa !302
  store ptr %i.ap, ptr %13, align 8, !tbaa !304
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !305
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !306
  %i.at = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %13)
  br i1 %i.at, label %bb.q, label %bb.fx

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 3 uses
  store i32 0, ptr %i.au, align 8, !tbaa !284
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2368 ; 5 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !299
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !299
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %_ZNSt6vectorIN11OpenImageIO4v3_19ImageSpecESaIS2_EE6resizeEm.exit, label %bb.r

_ZNSt6vectorIN11OpenImageIO4v3_19ImageSpecESaIS2_EE6resizeEm.exit: ; preds = %bb.q
  call void @_ZNSt6vectorIN11OpenImageIO4v3_19ImageSpecESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 noundef 1)
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !286 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ba, ptr noundef nonnull align 8 dereferenceable(160) %i.ao, i64 72, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bc) ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bf) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bh, ptr noundef nonnull align 8 dereferenceable(9) %i.bi, i64 9, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2364
  store i32 1, ptr %i.bm, align 4, !tbaa !285
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_19ImageSpecESaIS2_EE6resizeEm.exit, %bb.q
  %i.bn = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32 ; 5 uses
  %i.bo = invoke noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput7ioproxyEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.s unwind label %bb.an

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV9OutStream, i64 16), ptr %i.bn, align 8, !tbaa !227
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !528
  store ptr %i.bn, ptr %i.l, align 8, !tbaa !281
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 8 uses
  call void @_ZN3dpx6Writer12SetOutStreamEP9OutStream(ptr noundef nonnull align 8 dereferenceable(2080) %i.bq, ptr noundef nonnull %i.bn)
  call void @_ZN3dpx6Writer5StartEv(ptr noundef nonnull align 8 dereferenceable(2080) %i.bq)
  store i32 0, ptr %i.au, align 8, !tbaa !284
  %i.br = load ptr, ptr %i.av, align 8, !tbaa !286 ; 51 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store ptr @.str.4, ptr %16, align 8, !tbaa !304
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 8, ptr %i.bs, align 8, !tbaa !306
  store ptr @.str.5, ptr %17, align 8, !tbaa !304
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !306
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %15, ptr noundef nonnull align 8 dereferenceable(160) %i.br, ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17)
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.bu = load ptr, ptr %15, align 8, !tbaa !304, !noalias !529 ; 3 uses
  %.not.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.not.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !306, !noalias !529 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.bx, ptr %14, align 8, !tbaa !307, !alias.scope !529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28, !noalias !529
  store i64 %i.bw, ptr %i.i, align 8, !tbaa !308, !noalias !529
  %i.by = icmp ugt i64 %i.bw, 15
  br i1 %i.by, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.t
  %i.bz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) ; 2 uses
  store ptr %i.bz, ptr %14, align 8, !tbaa !302, !alias.scope !529
  %i.ca = load i64, ptr %i.i, align 8, !tbaa !308, !noalias !529
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !297, !alias.scope !529
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.t
  %i.cb = phi ptr [ %i.bz, %.noexc.i.i ], [ %i.bx, %bb.t ] ; 2 uses
  switch i64 %i.bw, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.cc = load i8, ptr %i.bu, align 1, !tbaa !297
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !297
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr nonnull align 1 %i.bu, i64 %i.bw, i1 false)
  br label %bb.w

.thread.i:                                        ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.cd, ptr %14, align 8, !tbaa !307, !alias.scope !529
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.ce, align 8, !tbaa !305, !alias.scope !529
  store i8 0, ptr %i.cd, align 8, !tbaa !297, !alias.scope !529
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i
  %i.cf = load i64, ptr %i.i, align 8, !tbaa !308, !noalias !529 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !305, !alias.scope !529
  %i.ch = load ptr, ptr %14, align 8, !tbaa !302, !alias.scope !529
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 0, ptr %i.ci, align 1, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28, !noalias !529
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit: ; preds = %.thread.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  store ptr @.str.6, ptr %20, align 8, !tbaa !304
  %i.cj = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 12, ptr %i.cj, align 8, !tbaa !306
  store ptr @.str.5, ptr %21, align 8, !tbaa !304
  %i.ck = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !306
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %19, ptr noundef nonnull align 8 dereferenceable(160) %i.br, ptr noundef nonnull dead_on_return %20, ptr noundef nonnull dead_on_return %21)
          to label %bb.x unwind label %bb.ao

bb.x:                                             ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.cl = load ptr, ptr %19, align 8, !tbaa !304, !noalias !530 ; 3 uses
  %.not.not.i156 = icmp eq ptr %i.cl, null
  br i1 %.not.not.i156, label %.thread.i159, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !306, !noalias !530 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.co, ptr %18, align 8, !tbaa !307, !alias.scope !530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28, !noalias !530
  store i64 %i.cn, ptr %i.h, align 8, !tbaa !308, !noalias !530
  %i.cp = icmp ugt i64 %i.cn, 15
  br i1 %i.cp, label %.noexc.i.i158, label %._crit_edge.i.i.i157

.noexc.i.i158:                                    ; preds = %bb.y
  %i.cq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc unwind label %bb.ao    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i158
  store ptr %i.cq, ptr %18, align 8, !tbaa !302, !alias.scope !530
  %i.cr = load i64, ptr %i.h, align 8, !tbaa !308, !noalias !530
  store i64 %i.cr, ptr %i.co, align 8, !tbaa !297, !alias.scope !530
  br label %._crit_edge.i.i.i157

._crit_edge.i.i.i157:                             ; preds = %.noexc, %bb.y
  %i.cs = phi ptr [ %i.cq, %.noexc ], [ %i.co, %bb.y ] ; 2 uses
  switch i64 %i.cn, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i157
  %i.ct = load i8, ptr %i.cl, align 1, !tbaa !297
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !297
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i.i157
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr nonnull align 1 %i.cl, i64 %i.cn, i1 false)
  br label %bb.ab

.thread.i159:                                     ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store ptr %i.cu, ptr %18, align 8, !tbaa !307, !alias.scope !530
  %i.cv = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.cv, align 8, !tbaa !305, !alias.scope !530
  store i8 0, ptr %i.cu, align 8, !tbaa !297, !alias.scope !530
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit160

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i157
  %i.cw = load i64, ptr %i.h, align 8, !tbaa !308, !noalias !530 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !305, !alias.scope !530
  %i.cy = load ptr, ptr %18, align 8, !tbaa !302, !alias.scope !530
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28, !noalias !530
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit160

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit160: ; preds = %bb.ab, %.thread.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  store ptr @.str.7, ptr %24, align 8, !tbaa !304
  %i.da = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 9, ptr %i.da, align 8, !tbaa !306
  store ptr @.str.5, ptr %25, align 8, !tbaa !304
  %i.db = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %i.db, align 8, !tbaa !306
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %23, ptr noundef nonnull align 8 dereferenceable(160) %i.br, ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
          to label %bb.ac unwind label %bb.ap

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit160
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.dc = load ptr, ptr %23, align 8, !tbaa !304, !noalias !531 ; 3 uses
  %.not.not.i161 = icmp eq ptr %i.dc, null
  br i1 %.not.not.i161, label %.thread.i164, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !306, !noalias !531 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.df, ptr %22, align 8, !tbaa !307, !alias.scope !531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28, !noalias !531
  store i64 %i.de, ptr %i.g, align 8, !tbaa !308, !noalias !531
  %i.dg = icmp ugt i64 %i.de, 15
  br i1 %i.dg, label %.noexc.i.i163, label %._crit_edge.i.i.i162

end_hunk_0
