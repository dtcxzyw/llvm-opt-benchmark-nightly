inline.NumInlined: 1424
inline.NumDeleted: 734
begin_hunk_0_@_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14FileDescriptorEb:bb.a
  br i1 %2, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK6google8protobuf14FileDescriptor20CopySourceCodeInfoToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) #22
  resume { ptr, i32 } %i.a

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  invoke void @_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14DescriptorPoolERNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  ret void
}

declare void @_ZNK6google8protobuf14FileDescriptor6CopyToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK6google8protobuf14FileDescriptor20CopySourceCodeInfoToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14DescriptorPoolERNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::flat_hash_set", align 8 ; 16 uses
  %3 = alloca %"struct.std::pair.120", align 8    ; 6 uses
  %4 = alloca %"class.std::vector", align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN6google8protobuf8compiler12_GLOBAL__N_138ConvertToDynamicMessageAndStripOptionsERNS0_7MessageERKNS0_14DescriptorPoolEPSt6vectorIS8_IiSaIiEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.bi

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !4
  %i.c = and i32 %i.b, 4096
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  br i1 %.not, label %_ZN6google8protobuf8compiler12_GLOBAL__N_119StripSourceCodeInfoERSt6vectorIS3_IiSaIiEESaIS5_EERNS0_14SourceCodeInfoE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.f, !prof !32

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  %i.n = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_14SourceCodeInfoEEEPvPS1_(ptr noundef %.0.i.i.i.i)
          to label %.noexc unwind label %bb.bi    ; 2 uses

.noexc:                                           ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  store ptr %i.n, ptr %i.d, align 8, !tbaa !36
  br label %_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit

_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit: ; preds = %.noexc, %bb.c
  %i.o = phi ptr [ %i.n, %.noexc ], [ %i.e, %bb.c ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = or i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 15 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 6 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !37   ; 4 uses
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp slt i32 %i.u, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i, label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE11_M_allocateEm.exit.i.i: ; preds = %bb.h
  %i.x = mul nuw nsw i64 %i.v, 24
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #24
          to label %.lr.ph.preheader.i unwind label %bb.j ; 3 uses

.lr.ph.preheader.i:                               ; preds = %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE11_M_allocateEm.exit.i.i
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.v
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0109.4.i, %.sroa.12.2.i
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.aa = ptrtoint ptr %.sroa.12.2.i to i64
  %i.ab = ptrtoint ptr %.sroa.0109.4.i to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = shl nuw nsw i64 %i.ae, 1
  %i.ag = xor i64 %i.af, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_less_iterEEvT_SG_T0_T1_(ptr %.sroa.0109.4.i, ptr nonnull %.sroa.12.2.i, i64 noundef %i.ag)
          to label %.noexc33.i unwind label %bb.j

.noexc33.i:                                       ; preds = %bb.i
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_(ptr %.sroa.0109.4.i, ptr nonnull %.sroa.12.2.i)
          to label %_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %.noexc37.i, %bb.n, %.noexc33.i, %bb.i, %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE11_M_allocateEm.exit.i.i, %bb.g
  %.sroa.21119.1.i = phi ptr [ null, %bb.g ], [ %.sroa.21119.0.lcssa247.i, %.noexc37.i ], [ %.sroa.21119.0.lcssa247.i, %bb.n ], [ %.sroa.21119.4.i, %.noexc33.i ], [ %.sroa.21119.4.i, %bb.i ], [ null, %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE11_M_allocateEm.exit.i.i ]
  %.sroa.0109.1.i = phi ptr [ null, %bb.g ], [ %.sroa.0109.0.lcssa252.i, %.noexc37.i ], [ %.sroa.0109.0.lcssa252.i, %bb.n ], [ %.sroa.0109.4.i, %.noexc33.i ], [ %.sroa.0109.4.i, %bb.i ], [ null, %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE11_M_allocateEm.exit.i.i ]
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit156.i:                                   ; preds = %_ZNKSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit158.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp157.i:                          ; preds = %bb.m
  %lpad.loopexit.split-lp159.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i, %.lr.ph.preheader.i
  %i.ai = phi i32 [ %i.u, %.lr.ph.preheader.i ], [ %i.cc, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i ] ; 4 uses
  %.sroa.0109.0180.i = phi ptr [ %i.y, %.lr.ph.preheader.i ], [ %.sroa.0109.4.i, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i ] ; 7 uses
  %.sroa.12.0179.i = phi ptr [ %i.y, %.lr.ph.preheader.i ], [ %.sroa.12.2.i, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i ] ; 10 uses
  %.sroa.21119.0178.i = phi ptr [ %i.z, %.lr.ph.preheader.i ], [ %.sroa.21119.4.i, %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i ] ; 2 uses
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.al, 0
  %i.an = add i64 %i.ak, -1
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %.0.i.i.i.i.i = select i1 %i.am, ptr %i.s, ptr %i.aq
  %i.ar = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !41 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0179.i, %.sroa.21119.0178.i
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !42
  %i.au = and i32 %i.at, 1
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %.0.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.av, ptr %i.as, ptr %i.ax
  %.0.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !44
  %i.ba = sext i32 %i.az to i64
  store ptr %.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.12.0179.i, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.12.0179.i, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.12.0179.i, i64 16
  %i.bd = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !49
  br label %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.be = ptrtoint ptr %.sroa.12.0179.i to i64
  %i.bf = ptrtoint ptr %.sroa.0109.0180.i to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.m, label %_ZNKSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
          to label %.noexc71.i unwind label %.loopexit.split-lp157.i

.noexc71.i:                                       ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bi = sdiv exact i64 %i.bg, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i, %i.bi ; 2 uses
  %5 = icmp ult i64 %i.bj, %i.bi
  %i.bk = call i64 @llvm.umin.i64(i64 %i.bj, i64 384307168202282325)
  %6 = select i1 %5, i64 384307168202282325, i64 %i.bk ; 3 uses
  %.not.i.i61.i = icmp ne i64 %6, 0
  call void @llvm.assume(i1 %.not.i.i61.i)
  %i.bl = mul nuw nsw i64 %6, 24
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #24
          to label %.noexc72.i unwind label %.loopexit156.i ; 5 uses

.noexc72.i:                                       ; preds = %_ZNKSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bg ; 3 uses
  %i.bo = load i32, ptr %i.as, align 4, !tbaa !42
  %i.bp = and i32 %i.bo, 1
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bs = load ptr, ptr %i.br, align 8
  %.0.v.i.i.i.i.i.i.i.i.i62.i = select i1 %i.bq, ptr %i.as, ptr %i.bs
  %.0.i.i.i.i.i.i.i.i.i63.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i.i.i.i62.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !44
  %i.bv = sext i32 %i.bu to i64
  store ptr %.0.i.i.i.i.i.i.i.i.i63.i, ptr %i.bn, align 8, !tbaa !46
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.by = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.by, ptr %i.bx, align 8, !tbaa !49
  %.not10.i.i.i.i64.i = icmp eq ptr %.sroa.0109.0180.i, %.sroa.12.0179.i
  br i1 %.not10.i.i.i.i64.i, label %.noexc35.i, label %.lr.ph.i.i.i.i65.i

.lr.ph.i.i.i.i65.i:                               ; preds = %.noexc72.i, %.lr.ph.i.i.i.i65.i
  %.012.i.i.i.i66.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i65.i ], [ %i.bm, %.noexc72.i ] ; 2 uses
  %.0911.i.i.i.i67.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i65.i ], [ %.sroa.0109.0180.i, %.noexc72.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i66.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i67.i, i64 24, i1 false), !alias.scope !51
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i67.i, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i66.i, i64 24 ; 2 uses
  %.not.i.i.i.i68.i = icmp eq ptr %i.bz, %.sroa.12.0179.i
  br i1 %.not.i.i.i.i68.i, label %.noexc35.i, label %.lr.ph.i.i.i.i65.i, !llvm.loop !55

