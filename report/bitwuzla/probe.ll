Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/probe?download=true
inline.NumInlined: 764
inline.NumDeleted: 349
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal20probe_dominator_lratEiPNS_6ClauseE:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ax = sub nsw i32 0, %i.ar                    ; 4 uses
  %i.ay = icmp eq i32 %1, %i.ax
  br i1 %i.ay, label %_ZNSt6vectorImSaImEE9push_backERKm.exit36, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true) ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !187
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ba ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 1            ; 2 uses
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %_ZNSt6vectorImSaImEE9push_backERKm.exit36, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = or disjoint i32 %i.bd, 1
  store i32 %i.bf, ptr %i.bc, align 1
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !188 ; 4 uses
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !189
  %.not.i25 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ax, ptr %i.bg, align 4, !tbaa !184
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store ptr %i.bi, ptr %i.m, align 8, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.m:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !190 ; 4 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 5 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775804
  br i1 %i.bn, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bo = ashr exact i64 %i.bm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i26 = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i26, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 2305843009213693951)
  %i.bs = select i1 %i.bq, i64 2305843009213693951, i64 %i.br ; 3 uses
  %.not.i.i.i27 = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i27)
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #18 ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bm ; 2 uses
  store i32 %i.ax, ptr %i.bv, align 4, !tbaa !184
  %i.bw = icmp sgt i64 %i.bm, 0
  br i1 %i.bw, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %i.bj, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.not.i17.i.i28 = icmp eq ptr %i.bj, null
  br i1 %.not.i17.i.i28, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bj) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bu, ptr %i.l, align 8, !tbaa !190
  store ptr %i.bx, ptr %i.m, align 8, !tbaa !188
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.by, ptr %i.n, align 8, !tbaa !189
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.bz = load ptr, ptr %i.o, align 8, !tbaa !191
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.ba ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.ca, align 8, !tbaa !184
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !192 ; 2 uses
  %.not23 = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not23, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.not24 = icmp eq ptr %.sroa.42.0.copyload, null
  br i1 %.not24, label %_ZNSt6vectorImSaImEE9push_backERKm.exit36, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN7CaDiCaL8Internal20probe_dominator_lratEiPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, ptr noundef nonnull %.sroa.42.0.copyload)
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit36

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.cb = tail call noundef i32 @llvm.fshl.i32(i32 %i.az, i32 %i.ax, i32 1)
  %i.cc = sext i32 %i.cb to i64
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !171
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !181 ; 2 uses
  %i.cg = load ptr, ptr %i.r, align 8, !tbaa !172 ; 4 uses
  %i.ch = load ptr, ptr %i.s, align 8, !tbaa !180
  %.not.i29 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i29, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !181
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ci, ptr %i.r, align 8, !tbaa !172
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit36

bb.u:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr %i.q, align 8, !tbaa !171 ; 4 uses
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 5 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775800
  br i1 %i.cn, label %bb.v, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30: ; preds = %bb.u
  %i.co = ashr exact i64 %i.cm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i.i31, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %.not.i.i.i32 = icmp ne i64 %i.cs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i32)
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #18 ; 4 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.cm ; 2 uses
  store i64 %i.cf, ptr %i.cv, align 8, !tbaa !181
  %i.cw = icmp sgt i64 %i.cm, 0
  br i1 %i.cw, label %bb.w, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33

bb.w:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr align 8 %i.cj, i64 %i.cm, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33: ; preds = %bb.w, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.not.i17.i.i34 = icmp eq ptr %i.cj, null
  br i1 %.not.i17.i.i34, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i35, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33
  tail call void @_ZdlPv(ptr noundef nonnull %i.cj) #16
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i35

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i35: ; preds = %bb.x, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33
  store ptr %i.cu, ptr %i.q, align 8, !tbaa !171
  store ptr %i.cx, ptr %i.r, align 8, !tbaa !172
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cs
  store ptr %i.cy, ptr %i.s, align 8, !tbaa !180
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit36

