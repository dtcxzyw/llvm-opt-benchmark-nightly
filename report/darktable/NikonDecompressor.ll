Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/NikonDecompressor?download=true
inline.NumInlined: 1176
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8rawspeed17NikonDecompressorC2ENS_8RawImageENS_10ByteStreamEj:bb.a
  %i.bl = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, 2
  %.not.i.i.i.i.i.i30 = icmp samesign ugt i64 %i.bm, %i.bb
  br i1 %.not.i.i.i.i.i.i30, label %.invoke, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = add nuw nsw i32 %i.at, 4                ; 2 uses
  %i.bo = icmp samesign ule i32 %i.bn, %i.aa
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bl
  %.0.copyload.i.i.i.i.i.i31 = load i16, ptr %i.bp, align 1 ; 2 uses
  %i.bq = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i31)
  %spec.select.i.i.i.i.i.i32 = select i1 %i.be, i16 %.0.copyload.i.i.i.i.i.i31, i16 %i.bq
  %i.br = zext i16 %spec.select.i.i.i.i.i.i32 to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !33
  %i.bt = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bu = add nuw nsw i64 %i.bt, 2
  %.not.i.i.i.i.i.i35 = icmp samesign ugt i64 %i.bu, %i.bb
  br i1 %.not.i.i.i.i.i.i35, label %.invoke, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = add nuw nsw i32 %i.at, 6                ; 2 uses
  %i.bw = icmp samesign ule i32 %i.bv, %i.aa
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bt
  %.0.copyload.i.i.i.i.i.i36 = load i16, ptr %i.bx, align 1 ; 2 uses
  %i.by = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i36)
  %spec.select.i.i.i.i.i.i37 = select i1 %i.be, i16 %.0.copyload.i.i.i.i.i.i36, i16 %i.by
  %i.bz = zext i16 %spec.select.i.i.i.i.i.i37 to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !33
  %i.cb = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.cc = add nuw nsw i64 %i.cb, 2
  %.not.i.i.i.i.i.i40 = icmp samesign ugt i64 %i.cc, %i.bb
  br i1 %.not.i.i.i.i.i.i40, label %.invoke, label %bb.ac

.invoke:                                          ; preds = %bb.r, %bb.o, %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.cd = phi ptr [ @.str.7, %bb.aa ], [ @.str.7, %bb.z ], [ @.str.7, %bb.y ], [ @.str.7, %bb.ab ], [ @.str.7, %bb.o ], [ @.str.9, %bb.r ]
  %i.ce = phi ptr [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.aa ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.z ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.y ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.ab ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.o ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj, %bb.r ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce) #16
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.cf = add nuw nsw i32 %i.at, 8                ; 2 uses
  %i.cg = icmp samesign ule i32 %i.cf, %i.aa
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cb
  %.0.copyload.i.i.i.i.i.i41 = load i16, ptr %i.ch, align 1 ; 2 uses
  %i.ci = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i41)
  %spec.select.i.i.i.i.i.i42 = select i1 %i.be, i16 %.0.copyload.i.i.i.i.i.i41, i16 %i.ci
  store i32 %i.cf, ptr %i.x, align 8, !tbaa !29
  %i.cj = zext i16 %spec.select.i.i.i.i.i.i42 to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN8rawspeed17NikonDecompressor11createCurveERNS_10ByteStreamEjjjPj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.av, i32 noundef %i.ag, i32 noundef %i.aj, ptr noundef nonnull %i.f)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !16
  %i.co = load <2 x ptr>, ptr %4, align 16, !tbaa !243
  store <2 x ptr> %i.co, ptr %i.g, align 8, !tbaa !243
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 16, !tbaa !16
  store ptr %i.cq, ptr %i.cm, align 8, !tbaa !16
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %_ZNSt6vectorItSaItEEaSEOS1_.exit

_ZNSt6vectorItSaItEEaSEOS1_.exit:                 ; preds = %bb.ad
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = ptrtoint ptr %i.cl to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ct) #24
  %.pr = load ptr, ptr %4, align 16, !tbaa !15    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorItSaItEEaSEOS1_.exit
  %i.cu = load ptr, ptr %i.cp, align 16, !tbaa !16
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %.pr to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cx) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.ad, %_ZNSt6vectorItSaItEEaSEOS1_.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cy = load i32, ptr %i.f, align 8, !tbaa !90
  %i.cz = load ptr, ptr %0, align 8, !tbaa !81
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 44
  %i.db = load i32, ptr %i.da, align 4, !tbaa !155
  %.not19 = icmp ult i32 %i.cy, %i.db
  br i1 %.not19, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  store i32 0, ptr %i.f, align 8, !tbaa !90
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %_ZNSt6vectorItSaItEED2Ev.exit
  ret void

bb.ai:                                            ; preds = %bb.s, %bb.ag, %bb.t, %bb.f
  %.pn20 = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.ar, %bb.s ], [ %i.dc, %bb.ag ], [ %i.as, %bb.t ]
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorItSaItEED2Ev.exit46, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !16
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit46

_ZNSt6vectorItSaItEED2Ev.exit46:                  ; preds = %bb.ai, %bb.aj
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  resume { ptr, i32 } %.pn20
}

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !246
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !247
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !162, !inline_history !244
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !164, !inline_history !244
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !165

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed17NikonDecompressor10decompressENS_10Array1DRefIKhEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %.sroa.0.i.i.i.i.i = alloca i32, align 4        ; 5 uses
  %.sroa.0.i.i.i.i = alloca i32, align 4          ; 5 uses
  %5 = alloca %"struct.std::array.108", align 1   ; 16 uses
  %6 = alloca %"struct.std::array.109", align 2   ; 8 uses
  %7 = alloca %"class.rawspeed::(anonymous namespace)::NikonLASDecompressor", align 8 ; 26 uses
  %8 = alloca %"struct.std::array.23", align 8    ; 5 uses
  %9 = alloca %"class.rawspeed::RawImageCurveGuard", align 8 ; 7 uses
  %10 = alloca %"class.rawspeed::BitStreamerMSB", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = zext i1 %3 to i8
  store ptr %0, ptr %9, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !266
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 %i.b, ptr %i.d, align 8, !tbaa !170
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !81
  tail call void @_ZN8rawspeed12RawImageData8setTableERKSt6vectorItSaItEEb(ptr noundef nonnull align 8 dereferenceable(624) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.f = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.f)
  store i64 0, ptr %10, align 8, !tbaa !172
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.g, align 8, !tbaa !173
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %1, ptr %i.h, align 8, !tbaa !54
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 5 uses
  store i32 0, ptr %i.i, align 8, !tbaa !176
  %i.j = icmp samesign ult i32 %2, 4
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE) #16
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %1, align 1
  %i.k = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i) ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw i64 %i.l, 32
  store i64 %i.m, ptr %10, align 8, !tbaa !172
  store i32 32, ptr %i.g, align 8, !tbaa !173
  store i32 4, ptr %i.i, align 8, !tbaa !176
  %i.n = lshr i32 %i.k, 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 %i.n, ptr %i.o, align 8, !tbaa !267
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !90   ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  %i.s = load ptr, ptr %0, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !155  ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8rawspeed17NikonDecompressor10decompressINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS3_EEEEEEvRNS_14BitStreamerMSBEii(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 0, i32 noundef %i.u)
          to label %bb.be unwind label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %.invoke.i.i, %bb.d, %bb.h, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressorD2Ev.exit28.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.qs, %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressorD2Ev.exit28.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN8rawspeed18RawImageCurveGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %bb.e
  %i.w = icmp ult i32 %i.q, %i.u
  tail call void @llvm.assume(i1 %i.w)
  invoke void @_ZN8rawspeed17NikonDecompressor10decompressINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS3_EEEEEEvRNS_14BitStreamerMSBEii(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 0, i32 noundef %i.q)
          to label %iter.check unwind label %bb.g