.noexc35.i:                                       ; preds = %.lr.ph.i.i.i.i65.i, %.noexc72.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bm, %.noexc72.i ], [ %i.ca, %.lr.ph.i.i.i.i65.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0180.i, i64 noundef %i.bg) #25
  %.pre.pre.i = load i32, ptr %i.t, align 8, !tbaa !37
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %6
  br label %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i

_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i: ; preds = %.noexc35.i, %bb.k
  %i.cc = phi i32 [ %.pre.pre.i, %.noexc35.i ], [ %i.ai, %bb.k ] ; 2 uses
  %.sroa.21119.4.i = phi ptr [ %i.cb, %.noexc35.i ], [ %.sroa.21119.0178.i, %bb.k ] ; 5 uses
  %.0.lcssa.i.i.i.i.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i, %.noexc35.i ], [ %.sroa.12.0179.i, %bb.k ]
  %.sroa.0109.4.i = phi ptr [ %i.bm, %.noexc35.i ], [ %.sroa.0109.0180.i, %bb.k ] ; 10 uses
  %.sroa.12.2.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn.i, i64 24 ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next.i, %i.cd
  br i1 %i.ce, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !57

_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i: ; preds = %.noexc33.i, %._crit_edge.i, %bb.h
  %.sroa.0109.0.lcssa252.i = phi ptr [ %.sroa.0109.4.i, %.noexc33.i ], [ %.sroa.0109.4.i, %._crit_edge.i ], [ null, %bb.h ] ; 8 uses
  %.sroa.12.0.lcssa251.i = phi ptr [ %.sroa.12.2.i, %.noexc33.i ], [ %.sroa.0109.4.i, %._crit_edge.i ], [ null, %bb.h ] ; 2 uses
  %.sroa.21119.0.lcssa247.i = phi ptr [ %.sroa.21119.4.i, %.noexc33.i ], [ %.sroa.21119.4.i, %._crit_edge.i ], [ null, %bb.h ] ; 4 uses
  %i.cf = load ptr, ptr %4, align 8, !tbaa !58    ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !58 ; 4 uses
  %.not.i.i.i36.i = icmp eq ptr %i.cf, %i.ch
  br i1 %.not.i.i.i36.i, label %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.thread.i, label %bb.n