_ZNSt6vectorImSaImEE9push_backERKm.exit36:        ; preds = %bb.i, %bb.r, %bb.q, %bb.j, %bb.t, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i35, %bb.h
  %i.cz = getelementptr inbounds nuw i8, ptr %.02043, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cz, %i.i
  br i1 %.not, label %._crit_edge, label %bb.h

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN7CaDiCaL8Internal15probe_dominatorEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 2 uses
  %.not22 = icmp eq i32 %1, %2
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = tail call noundef i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.d = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !194
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.i = phi i32 [ %.pre, %.lr.ph ], [ %i.x, %bb.c ] ; 2 uses
  %.pn.in26 = phi i32 [ %i.c, %.lr.ph ], [ %i.w, %bb.c ]
  %.01824 = phi i32 [ %2, %.lr.ph ], [ %spec.select.i6, %bb.c ] ; 2 uses
  %.02023 = phi i32 [ %1, %.lr.ph ], [ %.121, %bb.c ] ; 2 uses
  %.pn = zext nneg i32 %.pn.in26 to i64
  %storemerge = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.pn
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !194  ; 2 uses
  %i.l = icmp sgt i32 %i.i, %i.k                  ; 2 uses
  %.121 = select i1 %i.l, i32 %.01824, i32 %.02023 ; 6 uses
  %i.m = tail call noundef i32 @llvm.abs.i32(i32 %.121, i1 true)
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !184  ; 2 uses
  %3 = icmp slt i32 %.121, 0
  %4 = sub nsw i32 0, %i.p
  %spec.select.i = select i1 %3, i32 %4, i32 %i.p
  %.not5 = icmp eq i32 %spec.select.i, 0
  br i1 %.not5, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.119 = select i1 %i.l, i32 %.02023, i32 %.01824 ; 2 uses
  %i.q = tail call noundef i32 @llvm.abs.i32(i32 %.119, i1 true)
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !184  ; 3 uses
  %i.u = icmp slt i32 %.119, 0
  %i.v = sub nsw i32 0, %i.t
  %spec.select.i6 = select i1 %i.u, i32 %i.v, i32 %i.t ; 2 uses
  %i.w = tail call i32 @llvm.abs.i32(i32 %i.t, i1 true)
  %.not = icmp eq i32 %.121, %spec.select.i6
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.k)
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ %.121, %bb.b ], [ %.121, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal21probe_assign_decisionEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !195
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !195
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2184 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !190
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 2
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2192 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !237  ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2200 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !238
  %.not.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.o, align 4, !tbaa !184
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.m, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !184
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !184
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 2147483647, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.r, ptr %i.n, align 8, !tbaa !237
  br label %_ZNSt6vectorIN7CaDiCaL5LevelESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !239  ; 5 uses
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775792
  br i1 %i.w, label %bb.d, label %_ZNKSt6vectorIN7CaDiCaL5LevelESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
  unreachable

_ZNKSt6vectorIN7CaDiCaL5LevelESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.x = ashr exact i64 %i.v, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 576460752303423487)
  %i.ab = select i1 %i.z, i64 576460752303423487, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 4
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #18 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v ; 4 uses
  store i32 %1, ptr %i.ae, align 4, !tbaa !184
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.m, ptr %.sroa.5.0..sroa_idx3, align 4, !tbaa !184
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 0, ptr %.sroa.6.0..sroa_idx5, align 4, !tbaa !184
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 2147483647, ptr %.sroa.7.0..sroa_idx7, align 4, !tbaa !184
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.o
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5LevelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7CaDiCaL5LevelESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ad, %_ZNKSt6vectorIN7CaDiCaL5LevelESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %_ZNKSt6vectorIN7CaDiCaL5LevelESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !240, !alias.scope !241
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.o
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5LevelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !236