iter.check:                                       ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !89
  %i.z = add i32 %i.y, 1                          ; 5 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !89
  %i.aa = load i32, ptr %i.p, align 8, !tbaa !90  ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !155 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  store i8 1, ptr %7, align 8, !tbaa !279, !alias.scope !268
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 0, ptr %i.ae, align 1, !tbaa !280, !alias.scope !268
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 2272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !alias.scope !268
  %i.ag = zext i32 %i.z to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr @_ZN8rawspeed17NikonDecompressor10nikon_treeE, i64 %i.ag ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !33, !alias.scope !268
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 1, ptr %i.aj, align 8, !tbaa !33, !alias.scope !268
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !61, !noalias !268
  %i.am = zext i8 %i.al to i32                    ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.am, ptr %i.an, align 4, !tbaa !33, !alias.scope !268
  %i.ao = add nuw nsw i32 %i.am, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !61, !noalias !268
  %i.ar = zext i8 %i.aq to i32                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !33, !alias.scope !268
  %i.at = add nuw nsw i32 %i.ao, %i.ar            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !61, !noalias !268
  %i.aw = zext i8 %i.av to i32                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !33, !alias.scope !268
  %i.ay = add nuw nsw i32 %i.at, %i.aw            ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !61, !noalias !268
  %i.bb = zext i8 %i.ba to i32                    ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !33, !alias.scope !268
  %i.bd = add nuw nsw i32 %i.ay, %i.bb            ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !61, !noalias !268
  %i.bg = zext i8 %i.bf to i32                    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !33, !alias.scope !268
  %i.bi = add nuw nsw i32 %i.bd, %i.bg            ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 7
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !61, !noalias !268
  %i.bl = zext i8 %i.bk to i32                    ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !33, !alias.scope !268
  %i.bn = add nuw nsw i32 %i.bi, %i.bl            ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !61, !noalias !268
  %i.bq = zext i8 %i.bp to i32                    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !33, !alias.scope !268
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !61, !noalias !268
  %i.bu = zext i8 %i.bt to i32                    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !33, !alias.scope !268
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !61, !noalias !268
  %i.by = zext i8 %i.bx to i32                    ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !33, !alias.scope !268
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.cc = add nuw nsw i32 %i.bn, %i.bq            ; 3 uses
  %i.cd = add nuw nsw i32 %i.cc, %i.bu            ; 4 uses
  %i.ce = add nuw nsw i32 %i.cd, %i.by            ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 6 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ce to i64 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ca, i8 0, i64 20, i1 false), !alias.scope !268
  %min.iters.check = icmp ult i32 %i.ce, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check75 = icmp ult i32 %i.ce, 32
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %wide.trip.count.i.i.i, 24
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %wide.load = load <8 x i8>, ptr %i.ch, align 1, !tbaa !61, !noalias !268
  %wide.load76 = load <8 x i8>, ptr %i.ci, align 1, !tbaa !61, !noalias !268
  %wide.load77 = load <8 x i8>, ptr %i.cj, align 1, !tbaa !61, !noalias !268
  %wide.load78 = load <8 x i8>, ptr %i.ck, align 1, !tbaa !61, !noalias !268
  %i.cl = zext <8 x i8> %wide.load to <8 x i32>
  %i.cm = zext <8 x i8> %wide.load76 to <8 x i32>
  %i.cn = zext <8 x i8> %wide.load77 to <8 x i32>
  %i.co = zext <8 x i8> %wide.load78 to <8 x i32>
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  store <8 x i32> %i.cl, ptr %i.cp, align 4, !tbaa !33, !alias.scope !268
  store <8 x i32> %i.cm, ptr %i.cq, align 4, !tbaa !33, !alias.scope !268
  store <8 x i32> %i.cn, ptr %i.cr, align 4, !tbaa !33, !alias.scope !268
  store <8 x i32> %i.co, ptr %i.cs, align 4, !tbaa !33, !alias.scope !268
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %.lr.ph.split.i.2.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec79 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next82, %vec.epilog.vector.body ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index80
  %wide.load81 = load <8 x i8>, ptr %i.cu, align 1, !tbaa !61, !noalias !268
  %i.cv = zext <8 x i8> %wide.load81 to <8 x i32>
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index80
  store <8 x i32> %i.cv, ptr %i.cw, align 4, !tbaa !33, !alias.scope !268
  %index.next82 = add nuw i64 %index80, 8         ; 2 uses
  %i.cx = icmp eq i64 %index.next82, %n.vec79
  br i1 %i.cx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !251

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %n.vec79, %wide.trip.count.i.i.i
  br i1 %cmp.n83, label %.lr.ph.split.i.2.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec79, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.i.i.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !61, !noalias !268
  %i.da = zext i8 %i.cz to i32
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i.i.i
  store i32 %i.da, ptr %i.db, align 4, !tbaa !33, !alias.scope !268
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.lr.ph.split.i.2.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !252

.lr.ph.split.i.2.i.i.i:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !268
  store i8 2, ptr %5, align 1, !noalias !268
  %scevgep.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.dc = add nsw i32 %i.am, -1
  %i.dd = call i32 @llvm.umin.i32(i32 %i.dc, i32 255)
  %narrow36.i.i.i = add nuw nsw i32 %i.dd, 1
  %i.de = zext nneg i32 %narrow36.i.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.2.i.i.i, i8 3, i64 %i.de, i1 false), !tbaa !61, !noalias !268
  %i.df = zext nneg i32 %i.ao to i64
  %scevgep.i.3.i.i.i = getelementptr i8, ptr %5, i64 %i.df
  %i.dg = xor i32 %i.am, 255                      ; 2 uses
  %i.dh = add nsw i32 %i.ar, -1                   ; 2 uses
  %i.di = call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.dh)
  %narrow.i.i = add nuw nsw i32 %i.di, 1
  %i.dj = zext nneg i32 %narrow.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.3.i.i.i, i8 4, i64 %i.dj, i1 false), !tbaa !61, !noalias !268
  %.not136.i.3.i.i.i = icmp ugt i32 %i.dg, %i.dh
  br i1 %.not136.i.3.i.i.i, label %.lr.ph.split.i.3.i.i.i, label %.invoke.i.i