_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.thread.i: ; preds = %_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i64 1, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i256.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i256.i, align 8
  br label %._crit_edge188.i

bb.n:                                             ; preds = %_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = sdiv exact i64 %i.ck, 24
  %i.cm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = shl nuw nsw i64 %i.cm, 1
  %i.co = xor i64 %i.cn, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.cf, ptr %i.ch, i64 noundef %i.co)
          to label %.noexc37.i unwind label %bb.j

.noexc37.i:                                       ; preds = %bb.n
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.cf, ptr %i.ch)
          to label %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.i unwind label %bb.j

_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.i: ; preds = %.noexc37.i
  %.pre200.i = load ptr, ptr %4, align 8, !tbaa !58 ; 2 uses
  %.pre201.i = load ptr, ptr %i.cg, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i64 1, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.cp = icmp ne ptr %.pre200.i, %.pre201.i
  %i.cq = icmp ne ptr %.sroa.0109.0.lcssa252.i, %.sroa.12.0.lcssa251.i
  %or.cond184.i = and i1 %i.cq, %i.cp
  br i1 %or.cond184.i, label %.lr.ph187.i, label %._crit_edge188.i

.lr.ph187.i:                                      ; preds = %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph187.i
  %i.cs = phi ptr [ %.pre201.i, %.lr.ph187.i ], [ %i.dq, %bb.u ] ; 2 uses
  %.sroa.0101.0186.i = phi ptr [ %.pre200.i, %.lr.ph187.i ], [ %.sroa.0101.1.i, %bb.u ] ; 5 uses
  %.sroa.095.0185.i = phi ptr [ %.sroa.0109.0.lcssa252.i, %.lr.ph187.i ], [ %.sroa.095.1.i, %bb.u ] ; 6 uses
  %i.ct = load ptr, ptr %.sroa.0101.0186.i, align 8, !tbaa !60 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0101.0186.i, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !62 ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = ashr exact i64 %i.cy, 2
  %.sroa.05.0.copyload.i = load ptr, ptr %.sroa.095.0185.i, align 8, !tbaa !63 ; 4 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.095.0185.i, i64 8
  %.sroa.26.0.copyload.i = load i64, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i.not.i.i = icmp ugt i64 %i.cz, %.sroa.26.0.copyload.i ; 2 uses
  br i1 %.not.i.i.i.i.not.i.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.ct
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.i

_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.i: ; preds = %bb.p
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %i.ct, ptr readonly %.sroa.05.0.copyload.i, i64 %i.cy)
  %.not9.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i

_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread.i: ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.i, %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.095.0185.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.120") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.da)
          to label %.noexc39.i unwind label %bb.r

.noexc39.i:                                       ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread.i
  %i.db = load i8, ptr %i.cr, align 8, !tbaa !83, !range !86, !alias.scope !87, !noundef !88
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.q, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i

bb.q:                                             ; preds = %.noexc39.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !87
  %i.dd = load i32, ptr %i.da, align 8, !tbaa !4, !noalias !87
  store i32 %i.dd, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 4, !tbaa !4
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i: ; preds = %bb.q, %.noexc39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.095.0185.i, i64 24
  %.pre202.i = load ptr, ptr %i.cg, align 8, !tbaa !58
  br label %bb.u

bb.r:                                             ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i

_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i: ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.i, %bb.o
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload.i, i64 %.sroa.26.0.copyload.i
  %.idx5.i.i.i = shl nuw nsw i64 %.sroa.26.0.copyload.i, 2
  %.v.i.i = select i1 %.not.i.i.i.i.not.i.i, i64 %.idx5.i.i.i, i64 %i.cy ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.v.i.i
  %.not22.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.v.i.i, 0
  br i1 %.not22.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i, %bb.t
  %.01924.i.i.i.i.i.i.i.i = phi ptr [ %i.dn, %bb.t ], [ %.sroa.05.0.copyload.i, %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i = phi ptr [ %i.dm, %bb.t ], [ %i.ct, %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i ] ; 2 uses
  %i.di = load i32, ptr %.02023.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.dj = load i32, ptr %.01924.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dl = icmp slt i32 %i.dj, %i.di
  br i1 %i.dl, label %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dm, %i.dh
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.i: ; preds = %bb.t, %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i
  %.019.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i, %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i ], [ %i.dn, %bb.t ]
  %.not155.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i, %i.dg
  br i1 %.not155.i, label %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i, label %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i

_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0101.0186.i, i64 24
  br label %bb.u

_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i: ; preds = %bb.s, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.095.0185.i, i64 24
  br label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i
  %i.dq = phi ptr [ %.pre202.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i ], [ %i.cs, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i ], [ %i.cs, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i ] ; 2 uses
  %.sroa.095.1.i = phi ptr [ %i.de, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i ], [ %.sroa.095.0185.i, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i ], [ %i.dp, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i ] ; 2 uses
  %.sroa.0101.1.i = phi ptr [ %.sroa.0101.0186.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i ], [ %i.do, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i ], [ %.sroa.0101.0186.i, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i ] ; 2 uses
  %i.dr = icmp ne ptr %.sroa.0101.1.i, %i.dq
  %i.ds = icmp ne ptr %.sroa.095.1.i, %.sroa.12.0.lcssa251.i
  %or.cond.i = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %or.cond.i, label %bb.o, label %._crit_edge188.i, !llvm.loop !90