_ZNSt6vectorIN7CaDiCaL5LevelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5LevelESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZNKSt6vectorIN7CaDiCaL5LevelESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5LevelESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5LevelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #16
  br label %_ZNSt6vectorIN7CaDiCaL5LevelESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7CaDiCaL5LevelESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN7CaDiCaL5LevelESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !239
  store ptr %i.ah, ptr %i.n, align 8, !tbaa !237
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !238
  br label %_ZNSt6vectorIN7CaDiCaL5LevelESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN7CaDiCaL5LevelESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN7CaDiCaL5LevelESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  tail call void @_ZN7CaDiCaL8Internal12probe_assignEii(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL8Internal12probe_assignEii(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.c = zext nneg i32 %i.a to i64                ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !191
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.c ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !195  ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !196
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !188
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !190
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.p, ptr %i.q, align 4, !tbaa !194
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !197
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !197
  %.not = icmp eq i32 %i.g, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %.not, ptr null, ptr %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !198
  store ptr null, ptr %i.u, align 8, !tbaa !199
  %i.y = icmp slt i32 %1, 0
  %i.z = sub nsw i32 0, %2
  %spec.select.i = select i1 %i.y, i32 %i.z, i32 %2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !190
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.c
  store i32 %spec.select.i, ptr %i.ac, align 4, !tbaa !184
  %i.ad = load i32, ptr %i.f, align 4, !tbaa !195
  %.not8 = icmp eq i32 %i.ad, 0
  br i1 %.not8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8Internal17learn_unit_clauseEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ae = tail call i8 @llvm.scmp.i8.i32(i32 %1, i32 0) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !185
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.c
  store i8 %i.ae, ptr %i.ah, align 1, !tbaa !186
  %i.ai = sub nsw i8 0, %i.ae
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !185
  %i.ak = sub nsw i32 0, %i.a
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  store i8 %i.ai, ptr %i.am, align 1, !tbaa !186
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !188 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !189
  %.not.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.an, align 4, !tbaa !184
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !190 ; 4 uses
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 5 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775804
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal16probe_propagate2Ev:bb.a
  %i.br = lshr exact i64 %i.bq, 2
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !194
  %i.bu = load i64, ptr %i.p, align 8, !tbaa !197
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.p, align 8, !tbaa !197
  %.not.i = icmp eq i32 %i.bl, 0
  %i.bw = load ptr, ptr %i.m, align 8
  %i.bx = select i1 %.not.i, ptr null, ptr %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !198
  store ptr null, ptr %i.m, align 8, !tbaa !199
  %i.bz = icmp slt i32 %i.bg, 0
  %spec.select.i.i = select i1 %i.bz, i32 %i.ak, i32 %i.aj
  %i.ca = load ptr, ptr %i.q, align 8, !tbaa !190
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bi
  store i32 %spec.select.i.i, ptr %i.cb, align 4, !tbaa !184
  %i.cc = load i32, ptr %i.o, align 4, !tbaa !195
  %.not8.i = icmp eq i32 %i.cc, 0
  br i1 %.not8.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN7CaDiCaL8Internal17learn_unit_clauseEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.bg)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cd = tail call i8 @llvm.scmp.i8.i32(i32 %i.bg, i32 0) ; 2 uses
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !185
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bi
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !186
  %i.cg = sub nsw i8 0, %i.cd
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !185
  %i.ci = sub nsw i32 0, %i.bh
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 %i.cj
  store i8 %i.cg, ptr %i.ck, align 1, !tbaa !186
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !188 ; 4 uses
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.bg, ptr %i.cl, align 4, !tbaa !184
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  store ptr %i.cn, ptr %i.c, align 8, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.j:                                             ; preds = %bb.h
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !190 ; 4 uses
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 5 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775804
  br i1 %i.cs, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ct = ashr exact i64 %i.cr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 2305843009213693951)
  %i.cx = select i1 %i.cv, i64 2305843009213693951, i64 %i.cw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #18 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cr ; 2 uses
  store i32 %i.bg, ptr %i.da, align 4, !tbaa !184
  %i.db = icmp sgt i64 %i.cr, 0
  br i1 %i.db, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.co, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.co) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cz, ptr %i.b, align 8, !tbaa !190
  store ptr %i.dc, ptr %i.c, align 8, !tbaa !188
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.dd, ptr %i.r, align 8, !tbaa !189
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.i
  %i.de = phi ptr [ %i.dc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.cn, %bb.i ] ; 2 uses
  %i.df = load i32, ptr %i.o, align 4, !tbaa !195
  %.not9.i = icmp eq i32 %i.df, 0
  br i1 %.not9.i, label %_ZN7CaDiCaL8Internal12probe_assignEii.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %i.dg = load i64, ptr %i.s, align 8, !tbaa !200
  %i.dh = trunc i64 %i.dg to i32
  %i.di = tail call noundef i32 @llvm.fshl.i32(i32 %i.bh, i32 %i.bg, i32 1)
  %i.dj = zext i32 %i.di to i64
  %i.dk = load ptr, ptr %i.t, align 8, !tbaa !190
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dj
  store i32 %i.dh, ptr %i.dl, align 4, !tbaa !184
  br label %_ZN7CaDiCaL8Internal12probe_assignEii.exit

