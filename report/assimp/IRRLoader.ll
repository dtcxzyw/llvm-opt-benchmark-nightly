Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IRRLoader?download=true
inline.NumInlined: 1776
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp11IRRImporter11BuildSkyboxERSt6vectorIP6aiMeshSaIS3_EES1_IP10aiMaterialSaIS8_EE:bb.a
  %i.ml = trunc i64 %i.mk to i32
  %i.mm = add i32 %i.ml, -1
  %i.mn = load ptr, ptr %i.me, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 232
  store i32 %i.mm, ptr %i.mo, align 8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11IRRImporter12CopyMaterialERSt6vectorIP10aiMaterialSaIS3_EERS1_ISt4pairIS3_jESaIS8_EERjP6aiMesh(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef writeonly captures(none) initializes((232, 236)) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %3, align 4                ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %1, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  store i32 %i.n, ptr %3, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi i32 [ %i.n, %bb.c ], [ %i.e, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i32 %i.o, ptr %i.p, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.a
  %i.q = ptrtoint ptr %i.c to i64
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ugt i64 %i.s, 16
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull @.str.7)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %1, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i32 %i.ac, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %2, align 8               ; 2 uses
  %i.af = load ptr, ptr %i.v, align 8             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.not.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.ae, align 8
  store ptr %i.ai, ptr %i.af, align 8
  %i.aj = load ptr, ptr %i.v, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %i.v, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %1, align 8               ; 4 uses
  %i.am = ptrtoint ptr %i.af to i64
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.j, label %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #29
  unreachable

_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #28 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  %i.ay = load ptr, ptr %i.ae, align 8
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = icmp sgt i64 %i.ao, 0
  br i1 %i.az, label %bb.k, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bb = load ptr, ptr %i.ag, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.bd) #27
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.aw, ptr %1, align 8
  store ptr %i.ba, ptr %i.v, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.be, ptr %i.ag, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.h, %bb.d
  ret void
}

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11IRRImporter17ComputeAnimationsEPNS0_4NodeEP6aiNodeRSt6vectorIP10aiNodeAnimSaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(188) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %.loopexit557, label %.preheader558

bb.b:                                             ; preds = %bb.e
  switch i32 %.1, label %bb.g [
    i32 0, label %.loopexit557
    i32 1, label %bb.f
  ]

.preheader558:                                    ; preds = %bb.a, %bb.e
  %.0562 = phi i32 [ %.1, %bb.e ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.0524.0561 = phi ptr [ %i.h, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0524.0561, i64 16
  %i.e = load i32, ptr %i.d, align 8
  switch i32 %i.e, label %bb.d [
    i32 0, label %bb.c
    i32 5, label %bb.c
  ]

bb.c:                                             ; preds = %.preheader558, %.preheader558
  %i.f = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull @.str.8)
  br label %bb.e

bb.d:                                             ; preds = %.preheader558
  %i.g = add i32 %.0562, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.0562, %bb.c ], [ %i.g, %bb.d ] ; 3 uses
  %i.h = load ptr, ptr %.sroa.0524.0561, align 8  ; 2 uses
  %.not = icmp eq ptr %i.h, %i.a
  br i1 %.not, label %bb.b, label %.preheader558, !llvm.loop !10

bb.f:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull @.str.9)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %.sroa.0518.0579 = load ptr, ptr %i.a, align 8  ; 2 uses
  %.not551580 = icmp eq ptr %.sroa.0518.0579, %i.a
  br i1 %.not551580, label %.loopexit557, label %.lr.ph585

.lr.ph585:                                        ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1096 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph585, %bb.bt
  %.sroa.0518.0583 = phi ptr [ %.sroa.0518.0579, %.lr.ph585 ], [ %.sroa.0518.0, %bb.bt ] ; 21 uses
  %.2582 = phi i32 [ %.1, %.lr.ph585 ], [ %.4, %bb.bt ] ; 5 uses
  %.0237581 = phi i32 [ 0, %.lr.ph585 ], [ %.1238, %bb.bt ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  switch i32 %i.q, label %bb.i [
    i32 0, label %bb.bt
    i32 5, label %bb.bt
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #28 ; 31 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1048 ; 4 uses
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1056
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1064 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.r, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = add i32 %.2582, -1                       ; 2 uses
  %.not259 = icmp eq i32 %.0237581, %i.v
  br i1 %.not259, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.x = load i64, ptr %i.j, align 8
  %.not260 = icmp eq i64 %i.x, 0
  br i1 %.not260, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.k, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.z = phi ptr [ %i.y, %bb.k ], [ @.str.11, %bb.j ]
  %i.aa = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.w, i64 noundef 1024, ptr noundef nonnull @.str.10, i32 noundef %i.v, ptr noundef %i.z) #26
  store i32 %i.aa, ptr %i.r, align 8
  %i.ab = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28 ; 10 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ab)
          to label %.preheader unwind label %bb.n