._crit_edge188.i:                                 ; preds = %bb.u, %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.i, %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.thread.i
  %.sroa.4.0..sroa_idx.i.i258.i = phi ptr [ %.sroa.4.0..sroa_idx.i.i256.i, %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.thread.i ], [ %.sroa.4.0..sroa_idx.i.i.i, %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.i ], [ %.sroa.4.0..sroa_idx.i.i.i, %bb.u ] ; 4 uses
  %i.dt = load i32, ptr %i.t, align 8, !tbaa !37  ; 5 uses
  %i.du = sext i32 %i.dt to i64                   ; 3 uses
  %.not154.i = icmp eq i32 %i.dt, 0               ; 2 uses
  br i1 %.not154.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge188.i
  %i.dv = icmp slt i32 %i.dt, 0
  br i1 %i.dv, label %bb.w, label %_ZNKSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc76.i unwind label %.thread146.i

.noexc76.i:                                       ; preds = %bb.w
  unreachable

_ZNKSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.dw = shl nuw nsw i64 %i.du, 3
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #24
          to label %.noexc77.i unwind label %.thread146.i ; 4 uses

.noexc77.i:                                       ; preds = %_ZNKSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  store ptr null, ptr %i.dx, align 8, !tbaa !91
  %i.dy = add nsw i64 %i.du, -1                   ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %.noexc40.i, label %_ZSt6fill_nIPPN6google8protobuf23SourceCodeInfo_LocationEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30.i.i

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler32StripLocalSourceRetentionOptionsERKNS0_15OneofDescriptorE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !188
  resume { ptr, i32 } %i.z

_ZN6google8protobuf8compiler12_GLOBAL__N_117StripLocalOptionsINS0_15OneofDescriptorEEEDaRKT_.exit: ; preds = %bb.c, %bb.i, %bb.j
  call void @_ZN6google8protobuf12OneofOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !188
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler32StripLocalSourceRetentionOptionsERKNS0_17ServiceDescriptorE(ptr dead_on_unwind noalias writable sret(%"class.google::protobuf::ServiceOptions") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::ServiceOptions", align 8 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !192
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195, !noalias !192
  call void @_ZN6google8protobuf14ServiceOptionsC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !192
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !184, !noalias !192
  %i.d = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.d, align 8, !tbaa !8, !noalias !192
  invoke fastcc void @_ZN6google8protobuf8compiler12_GLOBAL__N_138ConvertToDynamicMessageAndStripOptionsERNS0_7MessageERKNS0_14DescriptorPoolEPSt6vectorIS8_IiSaIiEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(120) %.val.val.i, ptr noundef null)
          to label %bb.b unwind label %bb.m, !noalias !192

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf14ServiceOptionsC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef null)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, %2
  br i1 %i.e, label %_ZN6google8protobuf8compiler12_GLOBAL__N_117StripLocalOptionsINS0_17ServiceDescriptorEEEDaRKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29, !alias.scope !192 ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !32

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !29, !noalias !192 ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.h, !prof !32

bb.g:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i7.i.i.i.i = phi ptr [ %i.r, %bb.g ], [ %i.s, %bb.h ]
  %i.t = icmp eq ptr %.0.i.i.i.i.i.i, %.0.i.i7.i.i.i.i
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf14ServiceOptions12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZN6google8protobuf8compiler12_GLOBAL__N_117StripLocalOptionsINS0_17ServiceDescriptorEEEDaRKT_.exit unwind label %bb.k

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf14ServiceOptions8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZN6google8protobuf8compiler12_GLOBAL__N_117StripLocalOptionsINS0_17ServiceDescriptorEEEDaRKT_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #26
  unreachable

bb.l:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #26
  unreachable

bb.m:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf14ServiceOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #22, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !192
  resume { ptr, i32 } %i.y

_ZN6google8protobuf8compiler12_GLOBAL__N_117StripLocalOptionsINS0_17ServiceDescriptorEEEDaRKT_.exit: ; preds = %bb.c, %bb.i, %bb.j
  call void @_ZN6google8protobuf14ServiceOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !192
  ret void
}

