Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/Shape?download=true
begin_hunk_0_@_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd:bb.a
.preheader:                                       ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.aa to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit, %.preheader
  %i.ac = phi ptr [ %i.t, %.preheader ], [ %i.bf, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ad = phi ptr [ %i.u, %.preheader ], [ %i.bg, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ae = phi ptr [ %i.v, %.preheader ], [ %i.bh, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.024.035, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !13
  %.not32 = icmp eq ptr %i.af, %i.ag
  br i1 %.not32, label %._crit_edge38.loopexit, label %.lr.ph37, !llvm.loop !40

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
  %i.am = load double, ptr %i.al, align 8, !tbaa !33 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !41 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  store double %i.am, ptr %i.ak, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %i.ao, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !42
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
  store double %i.am, ptr %i.bb, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %i.ao, ptr %.sroa.6.0..sroa_idx19, align 8, !tbaa !41
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
  store ptr %i.ba, ptr %3, align 8, !tbaa !45
  store ptr %i.bd, ptr %i.f, align 8, !tbaa !42
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  store ptr %i.be, ptr %i.g, align 8, !tbaa !46
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.e
  %i.bf = phi ptr [ %i.ba, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ai, %bb.e ] ; 2 uses
  %i.bg = phi ptr [ %i.be, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.aj, %bb.e ] ; 2 uses
  %i.bh = phi ptr [ %i.bd, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ap, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

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
  %i.bi = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !46
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
  %.pre45 = load ptr, ptr %3, align 8, !tbaa !45
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
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !46
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not5 = icmp eq ptr %i.a, %i.c
  br i1 %.not5, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %.lr.ph ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.02.06 = phi ptr [ %i.m, %.lr.ph ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = load ptr, ptr %.sroa.02.06, align 8, !tbaa !19
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = trunc i64 %i.j to i32
  %i.l = add nsw i32 %.07, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !48
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen5Shape14orientContoursEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 6 uses
  %i.j = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.noexc92

.noexc92:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #20 ; 7 uses
  store i32 0, ptr %i.l, align 4, !tbaa !41
  %i.m = add nsw i64 %i.i, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph225.preheader, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %.noexc92
  %1 = getelementptr i8, ptr %i.l, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !41
  %i.o = trunc i64 %i.i to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph225.preheader, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit.a

.lr.ph225.preheader:                              ; preds = %.noexc92, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  br label %.lr.ph225

.preheader:                                       ; preds = %bb.ac
  %i.q = trunc i64 %i.gf to i32
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph229, label %._crit_edge230

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %bb.ac
  %i.s = phi ptr [ %i.ga, %bb.ac ], [ %i.e, %.lr.ph225.preheader ] ; 3 uses
  %i.t = phi ptr [ %i.gb, %bb.ac ], [ %i.d, %.lr.ph225.preheader ] ; 2 uses
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %bb.ac ], [ 0, %.lr.ph225.preheader ] ; 6 uses
  %.sroa.0121.0223 = phi ptr [ %.sroa.0121.6, %bb.ac ], [ null, %.lr.ph225.preheader ] ; 7 uses
  %.sroa.21.0222 = phi ptr [ %.sroa.21.5, %bb.ac ], [ null, %.lr.ph225.preheader ] ; 4 uses
  %.sroa.31.0221 = phi ptr [ %.sroa.31.6, %bb.ac ], [ null, %.lr.ph225.preheader ] ; 7 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv272
  %i.v = load i32, ptr %i.u, align 4, !tbaa !41
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %.lr.ph225
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %indvars.iv272 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke { double, double } %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, double noundef 0.000000e+00)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = extractvalue { double, double } %i.af, 1 ; 6 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv272 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !13 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %i.am = icmp ne ptr %i.aj, %i.al
  %i.an = fcmp ord double %i.ag, 0.000000e+00
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre = load ptr, ptr %i.be, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ap = phi ptr [ %i.al, %bb.e ], [ %i.bg, %._crit_edge.loopexit ]
  %i.aq = phi ptr [ %i.ah, %bb.e ], [ %i.bd, %._crit_edge.loopexit ]
  %i.ar = phi ptr [ %i.aj, %bb.e ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.063.lcssa = phi double [ %i.ag, %bb.e ], [ %i.bb, %._crit_edge.loopexit ] ; 2 uses
  %i.as = icmp ne ptr %i.ar, %i.ap
  %i.at = fcmp oeq double %i.ag, %.063.lcssa
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.lr.ph183, label %._crit_edge184

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.sroa.0118.0179 = phi ptr [ %i.bc, %bb.h ], [ %i.aj, %bb.e ] ; 2 uses
  %i.aw = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0118.0179)
          to label %bb.g unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %.lr.ph
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke { double, double } %i.az(ptr noundef nonnull align 8 dereferenceable(12) %i.aw, double noundef 1.000000e+00)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = extractvalue { double, double } %i.ba, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0118.0179, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv272 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !13 ; 2 uses
  %i.bh = icmp ne ptr %i.bc, %i.bg
  %i.bi = fcmp oeq double %i.ag, %i.bb
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %i.bj, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !49

bb.i:                                             ; preds = %bb.g, %.lr.ph
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

._crit_edge184:                                   ; preds = %bb.k, %._crit_edge
  %i.bl = phi ptr [ %i.aq, %._crit_edge ], [ %i.cc, %bb.k ] ; 2 uses
  %.164.lcssa = phi double [ %.063.lcssa, %._crit_edge ], [ %i.ca, %bb.k ]
  %i.bm = fmul double %.164.lcssa, f0x3FE3C6EF372FE950
  %i.bn = call noundef double @llvm.fmuladd.f64(double %i.ag, double f0x3FD8722191A02D60, double %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph211, label %._crit_edge212

.lr.ph183:                                        ; preds = %._crit_edge, %bb.k
  %.sroa.0113.0181 = phi ptr [ %i.cb, %bb.k ], [ %i.ar, %._crit_edge ] ; 2 uses
  %i.bv = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0113.0181)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %.lr.ph183
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke { double, double } %i.by(ptr noundef nonnull align 8 dereferenceable(12) %i.bv, double noundef f0x3FE3C6EF372FE950)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ca = extractvalue { double, double } %i.bz, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0113.0181, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %indvars.iv272
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !13
  %i.cg = icmp ne ptr %i.cb, %i.cf
  %i.ch = fcmp oeq double %i.ag, %i.ca
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %.lr.ph183, label %._crit_edge184, !llvm.loop !50

bb.l:                                             ; preds = %bb.j, %.lr.ph183
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

._crit_edge212:                                   ; preds = %._crit_edge202, %._crit_edge184
  %.sroa.31.1.lcssa = phi ptr [ %.sroa.31.0221, %._crit_edge184 ], [ %.sroa.31.2.lcssa, %._crit_edge202 ] ; 2 uses
  %.sroa.21.1.lcssa = phi ptr [ %.sroa.21.0222, %._crit_edge184 ], [ %.sroa.21.2.lcssa, %._crit_edge202 ] ; 3 uses
  %.sroa.0121.1.lcssa = phi ptr [ %.sroa.0121.0223, %._crit_edge184 ], [ %.sroa.0121.2.lcssa, %._crit_edge202 ] ; 11 uses
  %i.ck = icmp eq ptr %.sroa.0121.1.lcssa, %.sroa.21.1.lcssa
  br i1 %i.ck, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit, label %bb.t

.lr.ph211:                                        ; preds = %._crit_edge184, %._crit_edge202
  %i.cl = phi ptr [ %i.ct, %._crit_edge202 ], [ %i.bl, %._crit_edge184 ] ; 2 uses
  %i.cm = phi ptr [ %i.cu, %._crit_edge202 ], [ %i.bo, %._crit_edge184 ]
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %._crit_edge202 ], [ 0, %._crit_edge184 ] ; 5 uses
  %.sroa.0121.1208 = phi ptr [ %.sroa.0121.2.lcssa, %._crit_edge202 ], [ %.sroa.0121.0223, %._crit_edge184 ] ; 2 uses
  %.sroa.21.1207 = phi ptr [ %.sroa.21.2.lcssa, %._crit_edge202 ], [ %.sroa.21.0222, %._crit_edge184 ] ; 2 uses
  %.sroa.31.1206 = phi ptr [ %.sroa.31.2.lcssa, %._crit_edge202 ], [ %.sroa.31.0221, %._crit_edge184 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %indvars.iv259 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !13 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !13
  %.not131195 = icmp eq ptr %i.co, %i.cq
  br i1 %.not131195, label %._crit_edge202, label %.lr.ph201.preheader

.lr.ph201.preheader:                              ; preds = %.lr.ph211
  %i.cr = trunc nuw nsw i64 %indvars.iv259 to i32
  %i.cs = trunc nuw nsw i64 %indvars.iv259 to i32
  br label %.lr.ph201

._crit_edge202.loopexit:                          ; preds = %._crit_edge191
  %.pre278 = load ptr, ptr %i.c, align 8, !tbaa !8
  br label %._crit_edge202

._crit_edge202:                                   ; preds = %._crit_edge202.loopexit, %.lr.ph211
  %i.ct = phi ptr [ %i.cl, %.lr.ph211 ], [ %i.di, %._crit_edge202.loopexit ] ; 2 uses
  %i.cu = phi ptr [ %i.cm, %.lr.ph211 ], [ %.pre278, %._crit_edge202.loopexit ] ; 2 uses
  %.sroa.31.2.lcssa = phi ptr [ %.sroa.31.1206, %.lr.ph211 ], [ %.sroa.31.3.lcssa, %._crit_edge202.loopexit ] ; 2 uses
  %.sroa.21.2.lcssa = phi ptr [ %.sroa.21.1207, %.lr.ph211 ], [ %.sroa.21.3.lcssa, %._crit_edge202.loopexit ] ; 2 uses
  %.sroa.0121.2.lcssa = phi ptr [ %.sroa.0121.1208, %.lr.ph211 ], [ %.sroa.0121.3.lcssa, %._crit_edge202.loopexit ] ; 2 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 24
  %sext = shl i64 %i.cy, 32
  %i.cz = ashr exact i64 %sext, 32
  %i.da = icmp slt i64 %indvars.iv.next260, %i.cz
  br i1 %i.da, label %.lr.ph211, label %._crit_edge212, !llvm.loop !51

.lr.ph201:                                        ; preds = %.lr.ph201.preheader, %._crit_edge191
  %.sroa.0121.2199.a = phi ptr [ %.sroa.0121.3.lcssa, %._crit_edge191 ], [ %.sroa.0121.1208, %.lr.ph201.preheader ] ; 3 uses
  %.sroa.21.2198.a = phi ptr [ %.sroa.21.3.lcssa, %._crit_edge191 ], [ %.sroa.21.1207, %.lr.ph201.preheader ] ; 2 uses
  %.sroa.0108.0197 = phi ptr [ %i.dh, %._crit_edge191 ], [ %i.co, %.lr.ph201.preheader ] ; 2 uses
  %.sroa.31.2196 = phi ptr [ %.sroa.31.3.lcssa, %._crit_edge191 ], [ %.sroa.31.1206, %.lr.ph201.preheader ] ; 3 uses
  %i.db = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0108.0197)
          to label %bb.m unwind label %bb.n       ; 2 uses

bb.m:                                             ; preds = %.lr.ph201
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = invoke noundef i32 %i.de(ptr noundef nonnull align 8 dereferenceable(12) %i.db, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, double noundef %i.bn)
          to label %.preheader132 unwind label %bb.n ; 2 uses

.preheader132:                                    ; preds = %bb.m
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph190.preheader, label %._crit_edge191

.lr.ph190.preheader:                              ; preds = %.preheader132
  %wide.trip.count = zext nneg i32 %i.df to i64
  br label %.lr.ph190

._crit_edge191:                                   ; preds = %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit, %.preheader132
  %.sroa.31.3.lcssa = phi ptr [ %.sroa.31.2196, %.preheader132 ], [ %.sroa.31.8, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.21.3.lcssa = phi ptr [ %.sroa.21.2198.a, %.preheader132 ], [ %.sroa.21.6, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.0121.3.lcssa = phi ptr [ %.sroa.0121.2199.a, %.preheader132 ], [ %.sroa.0121.8, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0108.0197, i64 8 ; 2 uses
  %i.di = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %indvars.iv259
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !13
  %.not131 = icmp eq ptr %i.dh, %i.dl
  br i1 %.not131, label %._crit_edge202.loopexit, label %.lr.ph201, !llvm.loop !52

bb.n:                                             ; preds = %bb.m, %.lr.ph201
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph190:                                        ; preds = %.lr.ph190.preheader, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph190.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.sroa.0121.3188 = phi ptr [ %.sroa.0121.2199.a, %.lr.ph190.preheader ], [ %.sroa.0121.8, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 8 uses
  %.sroa.21.3187 = phi ptr [ %.sroa.21.2198.a, %.lr.ph190.preheader ], [ %.sroa.21.6, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 9 uses
  %.sroa.31.3186 = phi ptr [ %.sroa.31.2196, %.lr.ph190.preheader ], [ %.sroa.31.8, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.do = load double, ptr %i.dn, align 8, !tbaa !33 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !41 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.21.3187, %.sroa.31.3186
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph190
  store double %i.do, ptr %.sroa.21.3187, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.21.3187, i64 8
  store i32 %i.dq, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !41
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.21.3187, i64 12
  store i32 %i.cr, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !41
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit

bb.p:                                             ; preds = %.lr.ph190
  %i.dr = ptrtoint ptr %.sroa.21.3187 to i64
  %i.ds = ptrtoint ptr %.sroa.0121.3188 to i64
  %i.dt = sub i64 %i.dr, %i.ds                    ; 6 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775792
  br i1 %i.du, label %bb.q, label %_ZNKSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc93 unwind label %.loopexit.split-lp

.noexc93:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.dv = ashr exact i64 %i.dt, 4                 ; 3 uses
  %i.dw = icmp eq ptr %.sroa.21.3187, %.sroa.0121.3188
  %.sroa.speculated.i.i.i = select i1 %i.dw, i64 1, i64 %i.dv
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i, %i.dv ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dv
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 576460752303423487)
  %i.ea = select i1 %i.dy, i64 576460752303423487, i64 %i.dz ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eb = shl nuw nsw i64 %i.ea, 4
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #20
          to label %.noexc94 unwind label %.loopexit ; 4 uses

.noexc94:                                         ; preds = %_ZNKSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.dt ; 4 uses
  store double %i.do, ptr %i.ed, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 %i.dq, ptr %.sroa.6.0..sroa_idx102, align 8, !tbaa !41
  %.sroa.7.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i32 %i.cs, ptr %.sroa.7.0..sroa_idx104, align 4, !tbaa !41
  %i.ee = icmp sgt i64 %i.dt, 0
  br i1 %i.ee, label %bb.r, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i

bb.r:                                             ; preds = %.noexc94
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %.sroa.0121.3188, i64 %i.dt, i1 false)
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i: ; preds = %bb.r, %.noexc94
  %.not.i21.i.i = icmp eq ptr %.sroa.0121.3188, null
  br i1 %.not.i21.i.i, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.3188, i64 noundef %i.dt) #18
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.ea
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.o
  %.sroa.31.8 = phi ptr [ %i.ef, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.31.3186, %bb.o ] ; 2 uses
  %.pn = phi ptr [ %i.ed, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.21.3187, %bb.o ]
  %.sroa.0121.8 = phi ptr [ %i.ec, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0121.3188, %bb.o ] ; 2 uses
  %.sroa.21.6 = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge191, label %.lr.ph190, !llvm.loop !53

.loopexit:                                        ; preds = %_ZNKSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.t:                                             ; preds = %._crit_edge212
  %i.eg = ptrtoint ptr %.sroa.21.1.lcssa to i64
  %i.eh = ptrtoint ptr %.sroa.0121.1.lcssa to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 4                 ; 4 uses
  invoke void @qsort(ptr noundef nonnull %.sroa.0121.1.lcssa, i64 noundef %i.ej, i64 noundef 16, ptr noundef nonnull @_ZZN7msdfgen5Shape14orientContoursEvEN12Intersection7compareEPKvS3_)
          to label %.preheader134.a unwind label %bb.v

.preheader134.a:                                  ; preds = %bb.t
  %i.ek = trunc i64 %i.ej to i32                  ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 1
  br i1 %i.el, label %.lr.ph217.preheader, label %.preheader133

.lr.ph217.preheader:                              ; preds = %.preheader134.a
  %wide.trip.count265 = and i64 %i.ej, 2147483647 ; 2 uses
  %i.em = add nsw i64 %wide.trip.count265, -1     ; 3 uses
  %xtraiter = and i64 %i.em, 1
  %i.en = icmp eq i64 %wide.trip.count265, 2
  br i1 %i.en, label %.lr.ph217.epil.preheader, label %.lr.ph217.preheader.new

.lr.ph217.preheader.new:                          ; preds = %.lr.ph217.preheader
  %unroll_iter = and i64 %i.em, -2
  br label %.lr.ph217

.preheader133.loopexit.unr-lcssa:                 ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader133, label %.lr.ph217.epil.preheader

.lr.ph217.epil.preheader:                         ; preds = %.preheader133.loopexit.unr-lcssa, %.lr.ph217.preheader
  %indvars.iv262.epil.init = phi i64 [ 1, %.lr.ph217.preheader ], [ %indvars.iv.next263.1, %.preheader133.loopexit.unr-lcssa ]
  %lcmp.mod442 = trunc i64 %i.em to i1
  call void @llvm.assume(i1 %lcmp.mod442)
  %i.eo = getelementptr [16 x i8], ptr %.sroa.0121.1.lcssa, i64 %indvars.iv262.epil.init ; 4 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !54
  %i.eq = getelementptr i8, ptr %i.eo, i64 -16
  %i.er = load double, ptr %i.eq, align 8, !tbaa !54
  %i.es = fcmp oeq double %i.ep, %i.er
  br i1 %i.es, label %bb.u, label %.preheader133

bb.u:                                             ; preds = %.lr.ph217.epil.preheader
  %i.et = getelementptr i8, ptr %i.eo, i64 -8
  store i32 0, ptr %i.et, align 8, !tbaa !56
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 0, ptr %i.eu, align 8, !tbaa !56
  br label %.preheader133

.preheader133:                                    ; preds = %.preheader133.loopexit.unr-lcssa, %bb.u, %.lr.ph217.epil.preheader, %.preheader134.a
  %i.ev = icmp sgt i32 %i.ek, 0
  br i1 %i.ev, label %.lr.ph220.preheader, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit

.lr.ph220.preheader:                              ; preds = %.preheader133
  %wide.trip.count270 = and i64 %i.ej, 2147483647
  br label %.lr.ph220

bb.v:                                             ; preds = %bb.t
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph217:                                        ; preds = %bb.y, %.lr.ph217.preheader.new
  %indvars.iv262 = phi i64 [ 1, %.lr.ph217.preheader.new ], [ %indvars.iv.next263.1, %bb.y ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph217.preheader.new ], [ %niter.next.1, %bb.y ]
  %i.ex = getelementptr [16 x i8], ptr %.sroa.0121.1.lcssa, i64 %indvars.iv262 ; 4 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !54 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ex, i64 -16
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !54
  %i.fb = fcmp oeq double %i.ey, %i.fa
  br i1 %i.fb, label %bb.w, label %.lr.ph217.1

bb.w:                                             ; preds = %.lr.ph217
  %i.fc = getelementptr i8, ptr %i.ex, i64 -8
  store i32 0, ptr %i.fc, align 8, !tbaa !56
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 0, ptr %i.fd, align 8, !tbaa !56
  br label %.lr.ph217.1

.lr.ph217.1:                                      ; preds = %.lr.ph217, %bb.w
  %i.fe = getelementptr [16 x i8], ptr %.sroa.0121.1.lcssa, i64 %indvars.iv262 ; 3 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 16
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !54
  %i.fh = fcmp oeq double %i.fg, %i.ey
  br i1 %i.fh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph217.1
  %i.fi = getelementptr i8, ptr %i.fe, i64 8
  store i32 0, ptr %i.fi, align 8, !tbaa !56
  %i.fj = getelementptr i8, ptr %i.fe, i64 24
  store i32 0, ptr %i.fj, align 8, !tbaa !56
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph217.1
  %indvars.iv.next263.1 = add nuw nsw i64 %indvars.iv262, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader133.loopexit.unr-lcssa, label %.lr.ph217, !llvm.loop !57

.lr.ph220:                                        ; preds = %.lr.ph220.preheader, %bb.aa
  %indvars.iv267 = phi i64 [ 0, %.lr.ph220.preheader ], [ %indvars.iv.next268, %bb.aa ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0121.1.lcssa, i64 %indvars.iv267 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !56 ; 2 uses
  %.not65 = icmp eq i32 %i.fm, 0
  br i1 %.not65, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph220
  %i.fn = trunc nuw nsw i64 %indvars.iv267 to i32
  %i.fo = and i32 %i.fn, 1
  %i.fp = icmp sgt i32 %i.fm, 0
  %i.fq = zext i1 %i.fp to i32
  %i.fr = xor i32 %i.fo, %i.fq
  %i.fs = shl nuw nsw i32 %i.fr, 1
  %i.ft = add nsw i32 %i.fs, -1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !58
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !41
  %i.fz = add nsw i32 %i.ft, %i.fy
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !41
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph220, %bb.z
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit, label %.lr.ph220, !llvm.loop !59

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit: ; preds = %bb.aa, %.preheader133, %._crit_edge212
  %.sroa.21.4 = phi ptr [ %.sroa.21.1.lcssa, %._crit_edge212 ], [ %.sroa.0121.1.lcssa, %.preheader133 ], [ %.sroa.0121.1.lcssa, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.pre279 = load ptr, ptr %i.c, align 8, !tbaa !8
  %.pre280 = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.ac

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.v
  %.sroa.31.5 = phi ptr [ %.sroa.31.1.lcssa, %bb.v ], [ %.sroa.31.2196, %bb.n ], [ %.sroa.21.3187, %.loopexit ], [ %.sroa.21.3187, %.loopexit.split-lp ]
  %.sroa.0121.5 = phi ptr [ %.sroa.0121.1.lcssa, %bb.v ], [ %.sroa.0121.2199.a, %bb.n ], [ %.sroa.0121.3188, %.loopexit ], [ %.sroa.0121.3188, %.loopexit.split-lp ]
  %.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.v ], [ %i.dm, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ah

bb.ac:                                            ; preds = %.lr.ph225, %bb.b, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit
  %i.ga = phi ptr [ %i.s, %bb.b ], [ %.pre280, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %i.s, %.lr.ph225 ] ; 3 uses
  %i.gb = phi ptr [ %i.t, %bb.b ], [ %.pre279, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %i.t, %.lr.ph225 ] ; 3 uses
  %.sroa.31.6 = phi ptr [ %.sroa.31.0221, %bb.b ], [ %.sroa.31.1.lcssa, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %.sroa.31.0221, %.lr.ph225 ] ; 3 uses
  %.sroa.21.5 = phi ptr [ %.sroa.21.0222, %bb.b ], [ %.sroa.21.4, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %.sroa.21.0222, %.lr.ph225 ]
  %.sroa.0121.6 = phi ptr [ %.sroa.0121.0223, %bb.b ], [ %.sroa.0121.1.lcssa, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %.sroa.0121.0223, %.lr.ph225 ] ; 5 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = sdiv exact i64 %i.ge, 24                ; 2 uses
  %sext303 = shl i64 %i.gf, 32
  %i.gg = ashr exact i64 %sext303, 32
  %i.gh = icmp slt i64 %indvars.iv.next273, %i.gg
  br i1 %i.gh, label %.lr.ph225, label %.preheader, !llvm.loop !60

._crit_edge230:                                   ; preds = %bb.ag, %.preheader
  %.not.i.i.i95 = icmp eq ptr %.sroa.0121.6, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit.a, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge230
  %i.gi = ptrtoint ptr %.sroa.31.6 to i64
  %i.gj = ptrtoint ptr %.sroa.0121.6 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.6, i64 noundef %i.gk) #18
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit.a

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit.a: ; preds = %bb.ad, %._crit_edge230, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.idx375 = shl nuw nsw i64 %i.i, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %.idx375) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit.a
  ret void

.lr.ph229:                                        ; preds = %.preheader, %bb.ag
  %i.gl = phi ptr [ %i.gs, %bb.ag ], [ %i.ga, %.preheader ] ; 2 uses
  %i.gm = phi ptr [ %i.gt, %bb.ag ], [ %i.gb, %.preheader ]
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %bb.ag ], [ 0, %.preheader ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv275
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !41
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.lr.ph229
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %indvars.iv275
  invoke void @_ZN7msdfgen7Contour7reverseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gq)
          to label %._crit_edge281 unwind label %bb.af

._crit_edge281:                                   ; preds = %bb.ae
  %.pre282 = load ptr, ptr %i.c, align 8, !tbaa !8
  %.pre283 = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge281, %.lr.ph229
  %i.gs = phi ptr [ %.pre283, %._crit_edge281 ], [ %i.gl, %.lr.ph229 ] ; 2 uses
  %i.gt = phi ptr [ %.pre282, %._crit_edge281 ], [ %i.gm, %.lr.ph229 ] ; 2 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = sdiv exact i64 %i.gw, 24
  %sext304 = shl i64 %i.gx, 32
  %i.gy = ashr exact i64 %sext304, 32
  %i.gz = icmp slt i64 %indvars.iv.next276, %i.gy
  br i1 %i.gz, label %.lr.ph229, label %._crit_edge230, !llvm.loop !61

bb.ah:                                            ; preds = %bb.f, %bb.ab, %bb.l, %bb.i, %bb.af
  %.sroa.31.7 = phi ptr [ %.sroa.31.0221, %bb.i ], [ %.sroa.31.0221, %bb.l ], [ %.sroa.31.5, %bb.ab ], [ %.sroa.31.0221, %bb.f ], [ %.sroa.31.6, %bb.af ]
  %.sroa.0121.7 = phi ptr [ %.sroa.0121.0223, %bb.i ], [ %.sroa.0121.0223, %bb.l ], [ %.sroa.0121.5, %bb.ab ], [ %.sroa.0121.0223, %bb.f ], [ %.sroa.0121.6, %bb.af ] ; 3 uses
  %.pn68.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.i ], [ %i.cj, %bb.l ], [ %.pn.pn, %bb.ab ], [ %i.av, %bb.f ], [ %i.gr, %bb.af ]
  %.not.i.i.i97 = icmp eq ptr %.sroa.0121.7, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98.a, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ha = ptrtoint ptr %.sroa.31.7 to i64
  %i.hb = ptrtoint ptr %.sroa.0121.7 to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.7, i64 noundef %i.hc) #18
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98.a

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98.a: ; preds = %bb.ai, %bb.ah
  %.idx = shl nuw nsw i64 %i.i, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %.idx) #18
  resume { ptr, i32 } %.pn68.pn.pn
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZZN7msdfgen5Shape14orientContoursEvEN12Intersection7compareEPKvS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !54
  %i.b = load double, ptr %1, align 8, !tbaa !54
  %i.c = fsub double %i.a, %i.b                   ; 2 uses
  %i.d = fcmp ogt double %i.c, 0.000000e+00
  %i.e = zext i1 %i.d to i32
  %i.f = fcmp olt double %i.c, 0.000000e+00
  %.neg.i = sext i1 %i.f to i32
  %i.g = add nsw i32 %.neg.i, %i.e
  ret i32 %i.g
}

