Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_vivify?download=true
inline.NumInlined: 2075
inline.NumDeleted: 718
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7CaDiCaL8Internal12watch_clauseEPNS_6ClauseE:bb.a
  %i.v = icmp eq i64 %i.u, 9223372036854775792
  br i1 %i.v, label %bb.d, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.c
  %i.w = ashr exact i64 %i.u, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 576460752303423487)
  %i.aa = select i1 %i.y, i64 576460752303423487, i64 %i.z ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 4
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #19 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u ; 3 uses
  store ptr %1, ptr %i.ad, align 8, !tbaa !205
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !182
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %i.l, ptr %.sroa.6.0..sroa_idx7.i, align 4, !tbaa !182
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ac, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !206, !alias.scope !345
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !207
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.aj) #20
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.e, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !197
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !196
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !207
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !193
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit: ; preds = %bb.b, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i
  %i.al = phi ptr [ %i.i, %bb.b ], [ %.pre, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ]
  %i.am = tail call noundef i32 @llvm.abs.i32(i32 %i.d, i1 true)
  %i.an = tail call noundef i32 @llvm.fshl.i32(i32 %i.am, i32 %i.d, i32 1)
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ao ; 4 uses
  %i.aq = load i32, ptr %i.k, align 8, !tbaa !182 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !196 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !207
  %.not.i.i.i8 = icmp eq ptr %i.as, %i.au
  br i1 %.not.i.i.i8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit
  store ptr %1, ptr %i.as, align 8, !tbaa !205
  %.sroa.5.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %i.b, ptr %.sroa.5.0..sroa_idx.i9, align 8, !tbaa !182
  %.sroa.6.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 %i.aq, ptr %.sroa.6.0..sroa_idx.i10, align 4, !tbaa !182
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !196
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit25

bb.g:                                             ; preds = %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !197 ; 5 uses
  %i.ax = ptrtoint ptr %i.as to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775792
  br i1 %i.ba, label %bb.h, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11: ; preds = %bb.g
  %i.bb = ashr exact i64 %i.az, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i12 = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i.i12, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 576460752303423487)
  %i.bf = select i1 %i.bd, i64 576460752303423487, i64 %i.be ; 3 uses
  %.not.i.i.i.i.i13 = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i13)
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #19 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az ; 3 uses
  store ptr %1, ptr %i.bi, align 8, !tbaa !205
  %.sroa.5.0..sroa_idx5.i14 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %i.b, ptr %.sroa.5.0..sroa_idx5.i14, align 8, !tbaa !182
  %.sroa.6.0..sroa_idx7.i15 = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 %i.aq, ptr %.sroa.6.0..sroa_idx7.i15, align 4, !tbaa !182
  %.not10.i.i.i.i.i.i.i16 = icmp eq ptr %i.aw, %i.as
  br i1 %.not10.i.i.i.i.i.i.i16, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i17

.lr.ph.i.i.i.i.i.i.i17:                           ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11, %.lr.ph.i.i.i.i.i.i.i17
  %.012.i.i.i.i.i.i.i18 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i17 ], [ %i.bh, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i19 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i17 ], [ %i.aw, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i19, i64 16, i1 false), !tbaa.struct !206, !alias.scope !346
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i19, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.bj, %i.as
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i17, !llvm.loop !0

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i.i.i17, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11
  %.0.lcssa.i.i.i.i.i.i.i22 = phi ptr [ %i.bh, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11 ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i17 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i22, i64 16
  %.not.i23.i.i.i.i23 = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i.i.i.i23, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i24, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i21
  %i.bm = load ptr, ptr %i.at, align 8, !tbaa !207
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bo) #20
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i24

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i24: ; preds = %bb.i, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i21
  store ptr %i.bh, ptr %i.ap, align 8, !tbaa !197
  store ptr %i.bl, ptr %i.ar, align 8, !tbaa !196
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bp, ptr %i.at, align 8, !tbaa !207
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit25