declare void @_ZN6google8protobuf19FileDescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindMessageTypeByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120), i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @_ZNK6google8protobuf11MessageLite11GetTypeNameEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf14DescriptorPool14generated_poolEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8compiler12_GLOBAL__N_112StripMessageERNS0_7MessageERSt6vectorIiSaIiEEPS5_IS7_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.99", align 8    ; 11 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !196    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !196  ; 2 uses
  %.not90108 = icmp eq ptr %i.c, %i.e
  br i1 %.not90108, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !62
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %.pre112 = load ptr, ptr %3, align 8, !tbaa !198
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.j = phi ptr [ %.pre112, %._crit_edge.loopexit ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !200
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.e:                                             ; preds = %.lr.ph110, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.q = phi ptr [ %.pre, %.lr.ph110 ], [ %i.fj, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %.sroa.087.0109 = phi ptr [ %i.c, %.lr.ph110 ], [ %i.fk, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.087.0109, align 8, !tbaa !201 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !202  ; 2 uses
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !111
  %.not.i.i = icmp eq ptr %i.q, %i.u
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.t, ptr %i.q, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store ptr %i.v, ptr %i.f, align 8, !tbaa !62
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %1, align 8, !tbaa !60     ; 4 uses
  %i.x = ptrtoint ptr %i.q to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775804
  br i1 %i.aa, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
          to label %.noexc unwind label %.loopexit.split-lp93

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ab = ashr exact i64 %i.z, 2                  ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %4 = icmp ult i64 %i.ac, %i.ab
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ac, i64 2305843009213693951)
  %5 = select i1 %4, i64 2305843009213693951, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %5, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ae = shl nuw nsw i64 %5, 2
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #24
          to label %.noexc58 unwind label %.loopexit92 ; 4 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.z ; 2 uses
  store i32 %i.t, ptr %i.ag, align 4, !tbaa !4
  %i.ah = icmp sgt i64 %i.z, 0
  br i1 %i.ah, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc58
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 4 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.af, ptr %1, align 8, !tbaa !60
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %5
  store ptr %i.aj, ptr %i.g, align 8, !tbaa !111
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !164
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.an = load i32, ptr %i.am, align 8, !tbaa !36
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK6google8protobuf10Reflection10ClearFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.r)
          to label %bb.m unwind label %.loopexit102

bb.m:                                             ; preds = %bb.l
  br i1 %.not, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !110 ; 6 uses
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !62  ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !60    ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i.i.i.i.i, label %.noexc60, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = icmp ugt i64 %i.av, 9223372036854775804
  br i1 %i.aw, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !32

.noexc.i.i.i:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc59 unwind label %.loopexit.split-lp103

.noexc59:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #24
          to label %.noexc60 unwind label %.loopexit102

.noexc60:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.o
  %i.ay = phi ptr [ null, %bb.o ], [ %i.ax, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.ay, ptr %i.ap, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !111
  %i.bc = load ptr, ptr %1, align 8, !tbaa !63    ; 3 uses
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = icmp sgt i64 %i.bg, 4
  br i1 %i.bh, label %bb.q, label %bb.r, !prof !102

bb.q:                                             ; preds = %.noexc60
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ay, ptr align 4 %i.bc, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.r:                                             ; preds = %.noexc60
  %i.bi = icmp eq i64 %i.bg, 4
  br i1 %i.bi, label %bb.s, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bj = load i32, ptr %i.bc, align 4, !tbaa !4
  store i32 %i.bj, ptr %i.ay, align 4, !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.s, %bb.r, %bb.q
  %i.bk = getelementptr inbounds i8, ptr %i.ay, i64 %i.bg
  store ptr %i.bk, ptr %i.az, align 8, !tbaa !62
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.sink.split

bb.t:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit102

.loopexit92:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit94 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp93:                             ; preds = %bb.h
  %lpad.loopexit.split-lp95 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit102:                                     ; preds = %bb.l, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.t
  %lpad.loopexit104 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp103:                            ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp105 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.u:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !203
  %i.bn = icmp eq i8 %i.bm, 11
  br i1 %i.bn, label %bb.v, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = and i8 %i.bp, 32
  %.not91 = icmp eq i8 %i.bq, 0
  br i1 %.not91, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = invoke noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.r)
          to label %.preheader unwind label %bb.x ; 2 uses

.preheader:                                       ; preds = %bb.w
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph.preheader, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre111 = load ptr, ptr %i.f, align 8, !tbaa !62
  br label %.lr.ph

bb.x:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ae
  %i.bu = phi ptr [ %i.cn, %bb.ae ], [ %.pre111, %.lr.ph.preheader ] ; 4 uses
  %storemerge107 = phi i32 [ %i.co, %bb.ae ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !111
  %.not.i62 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i62, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  store i32 %storemerge107, ptr %i.bu, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store ptr %i.bw, ptr %i.f, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.z:                                             ; preds = %.lr.ph
  %i.bx = load ptr, ptr %1, align 8, !tbaa !60    ; 4 uses
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 6 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775804
  br i1 %i.cb, label %bb.aa, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
          to label %.noexc64 unwind label %.loopexit.split-lp

.noexc64:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.cc = ashr exact i64 %i.ca, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i, %i.cc ; 2 uses
  %6 = icmp ult i64 %i.cd, %i.cc
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cd, i64 2305843009213693951)
  %7 = select i1 %6, i64 2305843009213693951, i64 %i.ce ; 3 uses
  %.not.i.i.i63 = icmp ne i64 %7, 0
  call void @llvm.assume(i1 %.not.i.i.i63)
  %i.cf = shl nuw nsw i64 %7, 2
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #24
          to label %.noexc65 unwind label %.loopexit ; 4 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.ca ; 2 uses
  store i32 %storemerge107, ptr %i.ch, align 4, !tbaa !4
  %i.ci = icmp sgt i64 %i.ca, 0
  br i1 %i.ci, label %bb.ab, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ab:                                            ; preds = %.noexc65
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr align 4 %i.bx, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ab, %.noexc65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %.not.i17.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.cg, ptr %1, align 8, !tbaa !60
  store ptr %i.cj, ptr %i.f, align 8, !tbaa !62
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %7
  store ptr %i.ck, ptr %i.g, align 8, !tbaa !111
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.y
  %i.cl = invoke noundef ptr @_ZNK6google8protobuf10Reflection22MutableRepeatedMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.r, i32 noundef %storemerge107)
          to label %bb.ad unwind label %.loopexit

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  invoke fastcc void @_ZN6google8protobuf8compiler12_GLOBAL__N_112StripMessageERNS0_7MessageERSt6vectorIiSaIiEEPS5_IS7_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.cm = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4 ; 2 uses
  store ptr %i.cn, ptr %i.f, align 8, !tbaa !62
  %i.co = add nuw nsw i32 %storemerge107, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %i.br
  br i1 %exitcond.not, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit, label %.lr.ph, !llvm.loop !204

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.ad, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.af:                                            ; preds = %bb.v
  %i.cp = invoke noundef ptr @_ZNK6google8protobuf10Reflection14MutableMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef null)
          to label %bb.ag unwind label %bb.aw     ; 6 uses

