Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/Shape?download=true
inline.NumInlined: 510
inline.NumDeleted: 232
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd:bb.a
  %wide.trip.count = zext nneg i32 %i.aa to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit, %.preheader
  %i.ac = phi ptr [ %i.t, %.preheader ], [ %i.bf, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ad = phi ptr [ %i.u, %.preheader ], [ %i.bg, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ae = phi ptr [ %i.v, %.preheader ], [ %i.bh, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.024.035, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !18
  %.not32 = icmp eq ptr %i.af, %i.ag
  br i1 %.not32, label %._crit_edge38.loopexit, label %.lr.ph37, !llvm.loop !50

bb.d:                                             ; preds = %bb.c, %.lr.ph37
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit
  %i.ai = phi ptr [ %i.t, %.lr.ph.preheader ], [ %i.bf, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %i.aj = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.bg, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.ak = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.bh, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.am = load double, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  store double %i.am, ptr %i.ak, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %i.ao, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !54
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.aq = ptrtoint ptr %i.aj to i64
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775792
  br i1 %i.at, label %bb.g, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.au = ashr exact i64 %i.as, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = call i64 @llvm.umin.i64(i64 %i.av, i64 576460752303423487)
  %i.ay = select i1 %i.aw, i64 576460752303423487, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #20
          to label %.noexc14 unwind label %.loopexit ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 3 uses
  store double %i.am, ptr %i.bb, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %i.ao, ptr %.sroa.6.0..sroa_idx19, align 8, !tbaa !30
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.h, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.h:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ai, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.h, %.noexc14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.as) #18
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ba, ptr %3, align 8, !tbaa !55
  store ptr %i.bd, ptr %i.f, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  store ptr %i.be, ptr %i.g, align 8, !tbaa !56
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.e
  %i.bf = phi ptr [ %i.ba, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ai, %bb.e ] ; 2 uses
  %i.bg = phi ptr [ %i.be, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.aj, %bb.e ] ; 2 uses
  %i.bh = phi ptr [ %i.bd, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ap, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %._crit_edge43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bi = load ptr, ptr %3, align 8, !tbaa !55    ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !56
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #18
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.l:                                             ; preds = %._crit_edge43
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %.pre45 = load ptr, ptr %3, align 8, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d, %bb.l
  %i.bp = phi ptr [ %.pre45, %bb.l ], [ %i.t, %bb.d ], [ %i.ai, %.loopexit ], [ %i.ai, %.loopexit.split-lp ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.l ], [ %i.ah, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not.i.i.i16 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit17, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !56
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #18
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit17

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit17: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %.not5 = icmp eq ptr %i.a, %i.c
  br i1 %.not5, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %.lr.ph ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.02.06 = phi ptr [ %i.m, %.lr.ph ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = load ptr, ptr %.sroa.02.06, align 8, !tbaa !23
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = trunc i64 %i.j to i32
  %i.l = add nsw i32 %.07, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen5Shape14orientContoursEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 4 uses
  %1 = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %1, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc92

.noexc92:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #20 ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !30
  %i.m = add nsw i64 %i.i, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc92
  %i.o = getelementptr i8, ptr %i.k, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !30
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc92, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.l, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc92 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0126.0 = phi ptr [ %i.k, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc92 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 24
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph226, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit

.preheader:                                       ; preds = %bb.ac
  %i.x = trunc i64 %i.gm to i32
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph230, label %._crit_edge231

.lr.ph226:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %bb.ac
  %i.z = phi ptr [ %i.gh, %bb.ac ], [ %i.q, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 3 uses
  %i.aa = phi ptr [ %i.gi, %bb.ac ], [ %i.p, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 2 uses
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %bb.ac ], [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 6 uses
  %.sroa.0121.0224 = phi ptr [ %.sroa.0121.6, %bb.ac ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 7 uses
  %.sroa.21.0223 = phi ptr [ %.sroa.21.5, %bb.ac ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 4 uses
  %.sroa.31.0222 = phi ptr [ %.sroa.31.6, %bb.ac ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 7 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.0, i64 %indvars.iv273
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !30
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %.lr.ph226
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %indvars.iv273 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke { double, double } %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.ai, double noundef 0.000000e+00)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = extractvalue { double, double } %i.am, 1 ; 6 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %indvars.iv273 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !18 ; 2 uses
  %i.at = icmp ne ptr %i.aq, %i.as
  %i.au = fcmp ord double %i.an, 0.000000e+00
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre = load ptr, ptr %i.bl, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.aw = phi ptr [ %i.as, %bb.e ], [ %i.bn, %._crit_edge.loopexit ]
  %i.ax = phi ptr [ %i.ao, %bb.e ], [ %i.bk, %._crit_edge.loopexit ]
  %i.ay = phi ptr [ %i.aq, %bb.e ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.055.lcssa = phi double [ %i.an, %bb.e ], [ %i.bi, %._crit_edge.loopexit ] ; 2 uses
  %i.az = icmp ne ptr %i.ay, %i.aw
  %i.ba = fcmp oeq double %i.an, %.055.lcssa
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %i.bb, label %.lr.ph184, label %._crit_edge185

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.sroa.0118.0180 = phi ptr [ %i.bj, %bb.h ], [ %i.aq, %bb.e ] ; 2 uses
  %i.bd = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0118.0180)
          to label %bb.g unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %.lr.ph
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke { double, double } %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.bd, double noundef 1.000000e+00)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = extractvalue { double, double } %i.bh, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0118.0180, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv273 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18 ; 2 uses
  %i.bo = icmp ne ptr %i.bj, %i.bn
  %i.bp = fcmp oeq double %i.an, %i.bi
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !58

bb.i:                                             ; preds = %bb.g, %.lr.ph
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

._crit_edge185:                                   ; preds = %bb.k, %._crit_edge
  %i.bs = phi ptr [ %i.ax, %._crit_edge ], [ %i.cj, %bb.k ] ; 2 uses
  %.1.lcssa = phi double [ %.055.lcssa, %._crit_edge ], [ %i.ch, %bb.k ]
  %i.bt = fmul double %.1.lcssa, f0x3FE3C6EF372FE950
  %i.bu = call noundef double @llvm.fmuladd.f64(double %i.an, double f0x3FD8722191A02D60, double %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bs to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = sdiv exact i64 %i.by, 24
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph212, label %._crit_edge213

.lr.ph184:                                        ; preds = %._crit_edge, %bb.k
  %.sroa.0113.0182 = phi ptr [ %i.ci, %bb.k ], [ %i.ay, %._crit_edge ] ; 2 uses
  %i.cc = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0113.0182)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %.lr.ph184
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke { double, double } %i.cf(ptr noundef nonnull align 8 dereferenceable(12) %i.cc, double noundef f0x3FE3C6EF372FE950)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = extractvalue { double, double } %i.cg, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0113.0182, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %indvars.iv273
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !18
  %i.cn = icmp ne ptr %i.ci, %i.cm
  %i.co = fcmp oeq double %i.an, %i.ch
  %i.cp = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %i.cp, label %.lr.ph184, label %._crit_edge185, !llvm.loop !59

bb.l:                                             ; preds = %bb.j, %.lr.ph184
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

._crit_edge213:                                   ; preds = %._crit_edge203, %._crit_edge185
  %.sroa.31.1.lcssa = phi ptr [ %.sroa.31.0222, %._crit_edge185 ], [ %.sroa.31.2.lcssa, %._crit_edge203 ] ; 2 uses
  %.sroa.21.1.lcssa = phi ptr [ %.sroa.21.0223, %._crit_edge185 ], [ %.sroa.21.2.lcssa, %._crit_edge203 ] ; 3 uses
  %.sroa.0121.1.lcssa = phi ptr [ %.sroa.0121.0224, %._crit_edge185 ], [ %.sroa.0121.2.lcssa, %._crit_edge203 ] ; 11 uses
  %i.cr = icmp eq ptr %.sroa.0121.1.lcssa, %.sroa.21.1.lcssa
  br i1 %i.cr, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit, label %bb.t

.lr.ph212:                                        ; preds = %._crit_edge185, %._crit_edge203
  %i.cs = phi ptr [ %i.da, %._crit_edge203 ], [ %i.bs, %._crit_edge185 ] ; 2 uses
  %i.ct = phi ptr [ %i.db, %._crit_edge203 ], [ %i.bv, %._crit_edge185 ]
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %._crit_edge203 ], [ 0, %._crit_edge185 ] ; 5 uses
  %.sroa.0121.1209 = phi ptr [ %.sroa.0121.2.lcssa, %._crit_edge203 ], [ %.sroa.0121.0224, %._crit_edge185 ] ; 2 uses
  %.sroa.21.1208 = phi ptr [ %.sroa.21.2.lcssa, %._crit_edge203 ], [ %.sroa.21.0223, %._crit_edge185 ] ; 2 uses
  %.sroa.31.1207 = phi ptr [ %.sroa.31.2.lcssa, %._crit_edge203 ], [ %.sroa.31.0222, %._crit_edge185 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %indvars.iv260 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !18 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !18
  %.not132196 = icmp eq ptr %i.cv, %i.cx
  br i1 %.not132196, label %._crit_edge203, label %.lr.ph202.preheader

end_hunk_0
