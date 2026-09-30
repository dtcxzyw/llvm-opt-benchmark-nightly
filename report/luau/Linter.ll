Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Linter?download=true
inline.NumInlined: 2494
inline.NumDeleted: 1090
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4Luau16LintLocalHygiene15reportUsedLocalEPNS_8AstLocalERKNS0_5LocalE:bb.a
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.01929.i.i ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !198  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_16LintLocalHygiene5LocalENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.h
  br i1 %i.u, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_16LintLocalHygiene5LocalENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_16LintLocalHygiene5LocalENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, label %bb.e, !llvm.loop !12

_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_16LintLocalHygiene5LocalENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.b, %bb.c
  %.4.i.i = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ %i.r, %bb.e ], [ null, %bb.f ], [ null, %bb.g ] ; 3 uses
  %.not.i = icmp ne ptr %.4.i.i, null             ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.4.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !167  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !629 ; 2 uses
  %i.ac = and i64 %i.ab, 2097152
  %.not37 = icmp eq i64 %i.ac, 0
  br i1 %.not37, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_16LintLocalHygiene5LocalENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !334, !range !93, !noundef !94
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond = and i1 %.not.i, %i.af
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.4.i.i, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !334, !range !93, !noundef !94
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_16LintLocalHygiene5LocalENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit
  %i.aj = and i64 %i.ab, 131072
  %i.ak = icmp ne i64 %i.aj, 0
  %or.cond3 = and i1 %.not.i, %i.ak
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !345
  %i.am = load ptr, ptr %2, align 8, !tbaa !345
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !630
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !630
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %1, align 8, !tbaa !205
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !206
  %i.ax = add i32 %i.aw, 1
  tail call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.z, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(16) %i.at, ptr noundef nonnull @.str.76, ptr noundef %i.au, i32 noundef %i.ax)
  br label %.critedge

bb.n:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !329
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bd = load ptr, ptr %1, align 8, !tbaa !73    ; 5 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !73 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !330
  %i.bi = add i64 %i.bh, -1                       ; 2 uses
  %i.bj = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bk = lshr i64 %i.bj, 4
  %i.bl = lshr i64 %i.bj, 9
  %i.bm = xor i64 %i.bk, %i.bl
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !170
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.pn.i.i28 = phi i64 [ %i.bm, %bb.p ], [ %i.bt, %bb.s ]
  %.01828.i.i29 = phi i64 [ 0, %bb.p ], [ %i.bs, %bb.s ]
  %.01929.i.i30 = and i64 %.pn.i.i28, %i.bi       ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.01929.i.i30 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !73 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bd
  br i1 %i.bq, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = icmp eq ptr %i.bp, %i.be
  br i1 %i.br, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = add i64 %.01828.i.i29, 1                ; 3 uses
  %i.bt = add i64 %i.bs, %.01929.i.i30
  %.not.i.i31 = icmp ugt i64 %i.bs, %i.bi
  br i1 %.not.i.i31, label %.critedge, label %bb.q, !llvm.loop !10

bb.t:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !169, !range !93, !noundef !94
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !337 ; 2 uses
  %.not27 = icmp eq ptr %i.by, null
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !167 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not27, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !274
  %i.ce = add i32 %i.cd, 1
  tail call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.ca, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(16) %i.cb, ptr noundef nonnull @.str.77, ptr noundef %i.bd, i32 noundef %i.ce)
  br label %.critedge

bb.w:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.ca, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(16) %i.cb, ptr noundef nonnull @.str.78, ptr noundef %i.bd)
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.s, %bb.n, %bb.o, %bb.k, %bb.i, %bb.l, %bb.m, %bb.t, %bb.w, %bb.v
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau18LintUnusedFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVN4Luau18LintUnusedFunctionE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapINS_7AstNameENS_18LintUnusedFunction6GlobalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #25
  br label %_ZN4Luau12DenseHashMapINS_7AstNameENS_18LintUnusedFunction6GlobalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit

_ZN4Luau12DenseHashMapINS_7AstNameENS_18LintUnusedFunction6GlobalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau18LintUnusedFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVN4Luau18LintUnusedFunctionE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4Luau18LintUnusedFunctionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #25, !inline_history !179
  br label %_ZN4Luau18LintUnusedFunctionD2Ev.exit

