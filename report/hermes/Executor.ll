inline.NumInlined: 1116
inline.NumDeleted: 393
begin_hunk_0_@_ZN6hermes5regex22searchWithBytecodeImplIDsNS0_16UTF16RegexTraitsEEENS0_18MatchRuntimeResultEN4llvh8ArrayRefIhEEPKT_jjPSt6vectorINS0_13CapturedRangeESaISB_EENS0_9constants13MatchFlagTypeENS_18StackOverflowGuardE:bb.a
  %i.k = load i16, ptr %0, align 1, !tbaa !10     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i16, ptr %i.l, align 1, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %.sroa.0.6.i = and i8 %i.o, 127
  %i.p = zext i16 %i.k to i32                     ; 3 uses
  %i.q = zext i16 %i.m to i32                     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  store ptr %0, ptr %8, align 8, !tbaa !13
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %6, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 %.sroa.0.6.i, ptr %i.t, align 4, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %2, ptr %i.u, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.d, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %i.p, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 %i.q, ptr %i.x, align 4, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i32 0, ptr %i.z, align 4, !tbaa !34
  %.06.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store i32 -1, ptr %.06.i.i.i.ptr.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 -1, ptr %.06.i.i.i.ptr.1.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 -1, ptr %.06.i.i.i.ptr.2.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i32 -1, ptr %.06.i.i.i.ptr.3.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i32 -1, ptr %.06.i.i.i.ptr.4.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i32 -1, ptr %.06.i.i.i.ptr.5.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i32 -1, ptr %.06.i.i.i.ptr.6.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %8, i64 112
  store i32 -1, ptr %.06.i.i.i.ptr.7.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.8.i.i = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i32 -1, ptr %.06.i.i.i.ptr.8.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.9.i.i = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i32 -1, ptr %.06.i.i.i.ptr.9.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.10.i.i = getelementptr inbounds nuw i8, ptr %8, i64 136
  store i32 -1, ptr %.06.i.i.i.ptr.10.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.11.i.i = getelementptr inbounds nuw i8, ptr %8, i64 144
  store i32 -1, ptr %.06.i.i.i.ptr.11.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.12.i.i = getelementptr inbounds nuw i8, ptr %8, i64 152
  store i32 -1, ptr %.06.i.i.i.ptr.12.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.13.i.i = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i32 -1, ptr %.06.i.i.i.ptr.13.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.14.i.i = getelementptr inbounds nuw i8, ptr %8, i64 168
  store i32 -1, ptr %.06.i.i.i.ptr.14.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.15.i.i = getelementptr inbounds nuw i8, ptr %8, i64 176
  store i32 -1, ptr %.06.i.i.i.ptr.15.i.i, align 8, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 184
  store i32 1073741824, ptr %i.aa, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  store ptr %2, ptr %9, align 8, !tbaa !36
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.d, ptr %.sroa.463.0..sroa_idx, align 8, !tbaa !36
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.b, ptr %.sroa.564.0..sroa_idx, align 8, !tbaa !36
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.d, ptr %.sroa.665.0..sroa_idx, align 8, !tbaa !36
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 0, ptr %i.ab, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 5 uses
  %i.ad = zext i16 %i.k to i64                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 60
  store i32 16, ptr %i.ag, align 4, !tbaa !54
  store i32 0, ptr %i.af, align 8, !tbaa !55
  %i.ah = icmp ugt i16 %i.k, 16
  br i1 %i.ah, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %i.ac, ptr noundef nonnull %i.ae, i64 noundef %i.ad, i64 noundef 8) #10
  %.pre.i.i = load ptr, ptr %i.ac, align 8, !tbaa !53
  store i32 %i.p, ptr %i.af, align 8, !tbaa !55
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.i

bb.c:                                             ; preds = %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit
  store i32 %i.p, ptr %i.af, align 8, !tbaa !55
  %.not5.i.i.i.i.i.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorIN6hermes5regex13CapturedRangeELj16EEC2EmRKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.i.preheader.i:                 ; preds = %bb.c, %.thread.i
  %i.ai = phi ptr [ %.pre.i.i, %.thread.i ], [ %i.ae, %bb.c ]
  %i.aj = shl nuw nsw i64 %i.ad, 3
  call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 -1, i64 %i.aj, i1 false)
  br label %_ZN4llvh11SmallVectorIN6hermes5regex13CapturedRangeELj16EEC2EmRKS3_.exit.i

