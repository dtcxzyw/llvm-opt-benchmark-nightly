Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Config?download=true
inline.NumInlined: 10699
inline.NumDeleted: 2966
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK16OpenColorIO_v2_56Config18isColorSpaceLinearEPKcNS_18ReferenceSpaceTypeE:bb.a
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #31, !inline_history !484
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #31, !inline_history !484
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118

bb.ax:                                            ; preds = %bb.av
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i115 = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.i115, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ex = add nsw i32 %i.eo, -1
  store i32 %i.ex, ptr %i.el, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116

bb.az:                                            ; preds = %bb.ax
  %i.ey = atomicrmw volatile add ptr %i.el, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i117 = phi i32 [ %i.eo, %bb.ay ], [ %i.ey, %bb.az ]
  %i.ez = icmp eq i32 %.0.i.i.i.i117, 1
  br i1 %i.ez, label %bb.ba, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118, !prof !24

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #31
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118
  %.148 = phi i1 [ %.047, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118 ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ]
  %i.fa = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.y
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.bb
  %i.fc = load i64, ptr %i.y, align 8, !tbaa !22
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.bd

bb.bc:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %.pn56 = phi { ptr, i32 } [ %i.dq, %bb.am ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 2 uses
  %i.fe = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.y
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.bc
  %i.fg = load i64, ptr %i.y, align 8, !tbaa !22
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.af
  %.pn56.pn = phi { ptr, i32 } [ %i.cq, %bb.af ], [ %.pn56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %.pn56, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.bk

bb.bd:                                            ; preds = %bb.n, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %.249 = phi i1 [ %.148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ false, %bb.m ], [ false, %bb.n ]
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !15 ; 8 uses
  %.not.i.i125 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i125, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.fk, align 8, !tbaa !16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !18
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #31, !inline_history !321
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !19
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #31, !inline_history !321
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i126 = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i126, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127

bb.bi:                                            ; preds = %bb.bg
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i128 = phi i32 [ %i.fn, %bb.bh ], [ %i.fx, %bb.bi ]
  %i.fy = icmp eq i32 %.0.i.i.i.i128, 1
  br i1 %i.fy, label %bb.bj, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #31
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bd, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i1 %.249

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %bb.l
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn, %bb.l ], [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn59.pn.pn.pn

bb.bl:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace6isDataEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: nounwind
declare noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNK16OpenColorIO_v2_510ColorSpace12getTransformENS_19ColorSpaceDirectionE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.107") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZNK16OpenColorIO_v2_56Config18isColorSpaceLinearEPKcNS_18ReferenceSpaceTypeEENK3$_0clERKS0_RSt10shared_ptrIKNS_9TransformEE"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenColorIO_v2_5::PackedImageDesc", align 8 ; 7 uses
  %3 = alloca %"class.OpenColorIO_v2_5::PackedImageDesc", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.149", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.288", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(96) @constinit, i64 96, i1 false)
  %i.b = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader unwind label %bb.s ; 18 uses

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.b, i8 0, i64 96, i1 false), !tbaa !648
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvllNS_15ChannelOrderingE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 1, i32 noundef 3)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvllNS_15ChannelOrderingE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1, i32 noundef 3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.c = load ptr, ptr %0, align 8, !tbaa !38
  invoke void @_ZNK16OpenColorIO_v2_56Config4Impl26getProcessorWithoutCachingERKS0_RKSt10shared_ptrIKNS_9TransformEENS_18TransformDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.149") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1120) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0)
          to label %bb.d unwind label %bb.v

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.d = load ptr, ptr %4, align 8, !tbaa !650
  invoke void @_ZNK16OpenColorIO_v2_59Processor24getOptimizedCPUProcessorENS_17OptimizationFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.288") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %bb.e unwind label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %5, align 8, !tbaa !653
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescERS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !648
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.k = load float, ptr %i.j, align 4, !tbaa !648
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.p = load <2 x float>, ptr %i.b, align 4, !tbaa !648
  %i.q = load <2 x float>, ptr %i.f, align 4, !tbaa !648
  %i.r = load <2 x float>, ptr %i.i, align 4, !tbaa !648
  %i.s = load <2 x float>, ptr %i.l, align 4, !tbaa !648
  %i.t = load <2 x float>, ptr %i.m, align 4, !tbaa !648
  %i.u = load <2 x float>, ptr %i.n, align 4, !tbaa !648
  %i.v = load <2 x float>, ptr %i.o, align 4, !tbaa !648
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %6 = load <4 x float>, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.z = load float, ptr %i.y, align 4, !tbaa !648
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %7 = load <4 x float>, ptr %i.x, align 4        ; 2 uses
  %8 = load <4 x float>, ptr %i.aa, align 4
  %i.ac = load <2 x float>, ptr %i.ab, align 4, !tbaa !648
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.af, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !18
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #31, !inline_history !656
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #31, !inline_history !656
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.ai, %bb.j ], [ %i.as, %bb.k ]
  %i.at = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.at, label %bb.l, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #31
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15 ; 8 uses
  %.not.i.i54 = icmp eq ptr %i.av, null
  br i1 %.not.i.i54, label %_ZNSt6vectorIfSaIfEED2Ev.exit62, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.aw, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !18
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #31, !inline_history !657
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #31, !inline_history !657
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit62