.lr.ph.split.i.3.i.i.i:                           ; preds = %.lr.ph.split.i.2.i.i.i
  %i.dk = zext nneg i32 %i.at to i64
  %scevgep.i.4.i.i.i = getelementptr i8, ptr %5, i64 %i.dk
  %i.dl = call i32 @llvm.usub.sat.i32(i32 256, i32 %i.at) ; 2 uses
  %i.dm = add nsw i32 %i.aw, -1                   ; 2 uses
  %i.dn = call i32 @llvm.umin.i32(i32 %i.dl, i32 %i.dm)
  %narrow12.i.i = add nuw nsw i32 %i.dn, 1
  %i.do = zext nneg i32 %narrow12.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.4.i.i.i, i8 5, i64 %i.do, i1 false), !tbaa !61, !noalias !268
  %.not136.i.4.i.i.i = icmp ugt i32 %i.dl, %i.dm
  br i1 %.not136.i.4.i.i.i, label %.lr.ph.split.i.4.i.i.i, label %.invoke.i.i

.lr.ph.split.i.4.i.i.i:                           ; preds = %.lr.ph.split.i.3.i.i.i
  %i.dp = zext nneg i32 %i.ay to i64
  %scevgep.i.5.i.i.i = getelementptr i8, ptr %5, i64 %i.dp
  %i.dq = call i32 @llvm.usub.sat.i32(i32 256, i32 %i.ay) ; 2 uses
  %i.dr = add nsw i32 %i.bb, -1                   ; 2 uses
  %i.ds = call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.dr)
  %narrow13.i.i = add nuw nsw i32 %i.ds, 1
  %i.dt = zext nneg i32 %narrow13.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.5.i.i.i, i8 6, i64 %i.dt, i1 false), !tbaa !61, !noalias !268
  %.not136.i.5.i.i.i = icmp ugt i32 %i.dq, %i.dr
  br i1 %.not136.i.5.i.i.i, label %.lr.ph.split.i.5.i.i.i, label %.invoke.i.i

.lr.ph.split.i.5.i.i.i:                           ; preds = %.lr.ph.split.i.4.i.i.i
  %i.du = zext nneg i32 %i.bd to i64
  %scevgep.i.6.i.i.i = getelementptr i8, ptr %5, i64 %i.du
  %i.dv = call i32 @llvm.usub.sat.i32(i32 256, i32 %i.bd) ; 2 uses
  %i.dw = add nsw i32 %i.bg, -1                   ; 2 uses
  %i.dx = call i32 @llvm.umin.i32(i32 %i.dv, i32 %i.dw)
  %narrow14.i.i = add nuw nsw i32 %i.dx, 1
  %i.dy = zext nneg i32 %narrow14.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.6.i.i.i, i8 7, i64 %i.dy, i1 false), !tbaa !61, !noalias !268
  %.not136.i.6.i.i.i = icmp ugt i32 %i.dv, %i.dw
  br i1 %.not136.i.6.i.i.i, label %.lr.ph.split.i.6.i.i.i, label %.invoke.i.i

.lr.ph.split.i.6.i.i.i:                           ; preds = %.lr.ph.split.i.5.i.i.i
  %.not7279.i.7.i.i.i = icmp eq i32 %i.z, 2
  br i1 %.not7279.i.7.i.i.i, label %._crit_edge.i.15.i.i.i, label %.lr.ph.i.7.i.i.i

.lr.ph.i.7.i.i.i:                                 ; preds = %.lr.ph.split.i.6.i.i.i
  %i.dz = zext nneg i32 %i.bi to i64
  %scevgep.i.7.i.i.i = getelementptr i8, ptr %5, i64 %i.dz
  %i.ea = call i32 @llvm.usub.sat.i32(i32 256, i32 %i.bi) ; 2 uses
  %i.eb = add nsw i32 %i.bl, -1                   ; 2 uses
  %i.ec = call i32 @llvm.umin.i32(i32 %i.ea, i32 %i.eb)
  %narrow15.i.i = add nuw nsw i32 %i.ec, 1
  %i.ed = zext nneg i32 %narrow15.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.7.i.i.i, i8 8, i64 %i.ed, i1 false), !tbaa !61, !noalias !268
  %.not136.i.7.i.i.i = icmp ugt i32 %i.ea, %i.eb
  br i1 %.not136.i.7.i.i.i, label %._crit_edge.i.7.i.i.i, label %.invoke.i.i

._crit_edge.i.7.i.i.i:                            ; preds = %.lr.ph.i.7.i.i.i
  %cond.i.i = icmp eq i32 %i.z, 5
  br i1 %cond.i.i, label %._crit_edge.i.15.i.i.i, label %.lr.ph.i.8.i.i.i

.lr.ph.i.8.i.i.i:                                 ; preds = %._crit_edge.i.7.i.i.i
  %i.ee = zext nneg i32 %i.bn to i64
  %scevgep.i.8.i.i.i = getelementptr i8, ptr %5, i64 %i.ee
  %i.ef = call i32 @llvm.usub.sat.i32(i32 256, i32 %i.bn) ; 2 uses
  %i.eg = add nsw i32 %i.bq, -1                   ; 2 uses
  %i.eh = call i32 @llvm.umin.i32(i32 %i.ef, i32 %i.eg)
  %narrow16.i.i = add nuw nsw i32 %i.eh, 1
  %i.ei = zext nneg i32 %narrow16.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.8.i.i.i, i8 9, i64 %i.ei, i1 false), !tbaa !61, !noalias !268
  %.not136.i.8.i.i.i = icmp ugt i32 %i.ef, %i.eg
  br i1 %.not136.i.8.i.i.i, label %.lr.ph.i.9.i.i.i, label %.invoke.i.i

.lr.ph.i.9.i.i.i:                                 ; preds = %.lr.ph.i.8.i.i.i
  %i.ej = zext nneg i32 %i.cc to i64
  %scevgep.i.9.i.i.i = getelementptr i8, ptr %5, i64 %i.ej
  %i.ek = call i32 @llvm.usub.sat.i32(i32 256, i32 %i.cc) ; 2 uses
  %i.el = add nsw i32 %i.bu, -1                   ; 2 uses
  %i.em = call i32 @llvm.umin.i32(i32 %i.ek, i32 %i.el)
  %narrow17.i.i = add nuw nsw i32 %i.em, 1
  %i.en = zext nneg i32 %narrow17.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.9.i.i.i, i8 10, i64 %i.en, i1 false), !tbaa !61, !noalias !268
  %.not136.i.9.i.i.i = icmp ugt i32 %i.ek, %i.el
  br i1 %.not136.i.9.i.i.i, label %._crit_edge.i.9.i.i.i, label %.invoke.i.i

._crit_edge.i.9.i.i.i:                            ; preds = %.lr.ph.i.9.i.i.i
  %.not7279.i.10.i.not.i.i = icmp eq i32 %i.z, 4
  br i1 %.not7279.i.10.i.not.i.i, label %.lr.ph.i.10.i.i.i, label %._crit_edge.i.15.i.i.i