_ZN7CaDiCaL8Internal12probe_assignEii.exit:       ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i, %bb.n
  %i.dm = load ptr, ptr %i.u, align 8, !tbaa !171 ; 2 uses
  %i.dn = load ptr, ptr %i.v, align 8, !tbaa !172
  %.not.i.i15 = icmp eq ptr %i.dn, %i.dm
  br i1 %.not.i.i15, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN7CaDiCaL8Internal12probe_assignEii.exit
  store ptr %i.dm, ptr %i.v, align 8, !tbaa !172
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %_ZN7CaDiCaL8Internal12probe_assignEii.exit, %bb.c, %bb.e, %.lr.ph
  %i.do = phi ptr [ %i.de, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ], [ %i.de, %_ZN7CaDiCaL8Internal12probe_assignEii.exit ], [ %i.at, %bb.c ], [ %i.at, %bb.e ], [ %i.at, %.lr.ph ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.016.021, i64 16 ; 2 uses
  %.not19 = icmp eq ptr %i.dp, %i.as
  br i1 %.not19, label %.loopexit.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN7CaDiCaL8Internal20hyper_binary_resolveEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !184  ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %.idx = shl nsw i64 %i.d, 2
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4688 ; 2 uses
  %i.g = load <2 x i64>, ptr %i.f, align 8, !tbaa !181
  %i.h = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.d, i64 1
  %i.i = add nsw <2 x i64> %i.g, %i.h
  store <2 x i64> %i.i, ptr %i.f, align 8, !tbaa !181
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !184
  %i.l = sub nsw i32 0, %i.k                      ; 2 uses
  %.not60 = icmp eq i32 %i.c, 2
  br i1 %.not60, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr %1, ptr %i.m, align 8, !tbaa !199
  br label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !191  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.04263 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  %.04362 = phi i32 [ %i.l, %.lr.ph ], [ %.144, %bb.f ] ; 5 uses
  %.04561 = phi ptr [ %i.n, %.lr.ph ], [ %i.as, %bb.f ] ; 2 uses
  %i.s = load i32, ptr %.04561, align 4, !tbaa !184 ; 2 uses
  %i.t = sub nsw i32 0, %i.s                      ; 2 uses
  %i.u = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true) ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.v
  %i.x = load i32, ptr %i.w, align 8, !tbaa !196
  %.not52 = icmp eq i32 %i.x, 0
  br i1 %.not52, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not22.i = icmp eq i32 %.04362, %i.t
  br i1 %.not22.i, label %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.y = tail call noundef i32 @llvm.abs.i32(i32 %.04362, i1 true)
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.z
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !194
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %i.ab = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.aq, %bb.e ] ; 2 uses
  %.pn.in26.i = phi i32 [ %i.u, %.lr.ph.i ], [ %i.ap, %bb.e ]
  %.01824.i = phi i32 [ %i.t, %.lr.ph.i ], [ %spec.select.i6.i, %bb.e ] ; 2 uses
  %.02023.i = phi i32 [ %.04362, %.lr.ph.i ], [ %.121.i, %bb.e ] ; 2 uses
  %.pn.i = zext nneg i32 %.pn.in26.i to i64
  %storemerge.i = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.pn.i
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !194 ; 2 uses
  %i.ae = icmp sgt i32 %i.ab, %i.ad               ; 2 uses
  %.121.i = select i1 %i.ae, i32 %.01824.i, i32 %.02023.i ; 6 uses
  %i.af = tail call noundef i32 @llvm.abs.i32(i32 %.121.i, i1 true)
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !184 ; 2 uses
  %2 = icmp slt i32 %.121.i, 0
  %3 = sub nsw i32 0, %i.ai
  %spec.select.i.i = select i1 %2, i32 %3, i32 %i.ai
  %.not5.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not5.i, label %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.119.i = select i1 %i.ae, i32 %.02023.i, i32 %.01824.i ; 2 uses
  %i.aj = tail call noundef i32 @llvm.abs.i32(i32 %.119.i, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !184 ; 3 uses
  %i.an = icmp slt i32 %.119.i, 0
  %i.ao = sub nsw i32 0, %i.am
  %spec.select.i6.i = select i1 %i.an, i32 %i.ao, i32 %i.am ; 2 uses
  %i.ap = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %.not.i = icmp eq i32 %.121.i, %spec.select.i6.i
  %i.aq = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.ad)
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit, label %bb.d, !llvm.loop !0