bb.o:                                             ; preds = %bb.m
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i55 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i55, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56

bb.q:                                             ; preds = %bb.o
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i57 = phi i32 [ %i.az, %bb.p ], [ %i.bj, %bb.q ]
  %i.bk = icmp eq i32 %.0.i.i.i.i57, 1
  br i1 %i.bk, label %bb.r, label %_ZNSt6vectorIfSaIfEED2Ev.exit62, !prof !24

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit62

_ZNSt6vectorIfSaIfEED2Ev.exit62:                  ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56, %bb.r
  %i.bl = insertelement <8 x float> poison, float %i.h, i64 2
  %i.bm = shufflevector <2 x float> %i.r, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.bn = shufflevector <8 x float> %i.bl, <8 x float> %i.bm, <8 x i32> <i32 poison, i32 poison, i32 2, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bo = shufflevector <2 x float> %i.p, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> %i.bn, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <2 x float> %i.s, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.br = shufflevector <8 x float> %i.bp, <8 x float> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.bs = shufflevector <2 x float> %i.u, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bt = shufflevector <8 x float> %i.br, <8 x float> %i.bs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.bu = fmul <8 x float> %i.bt, splat (float 6.400000e+01) ; 3 uses
  %i.bv = insertelement <8 x float> poison, float %i.k, i64 3
  %i.bw = shufflevector <8 x float> %i.bv, <8 x float> %i.bm, <8 x i32> <i32 poison, i32 poison, i32 8, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bx = shufflevector <2 x float> %i.q, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.by = shufflevector <8 x float> %i.bx, <8 x float> %i.bw, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bz = shufflevector <2 x float> %i.t, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ca = shufflevector <8 x float> %i.by, <8 x float> %i.bz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.cb = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = shufflevector <8 x float> %i.ca, <8 x float> %i.cb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9> ; 3 uses
  %i.cd = fcmp ogt <8 x float> %i.bu, %i.cc
  %i.ce = fsub <8 x float> %i.bu, %i.cc
  %i.cf = fsub <8 x float> %i.cc, %i.bu
  %i.cg = select <8 x i1> %i.cd, <8 x float> %i.ce, <8 x float> %i.cf
  %i.ch = fcmp ole <8 x float> %i.cg, splat (float f0x3727C5AC) ; 2 uses
  %9 = shufflevector <4 x float> %6, <4 x float> %7, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %9, <4 x float> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cj = fmul <4 x float> %i.ci, splat (float 6.400000e+01) ; 3 uses
  %i.ck = insertelement <4 x float> %7, float %i.z, i64 1
  %i.cl = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.cn = fcmp ogt <4 x float> %i.cj, %i.cm
  %i.co = fsub <4 x float> %i.cj, %i.cm
  %i.cp = fsub <4 x float> %i.cm, %i.cj
  %i.cq = select <4 x i1> %i.cn, <4 x float> %i.co, <4 x float> %i.cp
  %i.cr = fcmp ole <4 x float> %i.cq, splat (float f0x3727C5AC)
  %i.cs = shufflevector <4 x i1> %i.cr, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ct = and <8 x i1> %i.ch, %i.cs
  %i.cu = shufflevector <8 x i1> %i.ct, <8 x i1> %i.ch, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.cv = bitcast <8 x i1> %i.cu to i8
  %i.cw = icmp eq i8 %i.cv, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #33
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #33
  ret i1 %i.cw