bb.ag:                                            ; preds = %bb.af
  %i.cq = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp)
          to label %.noexc66 unwind label %.loopexit97

.noexc66:                                         ; preds = %bb.ag
  %i.cr = extractvalue { ptr, ptr } %i.cq, 0      ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !127
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !205 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !120
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !117 ; 3 uses
  %i.cz = invoke { ptr, ptr } @_ZNK6google8protobuf15DescriptorProto11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(176) @_ZN6google8protobuf34_DescriptorProto_default_instance_E)
          to label %.noexc67 unwind label %.loopexit97

.noexc67:                                         ; preds = %.noexc66
  %i.da = extractvalue { ptr, ptr } %i.cz, 0
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !127
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !205 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !120
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !117
  %i.di = icmp eq i64 %i.cy, %i.dh
  br i1 %i.di, label %bb.ah, label %_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit.thread

bb.ah:                                            ; preds = %.noexc67
  %i.dj = icmp eq i64 %i.cy, 0
  br i1 %i.dj, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.ah
  %bcmp.i.i = call i32 @bcmp(ptr %i.cw, ptr %i.df, i64 %i.cy)
  %i.dk = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.dk, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !206 ; 2 uses
  %.0.copyload.i.i.i.i = load i16, ptr %i.dm, align 1
  %i.dn = icmp ult i16 %.0.copyload.i.i.i.i, 7
  br i1 %i.dn, label %_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit.thread, label %_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit

_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = xor i32 %i.dp, 1769238607
  %i.dr = getelementptr i8, ptr %i.do, i64 3
  %i.ds = load i32, ptr %i.dr, align 1
  %i.dt = xor i32 %i.ds, 1936617321
  %i.du = or i32 %i.dq, %i.dt
  %i.dv = icmp ne i32 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.ai, label %_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit.thread

bb.ai:                                            ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit
  %i.dy = load ptr, ptr %i.cp, align 8, !tbaa !124
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = invoke noundef i64 %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.cp)
          to label %bb.aj unwind label %.loopexit97, !inline_history !207

bb.aj:                                            ; preds = %bb.ai
  %i.ec = icmp ne i64 %i.eb, 0
  br label %_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit.thread

_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit.thread: ; preds = %.noexc67, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, %bb.aj, %_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit
  %i.ed = phi i1 [ false, %_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit ], [ %i.ec, %bb.aj ], [ false, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ false, %.noexc67 ]
  invoke fastcc void @_ZN6google8protobuf8compiler12_GLOBAL__N_112StripMessageERNS0_7MessageERSt6vectorIiSaIiEEPS5_IS7_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
          to label %bb.ak unwind label %.loopexit97

bb.ak:                                            ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit.thread
  br i1 %i.ed, label %bb.al, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.al:                                            ; preds = %bb.ak
  %i.ee = load ptr, ptr %i.cp, align 8, !tbaa !124
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef i64 %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.cp)
          to label %bb.am unwind label %.loopexit97, !inline_history !207

bb.am:                                            ; preds = %bb.al
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.an, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.an:                                            ; preds = %bb.am
  invoke void @_ZNK6google8protobuf10Reflection10ClearFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.r)
          to label %bb.ao unwind label %.loopexit97

bb.ao:                                            ; preds = %bb.an
  br i1 %.not, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ej = load ptr, ptr %i.h, align 8, !tbaa !110 ; 6 uses
  %i.ek = load ptr, ptr %i.i, align 8, !tbaa !113
  %.not.i71 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i71, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.el = load ptr, ptr %i.f, align 8, !tbaa !62  ; 2 uses
  %i.em = load ptr, ptr %1, align 8, !tbaa !60    ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i72 = icmp eq ptr %i.el, %i.em
  br i1 %.not.i.i.i.i.i72, label %.noexc77, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eq = icmp ugt i64 %i.ep, 9223372036854775804
  br i1 %i.eq, label %.noexc.i.i.i75, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i73, !prof !32