.preheader:                                       ; preds = %bb.l
  %i.ac = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1104
  %i.ae = load i32, ptr %i.ad, align 8
  %.not586 = icmp eq i32 %i.ae, 0
  br i1 %.not586, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.lcssa = phi ptr [ %i.ac, %.preheader ], [ %i.av, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1096
  store ptr %.lcssa, ptr %i.af, align 8
  %i.ag = icmp eq ptr %i.ab, %i.r
  br i1 %i.ag, label %_ZN8aiStringaSERKS_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ah = load i32, ptr %i.r, align 8
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.aj = zext nneg i32 %spec.select.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %i.w, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i8 0, ptr %i.ak, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %._crit_edge, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 1104
  store i32 1, ptr %i.al, align 8
  %i.am = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #28 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 1112
  store ptr %i.am, ptr %i.an, align 8
  store ptr %2, ptr %i.am, align 8
  store ptr %i.ab, ptr %i.l, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 1144) #27
  resume { ptr, i32 } %i.ao

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %i.ap = phi ptr [ %i.av, %bb.p ], [ %i.ac, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1112
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = icmp eq ptr %i.at, %2
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  store ptr %i.ab, ptr %i.as, align 8
  %.pre = load ptr, ptr %i.l, align 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.o
  %i.av = phi ptr [ %i.ap, %.lr.ph ], [ %.pre, %bb.o ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1104
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !11

bb.q:                                             ; preds = %bb.i
  %i.ba = load i64, ptr %i.j, align 8             ; 4 uses
  %i.bb = icmp ugt i64 %i.ba, 1023
  br i1 %i.bb, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = trunc nuw nsw i64 %i.ba to i32
  store i32 %i.bc, ptr %i.r, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.be = load ptr, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 1 %i.be, i64 %i.ba, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ba
  store i8 0, ptr %i.bf, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.r, %bb.q, %_ZN8aiStringaSERKS_.exit
  %i.bg = add i32 %.0237581, 1                    ; 2 uses
  %i.bh = load i32, ptr %i.p, align 8
  switch i32 %i.bh, label %.loopexit553 [
    i32 1, label %bb.s
    i32 2, label %bb.ar
    i32 3, label %bb.ay
    i32 4, label %bb.bb
  ]

bb.s:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 24 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 8
  %i.bk = fmul float %i.bj, 1.000000e+02
  %i.bl = fptosi float %i.bk to i32
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 28
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 32
  %6 = srem i32 %i.bl, 360                        ; 7 uses
  %i.bm = load <2 x float>, ptr %4, align 4
  %i.bn = fmul <2 x float> %i.bm, splat (float 1.000000e+02)
  %i.bo = fptosi <2 x float> %i.bn to <2 x i32>
  %i.bp = srem <2 x i32> %i.bo, splat (i32 360)   ; 2 uses
  %i.bq = extractelement <2 x i32> %i.bp, i64 1   ; 9 uses
  %i.br = extractelement <2 x i32> %i.bp, i64 0   ; 9 uses
  %i.bs = mul nsw i32 %i.br, %6
  %.not262 = icmp eq i32 %i.bs, 0
  %i.bt = mul nsw i32 %i.bq, %i.br
  %.not263 = icmp eq i32 %i.bt, 0
  %or.cond = select i1 %.not262, i1 true, i1 %.not263
  br i1 %or.cond, label %_Z20FindSuitableMultipleRi.exit276, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = icmp slt i32 %6, 3
  br i1 %i.bu, label %_Z20FindSuitableMultipleRi.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = icmp samesign ult i32 %6, 10
  br i1 %i.bv, label %_Z20FindSuitableMultipleRi.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = icmp samesign ult i32 %6, 20
  br i1 %i.bw, label %_Z20FindSuitableMultipleRi.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %spec.select = tail call i32 @llvm.umax.i32(i32 %6, i32 30)
  br label %_Z20FindSuitableMultipleRi.exit

_Z20FindSuitableMultipleRi.exit:                  ; preds = %bb.w, %bb.t, %bb.u, %bb.v
  %.sroa.0478.1 = phi i32 [ %spec.select, %bb.w ], [ 3, %bb.t ], [ 20, %bb.v ], [ 10, %bb.u ] ; 4 uses
  %i.bx = icmp slt i32 %i.br, 3
  br i1 %i.bx, label %_Z20FindSuitableMultipleRi.exit273, label %bb.x

bb.x:                                             ; preds = %_Z20FindSuitableMultipleRi.exit
  %i.by = icmp samesign ult i32 %i.br, 10
  br i1 %i.by, label %_Z20FindSuitableMultipleRi.exit273, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = icmp samesign ult i32 %i.br, 20
  br i1 %i.bz, label %_Z20FindSuitableMultipleRi.exit273, label %bb.z

bb.z:                                             ; preds = %bb.y
  %spec.select549 = tail call i32 @llvm.umax.i32(i32 %i.br, i32 30)
  br label %_Z20FindSuitableMultipleRi.exit273

_Z20FindSuitableMultipleRi.exit273:               ; preds = %bb.z, %_Z20FindSuitableMultipleRi.exit, %bb.x, %bb.y
  %.sroa.10483.1 = phi i32 [ %spec.select549, %bb.z ], [ 3, %_Z20FindSuitableMultipleRi.exit ], [ 20, %bb.y ], [ 10, %bb.x ] ; 4 uses
  %i.ca = icmp slt i32 %i.bq, 3
  br i1 %i.ca, label %_Z20FindSuitableMultipleRi.exit276.thread, label %bb.aa

bb.aa:                                            ; preds = %_Z20FindSuitableMultipleRi.exit273
  %i.cb = icmp samesign ult i32 %i.bq, 10
  br i1 %i.cb, label %_Z20FindSuitableMultipleRi.exit276.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = icmp samesign ult i32 %i.bq, 20
  br i1 %i.cc, label %_Z20FindSuitableMultipleRi.exit276.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %spec.select550 = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 30)
  br label %_Z20FindSuitableMultipleRi.exit276.thread

_Z20FindSuitableMultipleRi.exit276:               ; preds = %bb.s
  %.not264 = icmp eq i32 %6, 0
  br i1 %.not264, label %.thread, label %_Z20FindSuitableMultipleRi.exit276.thread

_Z20FindSuitableMultipleRi.exit276.thread:        ; preds = %bb.ac, %bb.ab, %bb.aa, %_Z20FindSuitableMultipleRi.exit273, %_Z20FindSuitableMultipleRi.exit276
  %.sroa.18.0541 = phi i32 [ %i.bq, %_Z20FindSuitableMultipleRi.exit276 ], [ %spec.select550, %bb.ac ], [ 10, %bb.aa ], [ 20, %bb.ab ], [ 3, %_Z20FindSuitableMultipleRi.exit273 ] ; 3 uses
  %.sroa.10483.0538 = phi i32 [ %i.br, %_Z20FindSuitableMultipleRi.exit276 ], [ %.sroa.10483.1, %bb.ac ], [ %.sroa.10483.1, %bb.aa ], [ %.sroa.10483.1, %bb.ab ], [ %.sroa.10483.1, %_Z20FindSuitableMultipleRi.exit273 ] ; 4 uses
  %.sroa.0478.0536 = phi i32 [ %6, %_Z20FindSuitableMultipleRi.exit276 ], [ %.sroa.0478.1, %bb.ac ], [ %.sroa.0478.1, %bb.aa ], [ %.sroa.0478.1, %bb.ab ], [ %.sroa.0478.1, %_Z20FindSuitableMultipleRi.exit273 ] ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %_Z20FindSuitableMultipleRi.exit276.thread
  %.013.i.i = phi i32 [ %i.cd, %bb.ad ], [ %.sroa.0478.0536, %_Z20FindSuitableMultipleRi.exit276.thread ]
  %.0912.i.i = phi i32 [ %i.cf, %bb.ad ], [ 360, %_Z20FindSuitableMultipleRi.exit276.thread ] ; 3 uses
  %i.cd = srem i32 %.013.i.i, %.0912.i.i          ; 4 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.cf = srem i32 %.0912.i.i, %i.cd              ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ae, label %.lr.ph.i.i, !llvm.loop !12

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i.i
  %.010.i11.i = phi i32 [ %.0912.i.i, %.lr.ph.i.i ], [ %i.cd, %bb.ad ]
  %i.ch = sdiv i32 360, %.010.i11.i
  %i.ci = mul nsw i32 %i.ch, %.sroa.0478.0536     ; 3 uses
  %i.cj = sitofp i32 %.sroa.0478.0536 to float    ; 3 uses
  %.not265 = icmp eq i32 %.sroa.10483.0538, 0
  br i1 %.not265, label %bb.ah, label %bb.af

.thread:                                          ; preds = %_Z20FindSuitableMultipleRi.exit276
  %.not265641 = icmp eq i32 %i.br, 0
  br i1 %.not265641, label %.thread671, label %.lr.ph.i.i277.preheader

bb.af:                                            ; preds = %bb.ae
  %i.ck = icmp eq i32 %i.ci, 0
  br i1 %i.ck, label %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit285, label %.lr.ph.i.i277.preheader

.lr.ph.i.i277.preheader:                          ; preds = %.thread, %bb.af
  %.not264545642669 = phi i1 [ false, %bb.af ], [ true, %.thread ] ; 2 uses
  %.sroa.18.0542644667 = phi i32 [ %.sroa.18.0541, %bb.af ], [ %i.bq, %.thread ] ; 2 uses
  %.sroa.10483.0539646665 = phi i32 [ %.sroa.10483.0538, %bb.af ], [ %i.br, %.thread ] ; 3 uses
  %.sroa.0478.0537647663 = phi float [ %i.cj, %bb.af ], [ 0.000000e+00, %.thread ] ; 2 uses
  %.0240649661 = phi i32 [ %i.ci, %bb.af ], [ 360, %.thread ] ; 3 uses
  br label %.lr.ph.i.i277

.lr.ph.i.i277:                                    ; preds = %.lr.ph.i.i277.preheader, %bb.ag
  %.013.i.i278 = phi i32 [ %i.cl, %bb.ag ], [ %.sroa.10483.0539646665, %.lr.ph.i.i277.preheader ]
  %.0912.i.i279 = phi i32 [ %i.cn, %bb.ag ], [ %.0240649661, %.lr.ph.i.i277.preheader ] ; 3 uses
  %i.cl = srem i32 %.013.i.i278, %.0912.i.i279    ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit285, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i277
  %i.cn = srem i32 %.0912.i.i279, %i.cl           ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit285, label %.lr.ph.i.i277, !llvm.loop !12

_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit285:          ; preds = %.lr.ph.i.i277, %bb.ag, %bb.af
  %.not264545642670 = phi i1 [ false, %bb.af ], [ %.not264545642669, %bb.ag ], [ %.not264545642669, %.lr.ph.i.i277 ]
  %.sroa.18.0542644668 = phi i32 [ %.sroa.18.0541, %bb.af ], [ %.sroa.18.0542644667, %bb.ag ], [ %.sroa.18.0542644667, %.lr.ph.i.i277 ]
  %.sroa.10483.0539646666 = phi i32 [ %.sroa.10483.0538, %bb.af ], [ %.sroa.10483.0539646665, %bb.ag ], [ %.sroa.10483.0539646665, %.lr.ph.i.i277 ] ; 2 uses
  %.sroa.0478.0537647664 = phi float [ %i.cj, %bb.af ], [ %.sroa.0478.0537647663, %bb.ag ], [ %.sroa.0478.0537647663, %.lr.ph.i.i277 ]
  %.0240649662 = phi i32 [ 0, %bb.af ], [ %.0240649661, %bb.ag ], [ %.0240649661, %.lr.ph.i.i277 ]
  %.010.i11.i283 = phi i32 [ %.sroa.10483.0538, %bb.af ], [ %.0912.i.i279, %.lr.ph.i.i277 ], [ %i.cl, %bb.ag ]
  %i.cp = sdiv i32 %.0240649662, %.010.i11.i283
  %i.cq = mul nsw i32 %i.cp, %.sroa.10483.0539646666
  %i.cr = sitofp i32 %.sroa.10483.0539646666 to float
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit285, %bb.ae
  %.not265651 = phi i1 [ false, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit285 ], [ true, %bb.ae ] ; 3 uses
  %.sroa.0478.0537648 = phi float [ %.sroa.0478.0537647664, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit285 ], [ %i.cj, %bb.ae ] ; 3 uses
  %.sroa.18.0542645 = phi i32 [ %.sroa.18.0542644668, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit285 ], [ %.sroa.18.0541, %bb.ae ] ; 4 uses
  %.not264545643 = phi i1 [ %.not264545642670, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit285 ], [ false, %bb.ae ] ; 3 uses
  %.sroa.10483.0540 = phi float [ %i.cr, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit285 ], [ 0.000000e+00, %bb.ae ] ; 3 uses
  %.1241 = phi i32 [ %i.cq, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit285 ], [ %i.ci, %bb.ae ] ; 3 uses
  %.not266 = icmp eq i32 %.sroa.18.0542645, 0
  br i1 %.not266, label %bb.ak, label %bb.ai

.thread671:                                       ; preds = %.thread
  %.not266678 = icmp eq i32 %i.bq, 0
  br i1 %.not266678, label %.loopexit553, label %.lr.ph.i.i286.preheader

bb.ai:                                            ; preds = %bb.ah
  %i.cs = icmp eq i32 %.1241, 0
  br i1 %i.cs, label %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit295, label %.lr.ph.i.i286.preheader

.lr.ph.i.i286.preheader:                          ; preds = %.thread671, %bb.ai
  %.not265651679711 = phi i1 [ %.not265651, %bb.ai ], [ true, %.thread671 ] ; 2 uses
  %.sroa.0478.0537648681709 = phi float [ %.sroa.0478.0537648, %bb.ai ], [ 0.000000e+00, %.thread671 ] ; 2 uses
  %.sroa.18.0542645683707 = phi i32 [ %.sroa.18.0542645, %bb.ai ], [ %i.bq, %.thread671 ] ; 3 uses
  %.not264545643684705 = phi i1 [ %.not264545643, %bb.ai ], [ true, %.thread671 ] ; 2 uses
  %.sroa.10483.0540686703 = phi float [ %.sroa.10483.0540, %bb.ai ], [ 0.000000e+00, %.thread671 ] ; 2 uses
  %.1241688701 = phi i32 [ %.1241, %bb.ai ], [ 360, %.thread671 ] ; 3 uses
  br label %.lr.ph.i.i286

.lr.ph.i.i286:                                    ; preds = %.lr.ph.i.i286.preheader, %bb.aj
  %.013.i.i287 = phi i32 [ %i.ct, %bb.aj ], [ %.sroa.18.0542645683707, %.lr.ph.i.i286.preheader ]
  %.0912.i.i288 = phi i32 [ %i.cv, %bb.aj ], [ %.1241688701, %.lr.ph.i.i286.preheader ] ; 3 uses
  %i.ct = srem i32 %.013.i.i287, %.0912.i.i288    ; 4 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit295, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i286
  %i.cv = srem i32 %.0912.i.i288, %i.ct           ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit295, label %.lr.ph.i.i286, !llvm.loop !12

_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit295:          ; preds = %.lr.ph.i.i286, %bb.aj, %bb.ai
  %.not265651679712 = phi i1 [ %.not265651, %bb.ai ], [ %.not265651679711, %bb.aj ], [ %.not265651679711, %.lr.ph.i.i286 ]
  %.sroa.0478.0537648681710 = phi float [ %.sroa.0478.0537648, %bb.ai ], [ %.sroa.0478.0537648681709, %bb.aj ], [ %.sroa.0478.0537648681709, %.lr.ph.i.i286 ]
  %.sroa.18.0542645683708 = phi i32 [ %.sroa.18.0542645, %bb.ai ], [ %.sroa.18.0542645683707, %bb.aj ], [ %.sroa.18.0542645683707, %.lr.ph.i.i286 ] ; 2 uses
  %.not264545643684706 = phi i1 [ %.not264545643, %bb.ai ], [ %.not264545643684705, %bb.aj ], [ %.not264545643684705, %.lr.ph.i.i286 ]
  %.sroa.10483.0540686704 = phi float [ %.sroa.10483.0540, %bb.ai ], [ %.sroa.10483.0540686703, %bb.aj ], [ %.sroa.10483.0540686703, %.lr.ph.i.i286 ]
  %.1241688702 = phi i32 [ 0, %bb.ai ], [ %.1241688701, %bb.aj ], [ %.1241688701, %.lr.ph.i.i286 ]
  %.010.i11.i293 = phi i32 [ %.sroa.18.0542645, %bb.ai ], [ %.0912.i.i288, %.lr.ph.i.i286 ], [ %i.ct, %bb.aj ]
  %i.cx = sdiv i32 %.1241688702, %.010.i11.i293
  %i.cy = mul nsw i32 %i.cx, %.sroa.18.0542645683708
  %i.cz = sitofp i32 %.sroa.18.0542645683708 to float
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit295, %bb.ah
  %.not266690 = phi i1 [ false, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit295 ], [ true, %bb.ah ]
  %.sroa.10483.0540687 = phi float [ %.sroa.10483.0540686704, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit295 ], [ %.sroa.10483.0540, %bb.ah ]
  %.not264545643685 = phi i1 [ %.not264545643684706, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit295 ], [ %.not264545643, %bb.ah ]
  %.sroa.0478.0537648682 = phi float [ %.sroa.0478.0537648681710, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit295 ], [ %.sroa.0478.0537648, %bb.ah ]
  %.not265651680 = phi i1 [ %.not265651679712, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit295 ], [ %.not265651, %bb.ah ]
  %.sroa.18.0543 = phi float [ %i.cz, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit295 ], [ 0.000000e+00, %bb.ah ]
  %.2242 = phi i32 [ %i.cy, %_ZN6Assimp4Math3lcmIiEET_S2_S2_.exit295 ], [ %.1241, %bb.ah ] ; 2 uses
  %i.da = icmp eq i32 %.2242, 360
  br i1 %i.da, label %.loopexit553, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.db = sitofp i32 %.2242 to float              ; 3 uses
  %i.dc = fdiv float %i.db, %.sroa.0478.0537648682
  %.0529 = select i1 %.not264545643685, float 0.000000e+00, float %i.dc ; 3 uses
  br i1 %.not265651680, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dd = fdiv float %i.db, %.sroa.10483.0540687  ; 2 uses
  %i.de = fcmp olt float %.0529, %i.dd
  %.sroa.speculated473 = select i1 %i.de, float %i.dd, float %.0529
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.1530 = phi float [ %.0529, %bb.al ], [ %.sroa.speculated473, %bb.am ] ; 3 uses
  br i1 %.not266690, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.df = fdiv float %i.db, %.sroa.18.0543        ; 2 uses
  %i.dg = fcmp olt float %.1530, %i.df
  %.sroa.speculated = select i1 %i.dg, float %i.df, float %.1530
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.2531 = phi float [ %.1530, %bb.an ], [ %.sroa.speculated, %bb.ao ]
  %i.dh = fpext float %.2531 to double
  %i.di = load double, ptr %i.m, align 8
  %i.dj = fmul double %i.di, %i.dh
  %i.dk = fptoui double %i.dj to i32              ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.r, i64 1040 ; 3 uses
  store i32 %i.dk, ptr %i.dl, align 8
  %i.dm = zext i32 %i.dk to i64                   ; 4 uses
  %i.dn = shl nuw nsw i64 %i.dm, 5
  %i.do = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dn) #28 ; 4 uses
  %i.dp = icmp eq i32 %i.dk, 0
  br i1 %i.dp, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %i.dm
  %i.dr = add nuw nsw i64 %i.dm, 576460752303423487
  %i.ds = and i64 %i.dr, 576460752303423487
  %xtraiter = and i64 %i.dm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.aq, %.prol.preheader
  %i.dt = phi ptr [ %i.dw, %.prol.preheader ], [ %i.do, %bb.aq ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.aq ]
  store double 0.000000e+00, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i32 1, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !13

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.aq
  %.unr = phi ptr [ %i.do, %bb.aq ], [ %i.dw, %.prol.preheader ]
  %i.dx = icmp samesign ult i64 %i.ds, 7
  br i1 %i.dx, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.dy = phi ptr [ %i.ew, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i32 1, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store double 0.000000e+00, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  store i32 1, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  store double 0.000000e+00, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 88
  store i32 1, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  store double 0.000000e+00, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 120
  store i32 1, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 128
  store double 0.000000e+00, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.dy, i64 152
  store i32 1, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 160
  store double 0.000000e+00, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dy, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 184
  store i32 1, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 192
  store double 0.000000e+00, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.dy, i64 216
  store i32 1, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.dy, i64 224
  store double 0.000000e+00, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dy, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dy, i64 248
  store i32 1, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dy, i64 256 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.dq
  br i1 %i.ex, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.ap
  store ptr %i.do, ptr %i.s, align 8
  %i.ey = load i32, ptr %i.dl, align 8
  %.not590 = icmp eq i32 %i.ey, 0
  br i1 %.not590, label %._crit_edge578, label %.lr.ph577

._crit_edge578:                                   ; preds = %.lr.ph577, %.loopexit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  store i32 3, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 1076
  store i32 3, ptr %i.fa, align 4
  br label %.loopexit553

.lr.ph577:                                        ; preds = %.loopexit, %.lr.ph577
  %indvars.iv604 = phi i64 [ %indvars.iv.next605, %.lr.ph577 ], [ 0, %.loopexit ] ; 3 uses
  %.sroa.10.0574 = phi float [ %i.gt, %.lr.ph577 ], [ 0.000000e+00, %.loopexit ] ; 2 uses
  %i.fb = phi <2 x float> [ %i.gr, %.lr.ph577 ], [ zeroinitializer, %.loopexit ] ; 3 uses
  %i.fc = load ptr, ptr %i.s, align 8
  %i.fd = getelementptr inbounds nuw [32 x i8], ptr %i.fc, i64 %indvars.iv604 ; 2 uses
  %i.fe = extractelement <2 x float> %i.fb, i64 0
  %i.ff = fmul float %i.fe, 5.000000e-01          ; 2 uses
  %i.fg = tail call noundef float @sinf(float noundef %i.ff) #26 ; 3 uses
  %i.fh = tail call noundef float @cosf(float noundef %i.ff) #26 ; 2 uses
  %i.fi = extractelement <2 x float> %i.fb, i64 1
  %i.fj = fmul float %i.fi, 5.000000e-01          ; 2 uses
  %i.fk = tail call noundef float @sinf(float noundef %i.fj) #26 ; 3 uses
  %i.fl = tail call noundef float @cosf(float noundef %i.fj) #26 ; 2 uses
  %i.fm = fmul float %.sroa.10.0574, 5.000000e-01 ; 2 uses
  %i.fn = tail call noundef float @sinf(float noundef %i.fm) #26 ; 3 uses
  %i.fo = tail call noundef float @cosf(float noundef %i.fm) #26 ; 2 uses
  %i.fp = fmul float %i.fg, %i.fk                 ; 2 uses
  %i.fq = fneg float %i.fp
  %i.fr = fmul float %i.fh, %i.fn
  %i.fs = fmul float %i.fg, %i.fn
  %i.ft = fneg float %i.fl
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fv = insertelement <4 x float> poison, float %i.fh, i64 0
  %i.fw = insertelement <4 x float> %i.fv, float %i.fg, i64 1
  %i.fx = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.fy = insertelement <4 x float> poison, float %i.fl, i64 0
  %i.fz = insertelement <4 x float> %i.fy, float %i.fo, i64 1 ; 2 uses
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gb = fmul <4 x float> %i.fx, %i.ga
  %i.gc = insertelement <4 x float> poison, float %i.fp, i64 0
  %i.gd = insertelement <4 x float> %i.gc, float %i.fo, i64 1
  %i.ge = insertelement <4 x float> %i.gd, float %i.fk, i64 2
  %i.gf = insertelement <4 x float> %i.ge, float %i.fs, i64 3
  %i.gg = insertelement <4 x float> poison, float %i.fn, i64 0 ; 2 uses
  %i.gh = insertelement <4 x float> %i.gg, float %i.fq, i64 1
  %i.gi = insertelement <4 x float> %i.gh, float %i.fr, i64 2
  %i.gj = insertelement <4 x float> %i.gi, float %i.ft, i64 3
  %i.gk = fmul <4 x float> %i.gf, %i.gj
  %i.gl = shufflevector <4 x float> %i.fz, <4 x float> %i.gg, <4 x i32> <i32 1, i32 4, i32 0, i32 poison>
  %i.gm = insertelement <4 x float> %i.gl, float %i.fk, i64 3
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %i.gb, <4 x float> %i.gk)
  store <4 x float> %i.gn, ptr %i.fu, align 8
  %i.go = trunc nuw i64 %indvars.iv604 to i32
  %i.gp = uitofp i32 %i.go to double
  store double %i.gp, ptr %i.fd, align 8
  %i.gq = load <2 x float>, ptr %i.bi, align 8
  %i.gr = fadd <2 x float> %i.fb, %i.gq
  %i.gs = load float, ptr %5, align 8
  %i.gt = fadd float %.sroa.10.0574, %i.gs
  %indvars.iv.next605 = add nuw nsw i64 %indvars.iv604, 1 ; 2 uses
  %i.gu = load i32, ptr %i.dl, align 8
  %i.gv = zext i32 %i.gu to i64
  %i.gw = icmp samesign ult i64 %indvars.iv.next605, %i.gv
  br i1 %i.gw, label %.lr.ph577, label %._crit_edge578, !llvm.loop !14