.lr.ph.i.10.i.i.i:                                ; preds = %._crit_edge.i.9.i.i.i
  %i.eo = zext nneg i32 %i.cd to i64
  %scevgep.i.10.i.i.i = getelementptr i8, ptr %5, i64 %i.eo
  %i.ep = call i32 @llvm.usub.sat.i32(i32 256, i32 %i.cd) ; 2 uses
  %i.eq = add nsw i32 %i.by, -1                   ; 2 uses
  %i.er = call i32 @llvm.umin.i32(i32 %i.ep, i32 %i.eq)
  %narrow18.i.i = add nuw nsw i32 %i.er, 1
  %i.es = zext nneg i32 %narrow18.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.10.i.i.i, i8 11, i64 %i.es, i1 false), !tbaa !61, !noalias !268
  %.not136.i.10.i.i.i = icmp ugt i32 %i.ep, %i.eq
  br i1 %.not136.i.10.i.i.i, label %._crit_edge.i.15.i.i.i, label %.invoke.i.i

._crit_edge.i.15.i.i.i:                           ; preds = %.lr.ph.i.10.i.i.i, %._crit_edge.i.9.i.i.i, %._crit_edge.i.7.i.i.i, %.lr.ph.split.i.6.i.i.i
  %.165.lcssa.i.10.i.i.i = phi i32 [ %i.cd, %._crit_edge.i.9.i.i.i ], [ %i.bn, %._crit_edge.i.7.i.i.i ], [ %i.bi, %.lr.ph.split.i.6.i.i.i ], [ %i.ce, %.lr.ph.i.10.i.i.i ]
  %i.et = zext nneg i32 %.165.lcssa.i.10.i.i.i to i64 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 %i.et
  store i8 0, ptr %i.eu, align 1, !tbaa !61, !noalias !268
  %i.ev = load i8, ptr %5, align 1, !tbaa !61, !noalias !268 ; 3 uses
  %.not90.i.i.i.i = icmp eq i8 %i.ev, 0
  br i1 %.not90.i.i.i.i, label %._crit_edge94.i.i.i.i, label %.preheader75.preheader.i.i.i.i

.preheader75.preheader.i.i.i.i:                   ; preds = %._crit_edge.i.15.i.i.i
  %i.ew = sext i8 %i.ev to i32
  br label %.preheader75.i.i.i.i

.preheader75.i.i.i.i:                             ; preds = %._crit_edge87.i.i.i.i, %.preheader75.preheader.i.i.i.i
  %i.ex = phi i8 [ %i.fi, %._crit_edge87.i.i.i.i ], [ %i.ev, %.preheader75.preheader.i.i.i.i ] ; 2 uses
  %.05893.i.i.i.i = phi i16 [ %i.fj, %._crit_edge87.i.i.i.i ], [ 0, %.preheader75.preheader.i.i.i.i ] ; 2 uses
  %.05992.i.i.i.i = phi i32 [ %i.fk, %._crit_edge87.i.i.i.i ], [ %i.ew, %.preheader75.preheader.i.i.i.i ] ; 3 uses
  %.291.i.i.i.i = phi i32 [ %.3.lcssa.i.i.i.i, %._crit_edge87.i.i.i.i ], [ 0, %.preheader75.preheader.i.i.i.i ] ; 2 uses
  %i.ey = sext i8 %i.ex to i32
  %i.ez = icmp eq i32 %.05992.i.i.i.i, %i.ey
  br i1 %i.ez, label %.lr.ph86.preheader.i.i.i.i, label %._crit_edge87.i.i.i.i

.lr.ph86.preheader.i.i.i.i:                       ; preds = %.preheader75.i.i.i.i
  %i.fa = sext i32 %.291.i.i.i.i to i64
  br label %.lr.ph86.i.i.i.i