_ZN7CaDiCaL8Internal15probe_dominatorEii.exit:    ; preds = %bb.d, %bb.e, %bb.c
  %.0.i = phi i32 [ %.04362, %bb.c ], [ %.121.i, %bb.e ], [ %.121.i, %bb.d ]
  %i.ar = add nsw i32 %.04263, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit
  %.144 = phi i32 [ %.0.i, %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit ], [ %.04362, %bb.b ] ; 14 uses
  %.1 = phi i32 [ %i.ar, %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit ], [ %.04263, %bb.b ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04561, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !256

._crit_edge:                                      ; preds = %bb.f
  %i.at = icmp eq i32 %.1, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  store ptr %1, ptr %i.au, align 8, !tbaa !199
  br i1 %i.at, label %.critedge, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3584 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !258
  %.not49 = icmp eq i32 %i.aw, 0
  br i1 %.not49, label %bb.z, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ax = icmp eq i32 %i.c, 1
  br i1 %i.ax, label %.thread, label %.lr.ph66

.lr.ph66:                                         ; preds = %.preheader
  %i.ay = sub nsw i32 0, %.144
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph66, %bb.h
  %.14665 = phi ptr [ %i.j, %.lr.ph66 ], [ %i.bb, %bb.h ] ; 2 uses
  %i.az = load i32, ptr %.14665, align 4, !tbaa !184
  %i.ba = icmp eq i32 %i.az, %i.ay                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.14665, i64 4 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.e
  %.not51 = select i1 %i.ba, i1 true, i1 %i.bc
  br i1 %.not51, label %._crit_edge67, label %bb.h, !llvm.loop !257

._crit_edge67:                                    ; preds = %bb.h
  br i1 %i.ba, label %bb.i, label %.thread

bb.i:                                             ; preds = %._crit_edge67
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 2048
  %.not59 = icmp eq i32 %i.bf, 0
  br i1 %.not59, label %bb.j, label %.thread

.thread:                                          ; preds = %.preheader, %._crit_edge67, %bb.i
  %.0.lcssa87 = phi i1 [ true, %bb.i ], [ false, %._crit_edge67 ], [ false, %.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4704 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !259
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !259
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  %.0.lcssa86 = phi i1 [ true, %bb.i ], [ %.0.lcssa87, %.thread ]
  %i.bj = phi i1 [ false, %bb.i ], [ true, %.thread ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 5 uses
  %i.bl = sub nsw i32 0, %.144                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 7 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !188 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !189 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, %i.bp
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !184
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.l:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !190 ; 4 uses
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 5 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775804
  br i1 %i.bv, label %bb.m, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bw = ashr exact i64 %i.bu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 2305843009213693951)
  %i.ca = select i1 %i.by, i64 2305843009213693951, i64 %i.bz ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ca, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #18 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bu ; 2 uses
  store i32 %i.bl, ptr %i.cd, align 4, !tbaa !184
  %i.ce = icmp sgt i64 %i.bu, 0
  br i1 %i.ce, label %bb.n, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr align 4 %i.br, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.br) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cc, ptr %i.bk, align 8, !tbaa !190
  store ptr %i.cf, ptr %i.bm, align 8, !tbaa !188
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ca ; 2 uses
  store ptr %i.cg, ptr %i.bo, align 8, !tbaa !189
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.ch = phi ptr [ %i.bp, %bb.k ], [ %i.cg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ci = phi ptr [ %i.bq, %bb.k ], [ %i.cf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i53 = icmp eq ptr %i.ci, %i.ch
  br i1 %.not.i53, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.cj = load i32, ptr %i.a, align 8, !tbaa !184
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !184
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store ptr %i.ck, ptr %i.bm, align 8, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.cl = load ptr, ptr %i.bk, align 8, !tbaa !190 ; 4 uses
  %i.cm = ptrtoint ptr %i.ch to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 5 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775804
  br i1 %i.cp, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.cq = ashr exact i64 %i.co, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 2305843009213693951)
  %i.cu = select i1 %i.cs, i64 2305843009213693951, i64 %i.ct ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #18 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !184
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !184
  %i.cz = icmp sgt i64 %i.co, 0
  br i1 %i.cz, label %bb.s, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr align 4 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.not.i17.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.cl) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.cw, ptr %i.bk, align 8, !tbaa !190
  store ptr %i.da, ptr %i.bm, align 8, !tbaa !188
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !211    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !215
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !210
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #17
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !212, !alias.scope !264
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i

_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !211
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !210
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !215
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.ac = icmp ult i64 %1, %i.g
  br i1 %i.ac, label %bb.h, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ad
  br i1 %.not.i4, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !210
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i, %bb.c, %bb.g
  ret void
}