declare void @_ZN7msdfgen7Contour7reverseEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 2) i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !62, !range !68, !noundef !69
  %i.c = zext nneg i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(25) initializes((24, 25)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 8, !tbaa !62
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZNK7msdfgen16QuadraticSegment14convertToCubicEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN7msdfgen10EdgeHolderaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.r = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !13, !alias.scope !73, !noalias !70
  store <2 x ptr> %i.r, ptr %.012.i.i.i, align 8, !tbaa !13, !alias.scope !70, !noalias !73
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15, !alias.scope !73, !noalias !70
  store ptr %i.u, ptr %i.s, align 8, !tbaa !15, !alias.scope !70, !noalias !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !73, !noalias !70
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !75

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.ad, %.lr.ph.i.i.i27 ], [ %i.x, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i29 = phi ptr [ %i.ac, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i29, align 8, !tbaa !13, !alias.scope !79, !noalias !76
  store <2 x ptr> %i.y, ptr %.012.i.i.i28, align 8, !tbaa !13, !alias.scope !76, !noalias !79
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15, !alias.scope !79, !noalias !76
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !15, !alias.scope !76, !noalias !79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i29, i8 0, i64 24, i1 false), !alias.scope !79, !noalias !76
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !75

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.x, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ad, %.lr.ph.i.i.i27 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ah) #18
  br label %_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !17
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !12
  ret void

bb.d:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #17 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #18
  invoke void @__cxa_rethrow() #19
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.aj

bb.g:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #21
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7msdfgen10EdgeHolderEE8allocateEmPKv.exit.i.i.i, !prof !81

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorIN7msdfgen10EdgeHolderEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20
  br label %bb.c
end_hunk_0