_ZN4Luau18LintUnusedFunctionD2Ev.exit:            ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau18LintUnusedFunction5visitEPNS_13AstExprGlobalE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef nonnull align 4 dereferenceable(18) ptr @_ZN4Luau12DenseHashMapINS_7AstNameENS_18LintUnusedFunction6GlobalESt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  store i8 1, ptr %i.d, align 1, !tbaa !631
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau18LintUnusedFunction5visitEPNS_15AstStatFunctionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !313  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !308
  %i.e = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprGlobalEE5valueE, align 4, !tbaa !30
  %i.f = icmp ne i32 %i.d, %i.e
  %.not.not11 = icmp eq ptr %i.b, null
  %.not.not = or i1 %.not.not11, %i.f             ; 2 uses
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = tail call noundef nonnull align 4 dereferenceable(18) ptr @_ZN4Luau12DenseHashMapINS_7AstNameENS_18LintUnusedFunction6GlobalESt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 1, ptr %i.j, align 4, !tbaa !632
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !317
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !358  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(188) %i.m, ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not.not
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(18) ptr @_ZN4Luau12DenseHashMapINS_7AstNameENS_18LintUnusedFunction6GlobalESt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !634  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !176  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !73     ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !73   ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = lshr i64 %i.m, 9
  %i.p = xor i64 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !177
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !633

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !176
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = lshr i64 %i.aa, 9
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = load ptr, ptr %0, align 8, !tbaa !177   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store i64 %i.aa, ptr %.lcssa, align 8, !tbaa !56
  %i.al = load i64, ptr %i.a, align 8, !tbaa !634
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !634
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !176  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl i64 %spec.select, 5
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #26 ; 6 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !56   ; 5 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.k = icmp ult i64 %spec.select, 4
  br i1 %i.k, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %.07.i.i = phi i64 [ 0, %.new ], [ %i.w, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %i.j, ptr %i.o, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 %i.j, ptr %i.r, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store i64 %i.j, ptr %i.u, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.w = add nuw i64 %.07.i.i, 4                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !635

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa, %bb.b
  %.07.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.w, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_18LintUnusedFunction6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod53)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.z, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.07.i.i.epil ; 2 uses
  store i64 %i.j, ptr %i.x, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = add nuw i64 %.07.i.i.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
end_hunk_0
begin_hunk_1_@_ZN4Luau15LintUnknownType12validateTypeEPNS_21AstExprConstantStringESt16initializer_listINS0_8TypeKindEEPKc:bb.a
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Luau15LintUnknownType11getTypeKindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::optional.291", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97   ; 5 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread29 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !95     ; 2 uses
  %i.d = load i16, ptr %i.c, align 1
  %i.e = xor i16 %i.d, 26990
  %i.f = getelementptr i8, ptr %i.c, i64 2
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i16
  %i.i = xor i16 %i.h, 108
  %i.j = or i16 %i.e, %i.i
  %i.k = icmp ne i16 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread29

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !95
  %bcmp.i14 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.96, i64 %i.b)
  %i.n = icmp eq i32 %bcmp.i14, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread29

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17: ; preds = %bb.a
  %.pre30 = load ptr, ptr %1, align 8, !tbaa !95
  %bcmp.i16 = tail call i32 @bcmp(ptr %.pre30, ptr nonnull @.str.97, i64 %i.b)
  %i.o = icmp eq i32 %bcmp.i16, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread29

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19: ; preds = %bb.a
  %.pre31 = load ptr, ptr %1, align 8, !tbaa !95  ; 3 uses
  %bcmp.i18 = tail call i32 @bcmp(ptr %.pre31, ptr nonnull @.str.98, i64 %i.b)
  %i.p = icmp eq i32 %bcmp.i18, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19
  %i.q = load i32, ptr %.pre31, align 1
  %i.r = xor i32 %i.q, 1769108595
  %i.s = getelementptr i8, ptr %.pre31, i64 4
  %i.t = load i16, ptr %i.s, align 1
  %i.u = zext i16 %i.t to i32
  %i.v = xor i32 %i.u, 26478
  %i.w = or i32 %i.r, %i.v
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread29

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23: ; preds = %bb.a
  %.pre32 = load ptr, ptr %1, align 8, !tbaa !95
  %bcmp.i22 = tail call i32 @bcmp(ptr %.pre32, ptr nonnull @.str.100, i64 %i.b)
  %i.aa = icmp eq i32 %bcmp.i22, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread29

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread29: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23
  %i.ab = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.101)
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread29
  %i.ac = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.102)
  br i1 %i.ac, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.103)
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.104)
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57
  call void @_ZNK4Luau5Scope10lookupTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.291") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1040) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !372, !range !93, !noundef !94
  %i.al = trunc nuw i8 %i.ak to i1
  call void @_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %spec.select = select i1 %i.al, i32 3, i32 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.e, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread29, %bb.b, %bb.c
  %.1 = phi i32 [ %spec.select, %bb.e ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread29 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15 ]
  ret i32 %.1
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !95
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