bb.s:                                             ; preds = %bb.a
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit68

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit65

bb.u:                                             ; preds = %bb.b
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.v:                                             ; preds = %bb.c
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %bb.d
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.e
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.x ], [ %i.db, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.y ], [ %i.da, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.z ], [ %i.cz, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit65

_ZNSt6vectorIfSaIfEED2Ev.exit65:                  ; preds = %bb.aa, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aa ], [ %i.cy, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit68

_ZNSt6vectorIfSaIfEED2Ev.exit68:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit65, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit65 ], [ %i.cx, %bb.s ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #33
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_56Config24IdentifyInterchangeSpaceEPPKcS3_RKSt10shared_ptrIKS0_ES2_S8_S2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_511ConfigUtils24IdentifyInterchangeSpaceEPPKcS3_RKSt10shared_ptrIKNS_6ConfigEES2_S9_S2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5)
  ret void
}

declare void @_ZN16OpenColorIO_v2_511ConfigUtils24IdentifyInterchangeSpaceEPPKcS3_RKSt10shared_ptrIKNS_6ConfigEES2_S9_S2_(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN16OpenColorIO_v2_56Config25IdentifyBuiltinColorSpaceERKSt10shared_ptrIKS0_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN16OpenColorIO_v2_511ConfigUtils25IdentifyBuiltinColorSpaceERKSt10shared_ptrIKNS_6ConfigEES6_PKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2)
  ret ptr %i.a
}

declare noundef ptr @_ZN16OpenColorIO_v2_511ConfigUtils25IdentifyBuiltinColorSpaceERKSt10shared_ptrIKNS_6ConfigEES6_PKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK16OpenColorIO_v2_56Config25parseColorSpaceFromStringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call noundef i32 @_ZN16OpenColorIO_v2_525ParseColorSpaceFromStringERKNS_6ConfigEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = load ptr, ptr %0, align 8, !tbaa !38     ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !255
  %i.g = tail call noundef ptr @_ZNK16OpenColorIO_v2_513ColorSpaceSet24getColorSpaceNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.b)
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.i = load i8, ptr %i.h, align 8, !tbaa !209, !range !131, !noundef !133
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.k = load ptr, ptr @_ZN16OpenColorIO_v2_512ROLE_DEFAULTE, align 8, !tbaa !32 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !26
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.328) #32
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.n, ptr %i.a, align 8, !tbaa !34
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !33
  %i.q = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.q, ptr %i.l, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.r = phi ptr [ %i.p, %.noexc.i ], [ %i.l, %bb.e ] ; 2 uses
  switch i64 %i.n, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.k, align 1, !tbaa !22
  store i8 %i.s, ptr %i.r, align 1, !tbaa !22
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.k, i64 %i.n, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !29
  %i.v = load ptr, ptr %2, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %.val = load ptr, ptr %2, align 8, !tbaa !33
  %.val24 = load i64, ptr %i.u, align 8, !tbaa !29
  %i.y = invoke fastcc noundef ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_110LookupRoleERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_ESaISt4pairIKS7_S7_EEERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr %.val, i64 %.val24)
          to label %bb.i unwind label %bb.l       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.l
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !22
  %.not22 = icmp eq i8 %i.ad, 0
  br i1 %.not22, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_0
