inline.NumInlined: 2736
inline.NumDeleted: 1010
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter15ParseColorChunkEP9aiColor3Db:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(216) ptr @_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.c, i8 0, i64 72, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.j, ptr %i.a, align 8
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.l, ptr %i.f, align 8
  %i.m = load i64, ptr %i.a, align 8
  store i64 %i.m, ptr %i.g, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN6Assimp4D3DS4MeshC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.h, align 1
  store i8 %i.o, ptr %i.n, align 1
  br label %_ZN6Assimp4D3DS4MeshC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZN6Assimp4D3DS4MeshC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.e:                                             ; preds = %.noexc.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN23MeshWithSmoothingGroupsIN6Assimp4D3DS4FaceEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(216) %i.c) #28
  resume { ptr, i32 } %i.p

_ZN6Assimp4D3DS4MeshC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.q = load i64, ptr %i.a, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false)
  store float 1.000000e+00, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 4
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 216 ; 2 uses
  store ptr %i.ad, ptr %i.b, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6Assimp4D3DS4MeshC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ae = phi ptr [ %.pre, %bb.f ], [ %i.ad, %_ZN6Assimp4D3DS4MeshC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -216
  ret ptr %i.af
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter14ParseMeshChunkEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 30 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = and i64 %i.j, 4294967294
  %i.l = icmp samesign ult i64 %i.k, 6
  br i1 %i.l, label %.loopexit115, label %.lr.ph121

.lr.ph121:                                        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph121, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.o = load i32, ptr %i.m, align 2
  %i.p = add i32 %i.o, -6                         ; 2 uses
  %i.q = icmp slt i32 %i.p, 1
  %.pre = load ptr, ptr %i.b, align 8             ; 7 uses
  br i1 %i.q, label %._crit_edge, label %bb.c, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre126 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert127 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre128 = load ptr, ptr %.phi.trans.insert127, align 8
  %.pre129 = ptrtoint ptr %.pre126 to i64
  %.pre130 = ptrtoint ptr %.pre128 to i64
  %.pre132 = sub i64 %.pre129, %.pre130
  br label %bb.dg, !llvm.loop !42

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = add nsw i32 %i.p, %i.y                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 40 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.z, -1
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  store ptr %i.ae, ptr %i.aa, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.af = zext i32 %i.z to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.af ; 2 uses
  store ptr %i.ag, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp ugt ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.df, %bb.cw, %bb.ct, %bb.cq, %bb.cn, %bb.cf, %bb.bx, %bb.bu, %bb.bp, %bb.bl, %bb.bi, %bb.bf, %bb.bc, %bb.az, %bb.aw, %bb.at, %bb.aq, %bb.an, %bb.ak, %bb.ah, %bb.ae, %bb.w, %bb.t, %bb.q, %bb.l, %bb.h
  %.sink = phi ptr [ %i.rs, %bb.df ], [ %i.pz, %bb.cw ], [ %i.pn, %bb.ct ], [ %i.pb, %bb.cq ], [ %i.op, %bb.cn ], [ %i.mj, %bb.cf ], [ %i.lb, %bb.bx ], [ %i.kr, %bb.bu ], [ %i.jk, %bb.bp ], [ %i.iz, %bb.bl ], [ %i.io, %bb.bi ], [ %i.id, %bb.bf ], [ %i.hs, %bb.bc ], [ %i.hh, %bb.az ], [ %i.gw, %bb.aw ], [ %i.gl, %bb.at ], [ %i.ga, %bb.aq ], [ %i.fp, %bb.an ], [ %i.fe, %bb.ak ], [ %i.et, %bb.ah ], [ %i.ei, %bb.ae ], [ %i.dc, %bb.w ], [ %i.cs, %bb.t ], [ %i.ci, %bb.q ], [ %i.bc, %bb.l ], [ %i.ak, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.rt, %bb.df ], [ %i.qa, %bb.cw ], [ %i.po, %bb.ct ], [ %i.pc, %bb.cq ], [ %i.oq, %bb.cn ], [ %i.mk, %bb.cf ], [ %i.lc, %bb.bx ], [ %i.ks, %bb.bu ], [ %i.jl, %bb.bp ], [ %i.ja, %bb.bl ], [ %i.ip, %bb.bi ], [ %i.ie, %bb.bf ], [ %i.ht, %bb.bc ], [ %i.hi, %bb.az ], [ %i.gx, %bb.aw ], [ %i.gm, %bb.at ], [ %i.gb, %bb.aq ], [ %i.fq, %bb.an ], [ %i.ff, %bb.ak ], [ %i.eu, %bb.ah ], [ %i.ej, %bb.ae ], [ %i.dd, %bb.w ], [ %i.ct, %bb.t ], [ %i.cj, %bb.q ], [ %i.bd, %bb.l ], [ %i.al, %bb.h ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.am = ptrtoint ptr %i.ab to i64
  %i.an = sub i64 %i.am, %i.w
  %i.ao = load ptr, ptr %i.n, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8            ; 26 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -216 ; 4 uses
  %i.as = load i16, ptr %1, align 2
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 28)
  switch i32 %i.au, label %.loopexit [
    i32 1041, label %bb.i
    i32 1046, label %bb.ab
    i32 1044, label %bb.bm
    i32 1042, label %bb.cc
  ]

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.av = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp ugt ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.j, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull @.str.39)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit:  ; preds = %bb.i
  %i.be = load i16, ptr %i.ax, align 1            ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8
  %i.bf = zext i16 %i.be to i32
  %i.bg = zext i16 %i.be to i64                   ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %i.aq, i64 -200 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.ar, align 8            ; 5 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = sdiv exact i64 %i.bm, 12
  %i.bo = icmp ult i64 %i.bn, %i.bg
  br i1 %i.bo, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit
  %i.bp = getelementptr inbounds i8, ptr %i.aq, i64 -208 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bl
  %i.bt = mul nuw nsw i64 %i.bg, 12
  %i.bu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #31 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bj, %i.bq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %i.bu, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %i.bj, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !43
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.bv, %i.bq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !47

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bj, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #29
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.m, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.bu, ptr %i.ar, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  store ptr %i.bx, ptr %i.bp, align 8
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %i.bg
  store ptr %i.by, ptr %i.bh, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.not122 = icmp eq i16 %i.be, 0
  br i1 %.not122, label %.loopexit, label %.lr.ph120