declare void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal14failed_literalEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5264 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !217
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !217
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5280 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !266
  %i.f = add nsw i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !266
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !201  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 5600
  %i.j = load i32, ptr %i.i, align 8, !tbaa !267
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 3608
  %i.l = load i32, ptr %i.k, align 8, !tbaa !202
  %.not = icmp sgt i32 %i.j, %i.l
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 5568
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 3620
  %i.o = load i32, ptr %i.n, align 4, !tbaa !203
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.h)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.q = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.h)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.c, %bb.d
  %i.r = phi double [ %i.p, %bb.c ], [ %i.q, %bb.d ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.h, ptr noundef nonnull align 8 dereferenceable(36) %i.m, double noundef %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !206  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !184  ; 2 uses
  %i.x = sext i32 %i.w to i64
  %.idx = shl nsw i64 %i.x, 2
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %.idx
  %.not4090 = icmp eq i32 %i.w, 0
  br i1 %.not4090, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !191 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 736
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit, %bb.e
  %.036.lcssa = phi i32 [ 0, %bb.e ], [ %.137, %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit ] ; 5 uses
  tail call void @_ZN7CaDiCaL8Internal20probe_dominator_lratEiPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.036.lcssa, ptr noundef %i.t)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !167, !range !160, !noundef !161
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.k, label %bb.l