_ZN4llvh11SmallVectorIN6hermes5regex13CapturedRangeELj16EEC2EmRKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 4 uses
  %i.al = zext i16 %i.m to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 4 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 204
  store i32 16, ptr %i.ao, align 4, !tbaa !54
  store i32 0, ptr %i.an, align 8, !tbaa !55
  %i.ap = icmp ugt i16 %i.m, 16
  br i1 %i.ap, label %.thread11.i, label %bb.d

.thread11.i:                                      ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex13CapturedRangeELj16EEC2EmRKS3_.exit.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull %i.am, i64 noundef %i.al, i64 noundef 8) #10
  %.pre.i7.i = load ptr, ptr %i.ak, align 8, !tbaa !53
  store i32 %i.q, ptr %i.an, align 8, !tbaa !55
  br label %.lr.ph.i.i.i.i.i.i.i4.preheader.i

bb.d:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex13CapturedRangeELj16EEC2EmRKS3_.exit.i
  store i32 %i.q, ptr %i.an, align 8, !tbaa !55
  %.not5.i.i.i.i.i.i.i3.i = icmp eq i16 %i.m, 0
  br i1 %.not5.i.i.i.i.i.i.i3.i, label %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit, label %.lr.ph.i.i.i.i.i.i.i4.preheader.i

