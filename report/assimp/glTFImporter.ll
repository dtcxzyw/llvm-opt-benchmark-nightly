inline.NumInlined: 5894
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN12_GLOBAL__N_124SetMaterialColorPropertyERKSt6vectorIiSaIiEERN4glTF5AssetENS5_11TexPropertyEP10aiMaterial13aiTextureTypePKcjj:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = icmp ugt i64 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %_ZNK10glTFCommon3RefIN4glTF7TextureEEcvbEv.exit.thread

bb.b:                                             ; preds = %_ZNK10glTFCommon3RefIN4glTF7TextureEEcvbEv.exit
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.d
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i8 = icmp eq ptr %i.p, null
  br i1 %.not.i8, label %_ZNK10glTFCommon3RefIN4glTF5ImageEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN4glTF5ImageEEcvbEv.exit

_ZNK10glTFCommon3RefIN4glTF5ImageEEcvbEv.exit:    ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = icmp ugt i64 %i.z, %i.s
  br i1 %i.aa, label %bb.c, label %_ZNK10glTFCommon3RefIN4glTF5ImageEEcvbEv.exit.thread

bb.c:                                             ; preds = %_ZNK10glTFCommon3RefIN4glTF5ImageEEcvbEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false)
  %i.ai = and i64 %i.af, 4294966272
  %.not.i9 = icmp eq i64 %i.ai, 0
  %spec.select.i = select i1 %.not.i9, i32 %i.ag, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %4, align 4
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = zext i32 %spec.select.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 1 %i.aj, i64 %i.ak, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.s
  %i.an = load i32, ptr %i.am, align 4            ; 4 uses
  %.not = icmp eq i32 %i.an, -1
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 42, ptr %i.ah, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.ap = icmp slt i32 %i.an, 0
  br i1 %i.ap, label %bb.e, label %.lr.ph.i.preheader

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 45, ptr %i.ao, align 1
  %i.ar = sub nsw i32 0, %i.an
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e, %bb.d
  %.153.i.ph = phi ptr [ %i.ao, %bb.d ], [ %i.aq, %bb.e ]
  %.13350.i.ph = phi i32 [ 1, %bb.d ], [ 2, %bb.e ]
  %.13849.i.ph = phi i32 [ %i.an, %bb.d ], [ %i.ar, %bb.e ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.153.i = phi ptr [ %.2.i, %bb.g ], [ %.153.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.02752.i = phi i1 [ %or.cond3.i, %bb.g ], [ false, %.lr.ph.i.preheader ]
  %.03051.i = phi i32 [ %i.bb, %bb.g ], [ 1000000000, %.lr.ph.i.preheader ] ; 5 uses
  %.13350.i = phi i32 [ %.234.i, %bb.g ], [ %.13350.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.13849.i = phi i32 [ %.239.i, %bb.g ], [ %.13849.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.as = sdiv i32 %.13849.i, %.03051.i           ; 3 uses
  %.recomposed = srem i32 %.13849.i, %.03051.i
  %i.at = icmp ne i32 %i.as, 0
  %i.au = icmp eq i32 %.03051.i, 1                ; 2 uses
  %i.av = or i1 %i.au, %i.at
  %or.cond3.i = select i1 %.02752.i, i1 true, i1 %i.av ; 2 uses
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.aw = trunc i32 %i.as to i8
  %i.ax = add i8 %i.aw, 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.153.i, i64 1 ; 2 uses
  store i8 %i.ax, ptr %.153.i, align 1
  %i.az = add nuw nsw i32 %.13350.i, 1            ; 2 uses
  %i.ba = mul i32 %i.as, %.03051.i                ; 0 uses
  br i1 %i.au, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.239.i = phi i32 [ %.recomposed, %bb.f ], [ %.13849.i, %.lr.ph.i ]
  %.234.i = phi i32 [ %i.az, %bb.f ], [ %.13350.i, %.lr.ph.i ] ; 3 uses
  %.2.i = phi ptr [ %i.ay, %bb.f ], [ %.153.i, %.lr.ph.i ] ; 2 uses
  %i.bb = sdiv i32 %.03051.i, 10
  %i.bc = icmp ult i32 %.234.i, 1023
  br i1 %i.bc, label %.lr.ph.i, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit

_ZN6Assimp13ASSIMP_itoa10EPcji.exit:              ; preds = %bb.f, %bb.g
  %.436.i = phi i32 [ %.234.i, %bb.g ], [ %i.az, %bb.f ]
  %.4.i = phi ptr [ %.2.i, %bb.g ], [ %i.ay, %bb.f ]
  store i8 0, ptr %.4.i, align 1
  store i32 %.436.i, ptr %4, align 4
  br label %bb.h

bb.h:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, %bb.c
  %i.bd = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4, ptr noundef nonnull @.str.252, i32 noundef %2, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNK10glTFCommon3RefIN4glTF5ImageEEcvbEv.exit.thread

_ZNK10glTFCommon3RefIN4glTF7TextureEEcvbEv.exit.thread: ; preds = %bb.a, %_ZNK10glTFCommon3RefIN4glTF7TextureEEcvbEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load <4 x float>, ptr %i.be, align 8
  store <4 x float> %i.bf, ptr %5, align 16
  %i.bg = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %5, i32 noundef 16, ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNK10glTFCommon3RefIN4glTF5ImageEEcvbEv.exit.thread

_ZNK10glTFCommon3RefIN4glTF5ImageEEcvbEv.exit.thread: ; preds = %bb.b, %_ZNK10glTFCommon3RefIN4glTF5ImageEEcvbEv.exit, %bb.h, %_ZNK10glTFCommon3RefIN4glTF7TextureEEcvbEv.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12glTFImporter12ImportMeshesERN4glTF5AssetE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(2032) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 10 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.s, ptr %i.t, align 8
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.v = phi ptr [ %i.u, %bb.a ], [ %i.s, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = and i64 %i.ac, 34359738360
  %.not920 = icmp eq i64 %i.ad, 0
  br i1 %.not920, label %._crit_edge915, label %.lr.ph914

.lr.ph914:                                        ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.g

._crit_edge915.loopexit:                          ; preds = %._crit_edge906
  %.pre1185 = load ptr, ptr %i.t, align 8
  br label %._crit_edge915

._crit_edge915:                                   ; preds = %._crit_edge915.loopexit, %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.ag = phi ptr [ %i.v, %_ZNSt6vectorIjSaIjEE5clearEv.exit ], [ %.pre1185, %._crit_edge915.loopexit ] ; 3 uses
  %.0555.lcssa = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE5clearEv.exit ], [ %i.ey, %._crit_edge915.loopexit ] ; 2 uses
  %.sroa.16.0.lcssa = phi ptr [ null, %_ZNSt6vectorIjSaIjEE5clearEv.exit ], [ %.sroa.16.1.lcssa, %._crit_edge915.loopexit ] ; 2 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %_ZNSt6vectorIjSaIjEE5clearEv.exit ], [ %.sroa.10.1.lcssa, %._crit_edge915.loopexit ] ; 3 uses
  %.sroa.0545.0.lcssa = phi ptr [ null, %_ZNSt6vectorIjSaIjEE5clearEv.exit ], [ %.sroa.0545.1.lcssa, %._crit_edge915.loopexit ] ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge915
  store i32 %.0555.lcssa, ptr %i.ag, align 4
  %i.aj = load ptr, ptr %i.t, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.t, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %._crit_edge915
  %i.al = load ptr, ptr %i.r, align 8             ; 4 uses
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775804
  br i1 %i.ap, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #31
          to label %.noexc unwind label %bb.fx

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.aq = ashr exact i64 %i.ao, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 2305843009213693951)
  %i.au = select i1 %i.as, i64 2305843009213693951, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #32
          to label %.noexc307 unwind label %bb.fx ; 4 uses

.noexc307:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store i32 %.0555.lcssa, ptr %i.ax, align 4
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %.noexc307
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 4 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %.noexc307
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.aw, ptr %i.r, align 8
  store ptr %i.az, ptr %i.t, align 8
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.ah, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.g:                                             ; preds = %.lr.ph914, %._crit_edge906
  %indvars.iv1176 = phi i64 [ 0, %.lr.ph914 ], [ %indvars.iv.next1177, %._crit_edge906 ] ; 2 uses
  %i.bb = phi ptr [ %i.z, %.lr.ph914 ], [ %i.fc, %._crit_edge906 ]
  %.sroa.0545.0912 = phi ptr [ null, %.lr.ph914 ], [ %.sroa.0545.1.lcssa, %._crit_edge906 ] ; 12 uses
  %.sroa.10.0911 = phi ptr [ null, %.lr.ph914 ], [ %.sroa.10.1.lcssa, %._crit_edge906 ] ; 2 uses
  %.sroa.16.0910 = phi ptr [ null, %.lr.ph914 ], [ %.sroa.16.1.lcssa, %._crit_edge906 ] ; 12 uses
  %.0555909 = phi i32 [ 0, %.lr.ph914 ], [ %i.ey, %._crit_edge906 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv1176
  %i.bd = load ptr, ptr %i.bc, align 8            ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 96 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.bg = load i64, ptr %i.bf, align 8
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %.loopexit601, label %.preheader

.preheader:                                       ; preds = %bb.g
  %.sroa.0538.0860 = load ptr, ptr %i.be, align 8 ; 2 uses
  %.not564861 = icmp eq ptr %.sroa.0538.0860, %i.be
  br i1 %.not564861, label %.loopexit601, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  br label %bb.h

.loopexit608:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i312
  %lpad.loopexit610 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp609:                            ; preds = %bb.z
  %lpad.loopexit.split-lp611 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %.lr.ph, %_ZN4glTF6Buffer24EncodedRegion_SetCurrentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.sroa.0538.0862 = phi ptr [ %.sroa.0538.0860, %.lr.ph ], [ %.sroa.0538.0, %_ZN4glTF6Buffer24EncodedRegion_SetCurrentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0538.0862, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %i.bi, align 8
  %i.br = load ptr, ptr %i.bh, align 8
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 208
  %i.bw = icmp ugt i64 %i.bv, 2
  br i1 %i.bw, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull @.str.9)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.fz unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bx) #28
  br label %.body

bb.m:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke { ptr, i32 } @_ZN4glTF8LazyDictINS_6BufferEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.ae, ptr noundef %i.cb)
          to label %_ZN4glTF8LazyDictINS_6BufferEE3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit602 ; 2 uses

_ZN4glTF8LazyDictINS_6BufferEE3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.n
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cc, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cc, 1
  %i.cd = zext i32 %.fca.1.extract to i64
  %i.ce = load ptr, ptr %.fca.0.extract, align 8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 88 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8            ; 3 uses
  %.not.i309 = icmp eq ptr %i.ci, null
  br i1 %.not.i309, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread17.i, label %bb.o

bb.o:                                             ; preds = %_ZN4glTF8LazyDictINS_6BufferEE3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = load i64, ptr %i.bk, align 8
  %i.cn = icmp eq i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread17.i

bb.p:                                             ; preds = %bb.o
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %_ZN4glTF6Buffer24EncodedRegion_SetCurrentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.p
  %i.cp = load ptr, ptr %i.bj, align 8
  %i.cq = load ptr, ptr %i.cj, align 8
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.cq, ptr %i.cp, i64 %i.cl)
  %i.cr = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cr, label %_ZN4glTF6Buffer24EncodedRegion_SetCurrentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread17.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread17.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.o, %_ZN4glTF8LazyDictINS_6BufferEE3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 128 ; 4 uses
  %.sroa.014.021.i = load ptr, ptr %i.cs, align 8 ; 3 uses
  %.not2022.i = icmp eq ptr %.sroa.014.021.i, %i.cs
  br i1 %.not2022.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread17.i
  %i.ct = load i64, ptr %i.bk, align 8
  %.fr921 = freeze i64 %i.ct                      ; 3 uses
  %i.cu = icmp eq i64 %.fr921, 0
  br i1 %i.cu, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.critedge.i.us
  %.sroa.014.023.i.us = phi ptr [ %.sroa.014.0.i.us, %.critedge.i.us ], [ %.sroa.014.021.i, %.lr.ph.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.us, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit13.thread.i, label %.critedge.i.us

end_hunk_0
begin_hunk_1_@_ZN6Assimp12glTFImporter12ImportMeshesERN4glTF5AssetE:bb.a
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axa, i64 24
  store ptr null, ptr %i.axd, align 8
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axa, i64 32
  store i32 0, ptr %i.axe, align 8
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axa, i64 40
  store ptr null, ptr %i.axf, align 8
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axa, i64 48
  store i32 0, ptr %i.axg, align 8
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axa, i64 56
  store ptr null, ptr %i.axh, align 8
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axa, i64 64
  store i32 0, ptr %i.axi, align 8
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axa, i64 72
  store ptr null, ptr %i.axj, align 8
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axa, i64 80
  store i32 0, ptr %i.axk, align 8
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axa, i64 88
  store ptr null, ptr %i.axl, align 8
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axa, i64 96
  store i32 0, ptr %i.axm, align 8
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axa, i64 104
  store ptr null, ptr %i.axn, align 8
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axa, i64 112
  store i32 0, ptr %i.axo, align 8
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axa, i64 120
  store ptr null, ptr %i.axp, align 8
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axa, i64 128 ; 2 uses
  %i.axr = icmp eq ptr %i.axq, %i.awt
  br i1 %i.axr, label %.loopexit578, label %.new2006

.loopexit578:                                     ; preds = %.prol.loopexit2005, %.new2006, %bb.fl
  store i32 3, ptr %i.awr, align 8
  %i.axs = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #32
          to label %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit439 unwind label %bb.eg ; 4 uses

_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit439:    ; preds = %.loopexit578
  %i.axt = getelementptr inbounds nuw i8, ptr %i.awq, i64 16 ; 2 uses
  store ptr %i.axs, ptr %i.axt, align 16
  store i32 0, ptr %i.axs, align 4
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axs, i64 4
  store i32 1, ptr %i.axu, align 4
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axs, i64 8
  store i32 2, ptr %i.axv, align 4
  %i.axw = icmp ugt i32 %i.ang, 3
  br i1 %i.axw, label %.lr.ph885, label %.loopexit568

.lr.ph885:                                        ; preds = %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit439
  %wide.trip.count = zext i32 %i.ang to i64
  br label %bb.fn

bb.fn:                                            ; preds = %.lr.ph885, %bb.fo
  %indvars.iv1154 = phi i64 [ 3, %.lr.ph885 ], [ %indvars.iv.next1155, %bb.fo ] ; 4 uses
  %i.axx = getelementptr [16 x i8], ptr %i.awr, i64 %indvars.iv1154 ; 2 uses
  %i.axy = getelementptr i8, ptr %i.axx, i64 -32
  %i.axz = load ptr, ptr %i.axt, align 16
  %i.aya = load i32, ptr %i.axz, align 4
  %i.ayb = getelementptr [16 x i8], ptr %i.awr, i64 %indvars.iv1154
  %i.ayc = getelementptr i8, ptr %i.ayb, i64 -8
  %i.ayd = load ptr, ptr %i.ayc, align 8
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 8
  %i.ayf = load i32, ptr %i.aye, align 4
  store i32 3, ptr %i.axy, align 8
  %i.ayg = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #32
          to label %bb.fo unwind label %bb.fp     ; 4 uses

bb.fo:                                            ; preds = %bb.fn
  %i.ayh = getelementptr i8, ptr %i.axx, i64 -24
  store ptr %i.ayg, ptr %i.ayh, align 8
  store i32 %i.aya, ptr %i.ayg, align 4
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayg, i64 4
  store i32 %i.ayf, ptr %i.ayi, align 4
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayg, i64 8
  %i.ayk = trunc nuw i64 %indvars.iv1154 to i32
  store i32 %i.ayk, ptr %i.ayj, align 4
  %indvars.iv.next1155 = add nuw nsw i64 %indvars.iv1154, 1 ; 2 uses
  %exitcond1157.not = icmp eq i64 %indvars.iv.next1155, %wide.trip.count
  br i1 %exitcond1157.not, label %.loopexit568, label %bb.fn, !llvm.loop !57

bb.fp:                                            ; preds = %bb.fn
  %i.ayl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit568.thread:                              ; preds = %bb.ct, %bb.ee
  %.2242.ph.ph = phi ptr [ %i.aar, %bb.ct ], [ %i.anm, %bb.ee ]
  %i.aym = getelementptr inbounds nuw i8, ptr %i.fm, i64 208
  store ptr %.2242.ph.ph, ptr %i.aym, align 8
  store i32 0, ptr %i.fo, align 8
  br label %_ZN12_GLOBAL__N_122CheckValidFacesIndicesEPK6aiFacejj.exit.thread

.loopexit568.sink.split:                          ; preds = %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit401, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit431
  %.sink1510 = phi ptr [ %i.ast, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit431 ], [ %i.agm, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit401 ]
  %.sink = phi i32 [ %i.ass, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit431 ], [ %i.agl, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit401 ]
  %.2242.ph.ph1508 = phi ptr [ %i.aqs, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit431 ], [ %i.aeg, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit401 ]
  %.2.ph.ph = phi i32 [ %i.aqn, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit431 ], [ %i.aeb, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit401 ]
  %i.ayn = getelementptr inbounds nuw i8, ptr %.sink1510, i64 4
  store i32 %.sink, ptr %i.ayn, align 4
  br label %.loopexit568

.loopexit568:                                     ; preds = %bb.eb, %bb.dw, %bb.dr, %bb.dd, %bb.fo, %bb.fi, %bb.fd, %bb.ep, %bb.eh, %.loopexit568.sink.split, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit418, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit410, %.loopexit585, %.loopexit582, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit439, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit435, %.loopexit574, %.loopexit571, %._crit_edge893, %._crit_edge877
  %.2242.ph = phi ptr [ %i.agv, %.loopexit585 ], [ %i.anm, %bb.eh ], [ %i.awr, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit439 ], [ %i.aeg, %._crit_edge877 ], [ %i.agv, %bb.dr ], [ %i.auu, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit435 ], [ %i.acj, %.loopexit582 ], [ %i.atc, %bb.fd ], [ %i.aiw, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit410 ], [ %i.aqs, %._crit_edge893 ], [ %i.awr, %bb.fo ], [ %i.atc, %.loopexit574 ], [ %i.apa, %.loopexit571 ], [ %i.alc, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit418 ], [ %i.apa, %bb.ep ], [ %i.aiw, %bb.dw ], [ %i.auu, %bb.fi ], [ %.2242.ph.ph1508, %.loopexit568.sink.split ], [ %i.acj, %bb.dd ], [ %i.alc, %bb.eb ] ; 2 uses
  %.2.ph = phi i32 [ %i.ago, %.loopexit585 ], [ %i.ang, %bb.eh ], [ %i.awm, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit439 ], [ %i.aeb, %._crit_edge877 ], [ %i.ago, %bb.dr ], [ %i.aup, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit435 ], [ %i.acc, %.loopexit582 ], [ %i.asv, %bb.fd ], [ %i.air, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit410 ], [ %i.aqn, %._crit_edge893 ], [ %i.awm, %bb.fo ], [ %i.asv, %.loopexit574 ], [ %i.aot, %.loopexit571 ], [ %i.akx, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceiii.exit418 ], [ %i.aot, %bb.ep ], [ %i.air, %bb.dw ], [ %i.aup, %bb.fi ], [ %.2.ph.ph, %.loopexit568.sink.split ], [ %i.acc, %bb.dd ], [ %i.akx, %bb.eb ] ; 3 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.fm, i64 208
  store ptr %.2242.ph, ptr %i.ayo, align 8
  store i32 %.2.ph, ptr %i.fo, align 8
  %i.ayp = icmp eq i32 %.2.ph, 0
  br i1 %i.ayp, label %_ZN12_GLOBAL__N_122CheckValidFacesIndicesEPK6aiFacejj.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.loopexit568.thread1282, %.loopexit568
  %.2.ph1286 = phi i32 [ %i.xd, %.loopexit568.thread1282 ], [ %.2.ph, %.loopexit568 ]
  %.2242.ph1285 = phi ptr [ %i.aar, %.loopexit568.thread1282 ], [ %.2242.ph, %.loopexit568 ]
  %i.ayq = load i32, ptr %i.fn, align 4
  %wide.trip.count34.i = zext i32 %.2.ph1286 to i64
  br label %.preheader.i442

.preheader.i442:                                  ; preds = %._crit_edge.i445, %.preheader.preheader.i
  %indvars.iv31.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next32.i, %._crit_edge.i445 ] ; 2 uses
  %i.ayr = getelementptr inbounds nuw [16 x i8], ptr %.2242.ph1285, i64 %indvars.iv31.i ; 2 uses
  %i.ays = load i32, ptr %i.ayr, align 8          ; 2 uses
  %.not2125.not.i = icmp eq i32 %i.ays, 0
  br i1 %.not2125.not.i, label %._crit_edge.i445, label %.lr.ph.i443

