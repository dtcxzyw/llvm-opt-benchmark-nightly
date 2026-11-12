Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapblock_mesh?download=true
inline.NumInlined: 2550
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN12MapBlockMeshC2EP6ClientP12MeshMakeData:bb.a
  unreachable

_ZNSt3mapISt4pairIhjE13AnimationInfoSt4lessIS1_ESaIS0_IKS1_S2_EEED2Ev.exit: ; preds = %_ZNSt6vectorI12MeshTriangleSaIS0_EED2Ev.exit
  %i.are = load ptr, ptr %i.u, align 8, !tbaa !271 ; 3 uses
  %.not.i.i.i239 = icmp eq ptr %i.are, null
  br i1 %.not.i.i.i239, label %_ZNSt6vectorISt4pairIhjESaIS1_EED2Ev.exit, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt3mapISt4pairIhjE13AnimationInfoSt4lessIS1_ESaIS0_IKS1_S2_EEED2Ev.exit
  %i.arf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !270
  %i.arh = ptrtoint ptr %i.arg to i64
  %i.ari = ptrtoint ptr %i.are to i64
  %i.arj = sub i64 %i.arh, %i.ari
  call void @_ZdlPvm(ptr noundef nonnull %i.are, i64 noundef %i.arj) #31
  br label %_ZNSt6vectorISt4pairIhjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIhjESaIS1_EED2Ev.exit:        ; preds = %bb.eh, %_ZNSt3mapISt4pairIhjE13AnimationInfoSt4lessIS1_ESaIS0_IKS1_S2_EEED2Ev.exit, %bb.e
  %.pn124.pn = phi { ptr, i32 } [ %i.am, %bb.e ], [ %.pn124, %_ZNSt3mapISt4pairIhjE13AnimationInfoSt4lessIS1_ESaIS0_IKS1_S2_EEED2Ev.exit ], [ %.pn124, %bb.eh ]
  %i.ark = load ptr, ptr %i.c, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i240 = icmp eq ptr %i.ark, null
  br i1 %.not.i.i.i240, label %_ZNSt6vectorIP15MinimapMapblockSaIS1_EED2Ev.exit, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorISt4pairIhjESaIS1_EED2Ev.exit
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !300
  %i.arn = ptrtoint ptr %i.arm to i64
  %i.aro = ptrtoint ptr %i.ark to i64
  %i.arp = sub i64 %i.arn, %i.aro
  call void @_ZdlPvm(ptr noundef nonnull %i.ark, i64 noundef %i.arp) #31
  br label %_ZNSt6vectorIP15MinimapMapblockSaIS1_EED2Ev.exit

_ZNSt6vectorIP15MinimapMapblockSaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIhjESaIS1_EED2Ev.exit, %bb.ei
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !224 ; 3 uses
  %.not.i.i241 = icmp eq ptr %i.arr, null
  br i1 %.not.i.i241, label %_ZN7irr_ptrIN5scene5IMeshEED2Ev.exit, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIP15MinimapMapblockSaIS1_EED2Ev.exit
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !25
  %i.art = getelementptr i8, ptr %i.ars, i64 -24
  %i.aru = load i64, ptr %i.art, align 8
  %i.arv = getelementptr inbounds i8, ptr %i.arr, i64 %i.aru ; 3 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 8 ; 2 uses
  %i.arx = load i32, ptr %i.arw, align 8, !tbaa !221
  %i.ary = add nsw i32 %i.arx, -1                 ; 2 uses
  store i32 %i.ary, ptr %i.arw, align 8, !tbaa !221
  %.not.i.i.i242 = icmp eq i32 %i.ary, 0
  br i1 %.not.i.i.i242, label %bb.ek, label %_ZN7irr_ptrIN5scene5IMeshEED2Ev.exit

bb.ek:                                            ; preds = %bb.ej
  %i.arz = load ptr, ptr %i.arv, align 8, !tbaa !25
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 8
  %i.asb = load ptr, ptr %i.asa, align 8
  call void %i.asb(ptr noundef nonnull align 8 dereferenceable(12) %i.arv) #30, !inline_history !5
  br label %_ZN7irr_ptrIN5scene5IMeshEED2Ev.exit

_ZN7irr_ptrIN5scene5IMeshEED2Ev.exit:             ; preds = %_ZNSt6vectorIP15MinimapMapblockSaIS1_EED2Ev.exit, %bb.ej, %bb.ek
  %i.asc = load ptr, ptr %0, align 8, !tbaa !224  ; 3 uses
  %.not.i.i241.1 = icmp eq ptr %i.asc, null
  br i1 %.not.i.i241.1, label %_ZN7irr_ptrIN5scene5IMeshEED2Ev.exit.1, label %bb.el