declare void @_ZNK4Luau5Scope10lookupTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional.291") align 8, ptr noundef nonnull align 8 dereferenceable(1040), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !372, !range !93, !noundef !94
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !372
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN4Luau7TypeFunELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !648  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !649
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #29
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !652    ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt17_Optional_payloadIN4Luau7TypeFunELb0ELb0ELb0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !653
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #29
  br label %_ZNSt17_Optional_payloadIN4Luau7TypeFunELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN4Luau7TypeFunELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau12LintForRangeD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau12LintForRange5visitEPNS_10AstStatForE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.Luau::Location", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !296  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !308  ; 2 uses
  %i.g = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantNumberEE5valueE, align 4, !tbaa !30 ; 2 uses
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprUnaryEE5valueE, align 4, !tbaa !30 ; 2 uses
  %i.j = icmp ne i32 %i.f, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !297  ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !308  ; 2 uses
  %i.o = icmp eq i32 %i.n, %i.g
  %..i50 = select i1 %i.o, ptr %i.l, ptr null     ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.r = load i64, ptr %i.q, align 4, !tbaa !30
  store i64 %i.r, ptr %2, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.u = load i64, ptr %i.t, align 4, !tbaa !30
  store i64 %i.u, ptr %i.s, align 8, !tbaa !30
  %.not4852 = icmp eq ptr %i.d, null              ; 2 uses
  %.not48 = or i1 %.not4852, %i.j                 ; 2 uses
  br i1 %.not48, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !375
  %i.x = icmp eq i32 %i.w, 2
  %i.y = icmp ne ptr %..i50, null
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aa = load double, ptr %i.z, align 8, !tbaa !379
  %i.ab = fcmp oeq double %i.aa, 1.000000e+00
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !185
  call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.ad, i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull @.str.105)
  br label %bb.r

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.not4852.not = xor i1 %.not4852, true
  %3 = and i1 %i.h, %.not4852.not                 ; 2 uses
  %i.ae = icmp ne ptr %..i50, null                ; 2 uses
  %or.cond3 = and i1 %3, %i.ae
  br i1 %or.cond3, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ag = load double, ptr %i.af, align 8, !tbaa !379 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !379 ; 4 uses
  %i.aj = fcmp ogt double %i.ag, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !185
  call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.al, i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull @.str.105)
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.am = fsub double %i.ai, %i.ag
  %i.an = tail call double @llvm.floor.f64(double %i.am)
  %i.ao = fadd double %i.ag, %i.an                ; 2 uses
  %i.ap = fcmp une double %i.ao, %i.ai
  br i1 %i.ap, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !185
  call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.ar, i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull @.str.106, double noundef %i.ao, double noundef %i.ai)
  br label %bb.r

.critedge:                                        ; preds = %bb.f, %bb.i
  %or.cond7 = and i1 %3, %i.p
  br i1 %or.cond7, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.critedge
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.at = load double, ptr %i.as, align 8, !tbaa !379
  %i.au = fcmp oeq double %i.at, 0.000000e+00
  br i1 %i.au, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !375
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !185
  call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.az, i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull @.str.107)
  br label %bb.r

bb.n:                                             ; preds = %bb.l, %bb.k, %.critedge
  br i1 %.not48, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !375
  %i.bc = icmp eq i32 %i.bb, 2
  %or.cond9 = and i1 %i.ae, %i.bc
  br i1 %or.cond9, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.be = load double, ptr %i.bd, align 8, !tbaa !379
  %i.bf = fcmp oeq double %i.be, 0.000000e+00
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !185
  call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.bh, i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull @.str.108)
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %bb.m, %bb.q, %bb.p, %bb.o, %bb.n, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.a
  ret i1 true
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau24LintUnbalancedAssignmentD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau24LintUnbalancedAssignment5visitEPNS_12AstStatLocalE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !342  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !302  ; 5 uses
  %.not.i = icmp eq i64 %i.b, %i.f
  %.not17.i = icmp eq i64 %i.f, 0
  %or.cond.i = or i1 %.not.i, %.not17.i
  br i1 %or.cond.i, label %_ZN4Luau24LintUnbalancedAssignment6assignEmRKNS_8AstArrayIPNS_7AstExprEEERKNS_8LocationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !301
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !303
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !308  ; 3 uses
  %i.n = load i32, ptr @_ZN4Luau7AstRttiINS_11AstExprCallEE5valueE, align 4, !tbaa !30
  %i.o = icmp eq i32 %i.m, %i.n
  %i.p = load i32, ptr @_ZN4Luau7AstRttiINS_14AstExprVarargsEE5valueE, align 4
  %i.q = icmp eq i32 %i.m, %i.p
  %or.cond19.i = select i1 %i.o, i1 true, i1 %i.q
  %i.r = load i32, ptr @_ZN4Luau7AstRttiINS_18AstExprConstantNilEE5valueE, align 4
  %i.s = icmp eq i32 %i.m, %i.r
  %or.cond21.i = select i1 %or.cond19.i, i1 true, i1 %i.s
  br i1 %or.cond21.i, label %_ZN4Luau24LintUnbalancedAssignment6assignEmRKNS_8AstArrayIPNS_7AstExprEEERKNS_8LocationE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.str.109.sink.i = phi ptr [ @.str.109, %bb.b ], [ @.str.110, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !187
  %i.v = trunc i64 %i.f to i32
  %i.w = trunc i64 %i.b to i32
  tail call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.u, i32 noundef 15, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull %.str.109.sink.i, i32 noundef %i.v, i32 noundef %i.w)
  br label %_ZN4Luau24LintUnbalancedAssignment6assignEmRKNS_8AstArrayIPNS_7AstExprEEERKNS_8LocationE.exit