.lr.ph.i443:                                      ; preds = %.preheader.i442
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayr, i64 8
  %i.ayu = load ptr, ptr %i.ayt, align 8
  %wide.trip.count.i = zext i32 %i.ays to i64
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fr
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i445, label %bb.fr, !llvm.loop !58

bb.fr:                                            ; preds = %bb.fq, %.lr.ph.i443
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i443 ], [ %indvars.iv.next.i, %bb.fq ] ; 2 uses
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.ayu, i64 %indvars.iv.i
  %i.ayw = load i32, ptr %i.ayv, align 4
  %.not.i444 = icmp ult i32 %i.ayw, %i.ayq
  br i1 %.not.i444, label %bb.fq, label %_ZN12_GLOBAL__N_122CheckValidFacesIndicesEPK6aiFacejj.exit

._crit_edge.i445:                                 ; preds = %bb.fq, %.preheader.i442
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %_ZN12_GLOBAL__N_122CheckValidFacesIndicesEPK6aiFacejj.exit.thread, label %.preheader.i442, !llvm.loop !59

_ZN12_GLOBAL__N_122CheckValidFacesIndicesEPK6aiFacejj.exit: ; preds = %bb.fr
  %i.ayx = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.fs unwind label %bb.ft

bb.fs:                                            ; preds = %_ZN12_GLOBAL__N_122CheckValidFacesIndicesEPK6aiFacejj.exit
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ayx, ptr noundef nonnull @.str.14)
          to label %_ZN12_GLOBAL__N_122CheckValidFacesIndicesEPK6aiFacejj.exit.thread unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %_ZN12_GLOBAL__N_122CheckValidFacesIndicesEPK6aiFacejj.exit
  %i.ayy = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN12_GLOBAL__N_122CheckValidFacesIndicesEPK6aiFacejj.exit.thread: ; preds = %._crit_edge.i445, %.loopexit568.thread, %.loopexit568, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit362.thread, %switch.lookup1742, %bb.fs
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.fl, i64 192
  %i.aza = load ptr, ptr %i.ayz, align 8          ; 3 uses
  %.not.i446 = icmp eq ptr %i.aza, null
  br i1 %.not.i446, label %_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit

_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit: ; preds = %_ZN12_GLOBAL__N_122CheckValidFacesIndicesEPK6aiFacejj.exit.thread
  %i.azb = getelementptr inbounds nuw i8, ptr %i.fl, i64 200
  %i.azc = load i32, ptr %i.azb, align 8          ; 2 uses
  %i.azd = zext i32 %i.azc to i64
  %i.aze = getelementptr inbounds nuw i8, ptr %i.aza, i64 8
  %i.azf = load ptr, ptr %i.aze, align 8
  %i.azg = load ptr, ptr %i.aza, align 8
  %i.azh = ptrtoint ptr %i.azf to i64
  %i.azi = ptrtoint ptr %i.azg to i64
  %i.azj = sub i64 %i.azh, %i.azi
  %i.azk = ashr exact i64 %i.azj, 3
  %i.azl = icmp ugt i64 %i.azk, %i.azd
  br i1 %i.azl, label %bb.fu, label %_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit.thread

bb.fu:                                            ; preds = %_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit
  %i.azm = getelementptr inbounds nuw i8, ptr %i.fm, i64 232
  store i32 %i.azc, ptr %i.azm, align 8
  br label %_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit.thread

_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit.thread: ; preds = %_ZN12_GLOBAL__N_122CheckValidFacesIndicesEPK6aiFacejj.exit.thread, %bb.fu, %_ZNK10glTFCommon3RefIN4glTF8MaterialEEcvbEv.exit
  %i.azn = add i32 %.0259903, 1                   ; 2 uses
  %i.azo = zext i32 %i.azn to i64                 ; 2 uses
  %i.azp = load ptr, ptr %i.eq, align 8
  %i.azq = load ptr, ptr %i.ep, align 8           ; 2 uses
  %i.azr = ptrtoint ptr %i.azp to i64
  %i.azs = ptrtoint ptr %i.azq to i64
  %i.azt = sub i64 %i.azr, %i.azs
  %i.azu = sdiv exact i64 %i.azt, 208
  %i.azv = icmp ugt i64 %i.azu, %i.azo
  br i1 %i.azv, label %bb.ac, label %._crit_edge906, !llvm.loop !60

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.b
  %i.azw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.azx = load ptr, ptr %i.azw, align 8          ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 24
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azx, i64 16
  %i.baa = ptrtoint ptr %.sroa.10.0.lcssa to i64  ; 3 uses
  %i.bab = ptrtoint ptr %.sroa.0545.0.lcssa to i64 ; 4 uses
  %i.bac = sub i64 %i.baa, %i.bab                 ; 2 uses
  %i.bad = lshr exact i64 %i.bac, 3
  %i.bae = trunc i64 %i.bad to i32                ; 2 uses
  store i32 %i.bae, ptr %i.azz, align 4
  %.not.i447 = icmp eq i32 %i.bae, 0
  br i1 %.not.i447, label %_ZN6Assimp12BaseImporter10CopyVectorIP6aiMeshEEvRSt6vectorIT_SaIS5_EERPS5_Rj.exit, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.baf = and i64 %i.bac, 34359738360
  %i.bag = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.baf) #32
          to label %.noexc449 unwind label %bb.fx ; 7 uses