.lr.ph86.i.i.i.i:                                 ; preds = %.lr.ph86.i.i.i.i, %.lr.ph86.preheader.i.i.i.i
  %indvars.iv107.i.i.i.i = phi i64 [ %i.fa, %.lr.ph86.preheader.i.i.i.i ], [ %indvars.iv.next108.i.i.i.i, %.lr.ph86.i.i.i.i ] ; 2 uses
  %.185.i.i.i.i = phi i16 [ %.05893.i.i.i.i, %.lr.ph86.preheader.i.i.i.i ], [ %i.fc, %.lr.ph86.i.i.i.i ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv107.i.i.i.i
  store i16 %.185.i.i.i.i, ptr %i.fb, align 2, !tbaa !18, !noalias !268
  %indvars.iv.next108.i.i.i.i = add nuw nsw i64 %indvars.iv107.i.i.i.i, 1 ; 3 uses
  %i.fc = add i16 %.185.i.i.i.i, 1                ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next108.i.i.i.i
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !61, !noalias !268 ; 2 uses
  %i.ff = sext i8 %i.fe to i32
  %i.fg = icmp eq i32 %.05992.i.i.i.i, %i.ff
  br i1 %i.fg, label %.lr.ph86.i.i.i.i, label %._crit_edge87.loopexit.i.i.i.i, !llvm.loop !253

._crit_edge87.loopexit.i.i.i.i:                   ; preds = %.lr.ph86.i.i.i.i
  %i.fh = trunc nsw i64 %indvars.iv.next108.i.i.i.i to i32
  br label %._crit_edge87.i.i.i.i

._crit_edge87.i.i.i.i:                            ; preds = %._crit_edge87.loopexit.i.i.i.i, %.preheader75.i.i.i.i
  %i.fi = phi i8 [ %i.fe, %._crit_edge87.loopexit.i.i.i.i ], [ %i.ex, %.preheader75.i.i.i.i ] ; 2 uses
  %.3.lcssa.i.i.i.i = phi i32 [ %i.fh, %._crit_edge87.loopexit.i.i.i.i ], [ %.291.i.i.i.i, %.preheader75.i.i.i.i ]
  %.1.lcssa.i.i.i.i = phi i16 [ %i.fc, %._crit_edge87.loopexit.i.i.i.i ], [ %.05893.i.i.i.i, %.preheader75.i.i.i.i ]
  %i.fj = shl i16 %.1.lcssa.i.i.i.i, 1
  %i.fk = add nsw i32 %.05992.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i.i, label %._crit_edge94.i.i.i.i, label %.preheader75.i.i.i.i

._crit_edge94.i.i.i.i:                            ; preds = %._crit_edge87.i.i.i.i, %._crit_edge.i.15.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 1100 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 1136 ; 7 uses
  store i32 0, ptr %i.fm, align 8, !tbaa !33, !alias.scope !268
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 1208 ; 6 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %._crit_edge94.i.i.i.i
  %indvars.iv109.i.i.i.i = phi i64 [ 1, %._crit_edge94.i.i.i.i ], [ %indvars.iv.next110.i.i.i.i.1, %bb.m ] ; 8 uses
  %.495.i.i.i.i = phi i32 [ 0, %._crit_edge94.i.i.i.i ], [ %.574.i.i.i.i.1, %bb.m ] ; 4 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv109.i.i.i.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !33, !alias.scope !268 ; 2 uses
  %.not71.i.i.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not71.i.i.i.i, label %.thread.i.i.i.i, label %bb.j

.thread.i.i.i.i:                                  ; preds = %bb.i
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %indvars.iv109.i.i.i.i
  store i16 255, ptr %i.fq, align 2, !tbaa !18, !alias.scope !268
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv109.i.i.i.i
  store i32 -1, ptr %i.fr, align 4, !tbaa !33, !alias.scope !268
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fs = trunc i32 %.495.i.i.i.i to i16
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %indvars.iv109.i.i.i.i
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !18, !alias.scope !268
  %i.fu = sext i32 %.495.i.i.i.i to i64
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !18, !noalias !268
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv109.i.i.i.i
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !18, !alias.scope !268
  %i.fy = add i32 %i.fp, %.495.i.i.i.i            ; 3 uses
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr [2 x i8], ptr %6, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 -2
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !18, !noalias !268
  %i.gd = zext i16 %i.gc to i32
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv109.i.i.i.i
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !33, !alias.scope !268
  %i.gf = icmp sgt i32 %i.fy, 256
  br i1 %i.gf, label %.invoke.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i.i.i.i
  %.574.i.i.i.i = phi i32 [ %.495.i.i.i.i, %.thread.i.i.i.i ], [ %i.fy, %bb.j ] ; 4 uses
  %indvars.iv.next110.i.i.i.i = add nuw nsw i64 %indvars.iv109.i.i.i.i, 1 ; 6 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next110.i.i.i.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !33, !alias.scope !268 ; 2 uses
  %.not71.i.i.i.i.1 = icmp eq i32 %i.gh, 0
  br i1 %.not71.i.i.i.i.1, label %.thread.i.i.i.i.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gi = trunc i32 %.574.i.i.i.i to i16
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %indvars.iv.next110.i.i.i.i
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !18, !alias.scope !268
  %i.gk = sext i32 %.574.i.i.i.i to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gk
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !18, !noalias !268
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv.next110.i.i.i.i
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !18, !alias.scope !268
  %i.go = add i32 %i.gh, %.574.i.i.i.i            ; 3 uses
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr [2 x i8], ptr %6, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.gq, i64 -2
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !18, !noalias !268
  %i.gt = zext i16 %i.gs to i32
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next110.i.i.i.i
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !33, !alias.scope !268
  %i.gv = icmp sgt i32 %i.go, 256
  br i1 %i.gv, label %.invoke.i.i, label %bb.m

.thread.i.i.i.i.1:                                ; preds = %bb.k
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %indvars.iv.next110.i.i.i.i
  store i16 255, ptr %i.gw, align 2, !tbaa !18, !alias.scope !268
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next110.i.i.i.i
  store i32 -1, ptr %i.gx, align 4, !tbaa !33, !alias.scope !268
  br label %bb.m

bb.m:                                             ; preds = %.thread.i.i.i.i.1, %bb.l
  %.574.i.i.i.i.1 = phi i32 [ %.574.i.i.i.i, %.thread.i.i.i.i.1 ], [ %i.go, %bb.l ]
  %indvars.iv.next110.i.i.i.i.1 = add nuw nsw i64 %indvars.iv109.i.i.i.i, 2 ; 2 uses
  %exitcond112.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next110.i.i.i.i.1, 17
  br i1 %exitcond112.not.i.i.i.i.1, label %.lr.ph99.i.i.i.i, label %bb.i, !llvm.loop !254

.lr.ph99.i.i.i.i:                                 ; preds = %bb.m
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 1204
  store i32 1048575, ptr %i.gy, align 4, !tbaa !33, !alias.scope !268
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 1244 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.gz, i8 0, i64 1024, i1 false), !tbaa !33, !alias.scope !268
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt5arrayIjLm256EE4fillERKj.exit.i.i.i.i, %.lr.ph99.i.i.i.i
  %indvars.iv117.i.i.i.i = phi i64 [ 0, %.lr.ph99.i.i.i.i ], [ %indvars.iv.next118.i.i.i.i, %_ZNSt5arrayIjLm256EE4fillERKj.exit.i.i.i.i ] ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv117.i.i.i.i
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !61, !noalias !268 ; 4 uses
  %i.hc = sext i8 %i.hb to i32                    ; 2 uses
  %i.hd = icmp slt i8 %i.hb, 9
  br i1 %i.hd, label %bb.o, label %_ZNSt5arrayIjLm256EE4fillERKj.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv117.i.i.i.i
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !33, !alias.scope !268
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv117.i.i.i.i
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !18, !noalias !268
  %i.hi = zext i16 %i.hh to i32
  %i.hj = sub nsw i32 8, %i.hc
  %i.hk = shl i32 %i.hi, %i.hj                    ; 5 uses
  %.not69.i.i.i.i = icmp eq i8 %i.hb, 8
  br i1 %.not69.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hl = sext i8 %i.hb to i64
  %i.hm = getelementptr [4 x i8], ptr @_ZN8rawspeed12_GLOBAL__N_17bitMaskE, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 96
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !33, !noalias !268
  %i.hp = or i32 %i.ho, %i.hk
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.hp, %bb.p ], [ %i.hk, %bb.o ] ; 4 uses
  %i.hq = icmp sgt i32 %.0.i.i.i.i, 256
  %i.hr = icmp sgt i32 %i.hk, %.0.i.i.i.i
  %or.cond.i.i.i.i = select i1 %i.hq, i1 true, i1 %i.hr
  br i1 %or.cond.i.i.i.i, label %.invoke.i.i, label %iter.check96

iter.check96:                                     ; preds = %bb.q
  %i.hs = shl i32 %i.hf, 4
  %i.ht = or i32 %i.hs, %i.hc                     ; 3 uses
  %i.hu = sext i32 %i.hk to i64                   ; 5 uses
  %i.hv = add nsw i32 %.0.i.i.i.i, 1
  %i.hw = sub i32 %.0.i.i.i.i, %i.hk              ; 3 uses
  %i.hx = zext i32 %i.hw to i64
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 5 uses
  %min.iters.check84 = icmp ult i32 %i.hw, 7
  br i1 %min.iters.check84, label %vec.epilog.scalar.ph97.preheader, label %vector.main.loop.iter.check85

vector.main.loop.iter.check85:                    ; preds = %iter.check96
  %min.iters.check86 = icmp ult i32 %i.hw, 31
  br i1 %min.iters.check86, label %vec.epilog.ph100, label %vector.ph87

vector.ph87:                                      ; preds = %vector.main.loop.iter.check85
  %i.hz = and i64 %i.hy, 24
  %n.vec88 = and i64 %i.hy, 8589934560            ; 4 uses
  %i.ia = add nsw i64 %n.vec88, %i.hu
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ht, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.gz, i64 %i.hu
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next91, %vector.body89 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index90 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.id = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !33, !alias.scope !268
  store <8 x i32> %broadcast.splat, ptr %i.ib, align 4, !tbaa !33, !alias.scope !268
  store <8 x i32> %broadcast.splat, ptr %i.ic, align 4, !tbaa !33, !alias.scope !268
  store <8 x i32> %broadcast.splat, ptr %i.id, align 4, !tbaa !33, !alias.scope !268
  %index.next91 = add nuw i64 %index90, 32        ; 2 uses
  %i.ie = icmp eq i64 %index.next91, %n.vec88
  br i1 %i.ie, label %middle.block92, label %vector.body89, !llvm.loop !255

middle.block92:                                   ; preds = %vector.body89
  %cmp.n93 = icmp eq i64 %i.hy, %n.vec88
  br i1 %cmp.n93, label %_ZNSt5arrayIjLm256EE4fillERKj.exit.i.i.i.i, label %vec.epilog.iter.check98

