Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/heif_encoding?download=true
inline.NumInlined: 734
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@heif_encoding_options_copy:bb.a
  store i8 %i.i, ptr %i.j, align 8, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !85
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.n, ptr %i.o, align 4, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.t, ptr %i.u, align 8, !tbaa !75
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.w, ptr %i.x, align 1, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.z = load i8, ptr %i.y, align 2, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !87
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !88
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @heif_encoding_options_free(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { i64, ptr } @heif_context_encode_image(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon, align 1                ; 3 uses
  %6 = alloca %struct.heif_encoding_options, align 8 ; 17 uses
  %7 = alloca %struct.heif_color_profile_nclx, align 4 ; 9 uses
  %8 = alloca %class.Result, align 16             ; 10 uses
  %9 = alloca %"class.std::__1::shared_ptr.24", align 16 ; 9 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr @heif_error_null_pointer_argument, align 8
  %.sroa.4.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @heif_error_null_pointer_argument, i64 8), align 8, !tbaa !38
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %.not27 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %4, align 8, !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 3 ; 2 uses
  store <4 x i8> <i8 8, i8 1, i8 0, i8 0>, ptr %6, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i8 0, ptr %i.e, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i8 1, ptr %i.g, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 2, ptr %i.h, align 4, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 2, ptr %i.i, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 0, ptr %i.j, align 4, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i8 1, ptr %i.k, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !82
  %.not28 = icmp eq ptr %3, null
  br i1 %.not28, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %3, align 1, !tbaa !41
  %i.n = tail call i8 @llvm.umin.i8(i8 %i.m, i8 8)
  switch i8 %i.n, label %heif_encoding_options_copy.exit.thread [
    i8 8, label %bb.g
    i8 7, label %bb.h
    i8 6, label %bb.i
    i8 5, label %bb.j
    i8 4, label %heif_encoding_options_copy.exit
    i8 3, label %heif_encoding_options_copy.exit.thread53
    i8 2, label %heif_encoding_options_copy.exit.thread.sink.split.sink.split
    i8 1, label %heif_encoding_options_copy.exit.thread.sink.split
  ]

heif_encoding_options_copy.exit.thread53:         ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !86
  store i8 %i.p, ptr %i.c, align 1, !tbaa !86
  br label %heif_encoding_options_copy.exit.thread.sink.split.sink.split

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !82
  store ptr %i.r, ptr %i.l, align 8, !tbaa !82
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.t = load i8, ptr %i.s, align 8, !tbaa !81
  store i8 %i.t, ptr %i.k, align 8, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !85
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !76
  store i32 %i.w, ptr %i.f, align 4, !tbaa !76
  br label %heif_encoding_options_copy.exit

heif_encoding_options_copy.exit:                  ; preds = %bb.f, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !74   ; 2 uses
  store ptr %i.y, ptr %i.d, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !75
  store i8 %i.aa, ptr %i.e, align 8, !tbaa !75
  %i.ab = icmp eq ptr %i.y, null
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !86
  store i8 %i.ad, ptr %i.c, align 1, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !87
  store i8 %i.af, ptr %i.b, align 2, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !88
  store i8 %i.ah, ptr %i.a, align 1, !tbaa !88
  br i1 %i.ab, label %heif_encoding_options_copy.exit.thread, label %bb.l

heif_encoding_options_copy.exit.thread.sink.split.sink.split: ; preds = %bb.f, %heif_encoding_options_copy.exit.thread53
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !87
  store i8 %i.aj, ptr %i.b, align 2, !tbaa !87
  br label %heif_encoding_options_copy.exit.thread.sink.split

heif_encoding_options_copy.exit.thread.sink.split: ; preds = %heif_encoding_options_copy.exit.thread.sink.split.sink.split, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !88
  store i8 %i.al, ptr %i.a, align 1, !tbaa !88
  br label %heif_encoding_options_copy.exit.thread

heif_encoding_options_copy.exit.thread:           ; preds = %heif_encoding_options_copy.exit.thread.sink.split, %bb.f, %heif_encoding_options_copy.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !154
  %i.an = tail call noundef zeroext i1 @_ZNK16ImageDescription22has_nclx_color_profileEv(ptr noundef nonnull align 8 dereferenceable(316) %i.am)
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %heif_encoding_options_copy.exit.thread
  %i.ao = load ptr, ptr %1, align 8, !tbaa !154
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 10
  %.sroa.0.0.copyload.i = load i64, ptr %i.ap, align 2 ; 4 uses
  store ptr %7, ptr %i.d, align 8, !tbaa !74
  store i8 1, ptr %7, align 4, !tbaa !160
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.aq = and i32 %.sroa.0.0.extract.trunc, 65535
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !161
  %.sroa.0.2.extract.shift37 = lshr i64 %.sroa.0.0.copyload.i, 16
  %.sroa.0.2.extract.trunc = trunc i64 %.sroa.0.2.extract.shift37 to i32
  %10 = and i32 %.sroa.0.2.extract.trunc, 65535
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %10, ptr %i.as, align 4, !tbaa !162
  %.sroa.0.4.extract.shift38 = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift38 to i32
  %i.at = and i32 %.sroa.0.4.extract.trunc, 65535
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.at, ptr %i.au, align 4, !tbaa !163
  %.sroa.0.6.extract.shift39 = lshr i64 %.sroa.0.0.copyload.i, 48
  %.sroa.0.6.extract.trunc = trunc i64 %.sroa.0.6.extract.shift39 to i8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 %.sroa.0.6.extract.trunc, ptr %i.av, align 4, !tbaa !164
  br label %bb.l

bb.l:                                             ; preds = %heif_encoding_options_copy.exit, %bb.k, %heif_encoding_options_copy.exit.thread, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.aw = load ptr, ptr %0, align 8, !tbaa !45
  call void @_ZN11HeifContext12encode_imageERKNSt3__110shared_ptrI14HeifPixelImageEEP12heif_encoderRK21heif_encoding_options22heif_image_input_class(ptr dead_on_unwind nonnull writable sret(%class.Result) align 8 %8, ptr noundef nonnull align 8 dereferenceable(312) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 16, !tbaa !92
  switch i32 %i.ay, label %bb.m [
    i32 0, label %bb.o
    i32 1, label %_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI9ImageItemEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i
  ]

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev() #28
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI9ImageItemEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i: ; preds = %bb.l
  %i.az = load ptr, ptr %0, align 8, !tbaa !45
  %i.ba = invoke { i64, ptr } @_ZNK5Error12error_structEP11ErrorBuffer(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %i.az)
          to label %_ZNK6ResultINSt3__110shared_ptrI9ImageItemEEE12error_structEP11ErrorBuffer.exit unwind label %bb.n ; 2 uses

_ZNK6ResultINSt3__110shared_ptrI9ImageItemEEE12error_structEP11ErrorBuffer.exit: ; preds = %_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI9ImageItemEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i
  %i.bb = extractvalue { i64, ptr } %i.ba, 0
  %i.bc = extractvalue { i64, ptr } %i.ba, 1
  br label %bb.y

bb.n:                                             ; preds = %_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI9ImageItemEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i, %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !95 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %8, align 16, !tbaa !96
  store <2 x ptr> %i.bh, ptr %9, align 16, !tbaa !96
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrI9ImageItemEC2B8ne180100ERKS2_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = atomicrmw add ptr %i.bi, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI9ImageItemEC2B8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI9ImageItemEC2B8ne180100ERKS2_.exit: ; preds = %bb.o, %bb.p
  %i.bk = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !97
  %.not.i.i.not = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt3__110shared_ptrI9ImageItemEC2B8ne180100ERKS2_.exit
  invoke void @_ZN11HeifContext17set_primary_imageERKNSt3__110shared_ptrI9ImageItemEE(ptr noundef nonnull align 8 dereferenceable(312) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q, %_ZNSt3__110shared_ptrI9ImageItemEC2B8ne180100ERKS2_.exit
  br i1 %.not27, label %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100EOS2_.exit unwind label %bb.x ; 7 uses

_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100EOS2_.exit: ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  store ptr %i.bn, ptr %4, align 8, !tbaa !90
  %i.bp = load <2 x ptr>, ptr %9, align 16, !tbaa !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !96
  %.pre = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre41 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !98 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %.not.i.i35 = icmp eq ptr %.pre41, null
  br i1 %.not.i.i35, label %_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i.thread, label %_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i

_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i.thread: ; preds = %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100EOS2_.exit
  store ptr %.pre, ptr %i.bq, align 8, !tbaa !99
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %.pre41, ptr %i.br, align 8, !tbaa !100
  br label %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i: ; preds = %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100EOS2_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre41, i64 8
  %i.bt = atomicrmw add ptr %i.bs, i64 1 monotonic, align 8 ; 0 uses
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.pre43 = load ptr, ptr %.phi.trans.insert42, align 8, !tbaa !100 ; 5 uses
  store ptr %.pre, ptr %i.bq, align 8, !tbaa !99
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %.pre41, ptr %i.bu, align 8, !tbaa !100
  %.not.i2.i = icmp eq ptr %.pre43, null
  br i1 %.not.i2.i, label %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre43, i64 8
  %i.bw = atomicrmw add ptr %i.bv, i64 -1 acq_rel, align 8
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.u, label %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit

bb.u:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %.pre43, align 8, !tbaa !102
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(24) %.pre43) #24, !inline_history !0
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre43) #24
  br label %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit: ; preds = %_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i.thread, %bb.u, %bb.t, %_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i, %bb.r
  %.sroa.0.0.copyload19 = load i64, ptr @heif_error_success, align 8
  %.sroa.4.0.copyload20 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @heif_error_success, i64 8), align 8, !tbaa !38
  %i.cb = load ptr, ptr %i.be, align 8, !tbaa !95 ; 5 uses
  %.not.i36 = icmp eq ptr %i.cb, null
  br i1 %.not.i36, label %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = atomicrmw add ptr %i.cc, i64 -1 acq_rel, align 8
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.w, label %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !102
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(24) %i.cb) #24, !inline_history !1
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cb) #24
  br label %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit: ; preds = %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.y