.noexc449:                                        ; preds = %bb.fv
  store ptr %i.bag, ptr %i.azy, align 8
  %.not5.i.i = icmp eq ptr %.sroa.0545.0.lcssa, %.sroa.10.0.lcssa
  br i1 %.not5.i.i, label %_ZN6Assimp12BaseImporter10CopyVectorIP6aiMeshEEvRSt6vectorIT_SaIS5_EERPS5_Rj.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.noexc449
  %i.bah = sub i64 %i.baa, %i.bab
  %i.bai = add i64 %i.bah, -8                     ; 2 uses
  %i.baj = lshr i64 %i.bai, 3
  %i.bak = add nuw nsw i64 %i.baj, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.bai, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader1750, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bal = add i64 %i.baa, -8
  %i.bam = sub i64 %i.bal, %i.bab
  %i.ban = and i64 %i.bam, -8
  %i.bao = add i64 %i.ban, 8                      ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0545.0.lcssa, i64 %i.bao
  %scevgep1729 = getelementptr i8, ptr %i.bag, i64 %i.bao
  %bound0 = icmp ult ptr %.sroa.0545.0.lcssa, %scevgep1729
  %bound1 = icmp ult ptr %i.bag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader1750, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bak, 4611686018427387900    ; 3 uses
  %i.bap = shl i64 %n.vec, 3                      ; 2 uses
  %i.baq = getelementptr i8, ptr %i.bag, i64 %i.bap
  %i.bar = getelementptr i8, ptr %.sroa.0545.0.lcssa, i64 %i.bap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bas = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bag, i64 %i.bas ; 3 uses
  %next.gep1730 = getelementptr i8, ptr %.sroa.0545.0.lcssa, i64 %i.bas ; 3 uses
  %i.bat = getelementptr i8, ptr %next.gep1730, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep1730, align 8, !alias.scope !61, !noalias !64
  %wide.load1731 = load <2 x ptr>, ptr %i.bat, align 8, !alias.scope !61, !noalias !64
  %i.bau = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load1732 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !64
  %wide.load1733 = load <2 x ptr>, ptr %i.bau, align 8, !alias.scope !64
  store <2 x ptr> %wide.load1732, ptr %next.gep1730, align 8, !alias.scope !61, !noalias !64
  store <2 x ptr> %wide.load1733, ptr %i.bat, align 8, !alias.scope !61, !noalias !64
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !64
  store <2 x ptr> %wide.load1731, ptr %i.bau, align 8, !alias.scope !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bav = icmp eq i64 %index.next, %n.vec
  br i1 %i.bav, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bak, %n.vec
  br i1 %cmp.n, label %_ZN6Assimp12BaseImporter10CopyVectorIP6aiMeshEEvRSt6vectorIT_SaIS5_EERPS5_Rj.exit, label %.lr.ph.i.i.preheader1750