bb.el:                                            ; preds = %_ZN7irr_ptrIN5scene5IMeshEED2Ev.exit
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !25
  %i.ase = getelementptr i8, ptr %i.asd, i64 -24
  %i.asf = load i64, ptr %i.ase, align 8
  %i.asg = getelementptr inbounds i8, ptr %i.asc, i64 %i.asf ; 3 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 8 ; 2 uses
  %i.asi = load i32, ptr %i.ash, align 8, !tbaa !221
  %i.asj = add nsw i32 %i.asi, -1                 ; 2 uses
  store i32 %i.asj, ptr %i.ash, align 8, !tbaa !221
  %.not.i.i.i242.1 = icmp eq i32 %i.asj, 0
  br i1 %.not.i.i.i242.1, label %bb.em, label %_ZN7irr_ptrIN5scene5IMeshEED2Ev.exit.1

bb.em:                                            ; preds = %bb.el
  %i.ask = load ptr, ptr %i.asg, align 8, !tbaa !25
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 8
  %i.asm = load ptr, ptr %i.asl, align 8
  call void %i.asm(ptr noundef nonnull align 8 dereferenceable(12) %i.asg) #30, !inline_history !5
  br label %_ZN7irr_ptrIN5scene5IMeshEED2Ev.exit.1

_ZN7irr_ptrIN5scene5IMeshEED2Ev.exit.1:           ; preds = %bb.em, %bb.el, %_ZN7irr_ptrIN5scene5IMeshEED2Ev.exit
  resume { ptr, i32 } %.pn124.pn
}

declare noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare void @_ZN15MinimapMapblock15getMinimapNodesEP16VoxelManipulatorPK14NodeDefManagerRKN4core8vector3dIsEE(ptr noundef nonnull align 4 dereferenceable(2048), ptr noundef, ptr noundef, ptr noundef nonnull align 2 dereferenceable(6)) local_unnamed_addr #3

declare void @_ZN21MapblockMeshGeneratorC1EP12MeshMakeDataP13MeshCollector(ptr noundef nonnull align 8 dereferenceable(496), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN21MapblockMeshGenerator8generateEv(ptr noundef nonnull align 8 dereferenceable(496)) local_unnamed_addr #3

declare void @_ZNK9TileLayer20applyMaterialOptionsERN5video9SMaterialEi(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(127), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !268
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !254
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !73
  %i.g = load i64, ptr %i.a, align 8, !tbaa !254
  store i64 %i.g, ptr %i.b, align 8, !tbaa !49
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !49
  store i8 %i.i, ptr %i.h, align 1, !tbaa !49
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !254  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !83
  %i.l = load ptr, ptr %0, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.split7, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !266
  store ptr %i.b, ptr %0, align 8, !tbaa !266
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !293  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !293  ; 2 uses
  %.not19.i = icmp eq ptr %i.f, null              ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.b

.split7:                                          ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.3, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %i.g, ptr noundef nonnull align 8 dereferenceable(31) %i.h, i64 31, i1 false)
  ret ptr %0

bb.b:                                             ; preds = %.split.preheader
  br i1 %.not19.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %i.f, i64 64, i1 false), !tbaa.struct !447
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #31
  store ptr null, ptr %i.c, align 8, !tbaa !293
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit

bb.e:                                             ; preds = %.split.preheader
  br i1 %.not19.i, label %_ZN5video14SMaterialLayeraSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %i.j, i64 64, i1 false), !tbaa.struct !447
  store ptr %i.i, ptr %i.c, align 8, !tbaa !293
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit

_ZN5video14SMaterialLayeraSERKS0_.exit:           ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, -16
  %i.q = or disjoint i16 %i.p, %i.m               ; 2 uses
  store i16 %i.q, ptr %i.n, align 8
  %i.r = load i16, ptr %i.k, align 8
  %i.s = and i16 %i.r, 240
  %i.t = and i16 %i.q, -241
  %i.u = or disjoint i16 %i.t, %i.s               ; 2 uses
  store i16 %i.u, ptr %i.n, align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 15
  %5 = zext nneg i8 %4 to i16
  %6 = shl nuw nsw i16 %5, 8
  %i.v = and i16 %i.u, -3841
  %i.w = or disjoint i16 %6, %i.v
  store i16 %i.w, ptr %i.n, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.z = load <4 x i8>, ptr %i.x, align 2, !tbaa !49
  store <4 x i8> %i.z, ptr %i.y, align 2, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !266
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !266
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !293 ; 3 uses
  %.not.i.1 = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !293 ; 2 uses
  %.not19.i.1 = icmp eq ptr %i.ag, null           ; 2 uses
  br i1 %.not.i.1, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit
  br i1 %.not19.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ae, ptr noundef nonnull align 4 dereferenceable(64) %i.ag, i64 64, i1 false), !tbaa.struct !447
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