bb.ar:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 20 ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4
  %i.gz = fpext float %i.gy to double
  %i.ha = fdiv double 1.000000e+00, %i.gz
  %i.hb = fdiv double %i.ha, 1.000000e+03
  %i.hc = load double, ptr %i.m, align 8          ; 2 uses
  %i.hd = fdiv double 1.000000e+03, %i.hc
  %i.he = fmul double %i.hc, %i.hb
  %i.hf = fptoui double %i.he to i32              ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.r, i64 1028 ; 3 uses
  store i32 %i.hf, ptr %i.hg, align 4
  %i.hh = zext i32 %i.hf to i64                   ; 2 uses
  %i.hi = mul nuw nsw i64 %i.hh, 24
  %i.hj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hi) #28 ; 3 uses
  %i.hk = icmp eq i32 %i.hf, 0
  br i1 %i.hk, label %.loopexit552, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %i.hh
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %bb.as
  %i.hm = phi ptr [ %i.hj, %bb.as ], [ %i.ho, %bb.at ] ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.hn, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 24 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.hl
  br i1 %i.hp, label %.loopexit552, label %bb.at

.loopexit552:                                     ; preds = %bb.at, %bb.ar
  %i.hq = getelementptr inbounds nuw i8, ptr %i.r, i64 1032 ; 2 uses
  store ptr %i.hj, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 24 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 28
  %i.ht = load <2 x float>, ptr %i.hs, align 4    ; 7 uses
  %i.hu = extractelement <2 x float> %i.ht, i64 0 ; 5 uses
  %i.hv = fcmp une float %i.hu, 0.000000e+00
  br i1 %i.hv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.loopexit552
  %i.hw = fmul <2 x float> %i.ht, <float -0.000000e+00, float -5.000000e+01>
  %i.hx = load float, ptr %i.hr, align 8          ; 3 uses
  %i.hy = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hz = insertelement <2 x float> %i.hy, float %i.hx, i64 1
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> zeroinitializer, <2 x float> %i.hw)
  %i.ib = fmul float %i.hx, -0.000000e+00
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hu, float 5.000000e+01, float %i.ib)
  br label %bb.aw