.lr.ph.i.i.preheader1750:                         ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.07.i.i.ph = phi ptr [ %i.bag, %vector.memcheck ], [ %i.bag, %.lr.ph.i.i.preheader ], [ %i.baq, %middle.block ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.0545.0.lcssa, %vector.memcheck ], [ %.sroa.0545.0.lcssa, %.lr.ph.i.i.preheader ], [ %i.bar, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader1750, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.baz, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader1750 ] ; 3 uses
  %.sroa.03.06.i.i = phi ptr [ %i.bay, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader1750 ] ; 3 uses
  %i.baw = load ptr, ptr %.sroa.03.06.i.i, align 8
  %i.bax = load ptr, ptr %.07.i.i, align 8
  store ptr %i.bax, ptr %.sroa.03.06.i.i, align 8
  store ptr %i.baw, ptr %.07.i.i, align 8
  %i.bay = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8 ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %.not.i.i448 = icmp eq ptr %i.bay, %.sroa.10.0.lcssa
  br i1 %.not.i.i448, label %_ZN6Assimp12BaseImporter10CopyVectorIP6aiMeshEEvRSt6vectorIT_SaIS5_EERPS5_Rj.exit, label %.lr.ph.i.i, !llvm.loop !69

_ZN6Assimp12BaseImporter10CopyVectorIP6aiMeshEEvRSt6vectorIT_SaIS5_EERPS5_Rj.exit: ; preds = %.lr.ph.i.i, %middle.block, %.noexc449, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.not.i.i.i450 = icmp eq ptr %.sroa.0545.0.lcssa, null
  br i1 %.not.i.i.i450, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.fw