vec.epilog.iter.check98:                          ; preds = %middle.block92
  %min.epilog.iters.check99 = icmp eq i64 %i.hz, 0
  br i1 %min.epilog.iters.check99, label %vec.epilog.scalar.ph97.preheader, label %vec.epilog.ph100, !prof !63

vec.epilog.ph100:                                 ; preds = %vector.main.loop.iter.check85, %vec.epilog.iter.check98
  %vec.epilog.resume.val94 = phi i64 [ %n.vec88, %vec.epilog.iter.check98 ], [ 0, %vector.main.loop.iter.check85 ]
  %n.vec101 = and i64 %i.hy, 8589934584           ; 3 uses
  %i.if = add nsw i64 %n.vec101, %i.hu
  %broadcast.splatinsert102 = insertelement <8 x i32> poison, i32 %i.ht, i64 0
  %broadcast.splat103 = shufflevector <8 x i32> %broadcast.splatinsert102, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep123 = getelementptr [4 x i8], ptr %i.gz, i64 %i.hu
  br label %vec.epilog.vector.body104

vec.epilog.vector.body104:                        ; preds = %vec.epilog.vector.body104, %vec.epilog.ph100
  %index105 = phi i64 [ %vec.epilog.resume.val94, %vec.epilog.ph100 ], [ %index.next106, %vec.epilog.vector.body104 ] ; 2 uses
  %gep124 = getelementptr [4 x i8], ptr %invariant.gep123, i64 %index105
  store <8 x i32> %broadcast.splat103, ptr %gep124, align 4, !tbaa !33, !alias.scope !268
  %index.next106 = add nuw i64 %index105, 8       ; 2 uses
  %i.ig = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.ig, label %vec.epilog.middle.block107, label %vec.epilog.vector.body104, !llvm.loop !256

vec.epilog.middle.block107:                       ; preds = %vec.epilog.vector.body104
  %cmp.n108 = icmp eq i64 %i.hy, %n.vec101
  br i1 %cmp.n108, label %_ZNSt5arrayIjLm256EE4fillERKj.exit.i.i.i.i, label %vec.epilog.scalar.ph97.preheader

vec.epilog.scalar.ph97.preheader:                 ; preds = %iter.check96, %vec.epilog.iter.check98, %vec.epilog.middle.block107
  %indvars.iv113.i.i.i.i.ph = phi i64 [ %i.hu, %iter.check96 ], [ %i.ia, %vec.epilog.iter.check98 ], [ %i.if, %vec.epilog.middle.block107 ]
  br label %vec.epilog.scalar.ph97

.invoke.i.i:                                      ; preds = %bb.j, %bb.l, %bb.q, %.lr.ph.i.10.i.i.i, %.lr.ph.i.9.i.i.i, %.lr.ph.i.8.i.i.i, %.lr.ph.i.7.i.i.i, %.lr.ph.split.i.5.i.i.i, %.lr.ph.split.i.4.i.i.i, %.lr.ph.split.i.3.i.i.i, %.lr.ph.split.i.2.i.i.i
  %i.ih = phi ptr [ @.str.32, %bb.q ], [ @.str.29, %.lr.ph.split.i.2.i.i.i ], [ @.str.29, %.lr.ph.i.10.i.i.i ], [ @.str.29, %.lr.ph.i.9.i.i.i ], [ @.str.29, %.lr.ph.i.8.i.i.i ], [ @.str.29, %.lr.ph.i.7.i.i.i ], [ @.str.29, %.lr.ph.split.i.5.i.i.i ], [ @.str.29, %.lr.ph.split.i.4.i.i.i ], [ @.str.29, %.lr.ph.split.i.3.i.i.i ], [ @.str.31, %bb.l ], [ @.str.31, %bb.j ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.ih, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor23createPrefixCodeDecoderEv) #16
          to label %.cont.i.i unwind label %bb.g

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