.lr.ph.i.i.i.i.i.i.i4.preheader.i:                ; preds = %bb.d, %.thread11.i
  %i.aq = phi ptr [ %.pre.i7.i, %.thread11.i ], [ %i.am, %bb.d ]
  %i.ar = shl nuw nsw i64 %i.al, 3
  call void @llvm.memset.p0.i64(ptr align 4 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit

_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i4.preheader.i
  %i.as = load i8, ptr %i.e, align 1, !tbaa !7
  %i.at = and i8 %i.as, 2
  %.not = icmp ne i8 %i.at, 0
  %i.au = and i32 %6, 8
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = or i1 %i.av, %.not
  %i.ax = call { i8, ptr } @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE5matchEPNS0_5StateIS2_EEb(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %9, i1 noundef zeroext %i.aw) ; 2 uses
  %i.ay = extractvalue { i8, ptr } %i.ax, 0
  %i.az = extractvalue { i8, ptr } %i.ax, 1       ; 2 uses
  %i.ba = icmp eq i8 %i.ay, 0
  br i1 %i.ba, label %bb.e, label %bb.s

bb.e:                                             ; preds = %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit
  %.not38 = icmp eq ptr %i.az, null               ; 2 uses
  %.not39 = icmp eq ptr %5, null
  %or.cond = or i1 %.not39, %.not38
  br i1 %or.cond, label %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = lshr exact i64 %i.bd, 1                 ; 2 uses
  %i.bf = load ptr, ptr %.sroa.564.0..sroa_idx, align 8, !tbaa !56
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.bc                    ; 2 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !57    ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, %i.bi
  br i1 %.not.i.i, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !60
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit: ; preds = %bb.f, %bb.g
  %i.bl = phi ptr [ %i.bk, %bb.f ], [ %i.bi, %bb.g ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !61
  %.not.i.i40 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit
  %.sroa.5.0.insert.ext = shl i64 %i.bh, 31
  %.sroa.5.0.insert.shift = and i64 %.sroa.5.0.insert.ext, -4294967296
  %.sroa.0.0.insert.ext = and i64 %i.be, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.bl, align 4
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !60
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = ptrtoint ptr %i.bi to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.j, label %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bu = ashr exact i64 %i.bs, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bu ; 2 uses
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bv, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #12 ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bs ; 2 uses
  %.sroa.5.0.insert.ext47 = shl i64 %i.bh, 31
  %.sroa.5.0.insert.shift48 = and i64 %.sroa.5.0.insert.ext47, -4294967296
  %.sroa.0.0.insert.ext43 = and i64 %i.be, 4294967295
  %.sroa.0.0.insert.insert45 = or disjoint i64 %.sroa.5.0.insert.shift48, %.sroa.0.0.insert.ext43
  store i64 %.sroa.0.0.insert.insert45, ptr %i.bz, align 4
  %i.ca = icmp sgt i64 %i.bs, 0
  br i1 %i.ca, label %bb.k, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.by, ptr align 4 %i.bi, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bs) #13
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.by, ptr %5, align 8, !tbaa !57
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !60
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.cc, ptr %i.bm, align 8, !tbaa !61
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.h, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.pre.i.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.h ], [ %i.cb, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.cd = icmp eq i16 %i.k, 0
  br i1 %i.cd, label %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit
  %i.ce = load ptr, ptr %i.ac, align 8, !tbaa !53
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.cf = phi ptr [ %.pre.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cz, %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.07.i.i.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %i.db, %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %i.da, %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.cg = load ptr, ptr %i.bm, align 8, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = load i64, ptr %.056.i.i.i.i.i.i.i, align 4
  store i64 %i.ch, ptr %i.cf, align 4
  %i.ci = load ptr, ptr %i.bj, align 8, !tbaa !60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.bj, align 8, !tbaa !60
  br label %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ck = load ptr, ptr %5, align 8, !tbaa !57    ; 4 uses
  %i.cl = ptrtoint ptr %i.cf to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 6 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775800
  br i1 %i.co, label %bb.p, label %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.cp = ashr exact i64 %i.cn, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, %i.cp ; 2 uses
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.cq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i)
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #12 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cn ; 2 uses
  %i.cv = load i64, ptr %.056.i.i.i.i.i.i.i, align 4
  store i64 %i.cv, ptr %i.cu, align 4
  %i.cw = icmp sgt i64 %i.cn, 0
  br i1 %i.cw, label %bb.q, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ct, ptr align 4 %i.ck, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cn) #13
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ct, ptr %5, align 8, !tbaa !57
  store ptr %i.cx, ptr %i.bj, align 8, !tbaa !60
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.cy, ptr %i.bm, align 8, !tbaa !61
  br label %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i.i.i.i.i, %bb.n
  %i.cz = phi ptr [ %i.cj, %bb.n ], [ %i.cx, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.i.i, i64 8
  %i.db = add nsw i64 %.07.i.i.i.i.i.i.i, -1
  %i.dc = icmp sgt i64 %.07.i.i.i.i.i.i.i, 1
  br i1 %i.dc, label %bb.m, label %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit, !llvm.loop !62

_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit, %bb.e
  %spec.select = zext i1 %.not38 to i32
  br label %bb.s

bb.s:                                             ; preds = %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit, %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit
  %.1 = phi i32 [ 2, %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit ], [ %spec.select, %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit ]
  %i.dd = load ptr, ptr %i.ak, align 8, !tbaa !53 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.am
  br i1 %i.de, label %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.dd) #10
  br label %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i

_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i: ; preds = %bb.t, %bb.s
  %i.df = load ptr, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ae
  br i1 %i.dg, label %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i
  call void @free(ptr noundef %i.df) #10
  br label %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit

_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.dh = load i32, ptr %i.y, align 8
  %i.di = and i32 %i.dh, 1
  %.not.i.i.i.i41 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i.i.i41, label %bb.v, label %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEED2Ev.exit

bb.v:                                             ; preds = %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit
  %i.dj = load ptr, ptr %.06.i.i.i.ptr.i.i, align 8, !tbaa !64
  call void @_ZdlPv(ptr noundef %i.dj) #10
  br label %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEED2Ev.exit

_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEED2Ev.exit: ; preds = %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit.thread