bb.fw:                                            ; preds = %_ZN6Assimp12BaseImporter10CopyVectorIP6aiMeshEEvRSt6vectorIT_SaIS5_EERPS5_Rj.exit
  %i.bba = ptrtoint ptr %.sroa.16.0.lcssa to i64
  %i.bbb = sub i64 %i.bba, %i.bab
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0545.0.lcssa, i64 noundef %i.bbb) #29
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %_ZN6Assimp12BaseImporter10CopyVectorIP6aiMeshEEvRSt6vectorIT_SaIS5_EERPS5_Rj.exit, %bb.fw
  ret void

bb.fx:                                            ; preds = %bb.fv, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.d
  %i.bbc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit596, %.loopexit.split-lp597, %.loopexit590, %.loopexit.split-lp, %.loopexit591, %.loopexit.split-lp592, %.loopexit602, %.loopexit.split-lp603, %.loopexit608, %.loopexit.split-lp609, %bb.ft, %bb.fp, %bb.fj, %bb.fe, %bb.ev, %bb.eq, %bb.ei, %bb.eg, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i461, %bb.ec, %bb.dx, %bb.ds, %bb.dj, %bb.de, %bb.cw, %bb.l, %bb.m, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.fx
  %.sroa.16.3 = phi ptr [ %.sroa.16.4, %bb.cw ], [ %.sroa.16.0910, %bb.l ], [ %.sroa.16.0.lcssa, %bb.fx ], [ %.sroa.16.0910, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.16.0910, %.loopexit.split-lp609 ], [ %.sroa.16.0910, %bb.r ], [ %.sroa.16.0910, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.16.0910, %bb.w ], [ %.sroa.16.0910, %bb.m ], [ %.sroa.16.0910, %.loopexit.split-lp603 ], [ %.sroa.16.4, %bb.bb ], [ %.sroa.10.1901, %.loopexit.split-lp592 ], [ %.sroa.16.4, %bb.ft ], [ %.sroa.16.4, %bb.ei ], [ %.sroa.16.4, %bb.eg ], [ %.sroa.16.4, %bb.eq ], [ %.sroa.16.4, %bb.ev ], [ %.sroa.16.4, %bb.fe ], [ %.sroa.16.4, %bb.fj ], [ %.sroa.16.4, %bb.fp ], [ %.sroa.16.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %.sroa.16.4, %.loopexit.split-lp ], [ %.sroa.16.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i461 ], [ %.sroa.16.4, %bb.ec ], [ %.sroa.16.4, %bb.dx ], [ %.sroa.16.4, %bb.ds ], [ %.sroa.16.4, %bb.dj ], [ %.sroa.16.4, %bb.de ], [ %.sroa.16.0910, %.loopexit608 ], [ %.sroa.16.0910, %.loopexit602 ], [ %.sroa.16.1900.lcssa, %.loopexit591 ], [ %.sroa.16.4, %.loopexit590 ], [ %.sroa.16.4, %.loopexit596 ], [ %.sroa.16.4, %.loopexit.split-lp597 ]
  %.sroa.0545.3 = phi ptr [ %.sroa.0545.4, %bb.cw ], [ %.sroa.0545.0912, %bb.l ], [ %.sroa.0545.0.lcssa, %bb.fx ], [ %.sroa.0545.0912, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.0545.0912, %.loopexit.split-lp609 ], [ %.sroa.0545.0912, %bb.r ], [ %.sroa.0545.0912, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0545.0912, %bb.w ], [ %.sroa.0545.0912, %bb.m ], [ %.sroa.0545.0912, %.loopexit.split-lp603 ], [ %.sroa.0545.4, %bb.bb ], [ %.sroa.0545.1902, %.loopexit.split-lp592 ], [ %.sroa.0545.4, %bb.ft ], [ %.sroa.0545.4, %bb.ei ], [ %.sroa.0545.4, %bb.eg ], [ %.sroa.0545.4, %bb.eq ], [ %.sroa.0545.4, %bb.ev ], [ %.sroa.0545.4, %bb.fe ], [ %.sroa.0545.4, %bb.fj ], [ %.sroa.0545.4, %bb.fp ], [ %.sroa.0545.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %.sroa.0545.4, %.loopexit.split-lp ], [ %.sroa.0545.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i461 ], [ %.sroa.0545.4, %bb.ec ], [ %.sroa.0545.4, %bb.dx ], [ %.sroa.0545.4, %bb.ds ], [ %.sroa.0545.4, %bb.dj ], [ %.sroa.0545.4, %bb.de ], [ %.sroa.0545.0912, %.loopexit608 ], [ %.sroa.0545.0912, %.loopexit602 ], [ %.sroa.0545.1902, %.loopexit591 ], [ %.sroa.0545.4, %.loopexit590 ], [ %.sroa.0545.4, %.loopexit596 ], [ %.sroa.0545.4, %.loopexit.split-lp597 ] ; 3 uses
  %.pn303.pn.pn = phi { ptr, i32 } [ %i.acb, %bb.cw ], [ %i.by, %bb.l ], [ %i.bbc, %bb.fx ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp611, %.loopexit.split-lp609 ], [ %i.dk, %bb.r ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn301558, %bb.w ], [ %i.bz, %bb.m ], [ %lpad.loopexit.split-lp605, %.loopexit.split-lp603 ], [ %i.mj, %bb.bb ], [ %lpad.loopexit.split-lp594, %.loopexit.split-lp592 ], [ %i.ayy, %bb.ft ], [ %i.aos, %bb.ei ], [ %i.aon, %bb.eg ], [ %i.aql, %bb.eq ], [ %i.asg, %bb.ev ], [ %i.auo, %bb.fe ], [ %i.awl, %bb.fj ], [ %i.ayl, %bb.fp ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn.i459, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i461 ], [ %i.anf, %bb.ec ], [ %i.akw, %bb.dx ], [ %i.aiq, %bb.ds ], [ %i.afz, %bb.dj ], [ %i.adz, %bb.de ], [ %lpad.loopexit610, %.loopexit608 ], [ %lpad.loopexit604, %.loopexit602 ], [ %lpad.loopexit593, %.loopexit591 ], [ %lpad.loopexit, %.loopexit590 ], [ %lpad.loopexit598, %.loopexit596 ], [ %lpad.loopexit.split-lp599, %.loopexit.split-lp597 ]
  %.not.i.i.i451 = icmp eq ptr %.sroa.0545.3, null
  br i1 %.not.i.i.i451, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit452, label %bb.fy