vec.epilog.scalar.ph97:                           ; preds = %vec.epilog.scalar.ph97.preheader, %vec.epilog.scalar.ph97
  %indvars.iv113.i.i.i.i = phi i64 [ %indvars.iv.next114.i.i.i.i, %vec.epilog.scalar.ph97 ], [ %indvars.iv113.i.i.i.i.ph, %vec.epilog.scalar.ph97.preheader ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv113.i.i.i.i
  store i32 %i.ht, ptr %i.ii, align 4, !tbaa !33, !alias.scope !268
  %indvars.iv.next114.i.i.i.i = add nuw nsw i64 %indvars.iv113.i.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next114.i.i.i.i to i32
  %exitcond116.not.i.i.i.i = icmp eq i32 %i.hv, %lftr.wideiv.i.i.i.i
  br i1 %exitcond116.not.i.i.i.i, label %_ZNSt5arrayIjLm256EE4fillERKj.exit.i.i.i.i, label %vec.epilog.scalar.ph97, !llvm.loop !257

_ZNSt5arrayIjLm256EE4fillERKj.exit.i.i.i.i:       ; preds = %vec.epilog.scalar.ph97, %middle.block92, %vec.epilog.middle.block107, %bb.n
  %indvars.iv.next118.i.i.i.i = add nuw nsw i64 %indvars.iv117.i.i.i.i, 1 ; 2 uses
  %exitcond121.not.i.i.i.i = icmp eq i64 %indvars.iv.next118.i.i.i.i, %i.et
  br i1 %exitcond121.not.i.i.i.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, label %bb.n, !llvm.loop !258

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %_ZNSt5arrayIjLm256EE4fillERKj.exit.i.i.i.i
  %i.ij = invoke noalias noundef nonnull dereferenceable(65536) ptr @_Znwm(i64 noundef 65536) #23
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i.i unwind label %bb.g ; 9 uses

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i.i:     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %i.ij, i8 0, i64 65536, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 1168
  %i.il = load i32, ptr %i.ik, align 8            ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i.i
  %indvars.iv61.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i.i ], [ %indvars.iv.next62.i.i.i.i.i, %bb.ae ] ; 7 uses
  %.045.tr.i.i.i.i.i = trunc i64 %indvars.iv61.i.i.i.i.i to i16 ; 2 uses
  %i.im = shl nuw i16 %.045.tr.i.i.i.i.i, 2       ; 2 uses
  %i.in = lshr i16 %.045.tr.i.i.i.i.i, 6          ; 2 uses
  %i.io = zext nneg i16 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !33, !alias.scope !268 ; 2 uses
  %i.ir = and i32 %i.iq, 15                       ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ir, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.is = lshr i32 %i.iq, 4
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.it = zext nneg i16 %i.in to i32              ; 3 uses
  %i.iu = icmp slt i32 %i.il, %i.it
  br i1 %i.iu, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t
  %i.iv = zext i16 %i.im to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 8, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.u ] ; 3 uses
  %.04453.i.i.i.i.i = phi i32 [ %i.it, %.lr.ph.i.i.i.i.i ], [ %i.jc, %bb.u ]
  %i.iw = icmp samesign ult i64 %indvars.iv.i.i.i.i.i, 16
  call void @llvm.assume(i1 %i.iw)
  %i.ix = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.iy = xor i32 %i.ix, 15
  %i.iz = lshr i32 %i.iv, %i.iy
  %i.ja = and i32 %i.iz, 1
  %i.jb = shl i32 %.04453.i.i.i.i.i, 1
  %i.jc = or disjoint i32 %i.ja, %i.jb            ; 3 uses
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i.i.i.i
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !33, !alias.scope !268
  %i.jf = icmp sgt i32 %i.jc, %i.je
  br i1 %i.jf, label %bb.u, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !259

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.u
  %i.jg = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.t
  %.046.lcssa.i.i.i.i.i = phi i32 [ 8, %bb.t ], [ %i.jg, %._crit_edge.loopexit.i.i.i.i.i ]
  %.044.lcssa.i.i.i.i.i = phi i32 [ %i.it, %bb.t ], [ %i.jc, %._crit_edge.loopexit.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i64 [ 8, %bb.t ], [ %indvars.iv.next.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ] ; 2 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %.lcssa.i.i.i.i.i
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !18, !alias.scope !268 ; 2 uses
  %i.jj = icmp eq i16 %i.ji, 255
  br i1 %i.jj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv61.i.i.i.i.i
  store i32 255, ptr %i.jk, align 4, !tbaa !33
  br label %bb.ae

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.jl = sext i16 %i.ji to i32
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %.lcssa.i.i.i.i.i
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !18, !alias.scope !268
  %i.jo = zext i16 %i.jn to i32
  %i.jp = add i32 %.044.lcssa.i.i.i.i.i, %i.jl
  %i.jq = sub i32 %i.jp, %i.jo
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !33, !alias.scope !268
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.047.i.i.i.i.i = phi i32 [ %i.is, %bb.s ], [ %i.jt, %bb.w ] ; 5 uses
  %.1.i.i.i.i.i = phi i32 [ %i.ir, %bb.s ], [ %.046.lcssa.i.i.i.i.i, %bb.w ] ; 3 uses
  %i.ju = icmp eq i32 %.047.i.i.i.i.i, 16
  br i1 %i.ju, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv61.i.i.i.i.i
  %i.jw = or disjoint i32 %.1.i.i.i.i.i, -8388608
  store i32 %i.jw, ptr %i.jv, align 4, !tbaa !33
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.jx = add i32 %.1.i.i.i.i.i, %.047.i.i.i.i.i  ; 4 uses
  %i.jy = icmp ugt i32 %i.jx, 14
  br i1 %i.jy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv61.i.i.i.i.i
  store i32 255, ptr %i.jz, align 4, !tbaa !33
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %.not50.i.i.i.i.i = icmp eq i32 %.047.i.i.i.i.i, 0
  br i1 %.not50.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ka = sub nuw nsw i32 16, %i.jx
  %i.kb = icmp ne i32 %i.jx, 0
  call void @llvm.assume(i1 %i.kb)
  %i.kc = zext i16 %i.im to i32
  %i.kd = lshr i32 %i.kc, %i.ka
  %notmask.i.i.i.i.i = shl nsw i32 -1, %.047.i.i.i.i.i
  %i.ke = xor i32 %notmask.i.i.i.i.i, -1          ; 2 uses
  %i.kf = and i32 %i.kd, %i.ke                    ; 2 uses
  %i.kg = add nsw i32 %.047.i.i.i.i.i, -1
  %i.kh = shl nuw i32 1, %i.kg
  %i.ki = and i32 %i.kf, %i.kh
  %i.kj = icmp eq i32 %i.ki, 0
  %i.kk = select i1 %i.kj, i32 %i.ke, i32 0
  %spec.select.i.i.i.i.i = sub nsw i32 %i.kf, %i.kk
  %i.kl = shl i32 %spec.select.i.i.i.i.i, 8
  %i.km = or disjoint i32 %i.kl, %i.jx
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv61.i.i.i.i.i
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !33
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv61.i.i.i.i.i
  store i32 %.1.i.i.i.i.i, ptr %i.ko, align 4, !tbaa !33
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.v
  %indvars.iv.next62.i.i.i.i.i = add nuw nsw i64 %indvars.iv61.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next62.i.i.i.i.i, 16384
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_12_GLOBAL__N_120NikonLASDecompressorEEET_j.exit.i, label %bb.r, !llvm.loop !260

_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_12_GLOBAL__N_120NikonLASDecompressorEEET_j.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !268
  %i.kp = load ptr, ptr %0, align 8, !tbaa !81    ; 6 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 568
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !177, !noalias !281
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 592
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !154, !noalias !281
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 608
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !178, !noalias !281
  %i.kw = mul nsw i32 %i.kv, %i.kt                ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kp, i64 48
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !179, !noalias !281
  %i.kz = ashr i32 %i.ky, 1                       ; 2 uses
  %i.la = icmp sgt i32 %i.kw, -1
  call void @llvm.assume(i1 %i.la)
  %i.lb = icmp sge i32 %i.kz, %i.kw
  call void @llvm.assume(i1 %i.lb)
  %i.lc = and i32 %i.kw, 1
  %i.ld = icmp eq i32 %i.lc, 0
  call void @llvm.assume(i1 %i.ld)
  %i.le = icmp ne i32 %i.kw, 0
  call void @llvm.assume(i1 %i.le)
  %i.lf = icmp slt i32 %i.aa, %i.ad
  br i1 %i.lf, label %.lr.ph.i, label %_ZN8rawspeed17NikonDecompressor10decompressINS_12_GLOBAL__N_120NikonLASDecompressorEEEvRNS_14BitStreamerMSBEii.exit

.lr.ph.i:                                         ; preds = %_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_12_GLOBAL__N_120NikonLASDecompressorEEET_j.exit.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kp, i64 612
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !180, !noalias !281
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kp, i64 616
  %i.lk = zext i32 %i.aa to i64
  %i.ll = zext nneg i32 %i.kz to i64
  %i.lm = zext nneg i32 %i.kw to i64
  %i.ln = zext nneg i32 %i.lh to i64
  %i.lo = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !181 ; 8 uses
  %i.lp = icmp sgt i32 %i.lo, 3
  call void @llvm.assume(i1 %i.lp)
  %i.lq = add nuw nsw i32 %i.lo, 8                ; 2 uses
  %.pre.pre = load i32, ptr %i.g, align 8, !tbaa !173
  %.pre24.pre = load i32, ptr %i.i, align 8, !tbaa !176
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i
  %.pre24 = phi i32 [ %.pre24.pre, %.lr.ph.i ], [ %.pre2426, %bb.ag ] ; 2 uses
  %.pre = phi i32 [ %.pre.pre, %.lr.ph.i ], [ %i.ql, %bb.ag ]
  %indvars.iv80.i = phi i64 [ %i.lk, %.lr.ph.i ], [ %indvars.iv.next81.i, %bb.ag ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.lr = and i64 %indvars.iv80.i, 1
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lr ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 4, !tbaa !61
  store i64 %i.lt, ptr %8, align 8, !tbaa !61
  %i.lu = icmp samesign ult i64 %indvars.iv80.i, %i.ln
  %i.lv = mul nuw nsw i64 %indvars.iv80.i, %i.ll
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %i.lv
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 4 uses
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %i.lx = trunc nuw nsw i64 %indvars.iv.next81.i to i32
  %i.ly = icmp sgt i32 %i.ad, %i.lx
  br i1 %i.ly, label %bb.af, label %_ZN8rawspeed17NikonDecompressor10decompressINS_12_GLOBAL__N_120NikonLASDecompressorEEEvRNS_14BitStreamerMSBEii.exit, !llvm.loop !263

bb.ah:                                            ; preds = %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i, %bb.af
  %.pre2429 = phi i32 [ %.pre24, %bb.af ], [ %.pre2426, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i ]
  %i.lz = phi i32 [ %.pre24, %bb.af ], [ %i.qk, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i ] ; 6 uses
  %i.ma = phi i32 [ %.pre, %bb.af ], [ %i.ql, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ 0, %bb.af ], [ %indvars.iv.next.i, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i ] ; 4 uses
  %i.mb = icmp samesign ult i32 %i.ma, 65
  call void @llvm.assume(i1 %i.mb)
  %i.mc = icmp sgt i32 %i.lz, -1
  call void @llvm.assume(i1 %i.mc)
  %.not.i.i.i7 = icmp samesign ult i32 %i.ma, 32
  br i1 %.not.i.i.i7, label %bb.ai, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i

._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i: ; preds = %bb.ah
  %.pre.i.i = load i64, ptr %10, align 8, !tbaa !172
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.md = add nuw nsw i32 %i.lz, 4                ; 4 uses
  %.not.i.i.i24.i = icmp samesign ugt i32 %i.md, %i.lo
  br i1 %.not.i.i.i24.i, label %bb.ak, label %bb.aj, !prof !165

bb.aj:                                            ; preds = %bb.ai
  %i.me = zext nneg i32 %i.lz to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.me
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.mg = icmp samesign ugt i32 %i.lz, %i.lq
  br i1 %i.mg, label %.invoke.i, label %bb.al, !prof !165

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.lo, i32 %i.lz) ; 3 uses
  %i.mh = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.lo, i32 %i.mh)
  %i.mi = sub nsw i32 %.sroa.speculated.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i ; 2 uses
  %i.mj = icmp samesign ult i32 %i.mi, 5
  call void @llvm.assume(i1 %i.mj)
  %i.mk = zext nneg i32 %.sroa.speculated27.i.i.i.i.i to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.mk
  %i.mm = zext nneg i32 %i.mi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.ml, i64 %i.mm, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i: ; preds = %bb.al, %bb.aj
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i, %bb.al ], [ %i.mf, %bb.aj ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %.promoted8.i.i.i.i = load i64, ptr %10, align 8
  %i.mn = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i)
  %i.mo = zext i32 %i.mn to i64
  %i.mp = or disjoint i32 %i.ma, 32
  %i.mq = sub nuw nsw i32 32, %i.ma
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = shl nuw i64 %i.mo, %i.mr
  %i.mt = or i64 %i.ms, %.promoted8.i.i.i.i
  store i32 %i.md, ptr %i.i, align 8, !tbaa !176
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i
  %.pre2428 = phi i32 [ %.pre2429, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i ], [ %i.md, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ] ; 3 uses
  %i.mu = phi i32 [ %i.lz, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i ], [ %i.md, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ] ; 7 uses
  %i.mv = phi i64 [ %.pre.i.i, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i ], [ %i.mt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ] ; 5 uses
  %i.mw = phi i32 [ %i.ma, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i ], [ %i.mp, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ] ; 3 uses
  %i.mx = lshr i64 %i.mv, 50
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !33 ; 2 uses
  %i.na = and i32 %i.mz, 255                      ; 4 uses
  %.not.i.i8 = icmp eq i32 %i.na, 255
  br i1 %.not.i.i8, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i
  %i.nb = icmp samesign ult i32 %i.na, 33
  call void @llvm.assume(i1 %i.nb)
  %i.nc = sub nuw nsw i32 %i.mw, %i.na            ; 2 uses
  store i32 %i.nc, ptr %i.g, align 8, !tbaa !173
  %i.nd = zext nneg i32 %i.na to i64
  %i.ne = shl i64 %i.mv, %i.nd
  store i64 %i.ne, ptr %10, align 8, !tbaa !172
  %i.nf = ashr i32 %i.mz, 8
  br label %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE.exit.i