bb.av:                                            ; preds = %.loopexit552
  %i.id = fneg float %i.hu
  %i.ie = tail call float @llvm.copysign.f32(float 0.000000e+00, float %i.id)
  %i.if = load float, ptr %i.hr, align 8          ; 3 uses
  %i.ig = extractelement <2 x float> %i.ht, i64 1
  %i.ih = fmul float %i.ig, -0.000000e+00
  %i.ii = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ij = insertelement <2 x float> %i.ii, float %i.if, i64 1
  %i.ik = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.il = insertelement <2 x float> %i.ik, float %i.ih, i64 1
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> <float 5.000000e+01, float 0.000000e+00>, <2 x float> %i.il)
  %i.in = fmul float %i.if, -5.000000e+01
  %i.io = tail call float @llvm.fmuladd.f32(float %i.hu, float 0.000000e+00, float %i.in)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ip = phi float [ %i.if, %bb.av ], [ %i.hx, %bb.au ] ; 2 uses
  %.sroa.14.0 = phi float [ %i.io, %bb.av ], [ %i.ic, %bb.au ] ; 4 uses
  %i.iq = phi <2 x float> [ %i.im, %bb.av ], [ %i.ia, %bb.au ] ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.iq, %i.iq
  %i.ir = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.is = extractelement <2 x float> %i.iq, i64 0 ; 2 uses
  %i.it = tail call float @llvm.fmuladd.f32(float %i.is, float %i.is, float %i.ir)
  %i.iu = tail call noundef float @llvm.fmuladd.f32(float %.sroa.14.0, float %.sroa.14.0, float %i.it) ; 2 uses
  %i.iv = fcmp oeq float %i.iu, 0.000000e+00
  br i1 %i.iv, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.aw
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.iu)
  %i.iw = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ix = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.iq, %i.iy
  %i.ja = fmul float %.sroa.14.0, %i.iw
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.aw, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.14.1 = phi float [ %.sroa.14.0, %bb.aw ], [ %i.ja, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %i.jb = phi <2 x float> [ %i.iq, %bb.aw ], [ %i.iz, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 4 uses
  %i.jc = extractelement <2 x float> %i.jb, i64 1
  %i.jd = extractelement <2 x float> %i.jb, i64 0
  %i.je = fneg <2 x float> %i.ht
  %i.jf = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jg = insertelement <2 x float> %i.jf, float %.sroa.14.1, i64 0
  %i.jh = fmul <2 x float> %i.jg, %i.je
  %i.ji = insertelement <2 x float> %i.jf, float %.sroa.14.1, i64 1
  %i.jj = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jk = insertelement <2 x float> %i.jj, float %i.ip, i64 1
  %i.jl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ji, <2 x float> %i.jk, <2 x float> %i.jh) ; 5 uses
  %i.jm = fneg float %i.ip
  %i.jn = fmul float %i.jc, %i.jm
  %i.jo = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.hu, float %i.jn) ; 4 uses
  %foldExtExtBinop729 = fmul <2 x float> %i.jl, %i.jl
  %i.jp = extractelement <2 x float> %foldExtExtBinop729, i64 1
  %i.jq = extractelement <2 x float> %i.jl, i64 0 ; 2 uses
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.jq, float %i.jq, float %i.jp)
  %i.js = tail call noundef float @llvm.fmuladd.f32(float %i.jo, float %i.jo, float %i.jr) ; 2 uses
  %i.jt = fcmp oeq float %i.js, 0.000000e+00
  br i1 %i.jt, label %_ZN10aiVector3tIfE9NormalizeEv.exit307, label %_ZN10aiVector3tIfEdVEf.exit.i305