bb.f:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit
  %.03592 = phi ptr [ %i.u, %.lr.ph ], [ %i.bf, %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit ] ; 2 uses
  %.03691 = phi i32 [ 0, %.lr.ph ], [ %.137, %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit ] ; 6 uses
  %i.af = load i32, ptr %.03592, align 4, !tbaa !184 ; 2 uses
  %i.ag = sub nsw i32 0, %i.af                    ; 3 uses
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true) ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !196
  %.not46 = icmp eq i32 %i.ak, 0
  br i1 %.not46, label %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not47 = icmp eq i32 %.03691, 0
  br i1 %.not47, label %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not22.i = icmp eq i32 %.03691, %i.ag
  br i1 %.not22.i, label %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.al = tail call noundef i32 @llvm.abs.i32(i32 %.03691, i1 true)
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.am
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !190 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !194
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ap = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.be, %bb.j ] ; 2 uses
  %.pn.in26.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %i.bd, %bb.j ]
  %.01824.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %spec.select.i6.i, %bb.j ] ; 2 uses
  %.02023.i = phi i32 [ %.03691, %.lr.ph.i ], [ %.121.i, %bb.j ] ; 2 uses
  %.pn.i = zext nneg i32 %.pn.in26.i to i64
  %storemerge.i = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.pn.i
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !194 ; 2 uses
  %i.as = icmp sgt i32 %i.ap, %i.ar               ; 2 uses
  %.121.i = select i1 %i.as, i32 %.01824.i, i32 %.02023.i ; 6 uses
  %i.at = tail call noundef i32 @llvm.abs.i32(i32 %.121.i, i1 true)
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !184 ; 2 uses
  %2 = icmp slt i32 %.121.i, 0
  %3 = sub nsw i32 0, %i.aw
  %spec.select.i.i = select i1 %2, i32 %3, i32 %i.aw
  %.not5.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not5.i, label %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.119.i = select i1 %i.as, i32 %.02023.i, i32 %.01824.i ; 2 uses
  %i.ax = tail call noundef i32 @llvm.abs.i32(i32 %.119.i, i1 true)
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !184 ; 3 uses
  %i.bb = icmp slt i32 %.119.i, 0
  %i.bc = sub nsw i32 0, %i.ba
  %spec.select.i6.i = select i1 %i.bb, i32 %i.bc, i32 %i.ba ; 2 uses
  %i.bd = tail call i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %.not.i48 = icmp eq i32 %.121.i, %spec.select.i6.i
  %i.be = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.ar)
  br i1 %.not.i48, label %_ZN7CaDiCaL8Internal15probe_dominatorEii.exit, label %bb.i, !llvm.loop !0