bb.x:                                             ; preds = %bb.q, %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ab

bb.y:                                             ; preds = %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit, %_ZNK6ResultINSt3__110shared_ptrI9ImageItemEEE12error_structEP11ErrorBuffer.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload19, %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit ], [ %i.bb, %_ZNK6ResultINSt3__110shared_ptrI9ImageItemEEE12error_structEP11ErrorBuffer.exit ]
  %.sroa.4.0 = phi ptr [ %.sroa.4.0.copyload20, %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit ], [ %i.bc, %_ZNK6ResultINSt3__110shared_ptrI9ImageItemEEE12error_structEP11ErrorBuffer.exit ]
  %i.cj = load i32, ptr %i.ax, align 16, !tbaa !92 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %_ZN6ResultINSt3__110shared_ptrI9ImageItemEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.cl = zext i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr @__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI9ImageItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.__fmatrix, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !96
  invoke void %i.cn(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI9ImageItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i.i unwind label %bb.aa, !inline_history !2

_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI9ImageItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN6ResultINSt3__110shared_ptrI9ImageItemEEED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #29
  unreachable

_ZN6ResultINSt3__110shared_ptrI9ImageItemEEED2Ev.exit: ; preds = %bb.y, %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI9ImageItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.x ], [ %i.bd, %bb.n ]
  call void @_ZN6ResultINSt3__110shared_ptrI9ImageItemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn.pn

bb.ac:                                            ; preds = %_ZN6ResultINSt3__110shared_ptrI9ImageItemEEED2Ev.exit, %bb.b
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_ZN6ResultINSt3__110shared_ptrI9ImageItemEEED2Ev.exit ], [ %.sroa.0.0.copyload, %bb.b ]
  %.sroa.4.1 = phi ptr [ %.sroa.4.0, %_ZN6ResultINSt3__110shared_ptrI9ImageItemEEED2Ev.exit ], [ %.sroa.4.0.copyload, %bb.b ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
end_hunk_0