_ZNK6hermes5regex6CursorINS0_16UTF16RegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit.thread: ; preds = %bb.b, %bb.a, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEED2Ev.exit
  %.2 = phi i32 [ %.1, %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEED2Ev.exit ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes5regex18searchWithBytecodeEN4llvh8ArrayRefIhEEPKcjjPSt6vectorINS0_13CapturedRangeESaIS7_EENS0_9constants13MatchFlagTypeENS_18StackOverflowGuardE(ptr %0, i64 %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef readonly byval(%"class.hermes::StackOverflowGuard") align 8 captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6hermes5regex22searchWithBytecodeImplIcNS0_16ASCIIRegexTraitsEEENS0_18MatchRuntimeResultEN4llvh8ArrayRefIhEEPKT_jjPSt6vectorINS0_13CapturedRangeESaISB_EENS0_9constants13MatchFlagTypeENS_18StackOverflowGuardE(ptr %0, i64 %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull byval(%"class.hermes::StackOverflowGuard") align 8 %7)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes5regex22searchWithBytecodeImplIcNS0_16ASCIIRegexTraitsEEENS0_18MatchRuntimeResultEN4llvh8ArrayRefIhEEPKT_jjPSt6vectorINS0_13CapturedRangeESaISB_EENS0_9constants13MatchFlagTypeENS_18StackOverflowGuardE(ptr %0, i64 %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef byval(%"class.hermes::StackOverflowGuard") align 8 %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.hermes::regex::Context.23", align 8 ; 13 uses
  %9 = alloca %"struct.hermes::regex::State.24", align 8 ; 17 uses
  %i.a = zext i32 %3 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
  %i.c = zext i32 %4 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !7
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 1
  %.not.i = icmp eq i32 %i.h, 0
  %i.i = and i32 %6, 4
  %.not4.i = icmp eq i32 %i.i, 0
  %or.cond.i = or i1 %.not4.i, %.not.i
  br i1 %or.cond.i, label %bb.b, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = and i32 %i.g, 2
  %.not5.i = icmp eq i32 %i.j, 0
  %.not6.i = icmp eq i32 %3, 0
  %or.cond67 = or i1 %.not6.i, %.not5.i
  br i1 %or.cond67, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit, label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit.thread

_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit: ; preds = %bb.b
  %i.k = load i16, ptr %0, align 1, !tbaa !10     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i16, ptr %i.l, align 1, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %.sroa.0.6.i = and i8 %i.o, 127
  %i.p = zext i16 %i.k to i32                     ; 3 uses
  %i.q = zext i16 %i.m to i32                     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  store ptr %0, ptr %8, align 8, !tbaa !13
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %6, ptr %i.s, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 %.sroa.0.6.i, ptr %i.t, align 4, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %2, ptr %i.u, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.d, ptr %i.v, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %i.p, ptr %i.w, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 %i.q, ptr %i.x, align 4, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i32 1073741824, ptr %i.y, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  store ptr %2, ptr %9, align 8, !tbaa !13
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.d, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !13
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.b, ptr %.sroa.563.0..sroa_idx, align 8, !tbaa !13
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.d, ptr %.sroa.664.0..sroa_idx, align 8, !tbaa !13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 0, ptr %i.z, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 5 uses
  %i.ab = zext i16 %i.k to i64                    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 60
  store i32 16, ptr %i.ae, align 4, !tbaa !54
  store i32 0, ptr %i.ad, align 8, !tbaa !55
  %i.af = icmp ugt i16 %i.k, 16
  br i1 %i.af, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %i.aa, ptr noundef nonnull %i.ac, i64 noundef %i.ab, i64 noundef 8) #10
  %.pre.i.i = load ptr, ptr %i.aa, align 8, !tbaa !53
  store i32 %i.p, ptr %i.ad, align 8, !tbaa !55
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.i

bb.c:                                             ; preds = %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit
  store i32 %i.p, ptr %i.ad, align 8, !tbaa !55
  %.not5.i.i.i.i.i.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorIN6hermes5regex13CapturedRangeELj16EEC2EmRKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.i.preheader.i:                 ; preds = %bb.c, %.thread.i
  %i.ag = phi ptr [ %.pre.i.i, %.thread.i ], [ %i.ac, %bb.c ]
  %i.ah = shl nuw nsw i64 %i.ab, 3
  call void @llvm.memset.p0.i64(ptr align 4 %i.ag, i8 -1, i64 %i.ah, i1 false)
  br label %_ZN4llvh11SmallVectorIN6hermes5regex13CapturedRangeELj16EEC2EmRKS3_.exit.i

_ZN4llvh11SmallVectorIN6hermes5regex13CapturedRangeELj16EEC2EmRKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 4 uses
  %i.aj = zext i16 %i.m to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 4 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 204
  store i32 16, ptr %i.am, align 4, !tbaa !54
  store i32 0, ptr %i.al, align 8, !tbaa !55
  %i.an = icmp ugt i16 %i.m, 16
  br i1 %i.an, label %.thread11.i, label %bb.d

.thread11.i:                                      ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex13CapturedRangeELj16EEC2EmRKS3_.exit.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull %i.ak, i64 noundef %i.aj, i64 noundef 8) #10
  %.pre.i7.i = load ptr, ptr %i.ai, align 8, !tbaa !53
  store i32 %i.q, ptr %i.al, align 8, !tbaa !55
  br label %.lr.ph.i.i.i.i.i.i.i4.preheader.i

bb.d:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex13CapturedRangeELj16EEC2EmRKS3_.exit.i
  store i32 %i.q, ptr %i.al, align 8, !tbaa !55
  %.not5.i.i.i.i.i.i.i3.i = icmp eq i16 %i.m, 0
  br i1 %.not5.i.i.i.i.i.i.i3.i, label %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit, label %.lr.ph.i.i.i.i.i.i.i4.preheader.i

.lr.ph.i.i.i.i.i.i.i4.preheader.i:                ; preds = %bb.d, %.thread11.i
  %i.ao = phi ptr [ %.pre.i7.i, %.thread11.i ], [ %i.ak, %bb.d ]
  %i.ap = shl nuw nsw i64 %i.aj, 3
  call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 0, i64 %i.ap, i1 false)
  br label %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit

_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i4.preheader.i
  %i.aq = load i8, ptr %i.e, align 1, !tbaa !7
  %i.ar = and i8 %i.aq, 2
  %.not = icmp ne i8 %i.ar, 0
  %i.as = and i32 %6, 8
  %i.at = icmp ne i32 %i.as, 0
  %i.au = or i1 %i.at, %.not
  %i.av = call { i8, ptr } @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE5matchEPNS0_5StateIS2_EEb(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull %9, i1 noundef zeroext %i.au) ; 2 uses
  %i.aw = extractvalue { i8, ptr } %i.av, 0
  %i.ax = extractvalue { i8, ptr } %i.av, 1       ; 2 uses
  %i.ay = icmp eq i8 %i.aw, 0
  br i1 %i.ay, label %bb.e, label %bb.s

bb.e:                                             ; preds = %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit
  %.not38 = icmp eq ptr %i.ax, null               ; 2 uses
  %.not39 = icmp eq ptr %5, null
  %or.cond = or i1 %.not39, %.not38
  br i1 %or.cond, label %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = load ptr, ptr %.sroa.563.0..sroa_idx, align 8, !tbaa !78
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ba                    ; 2 uses
  %i.bf = load ptr, ptr %5, align 8, !tbaa !57    ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !60 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.bf
  br i1 %.not.i.i, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !60
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit: ; preds = %bb.f, %bb.g
  %i.bi = phi ptr [ %i.bh, %bb.f ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !61
  %.not.i.i40 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i.i40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit
  %.sroa.5.0.insert.ext = shl i64 %i.be, 32
  %.sroa.0.0.insert.ext = and i64 %i.bb, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.bi, align 4
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !60
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  store ptr %i.bm, ptr %i.bg, align 8, !tbaa !60
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE5clearEv.exit
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bf to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 6 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.j, label %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.br = ashr exact i64 %i.bp, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #12 ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bp ; 2 uses
  %.sroa.5.0.insert.ext46 = shl i64 %i.be, 32
  %.sroa.0.0.insert.ext42 = and i64 %i.bb, 4294967295
  %.sroa.0.0.insert.insert44 = or disjoint i64 %.sroa.5.0.insert.ext46, %.sroa.0.0.insert.ext42
  store i64 %.sroa.0.0.insert.insert44, ptr %i.bw, align 4
  %i.bx = icmp sgt i64 %i.bp, 0
  br i1 %i.bx, label %bb.k, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 4 %i.bf, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bp) #13
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bv, ptr %5, align 8, !tbaa !57
  store ptr %i.by, ptr %i.bg, align 8, !tbaa !60
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.bz, ptr %i.bj, align 8, !tbaa !61
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.h, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.pre.i.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.by, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ca = icmp eq i16 %i.k, 0
  br i1 %i.ca, label %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit
  %i.cb = load ptr, ptr %i.aa, align 8, !tbaa !53
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.cc = phi ptr [ %.pre.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cw, %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.07.i.i.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cy, %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cx, %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.cd = load ptr, ptr %i.bj, align 8, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = load i64, ptr %.056.i.i.i.i.i.i.i, align 4
  store i64 %i.ce, ptr %i.cc, align 4
  %i.cf = load ptr, ptr %i.bg, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.bg, align 8, !tbaa !60
  br label %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ch = load ptr, ptr %5, align 8, !tbaa !57    ; 4 uses
  %i.ci = ptrtoint ptr %i.cc to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 6 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %bb.p, label %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.cm = ashr exact i64 %i.ck, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, %i.cm ; 2 uses
  %i.co = call i64 @llvm.umin.i64(i64 %i.cn, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.cn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i)
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #12 ; 4 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.ck ; 2 uses
  %i.cs = load i64, ptr %.056.i.i.i.i.i.i.i, align 4
  store i64 %i.cs, ptr %i.cr, align 4
  %i.ct = icmp sgt i64 %i.ck, 0
  br i1 %i.ct, label %bb.q, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr align 4 %i.ch, i64 %i.ck, i1 false)
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.ck) #13
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i.i.i.i.i.i
  store ptr %i.cq, ptr %5, align 8, !tbaa !57
  store ptr %i.cu, ptr %i.bg, align 8, !tbaa !60
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.cv, ptr %i.bj, align 8, !tbaa !61
  br label %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i.i.i.i.i, %bb.n
  %i.cw = phi ptr [ %i.cg, %bb.n ], [ %i.cu, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i.i.i.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.i.i, i64 8
  %i.cy = add nsw i64 %.07.i.i.i.i.i.i.i, -1
  %i.cz = icmp sgt i64 %.07.i.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.m, label %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit, !llvm.loop !62

_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN6hermes5regex13CapturedRangeESaIS3_EEEaSERKS3_.exit.i.i.i.i.i.i.i, %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EE9push_backEOS2_.exit, %bb.e
  %spec.select = zext i1 %.not38 to i32
  br label %bb.s

bb.s:                                             ; preds = %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit
  %.1 = phi i32 [ 2, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEEC2ENS0_6CursorIS2_EEjj.exit ], [ %spec.select, %_ZSt6copy_nIPN6hermes5regex13CapturedRangeEtSt20back_insert_iteratorISt6vectorIS2_SaIS2_EEEET1_T_T0_S9_.exit ]
  %i.da = load ptr, ptr %i.ai, align 8, !tbaa !53 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.ak
  br i1 %i.db, label %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.da) #10
  br label %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i