_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit25: ; preds = %bb.f, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal13vivify_clauseERNS_8VivifierEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, -3145729
  %i.f = or disjoint i32 %i.e, 1048576
  store i32 %i.f, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !198
  %i.j = add nsw i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !198
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !181  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !180  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.l, ptr %i.m, align 8, !tbaa !180
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.n, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !182  ; 2 uses
  %i.s = sext i32 %i.r to i64
  %.idx = shl nsw i64 %i.s, 2
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %.idx
  %.not237 = icmp eq i32 %i.r, 0
  br i1 %.not237, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %i.x = phi ptr [ %i.l, %.lr.ph ], [ %i.be, %bb.l ] ; 6 uses
  %i.y = phi ptr [ %i.o, %.lr.ph ], [ %i.bf, %bb.l ] ; 5 uses
  %.0144238 = phi ptr [ %i.p, %.lr.ph ], [ %i.bg, %bb.l ] ; 3 uses
  %i.z = load i32, ptr %.0144238, align 4, !tbaa !182 ; 3 uses
  %i.aa = tail call noundef i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !190
  %i.ac = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !191 ; 2 uses
  %.not.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = sext i8 %i.ae to i32
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !185
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !187
  %.not9.i = icmp eq i32 %i.ai, 0
  %spec.select.i.a = select i1 %.not9.i, i32 %i.af, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.c ], [ %spec.select.i.a, %bb.d ] ; 2 uses
  %3 = icmp slt i32 %i.z, 0
  %4 = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %3, i32 %4, i32 %.0.i ; 2 uses
  %5 = icmp slt i32 %spec.select10.i, 1
  br i1 %5, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %.not152 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not152, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !192
  %.not.i174 = icmp eq ptr %i.y, %i.aj
  br i1 %.not.i174, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.z, ptr %i.y, align 4, !tbaa !182
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  store ptr %i.ak, ptr %i.m, align 8, !tbaa !180
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.al = ptrtoint ptr %i.y to i64
  %i.am = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 5 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775804
  br i1 %i.ao, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ap = ashr exact i64 %i.an, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 2305843009213693951)
  %i.at = select i1 %i.ar, i64 2305843009213693951, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #19 ; 5 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  %i.ax = load i32, ptr %.0144238, align 4, !tbaa !182
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !182
  %i.ay = icmp sgt i64 %i.an, 0
  br i1 %i.ay, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr align 4 %i.x, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !192
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.bc) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.av, ptr %i.k, align 8, !tbaa !181
  store ptr %i.az, ptr %i.m, align 8, !tbaa !180
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bd, ptr %i.w, align 8, !tbaa !192
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g, %bb.e
  %i.be = phi ptr [ %i.av, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.x, %bb.g ], [ %i.x, %bb.e ] ; 2 uses
  %i.bf = phi ptr [ %i.az, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ak, %bb.g ], [ %i.y, %bb.e ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0144238, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.t
  br i1 %.not, label %.critedge, label %bb.c

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull %2) #21
  br label %bb.bm

.critedge:                                        ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.bh = phi ptr [ %i.l, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %i.be, %bb.l ] ; 4 uses
  %i.bi = phi ptr [ %i.o, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %i.bf, %bb.l ] ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = ashr exact i64 %i.bl, 2
  %i.bn = icmp eq i64 %i.bl, 8
  br i1 %i.bn, label %bb.bm, label %bb.n

bb.n:                                             ; preds = %.critedge
  %.not.i.i175 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i175, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL24vivify_more_noccs_kissatEEvT_S9_T0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bp = shl nuw nsw i64 %i.bo, 1
  %i.bq = xor i64 %i.bp, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL24vivify_more_noccs_kissatEEEEvT_SC_T0_T1_(ptr %i.bh, ptr %i.bi, i64 noundef %i.bq, ptr nonnull %0)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL24vivify_more_noccs_kissatEEEEvT_SC_T0_(ptr %i.bh, ptr %i.bi, ptr nonnull %0)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL24vivify_more_noccs_kissatEEvT_S9_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL24vivify_more_noccs_kissatEEvT_S9_T0_.exit: ; preds = %bb.n, %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 6048 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !232
  %i.bt = add nsw i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !232
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 4 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !179 ; 4 uses
  %.not153 = icmp eq i32 %i.bv, 0
  br i1 %.not153, label %.loopexit234, label %bb.p