_ZN10aiVector3tIfEdVEf.exit.i305:                 ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i306 = tail call noundef float @llvm.sqrt.f32(float %i.js)
  %i.ju = fdiv float 1.000000e+00, %sqrt.i.i306   ; 2 uses
  %i.jv = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x float> %i.jl, %i.jw
  %i.jy = fmul float %i.jo, %i.ju
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit307

_ZN10aiVector3tIfE9NormalizeEv.exit307:           ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i305
  %.sroa.0435.0 = phi <2 x float> [ %i.jl, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.jx, %_ZN10aiVector3tIfEdVEf.exit.i305 ]
  %.sroa.8.0 = phi float [ %i.jo, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.jy, %_ZN10aiVector3tIfEdVEf.exit.i305 ]
  %i.jz = load i32, ptr %i.hg, align 4
  %.not589 = icmp eq i32 %i.jz, 0
  br i1 %.not589, label %._crit_edge571, label %.lr.ph570

.lr.ph570:                                        ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit307
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 36
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 48
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 44
  br label %bb.ax

._crit_edge571:                                   ; preds = %bb.ax, %_ZN10aiVector3tIfE9NormalizeEv.exit307
  %i.kd = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  store i32 3, ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.r, i64 1076
  store i32 3, ptr %i.ke, align 4
  br label %.loopexit553