.noexc.i.i.i75:                                   ; preds = %bb.ar
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc76 unwind label %.loopexit.split-lp98

.noexc76:                                         ; preds = %.noexc.i.i.i75
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i73: ; preds = %bb.ar
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #24
          to label %.noexc77 unwind label %.loopexit97

.noexc77:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i73, %bb.aq
  %i.es = phi ptr [ null, %bb.aq ], [ %i.er, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i73 ] ; 6 uses
  store ptr %i.es, ptr %i.ej, align 8, !tbaa !60
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  store ptr %i.es, ptr %i.et, align 8, !tbaa !62
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ep
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !111
  %i.ew = load ptr, ptr %1, align 8, !tbaa !63    ; 3 uses
  %i.ex = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = icmp sgt i64 %i.fa, 4
  br i1 %i.fb, label %bb.as, label %bb.at, !prof !102

bb.as:                                            ; preds = %.noexc77
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.es, ptr align 4 %i.ew, i64 %i.fa, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i74

bb.at:                                            ; preds = %.noexc77
  %i.fc = icmp eq i64 %i.fa, 4
  br i1 %i.fc, label %bb.au, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i74

bb.au:                                            ; preds = %bb.at
  %i.fd = load i32, ptr %i.ew, align 4, !tbaa !4
  store i32 %i.fd, ptr %i.es, align 4, !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i74

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i74:            ; preds = %bb.au, %bb.at, %bb.as
  %i.fe = getelementptr inbounds i8, ptr %i.es, i64 %i.fa
  store ptr %i.fe, ptr %i.et, align 8, !tbaa !62
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.sink.split

bb.av:                                            ; preds = %bb.ap
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit97

bb.aw:                                            ; preds = %bb.af
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit97:                                      ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_114IsOptionsProtoERKNS0_7MessageE.exit.thread, %bb.an, %bb.ag, %.noexc66, %bb.ai, %bb.al, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i73, %bb.av
  %lpad.loopexit99 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp98:                             ; preds = %.noexc.i.i.i75
  %lpad.loopexit.split-lp100 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.sink.split: ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i74
  %i.fg = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store ptr %i.fh, ptr %i.h, align 8, !tbaa !110
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.ae, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.sink.split, %.preheader, %bb.av, %bb.t, %bb.ak, %bb.am, %bb.ao, %bb.u, %bb.m
  %i.fi = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 2 uses
  store ptr %i.fj, ptr %i.f, align 8, !tbaa !62
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.087.0109, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.fk, %i.e
  br i1 %.not90, label %._crit_edge.loopexit, label %bb.e

bb.ax:                                            ; preds = %.loopexit97, %.loopexit.split-lp98, %.loopexit, %.loopexit.split-lp, %.loopexit102, %.loopexit.split-lp103, %.loopexit92, %.loopexit.split-lp93, %bb.x, %bb.aw, %bb.d
  %.pn55.pn = phi { ptr, i32 } [ %i.p, %bb.d ], [ %lpad.loopexit.split-lp95, %.loopexit.split-lp93 ], [ %i.ff, %bb.aw ], [ %i.bt, %bb.x ], [ %lpad.loopexit.split-lp105, %.loopexit.split-lp103 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit94, %.loopexit92 ], [ %lpad.loopexit104, %.loopexit102 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit99, %.loopexit97 ], [ %lpad.loopexit.split-lp100, %.loopexit.split-lp98 ]
  %i.fl = load ptr, ptr %3, align 8, !tbaa !198   ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit81, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !200
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #25
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit81

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit81: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn55.pn
}

declare void @_ZN6google8protobuf21DynamicMessageFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf21DynamicMessageFactory12GetPrototypeEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK6google8protobuf11MessageLite24SerializePartialToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal17LogEveryNSecState9ShouldLogEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) local_unnamed_addr #1

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

