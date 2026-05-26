inline.NumInlined: 526
inline.NumDeleted: 308
begin_hunk_0_@_ZN6Assimp21GenFaceNormalsProcess18GenMeshFaceNormalsEP6aiMesh:bb.a
  %i.tn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tm) #21
          to label %bb.ap unwind label %bb.h      ; 3 uses

bb.ap:                                            ; preds = %_ZN12_GLOBAL__N_119updateXMeshVerticesI6aiMeshEEvPT_RSt6vectorIiSaIiEE.exit
  %i.to = icmp eq ptr %i.td, %i.te
  br i1 %i.to, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.ap
  %i.tp = add i64 %i.tf, -12
  %i.tq = sub i64 %i.tp, %i.tg
  %.fr = freeze i64 %i.tq                         ; 2 uses
  %i.tr = urem i64 %.fr, 12
  %i.ts = sub nuw i64 %.fr, %i.tr
  %i.tt = add i64 %i.ts, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.tn, i8 0, i64 %i.tt, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ap
  store ptr %i.tn, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.tn, ptr align 4 %i.te, i64 %i.th, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.tu = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.tu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.tv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8
  %i.tx = ptrtoint ptr %i.tw to i64
  %i.ty = ptrtoint ptr %i.tu to i64
  %i.tz = sub i64 %i.tx, %i.ty
  call void @_ZdlPvm(ptr noundef nonnull %i.tu, i64 noundef %i.tz) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ua = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.ua, null
  br i1 %.not.i.i90, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ub = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.uc = ptrtoint ptr %i.ub to i64
  %i.ud = ptrtoint ptr %i.ua to i64
  %i.ue = sub i64 %i.uc, %i.ud                    ; 2 uses
  %i.uf = ashr exact i64 %i.ue, 3
  %i.ug = sub nsw i64 0, %i.uf
  %i.uh = getelementptr inbounds [8 x i8], ptr %i.ub, i64 %i.ug
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.ue) #20
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ui = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i91 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i.i91, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.uj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.uk = load ptr, ptr %i.uj, align 8
  %i.ul = ptrtoint ptr %i.uk to i64
  %i.um = ptrtoint ptr %i.ui to i64
  %i.un = sub i64 %i.ul, %i.um
  call void @_ZdlPvm(ptr noundef nonnull %i.ui, i64 noundef %i.un) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.az

bb.at:                                            ; preds = %bb.o, %bb.l, %_ZNSt10unique_ptrIA_9aiColor4tIfESt14default_deleteIS2_EED2Ev.exit103.i, %bb.h
  %.pn71.pn = phi { ptr, i32 } [ %i.en, %bb.o ], [ %i.bz, %bb.l ], [ %i.bk, %bb.h ], [ %.pn.i, %_ZNSt10unique_ptrIA_9aiColor4tIfESt14default_deleteIS2_EED2Ev.exit103.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.pre148 = load ptr, ptr %4, align 8            ; 3 uses
  %.not.i.i.i92 = icmp eq ptr %.pre148, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIiSaIiEED2Ev.exit93, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.uo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.up = load ptr, ptr %i.uo, align 8
  %i.uq = ptrtoint ptr %i.up to i64
  %i.ur = ptrtoint ptr %.pre148 to i64
  %i.us = sub i64 %i.uq, %i.ur
  call void @_ZdlPvm(ptr noundef nonnull %.pre148, i64 noundef %i.us) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit93

_ZNSt6vectorIiSaIiEED2Ev.exit93:                  ; preds = %.thread, %bb.at, %bb.au
  %.pn71.pn.pn207 = phi { ptr, i32 } [ %i.bj, %.thread ], [ %.pn71.pn, %bb.at ], [ %.pn71.pn, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit93, %bb.g
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn207, %_ZNSt6vectorIiSaIiEED2Ev.exit93 ], [ %i.bi, %bb.g ]
  %i.ut = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.ut, null
  br i1 %.not.i.i94, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.uu = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.uv = ptrtoint ptr %i.uu to i64
  %i.uw = ptrtoint ptr %i.ut to i64
  %i.ux = sub i64 %i.uv, %i.uw                    ; 2 uses
  %i.uy = ashr exact i64 %i.ux, 3
  %i.uz = sub nsw i64 0, %i.uy
  %i.va = getelementptr inbounds [8 x i8], ptr %i.uu, i64 %i.uz
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.ux) #20
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.pre149 = load ptr, ptr %2, align 8            ; 3 uses
  %.not.i.i.i96 = icmp eq ptr %.pre149, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit97, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.vb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = ptrtoint ptr %.pre149 to i64
  %i.vf = sub i64 %i.vd, %i.ve
  call void @_ZdlPvm(ptr noundef nonnull %.pre149, i64 noundef %i.vf) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit97

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit97:  ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn71.pn.pn.pn

bb.az:                                            ; preds = %bb.b, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, %bb.e
  %.052 = phi i1 [ true, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit ], [ false, %bb.e ], [ false, %bb.b ]
  ret i1 %.052
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef i32 @"_ZZN6Assimp21GenFaceNormalsProcess18GenMeshFaceNormalsEP6aiMeshENK3$_0clEjRK10aiVector3tIfE"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !19
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = lshr i32 %1, 6
  %.zext = zext nneg i32 %i.d to i64              ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.zext
  %i.f = and i64 %i.b, 63
  %i.g = shl nuw i64 1, %i.f                      ; 2 uses
  %i.h = load i64, ptr %i.e, align 8
  %i.i = and i64 %i.h, %i.g
  %.not = icmp eq i64 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !align !19 ; 5 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.n = load ptr, ptr %0, align 8, !nonnull !6, !align !19
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.zext ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = or i64 %i.q, %i.g
  store i64 %i.r, ptr %i.p, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.w = load ptr, ptr %i.s, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store ptr %i.x, ptr %i.s, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ad = sdiv exact i64 %i.ab, 12                ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 768614336404564650) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = mul nuw nsw i64 %i.af, 12
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, %i.t
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.ah, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.y, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !20
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !24

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ah, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i23.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ah, ptr %i.k, align 8
  store ptr %i.al, ptr %i.s, align 8
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.am, ptr %i.u, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !6, !align !19 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %.not.i.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  store i32 %1, ptr %i.aq, align 4
  %i.at = load ptr, ptr %i.ap, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.au, ptr %i.ap, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.i:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %i.av = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775804
  br i1 %i.az, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ba = ashr exact i64 %i.ay, 2                 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #21 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.ay ; 2 uses
  store i32 %1, ptr %i.bf, align 4
  %i.bg = icmp sgt i64 %i.ay, 0
  br i1 %i.bg, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.be, ptr align 4 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.be, ptr %i.ao, align 8
  store ptr %i.bh, ptr %i.ap, align 8
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bi, ptr %i.ar, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.bj = load ptr, ptr %i.an, align 8, !nonnull !6, !align !19 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.bj, align 8
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr exact i64 %i.bp, 2
  %i.br = trunc i64 %i.bq to i32
  %i.bs = add i32 %i.br, -1
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.b
  %.0 = phi i32 [ %1, %bb.b ], [ %i.bs, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp21GenFaceNormalsProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(27) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #20
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN6Assimp11BaseProcess15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #18
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #18
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #18
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !34
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !34
  store i8 0, ptr %i.a, align 8, !alias.scope !34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !34 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !34 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !34 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
end_hunk_0