bb.an:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i
  %i.ng = lshr i64 %i.mv, 56                      ; 2 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.ng
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !33 ; 2 uses
  %i.nj = and i32 %i.ni, 15                       ; 3 uses
  %.not46.i.i = icmp eq i32 %i.nj, 0
  br i1 %.not46.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nk = sub nuw nsw i32 %i.mw, %i.nj            ; 2 uses
  store i32 %i.nk, ptr %i.g, align 8, !tbaa !173
  %i.nl = zext nneg i32 %i.nj to i64
  %i.nm = shl i64 %i.mv, %i.nl                    ; 2 uses
  store i64 %i.nm, ptr %10, align 8, !tbaa !172
  %i.nn = ashr i32 %i.ni, 4
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.no = trunc nuw nsw i64 %i.ng to i32          ; 3 uses
  %i.np = add nsw i32 %i.mw, -8                   ; 3 uses
  store i32 %i.np, ptr %i.g, align 8, !tbaa !173
  %i.nq = shl i64 %i.mv, 8                        ; 3 uses
  store i64 %i.nq, ptr %10, align 8, !tbaa !172
  %i.nr = icmp slt i32 %i.il, %i.no
  br i1 %i.nr, label %.lr.ph.i.i, label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.ap, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 8, %bb.ap ] ; 2 uses
  %i.ns = phi i64 [ %i.nz, %.lr.ph.i.i ], [ %i.nq, %bb.ap ] ; 2 uses
  %i.nt = phi i32 [ %i.ny, %.lr.ph.i.i ], [ %i.np, %bb.ap ] ; 3 uses
  %.04053.i.i = phi i32 [ %i.ob, %.lr.ph.i.i ], [ %i.no, %bb.ap ]
  %i.nu = icmp samesign ult i32 %i.nt, 65
  call void @llvm.assume(i1 %i.nu)
  %i.nv = icmp ne i32 %i.nt, 0
  call void @llvm.assume(i1 %i.nv)
  %i.nw = lshr i64 %i.ns, 63
  %i.nx = trunc nuw nsw i64 %i.nw to i32
  %i.ny = add nsw i32 %i.nt, -1                   ; 3 uses
  %i.nz = shl i64 %i.ns, 1                        ; 3 uses
  %i.oa = shl i32 %.04053.i.i, 1
  %i.ob = or disjoint i32 %i.oa, %i.nx            ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !33
  %i.oe = icmp sgt i32 %i.ob, %i.od
  br i1 %i.oe, label %.lr.ph.i.i, label %bb.aq, !llvm.loop !264

bb.aq:                                            ; preds = %.lr.ph.i.i
  store i32 %i.ny, ptr %i.g, align 8, !tbaa !173
  store i64 %i.nz, ptr %10, align 8, !tbaa !172
  %i.of = icmp samesign ugt i64 %indvars.iv.i.i, 15
  br i1 %i.of, label %bb.ar, label %.thread.i.i
end_hunk_0