_ZN4Luau24LintUnbalancedAssignment6assignEmRKNS_8AstArrayIPNS_7AstExprEEERKNS_8LocationE.exit: ; preds = %bb.a, %bb.c, %.sink.split.i
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau24LintUnbalancedAssignment5visitEPNS_13AstStatAssignE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !305  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !302  ; 5 uses
  %.not.i = icmp eq i64 %i.b, %i.f
  %.not17.i = icmp eq i64 %i.f, 0
  %or.cond.i = or i1 %.not.i, %.not17.i
  br i1 %or.cond.i, label %_ZN4Luau24LintUnbalancedAssignment6assignEmRKNS_8AstArrayIPNS_7AstExprEEERKNS_8LocationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !301
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !303
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !308  ; 3 uses
  %i.n = load i32, ptr @_ZN4Luau7AstRttiINS_11AstExprCallEE5valueE, align 4, !tbaa !30
  %i.o = icmp eq i32 %i.m, %i.n
  %i.p = load i32, ptr @_ZN4Luau7AstRttiINS_14AstExprVarargsEE5valueE, align 4
  %i.q = icmp eq i32 %i.m, %i.p
  %or.cond19.i = select i1 %i.o, i1 true, i1 %i.q
  %i.r = load i32, ptr @_ZN4Luau7AstRttiINS_18AstExprConstantNilEE5valueE, align 4
  %i.s = icmp eq i32 %i.m, %i.r
  %or.cond21.i = select i1 %or.cond19.i, i1 true, i1 %i.s
  br i1 %or.cond21.i, label %_ZN4Luau24LintUnbalancedAssignment6assignEmRKNS_8AstArrayIPNS_7AstExprEEERKNS_8LocationE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.str.109.sink.i = phi ptr [ @.str.109, %bb.b ], [ @.str.110, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !187
  %i.v = trunc i64 %i.f to i32
  %i.w = trunc i64 %i.b to i32
  tail call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.u, i32 noundef 15, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull %.str.109.sink.i, i32 noundef %i.v, i32 noundef %i.w)
  br label %_ZN4Luau24LintUnbalancedAssignment6assignEmRKNS_8AstArrayIPNS_7AstExprEEERKNS_8LocationE.exit

_ZN4Luau24LintUnbalancedAssignment6assignEmRKNS_8AstArrayIPNS_7AstExprEEERKNS_8LocationE.exit: ; preds = %bb.a, %bb.c, %.sink.split.i
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau18LintImplicitReturnD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau18LintImplicitReturn5visitEPNS_15AstExprFunctionE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.Visitor, align 8            ; 5 uses
  %3 = alloca %"struct.Luau::Location", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286
  %i.c = tail call noundef ptr @_ZN4Luau14getFallthroughEPKNS_7AstStatE(ptr noundef %i.b) ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !286  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVZN4Luau18LintImplicitReturn14getValueReturnEPNS_7AstStatEE7Visitor, i64 16), ptr %2, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !382
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(28) %i.d, ptr noundef nonnull %2), !inline_history !654
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !382  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.i = icmp ne ptr %i.c, null
  %i.j = icmp ne ptr %i.h, null
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.07.0.copyload.i = load i32, ptr %i.k, align 4, !tbaa !30 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !30
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.sroa.614.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx.i, align 4, !tbaa !30 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !308  ; 3 uses
  %i.n = load i32, ptr @_ZN4Luau7AstRttiINS_11AstStatExprEE5valueE, align 4, !tbaa !30
  %i.o = icmp eq i32 %i.m, %i.n
  %i.p = load i32, ptr @_ZN4Luau7AstRttiINS_13AstStatAssignEE5valueE, align 4
  %i.q = icmp eq i32 %i.m, %i.p
end_hunk_1