declare noundef zeroext i1 @_ZN6google8protobuf11MessageLite22ParsePartialFromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6google8protobuf21DynamicMessageFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf10Reflection10ClearFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Reflection22MutableRepeatedMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Reflection14MutableMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !108    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %4 = select i1 %3, i64 384307168202282325, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %4, 24                   ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #24 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62   ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !60     ; 4 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = getelementptr inbounds i8, ptr null, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store ptr %i.w, ptr %i.x, align 8, !tbaa !111
  br label %bb.g

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit
  %i.y = icmp ugt i64 %i.u, 9223372036854775804
  br i1 %i.y, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !32

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #24
          to label %.noexc26 unwind label %bb.j   ; 5 uses

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.z, ptr %i.o, align 8, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.u ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !111
  %i.ad = icmp samesign ugt i64 %i.u, 4
  br i1 %i.ad, label %bb.d, label %bb.e, !prof !208

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %i.r, i64 %i.u, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ae = icmp eq i64 %i.u, 4
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.r, align 4, !tbaa !4
  store i32 %i.af, ptr %i.z, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.thread
  %i.ag = phi ptr [ %i.ab, %bb.d ], [ %i.ab, %bb.e ], [ %i.ab, %bb.f ], [ %i.w, %.thread ]
  %i.ah = phi ptr [ %i.aa, %bb.d ], [ %i.aa, %bb.e ], [ %i.aa, %bb.f ], [ %i.v, %.thread ]
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !62
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.n, %bb.g ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.ai = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !63, !alias.scope !212, !noalias !209
  store <2 x ptr> %i.ai, ptr %.012.i.i.i, align 8, !tbaa !63, !alias.scope !209, !noalias !212
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !111, !alias.scope !212, !noalias !209
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !111, !alias.scope !209, !noalias !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !212, !noalias !209
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !214

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %bb.g ], [ %i.an, %.lr.ph.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.au, %.lr.ph.i.i.i28 ], [ %i.ao, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.at, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.ap = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !63, !alias.scope !218, !noalias !215
  store <2 x ptr> %i.ap, ptr %.012.i.i.i29, align 8, !tbaa !63, !alias.scope !215, !noalias !218
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !111, !alias.scope !218, !noalias !215
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !111, !alias.scope !215, !noalias !218
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !218, !noalias !215
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !214

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ao, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.au, %.lr.ph.i.i.i28 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !113
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #25
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.h
  store ptr %i.n, ptr %0, align 8, !tbaa !108
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !110
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %4
  store ptr %i.az, ptr %i.av, align 8, !tbaa !113
  ret void

bb.i:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %i.bc) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #25
  invoke void @__cxa_rethrow() #23
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ba

bb.l:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #26
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare { ptr, ptr } @_ZNK6google8protobuf15DescriptorProto11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind
declare void @_ZN6google8protobuf23SourceCodeInfo_LocationD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !97     ; 3 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !95
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.a, ptr noundef %i.e, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE15destructor_implEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_less_iterEEvT_SG_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph30

bb.b:                                             ; preds = %.lr.ph30
  %i.g = icmp eq i64 %i.v, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph30, !llvm.loop !220

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ab, %bb.b ]
  %storemerge16.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.z, %bb.b ]
  %i.h = udiv exact i64 %.lcssa, 24               ; 2 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.07.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.l, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [24 x i8], ptr %0, i64 %.07.i.i
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_less_iterEEvT_T0_SH_T1_T2_(ptr %0, i64 noundef %.07.i.i, i64 noundef %i.h, ptr noundef nonnull byval(%"struct.std::pair") align 8 %i.k)
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.l = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !221

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %storemerge16.lcssa, %.lr.ph.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !222
  %i.o = load i32, ptr %i.m, align 4, !tbaa !4
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !49
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = sdiv exact i64 %i.r, 24
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_less_iterEEvT_T0_SH_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull byval(%"struct.std::pair") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.t = icmp sgt i64 %i.r, 24
  br i1 %i.t, label %bb.d, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_T0_.exit, !llvm.loop !223

.lr.ph30:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1629 = phi ptr [ %i.z, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01728 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.ab, %bb.b ], [ %i.c, %.lr.ph ]
  %i.v = add nsw i64 %.01728, -1                  ; 3 uses
  %i.w = udiv i64 %i.u, 48
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %storemerge1629, i64 -24
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_SG_T0_(ptr %0, ptr nonnull %i.e, ptr %i.x, ptr nonnull %i.y)
  %i.z = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEET_SG_SG_SG_T0_(ptr nonnull %i.e, ptr %storemerge1629, ptr %0) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_less_iterEEvT_SG_T0_T1_(ptr %i.z, ptr %storemerge1629, i64 noundef %i.v)
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.a                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 384
  br i1 %i.ac, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_T0_.exit, !llvm.loop !220

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_T0_.exit: ; preds = %.lr.ph30, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_(ptr %0, ptr nonnull %i.e)
  %.not8.i = icmp eq ptr %i.e, %1
  br i1 %.not8.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.0.09.i = phi ptr [ %i.ag, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.e, %bb.b ] ; 5 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.0.09.i, align 8 ; 7 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 16
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i, i64 %.sroa.5.0.copyload.i.i ; 2 uses
  %.idx5.i.i12.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload.i.i, 2
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i, %.lr.ph.i
  %.sroa.08.0.i.i = phi ptr [ %.sroa.0.09.i, %.lr.ph.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i ] ; 9 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.08.0.i.i, i64 -24 ; 3 uses
  %.sroa.03.0.copyload.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !63 ; 6 uses
  %.sroa.24.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.0.i.i, i64 -16
  %.sroa.24.0.copyload.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !tbaa !64 ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i.i.i, i64 %.sroa.24.0.copyload.i.i.i.i ; 2 uses
  %.idx5.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.24.0.copyload.i.i.i.i, 2
  %i.h = icmp ult i64 %.sroa.24.0.copyload.i.i.i.i, %.sroa.5.0.copyload.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i.i.i.i.i
  %i.j = select i1 %i.h, ptr %i.i, ptr %i.f       ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.j
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.c, %bb.e
end_hunk_1