bb.ax:                                            ; preds = %.lr.ph570, %bb.ax
  %indvars.iv601 = phi i64 [ 0, %.lr.ph570 ], [ %indvars.iv.next602, %bb.ax ] ; 3 uses
  %i.kf = load ptr, ptr %i.hq, align 8
  %i.kg = getelementptr inbounds nuw [24 x i8], ptr %i.kf, i64 %indvars.iv601 ; 3 uses
  %i.kh = trunc nuw i64 %indvars.iv601 to i32
  %i.ki = uitofp i32 %i.kh to double
  %i.kj = fmul double %i.hd, %i.ki                ; 2 uses
  store double %i.kj, ptr %i.kg, align 8
  %i.kk = load float, ptr %i.gx, align 4
  %i.kl = fpext float %i.kk to double
  %i.km = fmul double %i.kj, %i.kl
  %i.kn = fptrunc double %i.km to float           ; 2 uses
  %i.ko = load float, ptr %i.kb, align 8          ; 2 uses
  %i.kp = tail call noundef float @cosf(float noundef %i.kn) #26 ; 2 uses
  %i.kq = fmul float %.sroa.8.0, %i.kp
  %i.kr = tail call noundef float @sinf(float noundef %i.kn) #26 ; 2 uses
  %i.ks = fmul float %.sroa.14.1, %i.kr
  %i.kt = fadd float %i.kq, %i.ks
  %i.ku = fmul float %i.ko, %i.kt
  %i.kv = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = fmul <2 x float> %.sroa.0435.0, %i.kw
  %i.ky = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fmul <2 x float> %i.jb, %i.kz
  %i.lb = fadd <2 x float> %i.kx, %i.la
  %i.lc = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.le = fmul <2 x float> %i.ld, %i.lb
  %i.lf = load <2 x float>, ptr %i.ka, align 4
  %i.lg = fadd <2 x float> %i.lf, %i.le
  %i.lh = load float, ptr %i.kc, align 4
  %i.li = fadd float %i.lh, %i.ku
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store <2 x float> %i.lg, ptr %i.lj, align 8
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store float %i.li, ptr %.sroa.4129.0..sroa_idx, align 8
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601, 1 ; 2 uses
  %i.lk = load i32, ptr %i.hg, align 4
  %i.ll = zext i32 %i.lk to i64
  %i.lm = icmp samesign ult i64 %indvars.iv.next602, %i.ll
  br i1 %i.lm, label %bb.ax, label %._crit_edge571, !llvm.loop !15

bb.ay:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 80
  %i.lo = load i8, ptr %i.ln, align 8, !range !7, !noundef !8
  %i.lp = trunc nuw i8 %i.lo to i1
  %i.lq = select i1 %i.lp, i32 3, i32 1           ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  store i32 %i.lq, ptr %i.lr, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.r, i64 1076
  store i32 %i.lq, ptr %i.ls, align 4
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0518.0583, i64 84 ; 2 uses
end_hunk_0