bb.p:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL24vivify_more_noccs_kissatEEvT_S9_T0_.exit
  %i.bw = load i32, ptr %i.q, align 8, !tbaa !182 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %.idx263 = shl nsw i64 %i.bx, 2
  %i.by = getelementptr inbounds i8, ptr %i.p, i64 %.idx263
  %.not154239 = icmp eq i32 %i.bw, 0
  br i1 %.not154239, label %.thread.thread.thread, label %.lr.ph241

.lr.ph241:                                        ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !190
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph241
  %.0132240 = phi ptr [ %i.p, %.lr.ph241 ], [ %i.co, %bb.s ] ; 2 uses
  %i.cb = load i32, ptr %.0132240, align 4, !tbaa !182 ; 4 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.ca, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !191 ; 2 uses
  %or.cond170 = icmp slt i8 %i.ce, 1
  br i1 %or.cond170, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cg = tail call noundef i32 @llvm.abs.i32(i32 %i.cb, i1 true)
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !185
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !189
  %i.cm = icmp ne ptr %i.cl, %2
  %.not156 = icmp eq i32 %i.cb, 0
  %or.cond340 = or i1 %i.cm, %.not156
  br i1 %or.cond340, label %.thread.thread, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cn = icmp eq i8 %i.ce, 0
  %i.co = getelementptr inbounds nuw i8, ptr %.0132240, i64 4 ; 2 uses
  %.not154 = icmp eq ptr %i.co, %i.by
  %or.cond339 = select i1 %i.cn, i1 true, i1 %.not154
  br i1 %or.cond339, label %.thread.thread, label %bb.q

bb.t:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cq = tail call noundef i32 @llvm.abs.i32(i32 %i.cb, i1 true)
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !185
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !187
  %i.cv = add nsw i32 %i.cu, -1
  tail call void @_ZN7CaDiCaL8Internal33backtrack_without_updating_phasesEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.cv) #21
  %.pre = load i32, ptr %i.bu, align 4, !tbaa !179
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.s, %bb.r, %bb.t
  %i.cw = phi i32 [ %.pre, %bb.t ], [ %i.bv, %bb.r ], [ %i.bv, %bb.s ] ; 2 uses
  %.not157 = icmp eq i32 %i.cw, 0
  br i1 %.not157, label %.loopexit234, label %.thread.thread.thread

.thread.thread.thread:                            ; preds = %bb.p, %.thread.thread
  %i.cx = phi i32 [ %i.cw, %.thread.thread ], [ %i.bv, %bb.p ]
  %i.cy = load ptr, ptr %i.k, align 8, !tbaa !226 ; 2 uses
  %i.cz = load ptr, ptr %i.m, align 8, !tbaa !226 ; 2 uses
  %.not225243 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not225243, label %.loopexit234, label %.lr.ph246

.lr.ph246:                                        ; preds = %.thread.thread.thread
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !183
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 6104 ; 2 uses
  %i.dd = sext i32 %i.cx to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph246
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 1, %.lr.ph246 ] ; 4 uses
  %.sroa.0201.0244 = phi ptr [ %i.dl, %bb.v ], [ %i.cy, %.lr.ph246 ] ; 2 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %indvars.iv
  %i.df = load i32, ptr %i.de, align 4, !tbaa !350
  %i.dg = load i32, ptr %.sroa.0201.0244, align 4, !tbaa !182
  %i.dh = sub nsw i32 0, %i.dg
  %i.di = icmp eq i32 %i.df, %i.dh
  br i1 %i.di, label %bb.v, label %.critedge172

