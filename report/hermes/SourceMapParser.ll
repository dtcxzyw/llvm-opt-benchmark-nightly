inline.NumInlined: 808
inline.NumDeleted: 555
begin_hunk_0_@_ZN6hermes15SourceMapParser5parseEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.qn = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.qo = icmp eq i64 %i.qn, 4294967297
  %i.qp = trunc i64 %i.qn to i32                  ; 2 uses
  br i1 %i.qo, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.d, align 8, !tbaa !12
  store i32 0, ptr %i.e, align 4, !tbaa !15
  %i.qq = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qs = load ptr, ptr %i.qr, align 8
  call void %i.qs(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #17, !inline_history !176
  %i.qt = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load ptr, ptr %i.qu, align 8
  call void %i.qv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #17, !inline_history !176
  br label %_ZNSt12__shared_ptrIN6hermes28BacktrackingBumpPtrAllocatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ce:                                            ; preds = %bb.cc
  %i.qw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i150 = icmp eq i8 %i.qw, 0
  br i1 %.not.i.i.i150, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qx = add nsw i32 %i.qp, -1
  store i32 %i.qx, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i151

bb.cg:                                            ; preds = %bb.ce
  %i.qy = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i151

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i151: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i152 = phi i32 [ %i.qp, %bb.cf ], [ %i.qy, %bb.cg ]
  %i.qz = icmp eq i32 %.0.i.i.i.i152, 1
  br i1 %i.qz, label %bb.ch, label %_ZNSt12__shared_ptrIN6hermes28BacktrackingBumpPtrAllocatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i151
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #17
  br label %_ZNSt12__shared_ptrIN6hermes28BacktrackingBumpPtrAllocatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes28BacktrackingBumpPtrAllocatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i151, %bb.ch
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes6parser11JSONFactoryC1ERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare { i64, i8 } @_ZN6hermes6parser10JSONParser5parseEv(ptr noundef nonnull align 8 dereferenceable(1176)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes15SourceMapParser13parseMappingsEN4llvh9StringRefERSt6vectorIS3_INS_9SourceMap7SegmentESaIS5_EESaIS7_EE(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::StringRef", align 8   ; 4 uses
  %4 = alloca %"class.std::vector.80", align 8    ; 15 uses
  %5 = alloca %"struct.hermes::SourceMapParser::State", align 4 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.llvh::Optional.85", align 4 ; 13 uses
  store ptr %0, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %i.q = phi i64 [ 0, %.lr.ph ], [ %i.bw, %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ] ; 3 uses
  %i.r = call noundef i64 @_ZNK4llvh9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.13, i64 2, i64 noundef %i.q) #17 ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  %i.t = load i64, ptr %i.b, align 8              ; 2 uses
  %spec.select = select i1 %i.s, i64 %i.t, i64 %i.r ; 5 uses
  %i.u = icmp eq i64 %spec.select, %i.t
  %.pre = load ptr, ptr %3, align 8, !tbaa !51    ; 3 uses
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 %spec.select
  %i.w = load i8, ptr %i.v, align 1, !tbaa !60
  %i.x = icmp eq i8 %i.w, 59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = phi i1 [ true, %bb.b ], [ %i.x, %bb.c ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.q
  store ptr %i.z, ptr %i.a, align 8, !tbaa !144
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 %spec.select
  %i.ab = icmp samesign eq i64 %i.q, %spec.select
  %or.cond = and i1 %i.ab, %i.y
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %4, align 8, !tbaa !177   ; 2 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !177 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !148 ; 6 uses
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !154
  %.not.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !149
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !178
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !152
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !148
  br label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.af, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.i:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN6hermes15SourceMapParser12parseSegmentERKNS0_5StateERPKcS5_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Optional.85") align 4 %6, ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.aa)
  %i.al = load i8, ptr %i.e, align 4, !tbaa !179, !range !123, !noundef !124
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %.critedge26

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %6, align 4, !tbaa !184
  store i32 %i.an, ptr %5, align 4, !tbaa !190
  %i.ao = load i8, ptr %i.f, align 4, !tbaa !192, !range !123, !noundef !124
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aq = load <2 x i32>, ptr %i.g, align 4, !tbaa !3
  store <2 x i32> %i.aq, ptr %i.h, align 4, !tbaa !3
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !193
  store i32 %i.ar, ptr %i.j, align 4, !tbaa !199
  %i.as = load i8, ptr %i.k, align 4, !tbaa !200, !range !123, !noundef !124
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = load i32, ptr %i.l, align 4, !tbaa !3
  store i32 %i.au, ptr %i.m, align 4, !tbaa !201
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !178 ; 6 uses
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !152 ; 2 uses
  %.not.i27 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.av, ptr noundef nonnull align 4 dereferenceable(28) %6, i64 28, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 28 ; 2 uses
  store ptr %i.ax, ptr %i.d, align 8, !tbaa !178
  br label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit

bb.o:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %4, align 8, !tbaa !149   ; 5 uses
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.p, label %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #19
  unreachable

_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bd = sdiv exact i64 %i.bb, 28                ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i, %i.bd ; 2 uses
  %i.bf = call i64 @llvm.umin.i64(i64 %i.be, i64 329406144173384850) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bg = mul nuw nsw i64 %i.bf, 28
  %i.bh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #16 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bi, ptr noundef nonnull align 4 dereferenceable(28) %6, i64 28, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.ay, %i.av
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %i.bh, %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %i.ay, %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i.i, i64 28, i1 false), !alias.scope !202
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 28 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %i.av
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !206

_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bh, %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bk, %.lr.ph.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 28 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #18
  br label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.bh, ptr %4, align 8, !tbaa !149
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !178
  %i.bm = getelementptr inbounds nuw [28 x i8], ptr %i.bh, i64 %i.bf ; 2 uses
  store ptr %i.bm, ptr %i.n, align 8, !tbaa !152
  br label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit

_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.bn = phi ptr [ %i.aw, %bb.n ], [ %i.bm, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.bo = phi ptr [ %i.ax, %bb.n ], [ %i.bl, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  br i1 %i.y, label %bb.r, label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit30

bb.r:                                             ; preds = %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit
  store i32 0, ptr %5, align 4, !tbaa !190
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !148 ; 6 uses
  %i.bq = load ptr, ptr %i.p, align 8, !tbaa !154
  %.not.i28 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %4, align 8, !tbaa !149
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !149
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bo, ptr %i.bs, align 8, !tbaa !178
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bn, ptr %i.bt, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.bu, ptr %i.o, align 8, !tbaa !148
  br label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit30

bb.t:                                             ; preds = %bb.r
  call void @_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit30

_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit30: ; preds = %bb.t, %bb.s, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit30, %bb.h, %bb.g
  %i.bv = add i64 %spec.select, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bw = and i64 %i.bv, 4294967295               ; 2 uses
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !86
  %.not = icmp ugt i64 %i.bx, %i.bw
  br i1 %.not, label %bb.b, label %.loopexitthread-pre-split, !llvm.loop !207

.critedge26:                                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexitthread-pre-split

.loopexitthread-pre-split:                        ; preds = %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %.critedge26
  %.ph = phi i1 [ false, %.critedge26 ], [ true, %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ]
  %.pr = load ptr, ptr %4, align 8, !tbaa !149
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitthread-pre-split, %bb.a
  %i.by = phi ptr [ %.pr, %.loopexitthread-pre-split ], [ null, %bb.a ] ; 3 uses
  %i.bz = phi i1 [ %.ph, %.loopexitthread-pre-split ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not.i.i.i31 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !152
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.ce) #18
  br label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit: ; preds = %.loopexit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i1 %i.bz
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11make_uniqueIN6hermes9SourceMapEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EES9_IS9_INS1_7SegmentESaISC_EESaISE_EES9_IN4llvh8OptionalINS0_6parser15JSONSharedValueEEESaISL_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #16 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !72
  %i.d = load ptr, ptr %1, align 8, !tbaa !88     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !74   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.f, ptr %i.a, align 8, !tbaa !87
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !88
  %i.i = load i64, ptr %i.a, align 8, !tbaa !87
  store i64 %i.i, ptr %i.c, align 8, !tbaa !60
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN6hermes9SourceMapC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt6vectorIS6_SaIS6_EEOS9_IS9_INS0_7SegmentESaISD_EESaISF_EEOS9_IN4llvh8OptionalINS_6parser15JSONSharedValueEEESaISN_EE.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !60
  store i8 %i.k, ptr %i.j, align 1, !tbaa !60
  br label %_ZN6hermes9SourceMapC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt6vectorIS6_SaIS6_EEOS9_IS9_INS0_7SegmentESaISD_EESaISF_EEOS9_IN4llvh8OptionalINS_6parser15JSONSharedValueEEESaISN_EE.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN6hermes9SourceMapC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt6vectorIS6_SaIS6_EEOS9_IS9_INS0_7SegmentESaISD_EESaISF_EEOS9_IN4llvh8OptionalINS_6parser15JSONSharedValueEEESaISN_EE.exit

_ZN6hermes9SourceMapC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt6vectorIS6_SaIS6_EEOS9_IS9_INS0_7SegmentESaISD_EESaISF_EEOS9_IN4llvh8OptionalINS_6parser15JSONSharedValueEEESaISN_EE.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !74
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !208
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !208
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94
  store ptr %i.t, ptr %i.r, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.v = load <2 x ptr>, ptr %3, align 8, !tbaa !209
  store <2 x ptr> %i.v, ptr %i.u, align 8, !tbaa !209
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !154
  store ptr %i.y, ptr %i.w, align 8, !tbaa !154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.aa = load <2 x ptr>, ptr %4, align 8, !tbaa !210
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !tbaa !210
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !103
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %0, align 8, !tbaa !211
  ret void
}

declare noundef i64 @_ZNK4llvh9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes15SourceMapParser12parseSegmentERKNS0_5StateERPKcS5_(ptr dead_on_unwind noalias writable writeonly sret(%"class.llvh::Optional.85") align 4 captures(none) initializes((28, 29)) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN6hermes9base64vlq6decodeERPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #17 ; 2 uses
  %i.b = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.c, align 4, !tbaa !212
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !190
  %.sroa.022.0.extract.trunc = trunc i64 %i.a to i32
  %i.e = add nsw i32 %i.d, %.sroa.022.0.extract.trunc ; 3 uses
  %i.f = tail call i64 @_ZN6hermes9base64vlq6decodeERPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #17 ; 2 uses
  %i.g = and i64 %i.f, 4294967296
  %.not78 = icmp eq i64 %i.g, 0
  br i1 %.not78, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.h, align 4, !tbaa !212
  store i32 %i.e, ptr %0, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.18.0..sroa_idx, align 4
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !213
  %.sroa.022.0.extract.trunc24 = trunc i64 %i.f to i32
  %i.k = add nsw i32 %i.j, %.sroa.022.0.extract.trunc24 ; 2 uses
  %i.l = tail call i64 @_ZN6hermes9base64vlq6decodeERPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #17 ; 2 uses
  %i.m = and i64 %i.l, 4294967296
  %.not80 = icmp eq i64 %i.m, 0
  br i1 %.not80, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.n, align 4, !tbaa !212
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !214
  %.sroa.022.0.extract.trunc26 = trunc i64 %i.l to i32
  %i.q = add nsw i32 %i.p, %.sroa.022.0.extract.trunc26 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeISt4pairImPKPN6hermes6parser10JSONStringEES0_IKS7_PNS2_15JSONHiddenClassEESt10_Select1stISB_ENS2_11JSONFactory18LessHiddenClassKeyESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E:bb.a
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219
  tail call void @_ZNSt8_Rb_treeISt4pairImPKPN6hermes6parser10JSONStringEES0_IKS7_PNS2_15JSONHiddenClassEESt10_Select1stISB_ENS2_11JSONFactory18LessHiddenClassKeyESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #18
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !221

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6hermes28BacktrackingBumpPtrAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes28BacktrackingBumpPtrAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN6hermes28BacktrackingBumpPtrAllocator8popScopeEv.exit
  %i.c = phi ptr [ %i.r, %_ZN6hermes28BacktrackingBumpPtrAllocator8popScopeEv.exit ], [ %i.b, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !222
  store ptr %i.e, ptr %i.a, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !223  ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph
  %i.j = zext i32 %i.i to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.j, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i ], [ %i.k, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !224  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !224
  tail call void %i.o(ptr noundef nonnull %i.n) #17, !inline_history !225
  br label %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i:    ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.l
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !226

_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i: ; preds = %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !29
  br label %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i

_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i: ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, %.lr.ph
  %i.p = phi ptr [ %.pre.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i ], [ %i.g, %.lr.ph ] ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZN6hermes28BacktrackingBumpPtrAllocator8popScopeEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i
  tail call void @free(ptr noundef %i.p) #17
  br label %_ZN6hermes28BacktrackingBumpPtrAllocator8popScopeEv.exit

_ZN6hermes28BacktrackingBumpPtrAllocator8popScopeEv.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #18
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !227

._crit_edge:                                      ; preds = %_ZN6hermes28BacktrackingBumpPtrAllocator8popScopeEv.exit, %bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.s, %._crit_edge ] ; 2 uses
  %i.v = load ptr, ptr %.05.i.i.i, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i1, label %_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6hermes28BacktrackingBumpPtrAllocator4SlabEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6hermes28BacktrackingBumpPtrAllocator4SlabEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 262144) #18
  br label %_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes28BacktrackingBumpPtrAllocator4SlabEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !228

_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, %._crit_edge
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i ], [ %i.s, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #18
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !145    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #19
  unreachable

_ZNKSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %i.j, 24
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 2 uses
  %i.p = load <2 x ptr>, ptr %2, align 8, !tbaa !177
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !177
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !152
  store ptr %i.s, ptr %i.q, align 8, !tbaa !152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.n, %_ZNKSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.t = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !177, !alias.scope !232, !noalias !229
  store <2 x ptr> %i.t, ptr %.012.i.i.i, align 8, !tbaa !177, !alias.scope !229, !noalias !232
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152, !alias.scope !232, !noalias !229
  store ptr %i.w, ptr %i.u, align 8, !tbaa !152, !alias.scope !229, !noalias !232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !232, !noalias !229
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !234

_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.y, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.af, %.lr.ph.i.i.i17 ], [ %i.z, %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ae, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !177, !alias.scope !238, !noalias !235
  store <2 x ptr> %i.aa, ptr %.012.i.i.i18, align 8, !tbaa !177, !alias.scope !235, !noalias !238
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !152, !alias.scope !238, !noalias !235
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !152, !alias.scope !235, !noalias !238
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !238, !noalias !235
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !234

_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.z, %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.af, %.lr.ph.i.i.i17 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !154
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aj) #18
  br label %_ZNSt12_Vector_baseISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !145
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !148
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.j
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !154
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10}
!8 = distinct !{!8, !9, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!9 = distinct !{!9, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!10 = distinct !{!10, !11, !"_ZSt11make_sharedIN6hermes28BacktrackingBumpPtrAllocatorEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!11 = distinct !{!11, !"_ZSt11make_sharedIN6hermes28BacktrackingBumpPtrAllocatorEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!12 = !{!13, !4, i64 8}
!13 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!14 = !{!10}
!15 = !{!13, !4, i64 12}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !6, i64 0}
!18 = !{!19, !4, i64 0}
!19 = !{!"_ZTSN6hermes28BacktrackingBumpPtrAllocator5StateE", !4, i64 0, !20, i64 8, !21, i64 16, !27, i64 32}
!20 = !{!"long", !5, i64 0}
!21 = !{!"_ZTSN4llvh11SmallVectorISt10unique_ptrIvPDoFvPvEELj0EEE", !22, i64 0}
!22 = !{!"_ZTSN4llvh15SmallVectorImplISt10unique_ptrIvPDoFvPvEEEE", !23, i64 0}
!23 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EEE", !24, i64 0}
!24 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonISt10unique_ptrIvPDoFvPvEEvEE", !25, i64 0}
!25 = !{!"_ZTSN4llvh15SmallVectorBaseE", !26, i64 0, !4, i64 8, !4, i64 12}
!26 = !{!"any pointer", !5, i64 0}
!27 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocator5StateE", !26, i64 0}
!28 = !{!19, !20, i64 8}
!29 = !{!25, !26, i64 0}
!30 = !{!31, !27, i64 24}
!31 = !{!"_ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !32, i64 0, !27, i64 24}
!32 = !{!"_ZTSSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !33, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS2_EE", !26, i64 0}
!37 = !{!38, !10}
!38 = distinct !{!38, !39, !"_ZSt11make_uniqueIN6hermes28BacktrackingBumpPtrAllocator4SlabEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!39 = distinct !{!39, !"_ZSt11make_uniqueIN6hermes28BacktrackingBumpPtrAllocator4SlabEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocator4SlabE", !26, i64 0}
!42 = !{!35, !36, i64 0}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 16}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 _ZTSN4llvh12MemoryBufferE", !26, i64 0}
!47 = distinct !{null, null, null}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes9SourceMapELb0EE", !50, i64 0}
!50 = !{!"p1 _ZTSN6hermes9SourceMapE", !26, i64 0}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSN4llvh9StringRefE", !53, i64 0, !20, i64 8}
!53 = !{!"p1 omnipotent char", !26, i64 0}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSN6hermes6parser9JSONValueE", !56, i64 0}
!56 = !{!"_ZTSN6hermes6parser8JSONKindE", !5, i64 0}
!57 = !{!58, !59, i64 17}
!58 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !59, i64 16, !59, i64 17}
!59 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!60 = !{!5, !5, i64 0}
!61 = !{!58, !59, i64 16}
!62 = !{!63, !64, i64 8}
!63 = !{!"_ZTSN6hermes6parser10JSONObjectE", !55, i64 0, !64, i64 8}
!64 = !{!"p1 _ZTSN6hermes6parser15JSONHiddenClassE", !26, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 _ZTSN6hermes6parser9JSONValueE", !26, i64 0}
!67 = !{!68, !71, i64 16}
!68 = !{!"_ZTSN6hermes6parser10JSONNumberE", !69, i64 0, !70, i64 8, !71, i64 16}
!69 = !{!"_ZTSN6hermes6parser10JSONScalarE", !55, i64 0}
!70 = !{!"_ZTSN4llvh14FoldingSetBase4NodeE", !26, i64 0}
!71 = !{!"double", !5, i64 0}
!72 = !{!73, !53, i64 0}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!74 = !{!75, !20, i64 8}
!75 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !73, i64 0, !20, i64 8, !5, i64 16}
!76 = !{!77, !78, i64 16}
!77 = !{!"_ZTSN6hermes6parser10JSONStringE", !69, i64 0, !70, i64 8, !78, i64 16}
!78 = !{!"p1 _ZTSN6hermes12UniqueStringE", !26, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!81 = distinct !{!81, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!84 = distinct !{!84, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!85 = !{!83, !80}
!86 = !{!52, !20, i64 8}
!87 = !{!20, !20, i64 0}
!88 = !{!75, !53, i64 0}
!89 = !{!90, !20, i64 8}
!90 = !{!"_ZTSN6hermes6parser9JSONArrayE", !55, i64 0, !20, i64 8}
!91 = !{!92, !93, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!93 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0}
!94 = !{!92, !93, i64 16}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!92, !93, i64 8}
!100 = !{!101, !102, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!102 = !{!"p1 _ZTSN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEE", !26, i64 0}
!103 = !{!101, !102, i64 16}
!104 = !{!105, !108, i64 24}
!105 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageIN6hermes6parser15JSONSharedValueELb0EEE", !106, i64 0, !108, i64 24}
!106 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIN6hermes6parser15JSONSharedValueEcccccccccEE", !107, i64 0}
!107 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm24EEE", !5, i64 0}
!108 = !{!"bool", !5, i64 0}
!109 = distinct !{!109, !96}
!110 = distinct !{!110, !98}
!111 = !{!101, !102, i64 8}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!114 = distinct !{!114, !"_ZNSt7__cxx119to_stringEj"}
!115 = distinct !{!115, !98}
!116 = distinct !{!116, !98}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!119 = distinct !{!119, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!122 = distinct !{!122, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!123 = !{i8 0, i8 2}
!124 = !{}
!125 = !{!126, !66, i64 0}
!126 = !{!"_ZTSN6hermes6parser15JSONSharedValueE", !66, i64 0, !127, i64 8}
!127 = !{!"_ZTSSt10shared_ptrIKN6hermes28BacktrackingBumpPtrAllocatorEE", !128, i64 0}
!128 = !{!"_ZTSSt12__shared_ptrIKN6hermes28BacktrackingBumpPtrAllocatorELN9__gnu_cxx12_Lock_policyE2EE", !129, i64 0, !130, i64 8}
!129 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !26, i64 0}
!130 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !131, i64 0}
!131 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0}
!132 = !{!129, !129, i64 0}
!133 = !{!130, !131, i64 0}
!134 = distinct !{null, null, null, null, null, null, null, null}
!135 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!138 = distinct !{!138, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!141 = distinct !{!141, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!142 = !{!140, !137}
!143 = distinct !{!143, !98}
!144 = !{!53, !53, i64 0}
!145 = !{!146, !147, i64 0}
!146 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EESaIS5_EE17_Vector_impl_dataE", !147, i64 0, !147, i64 8, !147, i64 16}
!147 = !{!"p1 _ZTSSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE", !26, i64 0}
!148 = !{!146, !147, i64 8}
!149 = !{!150, !151, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseIN6hermes9SourceMap7SegmentESaIS2_EE17_Vector_impl_dataE", !151, i64 0, !151, i64 8, !151, i64 16}
!151 = !{!"p1 _ZTSN6hermes9SourceMap7SegmentE", !26, i64 0}
!152 = !{!150, !151, i64 16}
!153 = distinct !{!153, !98}
!154 = !{!146, !147, i64 16}
end_hunk_1