bb.i:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 64) #31
  store ptr null, ptr %i.ad, align 8, !tbaa !293
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

bb.j:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit
  br i1 %.not19.i.1, label %_ZN5video14SMaterialLayeraSERKS0_.exit.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ah, ptr noundef nonnull align 4 dereferenceable(64) %i.ai, i64 64, i1 false), !tbaa.struct !447
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !293
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

_ZN5video14SMaterialLayeraSERKS0_.exit.1:         ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = and i16 %i.ak, 15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = and i16 %i.an, -16
  %i.ap = or disjoint i16 %i.ao, %i.al            ; 2 uses
  store i16 %i.ap, ptr %i.am, align 8
  %i.aq = load i16, ptr %i.aj, align 8
  %i.ar = and i16 %i.aq, 240
  %i.as = and i16 %i.ap, -241
  %i.at = or disjoint i16 %i.as, %i.ar            ; 2 uses
  store i16 %i.at, ptr %i.am, align 8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 33
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 15
  %10 = zext nneg i8 %9 to i16
  %11 = shl nuw nsw i16 %10, 8
  %i.au = and i16 %i.at, -3841
  %i.av = or disjoint i16 %11, %i.au
  store i16 %i.av, ptr %i.am, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ay = load <4 x i8>, ptr %i.aw, align 2, !tbaa !49
  store <4 x i8> %i.ay, ptr %i.ax, align 2, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !266
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !266
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !293 ; 3 uses
  %.not.i.2 = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !293 ; 2 uses
  %.not19.i.2 = icmp eq ptr %i.bf, null           ; 2 uses
  br i1 %.not.i.2, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bd, ptr noundef nonnull align 4 dereferenceable(64) %i.bf, i64 64, i1 false), !tbaa.struct !447
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.n:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 64) #31
  store ptr null, ptr %i.bc, align 8, !tbaa !293
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.o:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %_ZN5video14SMaterialLayeraSERKS0_.exit.2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33 ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bg, ptr noundef nonnull align 4 dereferenceable(64) %i.bh, i64 64, i1 false), !tbaa.struct !447
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !293
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

_ZN5video14SMaterialLayeraSERKS0_.exit.2:         ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 8
  %i.bk = and i16 %i.bj, 15
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bm = load i16, ptr %i.bl, align 8
  %i.bn = and i16 %i.bm, -16
  %i.bo = or disjoint i16 %i.bn, %i.bk            ; 2 uses
  store i16 %i.bo, ptr %i.bl, align 8
  %i.bp = load i16, ptr %i.bi, align 8
  %i.bq = and i16 %i.bp, 240
  %i.br = and i16 %i.bo, -241
  %i.bs = or disjoint i16 %i.br, %i.bq            ; 2 uses
  store i16 %i.bs, ptr %i.bl, align 8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 57
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 15
  %15 = zext nneg i8 %14 to i16
  %16 = shl nuw nsw i16 %15, 8
  %i.bt = and i16 %i.bs, -3841
  %i.bu = or disjoint i16 %16, %i.bt
  store i16 %i.bu, ptr %i.bl, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.bx = load <4 x i8>, ptr %i.bv, align 2, !tbaa !49
  store <4 x i8> %i.bx, ptr %i.bw, align 2, !tbaa !49
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !266
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !266
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !293 ; 3 uses
  %.not.i.3 = icmp eq ptr %i.cc, null
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !293 ; 2 uses
  %.not19.i.3 = icmp eq ptr %i.ce, null           ; 2 uses
  br i1 %.not.i.3, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cc, ptr noundef nonnull align 4 dereferenceable(64) %i.ce, i64 64, i1 false), !tbaa.struct !447
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.s:                                             ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 64) #31
  store ptr null, ptr %i.cb, align 8, !tbaa !293
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.t:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %_ZN5video14SMaterialLayeraSERKS0_.exit.3, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cf, ptr noundef nonnull align 4 dereferenceable(64) %i.cg, i64 64, i1 false), !tbaa.struct !447
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !293
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