bb.fy:                                            ; preds = %.body
  %i.bbd = ptrtoint ptr %.sroa.16.3 to i64
  %i.bbe = ptrtoint ptr %.sroa.0545.3 to i64
  %i.bbf = sub i64 %i.bbd, %i.bbe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0545.3, i64 noundef %i.bbf) #29
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit452

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit452:        ; preds = %.body, %bb.fy
  resume { ptr, i32 } %.pn303.pn.pn

bb.fz:                                            ; preds = %bb.u, %bb.k
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #28
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringIN4glTF4Mesh10SExtension5ETypeEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !alias.scope !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !alias.scope !76
  store i8 0, ptr %i.b, align 8, !alias.scope !76
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !noalias !76 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !76 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !noalias !76 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
end_hunk_1
begin_hunk_2_@_ZN17DeadlyImportErrorC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_:bb.a
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #28
  resume { ptr, i32 } %i.o
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_KcERA59_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(59) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(32) %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(59) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(59) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA32_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA32_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(32) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA32_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #28
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA32_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(32) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(32) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(32) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 13 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !609

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4
  store i32 %i.s, ptr %i.d, align 4
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !609

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4
  store i32 %i.ac, ptr %i.ab, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec129 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec129, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body132 ] ; 2 uses
  %i.aj = shl i64 %index133, 2
  %next.gep134 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %broadcast.splat131, ptr %next.gep134, align 4
  store <4 x i32> %broadcast.splat131, ptr %i.ak, align 4
  %index.next135 = add nuw i64 %index133, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.al, label %middle.block136, label %vector.body132, !llvm.loop !865

middle.block136:                                  ; preds = %vector.body132
  %cmp.n137 = icmp eq i64 %i.ag, %n.vec129
  br i1 %cmp.n137, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block136
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block136 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !866

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = add i64 %i.ar, -4                       ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !867

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !868

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !609

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = sub i64 %i.f, %i.j
  %i.bh = add i64 %i.bg, -4                       ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader153, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph113
  %index119 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !869

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader153

.lr.ph.i.i.i71.preheader153:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader153, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader153 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !870

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #31
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4               ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %bb.t
  %n.vec143 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec143, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph141
  %index147 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body146 ] ; 2 uses
  %i.cn = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep148, i64 16
  store <4 x i32> %broadcast.splat145, ptr %next.gep148, align 4
  store <4 x i32> %broadcast.splat145, ptr %i.co, align 4
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cp, label %middle.block150, label %vector.body146, !llvm.loop !871

middle.block150:                                  ; preds = %vector.body146
  %cmp.n151 = icmp eq i64 %i.ck, %n.vec143
  br i1 %cmp.n151, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block150
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !872

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block150
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !609

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4
  store i32 %i.ct, ptr %i.ce, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !609

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4
  store i32 %i.cy, ptr %i.cu, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #29
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block136, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_2