bb.v:                                             ; preds = %bb.u
  %i.dj = load i64, ptr %i.dc, align 8, !tbaa !351
  %i.dk = add nsw i64 %i.dj, 1
  store i64 %i.dk, ptr %i.dc, align 8, !tbaa !351
  %.not158 = icmp sge i64 %indvars.iv, %i.dd
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0201.0244, i64 4 ; 2 uses
  %.not225 = icmp eq ptr %i.dl, %i.cz
  %or.cond = select i1 %.not158, i1 true, i1 %.not225
  br i1 %or.cond, label %.loopexit234, label %bb.u

.critedge172:                                     ; preds = %bb.u
  %i.dm = trunc nuw nsw i64 %indvars.iv to i32
  %i.dn = add nsw i32 %i.dm, -1
  tail call void @_ZN7CaDiCaL8Internal33backtrack_without_updating_phasesEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.dn) #21
  br label %.loopexit234

.loopexit234:                                     ; preds = %bb.v, %.thread.thread.thread, %.critedge172, %.thread.thread, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL24vivify_more_noccs_kissatEEvT_S9_T0_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %2, ptr %i.do, align 8, !tbaa !208
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !226 ; 2 uses
  %i.dq = load ptr, ptr %i.m, align 8, !tbaa !226 ; 3 uses
  %.not226248 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not226248, label %.thread210, label %.lr.ph250

.lr.ph250:                                        ; preds = %.loopexit234
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 6088 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph250
  %.sroa.0197.0249 = phi ptr [ %i.dp, %.lr.ph250 ], [ %.sroa.0197.0249.be, %.backedge.backedge ] ; 3 uses
  %i.du = load i32, ptr %.sroa.0197.0249, align 4, !tbaa !182 ; 6 uses
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !190 ; 2 uses
  %i.dw = sext i32 %i.du to i64
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !191 ; 2 uses
  %.not160 = icmp eq i8 %i.dy, 0
  br i1 %.not160, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.backedge
  %i.dz = tail call noundef i32 @llvm.abs.i32(i32 %i.du, i1 true)
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !185 ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.ea ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !189
  %.not161 = icmp eq ptr %i.ee, null
  %i.ef = icmp slt i8 %i.dy, 0
  %or.cond173 = or i1 %i.ef, %.not161
  br i1 %or.cond173, label %select.unfold, label %bb.y

bb.x:                                             ; preds = %.backedge
  %i.eg = load i64, ptr %i.dt, align 8, !tbaa !227
  %i.eh = add nsw i64 %i.eg, 1
  store i64 %i.eh, ptr %i.dt, align 8, !tbaa !227
  %i.ei = sub nsw i32 0, %i.du
  tail call void @_ZN7CaDiCaL8Internal13vivify_assumeEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.ei)
  %i.ej = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal16vivify_propagateERl(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0197.0249, i64 4 ; 2 uses
  %.not226 = icmp ne ptr %i.ek, %i.dq
  %or.cond262.not = select i1 %i.ej, i1 %.not226, i1 false
  br i1 %or.cond262.not, label %.backedge.backedge, label %.thread210

select.unfold:                                    ; preds = %bb.w
  %.old = getelementptr inbounds nuw i8, ptr %.sroa.0197.0249, i64 4 ; 2 uses
  %.not226.old = icmp eq ptr %.old, %i.dq
  br i1 %.not226.old, label %.thread210, label %.backedge.backedge

.backedge.backedge:                               ; preds = %select.unfold, %bb.x
  %.sroa.0197.0249.be = phi ptr [ %.old, %select.unfold ], [ %i.ek, %bb.x ]
  br label %.backedge

bb.y:                                             ; preds = %bb.w
  %.not162 = icmp eq i32 %i.du, 0
  br i1 %.not162, label %.thread210, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = load ptr, ptr %i.k, align 8, !tbaa !226 ; 2 uses
  %i.em = load ptr, ptr %i.m, align 8, !tbaa !226 ; 2 uses
  %.not227252 = icmp eq ptr %i.el, %i.em
end_hunk_0
