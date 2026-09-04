Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/IndexMapping?download=true
inline.NumInlined: 167
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK16OpenColorIO_v2_512IndexMapping8validateEv:bb.a
bb.b:                                             ; preds = %bb.c
  %i.e = add i32 %.010, 1                         ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !12
  %i.h = icmp ugt i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.i = phi i64 [ 1, %.lr.ph ], [ %i.f, %bb.b ]  ; 2 uses
  %.010 = phi i32 [ 1, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  tail call void @_ZNK16OpenColorIO_v2_512IndexMapping13validateIndexEm(ptr noundef nonnull readonly align 8 dereferenceable(88) %0, i64 noundef %i.i)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !23
  %i.o = add i32 %.010, -1
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  tail call void @_ZNK16OpenColorIO_v2_512IndexMapping13validateIndexEm(ptr noundef nonnull readonly align 8 dereferenceable(88) %0, i64 noundef %i.p)
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !23
  %i.v = fcmp ugt float %i.l, %i.s
  %i.w = fcmp ugt float %i.n, %i.u
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull @.str.3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.x) #17
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_512IndexMappingeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(88) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %.preheader, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 3 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !16   ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp eq i64 %i.m, %i.s
  br i1 %i.t, label %bb.c, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread

bb.c:                                             ; preds = %.preheader
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not9.i.i.i.i.i.i, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.011.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %i.u = load float, ptr %.0810.i.i.i.i.i.i, align 4, !tbaa !21
  %i.v = load float, ptr %.011.i.i.i.i.i.i, align 4, !tbaa !21
  %i.w = fcmp une float %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 4
  %i.y = load float, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 4
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fcmp une float %i.y, %i.aa
  %.not5.i = select i1 %i.w, i1 true, i1 %i.ab
  br i1 %.not5.i, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !32

_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit: ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 3 uses
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !16 ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !18
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp eq i64 %i.al, %i.ar
  br i1 %i.as, label %bb.e, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread

bb.e:                                             ; preds = %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit
  %.not9.i.i.i.i.i.i.1 = icmp eq ptr %i.ai, %i.ah
  br i1 %.not9.i.i.i.i.i.i.1, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.1, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i.i.1 = phi ptr [ %i.bc, %bb.f ], [ %i.ao, %bb.e ] ; 3 uses
  %.0810.i.i.i.i.i.i.1 = phi ptr [ %i.bb, %bb.f ], [ %i.ai, %bb.e ] ; 3 uses
  %i.at = load float, ptr %.0810.i.i.i.i.i.i.1, align 4, !tbaa !21
  %i.au = load float, ptr %.011.i.i.i.i.i.i.1, align 4, !tbaa !21
  %i.av = fcmp une float %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.1, i64 4
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.1, i64 4
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fcmp une float %i.ax, %i.az
  %.not5.i.1 = select i1 %i.av, i1 true, i1 %i.ba
  br i1 %.not5.i.1, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.1
  %i.bb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.1, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.1, i64 8
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.bb, %i.ah
  br i1 %.not.i.i.i.i.i.i.1, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !32

_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.1: ; preds = %bb.f, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18 ; 3 uses
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !16 ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !18
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !16 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp eq i64 %i.bk, %i.bq
  br i1 %i.br, label %bb.g, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread

bb.g:                                             ; preds = %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.1
  %.not9.i.i.i.i.i.i.2 = icmp eq ptr %i.bh, %i.bg
  br i1 %.not9.i.i.i.i.i.i.2, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread, label %.lr.ph.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.2
  %.011.i.i.i.i.i.i.2 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.2 ], [ %i.bn, %bb.g ] ; 3 uses
  %.0810.i.i.i.i.i.i.2 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.2 ], [ %i.bh, %bb.g ] ; 3 uses
  %i.bs = load float, ptr %.0810.i.i.i.i.i.i.2, align 4, !tbaa !21
  %i.bt = load float, ptr %.011.i.i.i.i.i.i.2, align 4, !tbaa !21
  %i.bu = fcmp oeq float %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.2, i64 4
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.2, i64 4
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = fcmp oeq float %i.bw, %i.by
  %.not5.i.2.not = select i1 %i.bu, i1 %i.bz, i1 false ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.2, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.2, i64 8
  %.not.i.i.i.i.i.i.2 = icmp ne ptr %i.ca, %i.bg
  %or.cond.not = select i1 %.not5.i.2.not, i1 %.not.i.i.i.i.i.i.2, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i.i.2, label %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread, !llvm.loop !32

_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.2, %.preheader, %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.1, %bb.g, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %.not5.i.2.not, %.lr.ph.i.i.i.i.i.i.2 ], [ true, %bb.g ], [ false, %.lr.ph.i.i.i.i.i.i.1 ], [ false, %.preheader ], [ false, %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.1 ], [ false, %_ZStneISt4pairIffESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit ], [ false, %.lr.ph.i.i.i.i.i.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIffESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt4pairIffEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt4pairIffEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !22
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !18
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt4pairIffESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
  unreachable

_ZNKSt6vectorISt4pairIffESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #19 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !22
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIffESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIffESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorISt4pairIffESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairIffESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.x = load i64, ptr %.0911.i.i.i, align 4, !alias.scope !38, !noalias !37
  store i64 %i.x, ptr %.012.i.i.i, align 4, !alias.scope !37, !noalias !38
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIffESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !36

_ZNSt6vectorISt4pairIffESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt4pairIffESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #16
  br label %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseISt4pairIffESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairIffEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"_ZTSN16OpenColorIO_v2_512IndexMappingE", !10, i64 8, !4, i64 16}
!12 = !{!11, !10, i64 8}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTSSt4pairIffE", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseISt4pairIffESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 16}
!18 = !{!15, !14, i64 8}
!19 = !{!"float", !4, i64 0}
!20 = !{!"_ZTSSt4pairIffE", !19, i64 0, !19, i64 4}
!21 = !{!20, !19, i64 0}
!22 = !{!19, !19, i64 0}
!23 = !{!20, !19, i64 4}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{ptr @_ZN16OpenColorIO_v2_512IndexMappingD2Ev}
!26 = !{!"p1 omnipotent char", !13, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !10, i64 8, !4, i64 16}
!29 = !{!28, !26, i64 0}
!30 = !{!4, !4, i64 0}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !"_ZSt19__relocate_object_aISt4pairIffES1_SaIS1_EEvPT_PT0_RT1_"}
!34 = distinct !{!34, !33, !"_ZSt19__relocate_object_aISt4pairIffES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!35 = distinct !{!35, !33, !"_ZSt19__relocate_object_aISt4pairIffES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!36 = distinct !{!36, !24}
!37 = !{!34}
!38 = !{!35}
end_hunk_0