.lr.ph120:                                        ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit
  %i.bz = getelementptr inbounds i8, ptr %i.aq, i64 -208 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph120, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %.036119 = phi i32 [ %i.bf, %.lr.ph120 ], [ %i.ca, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.ca = add nsw i32 %.036119, -1
  %i.cb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = icmp ugt ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.o, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ci = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull @.str.39)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit:  ; preds = %bb.n
  %i.ck = load float, ptr %i.cd, align 1          ; 2 uses
  store ptr %i.ce, ptr %i.cc, align 8
  %i.cl = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = icmp ugt ptr %i.co, %i.cq
  br i1 %i.cr, label %bb.r, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit39

bb.r:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.cs = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull @.str.39)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_throw(ptr nonnull %i.cs, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit39: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.cu = load float, ptr %i.cn, align 1          ; 2 uses
  store ptr %i.co, ptr %i.cm, align 8
  %i.cv = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = icmp ugt ptr %i.cy, %i.da
  br i1 %i.db, label %bb.u, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit40

bb.u:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit39
  %i.dc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull @.str.39)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit40: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit39
  %i.de = load float, ptr %i.cx, align 1          ; 2 uses
  store ptr %i.cy, ptr %i.cw, align 8
  %i.df = load ptr, ptr %i.bz, align 8            ; 7 uses
  %i.dg = load ptr, ptr %i.bh, align 8
  %.not.i = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit40
  store float %i.ck, ptr %i.df, align 4
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store float %i.cu, ptr %.sroa.6107.0..sroa_idx, align 4
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store float %i.de, ptr %.sroa.8110.0..sroa_idx, align 4
  %i.dh = load ptr, ptr %i.bz, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store ptr %i.di, ptr %i.bz, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.y:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit40
  %i.dj = load ptr, ptr %i.ar, align 8            ; 5 uses
  %i.dk = ptrtoint ptr %i.df to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 4 uses
  %i.dn = icmp eq i64 %i.dm, 9223372036854775800
  br i1 %i.dn, label %bb.z, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.do = sdiv exact i64 %i.dm, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dp = add nsw i64 %.sroa.speculated.i.i.i, %i.do ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  %i.dr = call i64 @llvm.umin.i64(i64 %i.dp, i64 768614336404564650)
  %i.ds = select i1 %i.dq, i64 768614336404564650, i64 %i.dr ; 3 uses
end_hunk_0