_ZN7CaDiCaL8Internal15probe_dominatorEii.exit:    ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.137 = phi i32 [ %.03691, %bb.f ], [ %i.ag, %bb.g ], [ %.03691, %bb.h ], [ %.121.i, %bb.i ], [ %.121.i, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.03592, i64 4 ; 2 uses
  %.not40 = icmp eq ptr %i.bf, %i.y
  br i1 %.not40, label %._crit_edge, label %bb.f

bb.k:                                             ; preds = %._crit_edge
  tail call void @_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %.not4193 = icmp eq i32 %.036.lcssa, %1
  br i1 %.not4193, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 736
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph99, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.07797 = phi i32 [ %.036.lcssa, %.lr.ph99 ], [ %spec.select.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.19.096 = phi ptr [ null, %.lr.ph99 ], [ %.sroa.19.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.sroa.13.095 = phi ptr [ null, %.lr.ph99 ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.sroa.0.094 = phi ptr [ null, %.lr.ph99 ], [ %.sroa.0.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.bh = tail call noundef i32 @llvm.abs.i32(i32 %.07797, i1 true)
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !190
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !184 ; 2 uses
  %i.bm = icmp slt i32 %.07797, 0
  %i.bn = sub nsw i32 0, %i.bl
  %spec.select.i = select i1 %i.bm, i32 %i.bn, i32 %i.bl ; 4 uses
  %.not.i49 = icmp eq ptr %.sroa.13.095, %.sroa.19.096
  br i1 %.not.i49, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %spec.select.i, ptr %.sroa.13.095, align 4, !tbaa !184
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.o:                                             ; preds = %bb.m
  %i.bo = ptrtoint ptr %.sroa.19.096 to i64
  %i.bp = ptrtoint ptr %.sroa.0.094 to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 5 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775804
  br i1 %i.br, label %bb.p, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bs = ashr exact i64 %i.bq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 2305843009213693951)
  %i.bw = select i1 %i.bu, i64 2305843009213693951, i64 %i.bv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bx = shl nuw nsw i64 %i.bw, 2
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #18
          to label %.noexc50 unwind label %.loopexit ; 4 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bq ; 2 uses
  store i32 %spec.select.i, ptr %i.bz, align 4, !tbaa !184
  %i.ca = icmp sgt i64 %i.bq, 0
  br i1 %i.ca, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.by, ptr align 4 %.sroa.0.094, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc50
  %.not.i17.i.i = icmp eq ptr %.sroa.0.094, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0.094) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bw
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.sroa.0.2 = phi ptr [ %i.by, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0.094, %bb.n ] ; 3 uses
  %.pn = phi ptr [ %i.bz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.13.095, %bb.n ]
  %.sroa.19.1 = phi ptr [ %i.cb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.19.096, %bb.n ] ; 2 uses
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %.not41 = icmp eq i32 %spec.select.i, %1
  br i1 %.not41, label %._crit_edge100.loopexit, label %bb.m

._crit_edge100.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.cc = ptrtoint ptr %.sroa.13.1 to i64
  %i.cd = icmp eq ptr %.sroa.19.1, %.sroa.0.2
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.loopexit, %bb.l
  %.sroa.0.0.lcssa = phi ptr [ null, %bb.l ], [ %.sroa.0.2, %._crit_edge100.loopexit ] ; 10 uses
  %.sroa.13.0.lcssa = phi i64 [ 0, %bb.l ], [ %i.cc, %._crit_edge100.loopexit ] ; 2 uses
  %.sroa.19.0.lcssa = phi i1 [ true, %bb.l ], [ %i.cd, %._crit_edge100.loopexit ]
  invoke void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
          to label %bb.s unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %._crit_edge100
  store ptr null, ptr %i.s, align 8, !tbaa !206
  %i.ce = sub nsw i32 0, %.036.lcssa
  invoke void @_ZN7CaDiCaL8Internal12probe_assignEii(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.ce, i32 noundef 0)
          to label %_ZN7CaDiCaL8Internal17probe_assign_unitEi.exit unwind label %.loopexit.split-lp

_ZN7CaDiCaL8Internal17probe_assign_unitEi.exit:   ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !171 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !172
  %.not.i.i = icmp eq ptr %i.ci, %i.cg
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN7CaDiCaL8Internal17probe_assign_unitEi.exit
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !172
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %_ZN7CaDiCaL8Internal17probe_assign_unitEi.exit, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.cj = invoke noundef zeroext i1 @_ZN7CaDiCaL8Internal15probe_propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.t unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  br i1 %i.cj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.v unwind label %.loopexit.split-lp

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !218, !range !160, !noundef !161
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.v
  %i.cn = ptrtoint ptr %.sroa.0.0.lcssa to i64    ; 2 uses
  %i.co = sub i64 %.sroa.13.0.lcssa, %i.cn
  %i.cp = ashr exact i64 %i.co, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 472
  %exitcond.not121 = icmp eq i64 %.sroa.13.0.lcssa, %i.cn
  br i1 %exitcond.not121, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph124

bb.w:                                             ; preds = %bb.ac
  %exitcond.not = icmp eq i64 %i.cr, %i.cp
  br i1 %exitcond.not, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph124, !llvm.loop !265

.lr.ph124:                                        ; preds = %.lr.ph107, %bb.w
  %.2104123 = phi i32 [ %i.ct, %bb.w ], [ %.036.lcssa, %.lr.ph107 ] ; 2 uses
  %.0105122 = phi i64 [ %i.cr, %bb.w ], [ 0, %.lr.ph107 ] ; 2 uses
  %i.cr = add i64 %.0105122, 1                    ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %.0105122
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !184 ; 5 uses
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !185
  %i.cv = sext i32 %i.ct to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !186 ; 2 uses
  %i.cy = icmp sgt i8 %i.cx, 0
  br i1 %i.cy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph124
  invoke void @_ZN7CaDiCaL8Internal17get_probehbr_lratEii(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.ct, i32 noundef %.2104123)
          to label %.invoke unwind label %.thread

.invoke:                                          ; preds = %bb.ab, %bb.x
  invoke void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.ac unwind label %.thread

bb.y:                                             ; preds = %.lr.ph124
  %i.cz = icmp eq i8 %i.cx, 0
  br i1 %i.cz, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN7CaDiCaL8Internal17get_probehbr_lratEii(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.ct, i32 noundef %.2104123)
          to label %bb.aa unwind label %.thread

bb.aa:                                            ; preds = %bb.z
end_hunk_2