_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i: ; preds = %bb.t, %bb.s
  %i.dc = load ptr, ptr %i.aa, align 8, !tbaa !53 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ac
  br i1 %i.dd, label %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i
  call void @free(ptr noundef %i.dc) #10
  br label %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit

_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit.thread

_ZNK6hermes5regex6CursorINS0_16ASCIIRegexTraitsEE20satisfiesConstraintsENS0_9constants13MatchFlagTypeEh.exit.thread: ; preds = %bb.b, %bb.a, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit
  %.2 = phi i32 [ %.1, %_ZN6hermes5regex5StateINS0_16ASCIIRegexTraitsEED2Ev.exit ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i8, ptr } @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE5matchEPNS0_5StateIS2_EEb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector.8", align 8 ; 45 uses
  %4 = alloca %"struct.hermes::regex::State", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 25 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  store i32 64, ptr %i.c, align 4, !tbaa !54
  %i.d = load ptr, ptr %0, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 49 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 53 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 1
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = select i1 %2, i64 1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !81
  %i.u = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load i64, ptr %i.v, align 8, !tbaa !82
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ah = icmp eq ptr %4, %1                      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 204
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 20 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 15 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit
  %.0350983 = phi i64 [ 0, %.preheader ], [ %.1.i594, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit ] ; 3 uses
  %.sroa.0718.0982 = phi i8 [ undef, %.preheader ], [ %.sroa.0718.49891.ph, %_ZNK6hermes5regex7ContextINS0_16UTF16RegexTraitsEE18advanceStringIndexEPKDsmm.exit ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.0350983 ; 3 uses
  store ptr %i.at, ptr %i.h, align 8, !tbaa !56
  store i32 %i.g, ptr %i.f, align 8, !tbaa !39
  br label %bb.gq

bb.c:                                             ; preds = %bb.gq
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !56  ; 2 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !83
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load i8, ptr %i.ar, align 4
  %i.ay = and i8 %i.ax, 4
  %.not.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i, label %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 -2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !84
  switch i16 %i.ba, label %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit [
    i16 8232, label %bb.g
    i16 13, label %bb.g
    i16 10, label %bb.g
    i16 8233, label %bb.g
  ]

_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit: ; preds = %bb.e, %bb.d
  %i.bb = call i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0710.0.extract.trunc = trunc i16 %i.bb to i8 ; 2 uses
  %i.bc = icmp eq i8 %.sroa.0710.0.extract.trunc, 0
  br i1 %i.bc, label %bb.f, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !86

bb.f:                                             ; preds = %_ZN6hermes5regex17matchesLeftAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit
  %i.bd = and i16 %i.bb, 256
  %.not959 = icmp eq i16 %i.bd, 0
  br i1 %.not959, label %.critedge409.thread894, label %.backedge

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.e, %bb.e, %bb.e
  %i.be = add i32 %i.ahz, 1
  store i32 %i.be, ptr %i.f, align 8, !tbaa !39
  br label %.backedge

bb.h:                                             ; preds = %bb.gq
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !56  ; 2 uses
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.h
  %i.bi = load i8, ptr %i.ar, align 4
  %i.bj = and i8 %i.bi, 4
  %.not67.i = icmp eq i8 %i.bj, 0
  br i1 %.not67.i, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread, label %bb.i

bb.i:                                             ; preds = %.thread.i
  %i.bk = load i16, ptr %i.bf, align 2, !tbaa !84
  switch i16 %i.bk, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread [
    i16 8232, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread751
    i16 13, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread751
    i16 10, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread751
    i16 8233, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread751
  ]

_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit: ; preds = %bb.h
  %i.bl = load i32, ptr %i.y, align 8, !tbaa !18
  %i.bm = and i32 %i.bl, 2
  %.not.i426 = icmp eq i32 %i.bm, 0
  br i1 %.not.i426, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread751, label %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread

_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread: ; preds = %bb.i, %.thread.i, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit
  %i.bn = call i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %1) ; 2 uses
  %.sroa.0707.0.extract.trunc = trunc i16 %i.bn to i8 ; 2 uses
  %i.bo = icmp eq i8 %.sroa.0707.0.extract.trunc, 0
  br i1 %i.bo, label %bb.j, label %_ZN4llvh6detail10scope_exitIZN6hermes5regex7ContextINS3_16UTF16RegexTraitsEE5matchEPNS3_5StateIS5_EEbEUlvE_ED2Ev.exit, !prof !86

bb.j:                                             ; preds = %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread
  %i.bp = and i16 %i.bn, 256
  %.not958 = icmp eq i16 %i.bp, 0
  br i1 %.not958, label %.critedge409.thread894, label %.backedge

_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit.thread751: ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %_ZN6hermes5regex18matchesRightAnchorINS0_16UTF16RegexTraitsEEEbRNS0_7ContextIT_EERNS0_5StateIS4_EE.exit
  %i.bq = add i32 %i.ahz, 1
  store i32 %i.bq, ptr %i.f, align 8, !tbaa !39
  br label %.backedge

bb.k:                                             ; preds = %bb.gq
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !56  ; 2 uses
  %i.bs = load ptr, ptr %i.ao, align 8, !tbaa !87
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.n
end_hunk_0