_ZN5video14SMaterialLayeraSERKS0_.exit.3:         ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 8
  %i.cj = and i16 %i.ci, 15
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.cl = load i16, ptr %i.ck, align 8
  %i.cm = and i16 %i.cl, -16
  %i.cn = or disjoint i16 %i.cm, %i.cj            ; 2 uses
  store i16 %i.cn, ptr %i.ck, align 8
  %i.co = load i16, ptr %i.ch, align 8
  %i.cp = and i16 %i.co, 240
  %i.cq = and i16 %i.cn, -241
  %i.cr = or disjoint i16 %i.cq, %i.cp            ; 2 uses
  store i16 %i.cr, ptr %i.ck, align 8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 81
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 15
  %20 = zext nneg i8 %19 to i16
  %21 = shl nuw nsw i16 %20, 8
  %i.cs = and i16 %i.cr, -3841
  %i.ct = or disjoint i16 %21, %i.cs
  store i16 %i.ct, ptr %i.ck, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.cw = load <4 x i8>, ptr %i.cu, align 2, !tbaa !49
  store <4 x i8> %i.cw, ptr %i.cv, align 2, !tbaa !49
  br label %.split7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene11CMeshBufferIN5video9S3DVertexEE6appendEPKvjPKtj(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !448 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(28) %i.d), !inline_history !448
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !449 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(28) %i.m), !inline_history !449 ; 4 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !450 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(28) %i.u), !inline_history !450 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !184 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !237
  %i.ae = zext i32 %2 to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ae
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !237 ; 2 uses
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj
  tail call void @_ZNSt6vectorIN5video9S3DVertexESaIS1_EE15_M_range_insertIPKS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr %i.ak, ptr noundef %1, ptr noundef %i.af)
  %i.al = load ptr, ptr %0, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !449 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(28) %i.ao), !inline_history !449
  %i.at = icmp ult i32 %i.q, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ba = zext i32 %i.q to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit, %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !61
  %i.bg = zext i32 %4 to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bg
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !61 ; 2 uses
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %i.bl
  tail call void @_ZNSt6vectorItSaItEE15_M_range_insertIPKtEEvN9__gnu_cxx17__normal_iteratorIPtS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr %i.bm, ptr noundef %3, ptr noundef %i.bh)
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.bn = load ptr, ptr %0, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !450 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(28) %i.bq), !inline_history !450
  %i.bv = icmp ult i32 %i.y, %i.bu
  br i1 %i.bv, label %.lr.ph27, label %.loopexit

.lr.ph27:                                         ; preds = %.preheader
  %i.bw = trunc i32 %i.q to i16
  %i.bx = zext i32 %i.y to i64
  br label %bb.o

bb.c:                                             ; preds = %.lr.ph, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit
  %indvars.iv = phi i64 [ %i.ba, %.lr.ph ], [ %indvars.iv.next, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.by = load ptr, ptr %i.z, align 8, !tbaa !184
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !248
  %i.cb = getelementptr inbounds nuw [40 x i8], ptr %i.ca, i64 %indvars.iv ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !153 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !154 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !152 ; 4 uses
  %i.ch = load float, ptr %i.av, align 4, !tbaa !301
  %i.ci = fcmp nsz ogt float %i.cc, %i.ch
  br i1 %i.ci, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.cc, ptr %i.av, align 4, !tbaa !301
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cj = load float, ptr %i.aw, align 8, !tbaa !302
  %i.ck = fcmp nsz ogt float %i.ce, %i.cj
  br i1 %i.ck, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.ce, ptr %i.aw, align 8, !tbaa !302
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cl = load float, ptr %i.ax, align 4, !tbaa !303
  %i.cm = fcmp nsz ogt float %i.cg, %i.cl
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %i.cg, ptr %i.ax, align 4, !tbaa !303
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cn = load float, ptr %i.au, align 8, !tbaa !304
  %i.co = fcmp nsz olt float %i.cc, %i.cn
  br i1 %i.co, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.cc, ptr %i.au, align 8, !tbaa !304
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cp = load float, ptr %i.ay, align 4, !tbaa !305
  %i.cq = fcmp nsz olt float %i.ce, %i.cp
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.ce, ptr %i.ay, align 4, !tbaa !305
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cr = load float, ptr %i.az, align 8, !tbaa !306
  %i.cs = fcmp nsz olt float %i.cg, %i.cr
  br i1 %i.cs, label %bb.n, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit

bb.n:                                             ; preds = %bb.m
  store float %i.cg, ptr %i.az, align 8, !tbaa !306
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit: ; preds = %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = load ptr, ptr %0, align 8, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef ptr %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !449 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = tail call noundef i32 %i.cz(ptr noundef nonnull align 8 dereferenceable(28) %i.cw), !inline_history !449
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %bb.c, label %._crit_edge, !llvm.loop !451

bb.o:                                             ; preds = %.lr.ph27, %bb.o
  %indvars.iv29 = phi i64 [ %i.bx, %.lr.ph27 ], [ %indvars.iv.next30, %bb.o ] ; 2 uses
  %i.dd = load ptr, ptr %i.bb, align 8, !tbaa !277
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !246
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %indvars.iv29 ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !42
  %i.di = add i16 %i.dh, %i.bw
  store i16 %i.di, ptr %i.dg, align 2, !tbaa !42
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.dj = load ptr, ptr %0, align 8, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call noundef ptr %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !450 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !25
end_hunk_0
