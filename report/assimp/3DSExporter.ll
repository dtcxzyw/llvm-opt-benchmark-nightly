inline.NumInlined: 779
inline.NumDeleted: 370
begin_hunk_0_@_ZN6Assimp12_GLOBAL__N_113CollectMeshesEPK6aiNodeRSt8multimapIS3_jSt4lessIS3_ESaISt4pairIKS3_jEEE:bb.a

._crit_edge:                                      ; preds = %bb.d, %.preheader
  ret void

bb.d:                                             ; preds = %.lr.ph14, %bb.d
  %indvars.iv17 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next18, %bb.d ] ; 2 uses
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv17
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call fastcc void @_ZN6Assimp12_GLOBAL__N_113CollectMeshesEPK6aiNodeRSt8multimapIS3_jSt4lessIS3_ESaISt4pairIKS3_jEEE(ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.ac = load i32, ptr %i.g, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next18, %i.ad
  br i1 %i.ae, label %bb.d, label %._crit_edge, !llvm.loop !12
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSExporter14WriteMaterialsEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %class.aiColor4t, align 8           ; 7 uses
  %2 = alloca %class.aiColor4t, align 8           ; 7 uses
  %3 = alloca %class.aiColor4t, align 8           ; 7 uses
  %4 = alloca %class.aiColor4t, align 8           ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %struct.aiColor3D, align 8          ; 13 uses
  %i.b = alloca float, align 4                    ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 130 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 111 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 39 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %i.g, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit293, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit293
  %i.r = phi i64 [ %.pre, %.lr.ph ], [ %i.vz, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit293 ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit293 ] ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 4 uses
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %.not.i.i.i = icmp ult i64 %i.s, %i.x
  br i1 %.not.i.i.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.s)
  %.pre.i.i.i = load i64, ptr %i.g, align 8
  %.pre2.i.i.i = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i: ; preds = %bb.c, %bb.b
  %i.y = phi ptr [ %.pre2.i.i.i, %bb.c ], [ %i.u, %bb.b ]
  %i.z = phi i64 [ %.pre.i.i.i, %bb.c ], [ %i.r, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  store i16 -20481, ptr %i.aa, align 1
  %i.ab = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ac = add i64 %i.ab, 2                        ; 2 uses
  store i64 %i.ac, ptr %i.g, align 8
  %i.ad = add i64 %i.ab, 6                        ; 2 uses
  %i.ae = load ptr, ptr %i.i, align 8
  %i.af = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.not.i.i5.i = icmp ult i64 %i.ad, %i.ai
  br i1 %.not.i.i5.i, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ad)
  %.pre.i.i6.i = load i64, ptr %i.g, align 8
  %.pre2.i.i7.i = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit

_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit: ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i, %bb.d
  %i.aj = phi ptr [ %.pre2.i.i7.i, %bb.d ], [ %i.af, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i ]
  %i.ak = phi i64 [ %.pre.i.i6.i, %bb.d ], [ %i.ac, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i32 -559038737, ptr %i.al, align 1
  %i.am = load i64, ptr %i.g, align 8             ; 3 uses
  %i.an = add i64 %i.am, 4                        ; 4 uses
  store i64 %i.an, ptr %i.g, align 8
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8            ; 18 uses
  %i.at = add i64 %i.am, 6                        ; 4 uses
  %i.au = load ptr, ptr %i.i, align 8
  %i.av = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %.not.i.i.i114 = icmp ult i64 %i.at, %i.ay
  br i1 %.not.i.i.i114, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.at)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.e
  %.pre.i.i.i115 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i116 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117: ; preds = %.noexc, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit
  %i.az = phi ptr [ %.pre2.i.i.i116, %.noexc ], [ %i.av, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit ]
  %i.ba = phi i64 [ %.pre.i.i.i115, %.noexc ], [ %i.an, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i16 -24576, ptr %i.bb, align 1
  %i.bc = load i64, ptr %i.g, align 8             ; 2 uses
  %i.bd = add i64 %i.bc, 2                        ; 2 uses
  store i64 %i.bd, ptr %i.g, align 8
  %i.be = add i64 %i.bc, 6                        ; 2 uses
  %i.bf = load ptr, ptr %i.i, align 8
  %i.bg = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %.not.i.i5.i118 = icmp ult i64 %i.be, %i.bj
  br i1 %.not.i.i5.i118, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.be)
          to label %.noexc121 unwind label %bb.ae

.noexc121:                                        ; preds = %bb.f
  %.pre.i.i6.i119 = load i64, ptr %i.g, align 8
  %.pre2.i.i7.i120 = load ptr, ptr %i.h, align 8
  br label %bb.g

bb.g:                                             ; preds = %.noexc121, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117
  %i.bk = phi ptr [ %.pre2.i.i7.i120, %.noexc121 ], [ %i.bg, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117 ]
  %i.bl = phi i64 [ %.pre.i.i6.i119, %.noexc121 ], [ %i.bd, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  store i32 -559038737, ptr %i.bm, align 1
  %i.bn = load i64, ptr %i.g, align 8
  %i.bo = add i64 %i.bn, 4
  store i64 %i.bo, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bp = trunc nuw i64 %indvars.iv to i32
  invoke fastcc void @_ZN6Assimp12_GLOBAL__N_115GetMaterialNameB5cxx11ERK10aiMaterialj(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i32 noundef %i.bp)
          to label %bb.h unwind label %bb.af

bb.h:                                             ; preds = %bb.g
  %i.bq = load i64, ptr %i.j, align 8
  %.not10.i = icmp samesign eq i64 %i.bq, 0
  br i1 %.not10.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.h
  %.pre12.i = load i64, ptr %i.g, align 8
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.br = load ptr, ptr %5, align 8
  %.pre.i = load i64, ptr %i.g, align 8
  br label %bb.j

._crit_edge.i:                                    ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, %.._crit_edge_crit_edge.i
  %i.bs = phi i64 [ %.pre12.i, %.._crit_edge_crit_edge.i ], [ %i.di, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %i.bt = add i64 %i.bs, 1                        ; 2 uses
  %i.bu = load ptr, ptr %i.i, align 8
  %i.bv = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %.not.i.i.i123 = icmp ult i64 %i.bt, %i.by
  br i1 %.not.i.i.i123, label %bb.t, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.bt)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit

.noexc126:                                        ; preds = %bb.i
  %.pre.i.i.i124 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i125 = load ptr, ptr %i.h, align 8
  br label %bb.t

bb.j:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, %.lr.ph.i
  %i.bz = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.di, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %.sroa.07.011.i = phi ptr [ %i.br, %.lr.ph.i ], [ %i.dj, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.011.i) ]
  %i.ca = load i8, ptr %.sroa.07.011.i, align 1
  %i.cb = add i64 %i.bz, 1                        ; 4 uses
  %i.cc = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.cd = load ptr, ptr %i.h, align 8             ; 7 uses
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 9 uses
  %.not.i.i3.i = icmp ult i64 %i.cb, %i.cg
  br i1 %.not.i.i3.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = icmp ugt i64 %i.cb, %i.cg
  br i1 %i.ch, label %bb.l, label %.noexc127

bb.l:                                             ; preds = %bb.k
  %i.ci = sub nuw i64 %i.cb, %i.cg                ; 6 uses
  %i.cj = load ptr, ptr %i.k, align 8
  %i.ck = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cl = sub i64 %i.ck, %i.ce                    ; 2 uses
  %i.cm = icmp sgt i64 %i.cg, -1
  call void @llvm.assume(i1 %i.cm)
  %i.cn = xor i64 %i.cg, 9223372036854775807      ; 2 uses
  %i.co = icmp ule i64 %i.cl, %i.cn
  call void @llvm.assume(i1 %i.co)
  %.not28.i.i = icmp ult i64 %i.cl, %i.ci
  br i1 %.not28.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.cc, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %i.cq = add nsw i64 %i.ci, -1                   ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.ci
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cp, i8 0, i64 %i.cq, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi ptr [ %i.cs, %bb.n ], [ %i.cp, %bb.m ]
  store ptr %.0.i.i.i.i.i, ptr %i.i, align 8
  %.pre2.i.i5.i.pre = load ptr, ptr %i.h, align 8
  br label %.noexc127

bb.o:                                             ; preds = %bb.l
  %i.ct = icmp ult i64 %i.cn, %i.ci
  br i1 %i.ct, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
          to label %.noexc294 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc294:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.ci)
  %i.cu = add nuw i64 %.sroa.speculated.i.i.i, %i.cg
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cu, i64 9223372036854775807) ; 2 uses
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #22
          to label %.noexc295 unwind label %.loopexit ; 6 uses

.noexc295:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cg ; 2 uses
  store i8 0, ptr %i.cx, align 1
  %i.cy = add nsw i64 %i.ci, -1                   ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc295
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.da, i8 0, i64 %i.cy, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.q, %.noexc295
  %.not35.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not35.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr align 1 %i.cd, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.r, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  %.not.i33.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i33.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.db = sub i64 %i.ck, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.db) #25
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  store ptr %i.cw, ptr %i.h, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cb
  store ptr %i.dc, ptr %i.i, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  store ptr %i.dd, ptr %i.k, align 8
  br label %.noexc127

.noexc127:                                        ; preds = %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i
  %.pre2.i.i5.i = phi ptr [ %.pre2.i.i5.i.pre, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.cw, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i ], [ %i.cd, %bb.k ]
  %.pre.i.i4.i = load i64, ptr %i.g, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i: ; preds = %.noexc127, %bb.j
  %i.de = phi ptr [ %.pre2.i.i5.i, %.noexc127 ], [ %i.cd, %bb.j ]
  %i.df = phi i64 [ %.pre.i.i4.i, %.noexc127 ], [ %i.bz, %bb.j ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df
  store i8 %i.ca, ptr %i.dg, align 1
  %i.dh = load i64, ptr %i.g, align 8
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  store i64 %i.di, ptr %i.g, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 1 ; 2 uses
  %i.dk = load ptr, ptr %5, align 8
  %i.dl = load i64, ptr %i.j, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  %.not.i = icmp eq ptr %i.dj, %i.dm
  br i1 %.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !13

bb.t:                                             ; preds = %.noexc126, %._crit_edge.i
  %i.dn = phi ptr [ %.pre2.i.i.i125, %.noexc126 ], [ %i.bv, %._crit_edge.i ]
  %i.do = phi i64 [ %.pre.i.i.i124, %.noexc126 ], [ %i.bs, %._crit_edge.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do
  store i8 0, ptr %i.dp, align 1
  %i.dq = load i64, ptr %i.g, align 8
  %i.dr = add i64 %i.dq, 1                        ; 2 uses
  store i64 %i.dr, ptr %i.g, align 8
  %i.ds = load ptr, ptr %5, align 8               ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.l
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.du = load i64, ptr %i.l, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #25
  %.pre622 = load i64, ptr %i.g, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dw = phi i64 [ %.pre622, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dr, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  store i64 %i.at, ptr %i.g, align 8
  %i.dx = add i64 %i.am, 10                       ; 2 uses
  %i.dy = load ptr, ptr %i.i, align 8
  %i.dz = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %.not.i.i.i128 = icmp ult i64 %i.dx, %i.ec
  br i1 %.not.i.i.i128, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.dx)
          to label %.noexc.i unwind label %bb.v

.noexc.i:                                         ; preds = %bb.u
  %.pre.i.i.i129 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i130 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #24
  unreachable

_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i
  %i.ef = phi ptr [ %.pre2.i.i.i130, %.noexc.i ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.eg = phi i64 [ %.pre.i.i.i129, %.noexc.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.eh = sub i64 %i.dw, %i.an
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg
  store i32 %i.ei, ptr %i.ej, align 1
  store i64 %i.dw, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store <2 x float> zeroinitializer, ptr %6, align 8
  store float 0.000000e+00, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ek = invoke i32 @aiGetMaterialColor(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4)
          to label %.noexc131 unwind label %bb.ah

.noexc131:                                        ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc131
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ak

bb.x:                                             ; preds = %.noexc131
  %i.em = load float, ptr %i.n, align 8
  %i.en = load <2 x float>, ptr %4, align 8
  store <2 x float> %i.en, ptr %6, align 8
  store float %i.em, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.eo = load i64, ptr %i.g, align 8             ; 5 uses
  %i.ep = add i64 %i.eo, 2                        ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp19Discreet3DSExporter14WriteMaterialsEv:bb.a
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.wj
  store i32 %i.wl, ptr %i.wm, align 1
  store i64 %i.vz, ptr %i.g, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.wn = load ptr, ptr %0, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  %i.wp = load i32, ptr %i.wo, align 8
  %i.wq = zext i32 %i.wp to i64
  %i.wr = icmp samesign ult i64 %indvars.iv.next, %i.wq
  br i1 %i.wr, label %bb.b, label %._crit_edge, !llvm.loop !14

bb.ek:                                            ; preds = %bb.dj, %bb.dk, %bb.cz, %bb.da, %bb.cj, %bb.cq, %bb.ck, %bb.ca, %bb.cb, %bb.bp, %bb.bq, %bb.ea, %bb.bo
  %i.ws = phi ptr [ %i.lp, %bb.bo ], [ %i.vs, %bb.ea ], [ %i.rq, %bb.cz ], [ %i.oz, %bb.ck ], [ %i.nk, %bb.ca ], [ %i.lr, %bb.bp ], [ %i.lt, %bb.bq ], [ %i.nm, %bb.cb ], [ %i.ox, %bb.cj ], [ %i.qa, %bb.cq ], [ %i.rs, %bb.da ], [ %i.tk, %bb.dk ], [ %i.ti, %bb.dj ]
  %.pn67 = phi { ptr, i32 } [ %i.lo, %bb.bo ], [ %.pn64.pn, %bb.ea ], [ %i.rp, %bb.cz ], [ %i.oy, %bb.ck ], [ %i.nj, %bb.ca ], [ %i.lq, %bb.bp ], [ %i.ls, %bb.bq ], [ %i.nl, %bb.cb ], [ %i.ow, %bb.cj ], [ %i.pz, %bb.cq ], [ %i.rr, %bb.da ], [ %i.tj, %bb.dk ], [ %i.th, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.el

bb.el:                                            ; preds = %bb.be, %bb.bf, %bb.at, %bb.au, %bb.ai, %bb.aj, %bb.ek, %bb.ah
  %i.wt = phi ptr [ %i.ws, %bb.ek ], [ %i.id, %bb.at ], [ %i.gi, %bb.ah ], [ %i.gk, %bb.ai ], [ %i.gm, %bb.aj ], [ %i.if, %bb.au ], [ %i.jy, %bb.bf ], [ %i.jw, %bb.be ]
  %.pn67.pn = phi { ptr, i32 } [ %.pn67, %bb.ek ], [ %i.ic, %bb.at ], [ %i.gh, %bb.ah ], [ %i.gj, %bb.ai ], [ %i.gl, %bb.aj ], [ %i.ie, %bb.au ], [ %i.jx, %bb.bf ], [ %i.jv, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.em

bb.em:                                            ; preds = %bb.ae, %bb.ag, %bb.el
  %i.wu = phi ptr [ %i.wt, %bb.el ], [ %i.gg, %bb.ag ], [ %i.ga, %bb.ae ]
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn67.pn, %bb.el ], [ %.pn, %bb.ag ], [ %i.fz, %bb.ae ]
  call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.wu, i64 %i.r) #21
  resume { ptr, i32 } %.pn67.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple.45", align 8     ; 4 uses
  %2 = alloca %"class.std::tuple.25", align 1     ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.not918 = icmp eq ptr %i.c, %i.d
  br i1 %.not918, label %._crit_edge922, label %.lr.ph921

.lr.ph921:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 129 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 123 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 73 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 32 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.b

._crit_edge922:                                   ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit251, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph921, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit251
  %.sroa.0434.0919 = phi ptr [ %i.c, %.lr.ph921 ], [ %i.agl, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit251 ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0434.0919, i64 32
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0434.0919, i64 40
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext i32 %i.q to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %i.o, ptr %i.a, align 8
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.x, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.g, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp ult ptr %i.z, %i.o                 ; 2 uses
  %.19.i.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i.i, %i.g
  br i1 %i.ab, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp ult ptr %i.o, %i.ad
  br i1 %i.ae, label %.critedge.i, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixEOS2_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.b
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %i.a, ptr %1, align 8, !alias.scope !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.af = call ptr @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixEOS2_.exit

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixEOS2_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.af, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ah = load i64, ptr %i.h, align 8             ; 6 uses
  %i.ai = add i64 %i.ah, 2                        ; 6 uses
  %i.aj = load ptr, ptr %i.j, align 8
  %i.ak = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %.not.i.i.i = icmp ult i64 %i.ai, %i.an
  br i1 %.not.i.i.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixEOS2_.exit
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ai)
  %.pre.i.i.i = load i64, ptr %i.h, align 8
  %.pre2.i.i.i = load ptr, ptr %i.i, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i: ; preds = %bb.d, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixEOS2_.exit
  %i.ao = phi ptr [ %.pre2.i.i.i, %bb.d ], [ %i.ak, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixEOS2_.exit ]
  %i.ap = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.ah, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixEOS2_.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i16 16384, ptr %i.aq, align 1
  %i.ar = load i64, ptr %i.h, align 8             ; 2 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  store i64 %i.as, ptr %i.h, align 8
  %i.at = add i64 %i.ar, 6                        ; 2 uses
  %i.au = load ptr, ptr %i.j, align 8
  %i.av = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %.not.i.i5.i = icmp ult i64 %i.at, %i.ay
  br i1 %.not.i.i5.i, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.at)
  %.pre.i.i6.i = load i64, ptr %i.h, align 8
  %.pre2.i.i7.i = load ptr, ptr %i.i, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit

_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit: ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i, %bb.e
  %i.az = phi ptr [ %.pre2.i.i7.i, %bb.e ], [ %i.av, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i ]
  %i.ba = phi i64 [ %.pre.i.i6.i, %bb.e ], [ %i.as, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i32 -559038737, ptr %i.bb, align 1
  %i.bc = load i64, ptr %i.h, align 8
  %i.bd = add i64 %i.bc, 4
  store i64 %i.bd, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke fastcc void @_ZN6Assimp12_GLOBAL__N_111GetMeshNameB5cxx11ERK6aiMeshjRK6aiNode(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(1320) %i.w, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(1144) %i.o)
          to label %bb.f unwind label %bb.ab

bb.f:                                             ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit
  %i.be = load i64, ptr %i.k, align 8
  %.not10.i = icmp samesign eq i64 %i.be, 0
  br i1 %.not10.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.f
  %.pre12.i = load i64, ptr %i.h, align 8
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bf = load ptr, ptr %3, align 8
  %.pre.i = load i64, ptr %i.h, align 8
  br label %bb.h

._crit_edge.i:                                    ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, %.._crit_edge_crit_edge.i
  %i.bg = phi i64 [ %.pre12.i, %.._crit_edge_crit_edge.i ], [ %i.cw, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %i.bh = add i64 %i.bg, 1                        ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8
  %i.bj = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %.not.i.i.i120 = icmp ult i64 %i.bh, %i.bm
  br i1 %.not.i.i.i120, label %bb.r, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bh)
          to label %.noexc unwind label %.loopexit.split-lp466.loopexit

.noexc:                                           ; preds = %bb.g
  %.pre.i.i.i121 = load i64, ptr %i.h, align 8
  %.pre2.i.i.i122 = load ptr, ptr %i.i, align 8
  br label %bb.r

bb.h:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, %.lr.ph.i
  %i.bn = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.cw, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %.sroa.07.011.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %i.cx, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.011.i) ]
  %i.bo = load i8, ptr %.sroa.07.011.i, align 1
  %i.bp = add i64 %i.bn, 1                        ; 4 uses
  %i.bq = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.br = load ptr, ptr %i.i, align 8             ; 7 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 9 uses
  %.not.i.i3.i = icmp ult i64 %i.bp, %i.bu
  br i1 %.not.i.i3.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = icmp ugt i64 %i.bp, %i.bu
  br i1 %i.bv, label %bb.j, label %.noexc123

bb.j:                                             ; preds = %bb.i
  %i.bw = sub nuw i64 %i.bp, %i.bu                ; 6 uses
  %i.bx = load ptr, ptr %i.l, align 8
  %i.by = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.bz = sub i64 %i.by, %i.bs                    ; 2 uses
  %i.ca = icmp sgt i64 %i.bu, -1
  call void @llvm.assume(i1 %i.ca)
  %i.cb = xor i64 %i.bu, 9223372036854775807      ; 2 uses
  %i.cc = icmp ule i64 %i.bz, %i.cb
  call void @llvm.assume(i1 %i.cc)
  %.not28.i.i = icmp ult i64 %i.bz, %i.bw
  br i1 %.not28.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.bq, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  %i.ce = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr i8, ptr %i.bq, i64 %i.bw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cd, i8 0, i64 %i.ce, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.cg, %bb.l ], [ %i.cd, %bb.k ]
  store ptr %.0.i.i.i.i.i, ptr %i.j, align 8
  %.pre2.i.i5.i.pre = load ptr, ptr %i.i, align 8
  br label %.noexc123

bb.m:                                             ; preds = %bb.j
  %i.ch = icmp ult i64 %i.cb, %i.bw
  br i1 %i.ch, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
          to label %.noexc278 unwind label %.loopexit.split-lp466.loopexit.split-lp

.noexc278:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.bw)
  %i.ci = add nuw i64 %.sroa.speculated.i.i.i, %i.bu
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ci, i64 9223372036854775807) ; 2 uses
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #22
          to label %.noexc279 unwind label %.loopexit465 ; 6 uses

.noexc279:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.bu ; 2 uses
  store i8 0, ptr %i.cl, align 1
  %i.cm = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc279
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.co, i8 0, i64 %i.cm, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.o, %.noexc279
  %.not35.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not35.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr align 1 %i.br, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.p, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  %.not.i33.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i33.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.cp = sub i64 %i.by, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.cp) #25
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  store ptr %i.ck, ptr %i.i, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.bp
  store ptr %i.cq, ptr %i.j, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store ptr %i.cr, ptr %i.l, align 8
  br label %.noexc123

.noexc123:                                        ; preds = %bb.i, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i
  %.pre2.i.i5.i = phi ptr [ %.pre2.i.i5.i.pre, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.ck, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i ], [ %i.br, %bb.i ]
  %.pre.i.i4.i = load i64, ptr %i.h, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i: ; preds = %.noexc123, %bb.h
  %i.cs = phi ptr [ %.pre2.i.i5.i, %.noexc123 ], [ %i.br, %bb.h ]
  %i.ct = phi i64 [ %.pre.i.i4.i, %.noexc123 ], [ %i.bn, %bb.h ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  store i8 %i.bo, ptr %i.cu, align 1
  %i.cv = load i64, ptr %i.h, align 8
  %i.cw = add i64 %i.cv, 1                        ; 3 uses
  store i64 %i.cw, ptr %i.h, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 1 ; 2 uses
  %i.cy = load ptr, ptr %3, align 8
  %i.cz = load i64, ptr %i.k, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz
  %.not.i = icmp eq ptr %i.cx, %i.da
  br i1 %.not.i, label %._crit_edge.i, label %bb.h, !llvm.loop !13

bb.r:                                             ; preds = %.noexc, %._crit_edge.i
  %i.db = phi ptr [ %.pre2.i.i.i122, %.noexc ], [ %i.bj, %._crit_edge.i ]
  %i.dc = phi i64 [ %.pre.i.i.i121, %.noexc ], [ %i.bg, %._crit_edge.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  store i8 0, ptr %i.dd, align 1
  %i.de = load i64, ptr %i.h, align 8             ; 4 uses
  %i.df = add i64 %i.de, 1                        ; 4 uses
  store i64 %i.df, ptr %i.h, align 8
  %i.dg = add i64 %i.de, 3                        ; 6 uses
  %i.dh = load ptr, ptr %i.j, align 8
  %i.di = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %.not.i.i.i124 = icmp ult i64 %i.dg, %i.dl
  br i1 %.not.i.i.i124, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i127, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.dg)
          to label %.noexc131 unwind label %bb.ac

.noexc131:                                        ; preds = %bb.s
  %.pre.i.i.i125 = load i64, ptr %i.h, align 8
  %.pre2.i.i.i126 = load ptr, ptr %i.i, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i127

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i127: ; preds = %.noexc131, %bb.r
  %i.dm = phi ptr [ %.pre2.i.i.i126, %.noexc131 ], [ %i.di, %bb.r ]
  %i.dn = phi i64 [ %.pre.i.i.i125, %.noexc131 ], [ %i.df, %bb.r ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  store i16 16640, ptr %i.do, align 1
  %i.dp = load i64, ptr %i.h, align 8             ; 2 uses
  %i.dq = add i64 %i.dp, 2                        ; 2 uses
  store i64 %i.dq, ptr %i.h, align 8
  %i.dr = add i64 %i.dp, 6                        ; 2 uses
  %i.ds = load ptr, ptr %i.j, align 8
  %i.dt = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %.not.i.i5.i128 = icmp ult i64 %i.dr, %i.dw
  br i1 %.not.i.i5.i128, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i127
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.dr)
          to label %.noexc132 unwind label %bb.ac

.noexc132:                                        ; preds = %bb.t
  %.pre.i.i6.i129 = load i64, ptr %i.h, align 8
  %.pre2.i.i7.i130 = load ptr, ptr %i.i, align 8
  br label %bb.u

bb.u:                                             ; preds = %.noexc132, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i127
  %i.dx = phi ptr [ %.pre2.i.i7.i130, %.noexc132 ], [ %i.dt, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i127 ]
  %i.dy = phi i64 [ %.pre.i.i6.i129, %.noexc132 ], [ %i.dq, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i127 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dy
  store i32 -559038737, ptr %i.dz, align 1
  %i.ea = load i64, ptr %i.h, align 8             ; 3 uses
  %i.eb = add i64 %i.ea, 4                        ; 4 uses
  store i64 %i.eb, ptr %i.h, align 8
  %i.ec = add i64 %i.ea, 6                        ; 4 uses
  %i.ed = load ptr, ptr %i.j, align 8
  %i.ee = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %.not.i.i.i134 = icmp ult i64 %i.ec, %i.eh
  br i1 %.not.i.i.i134, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i137, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ec)
          to label %.noexc141 unwind label %bb.ad

.noexc141:                                        ; preds = %bb.v
  %.pre.i.i.i135 = load i64, ptr %i.h, align 8
  %.pre2.i.i.i136 = load ptr, ptr %i.i, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i137

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i137: ; preds = %.noexc141, %bb.u
  %i.ei = phi ptr [ %.pre2.i.i.i136, %.noexc141 ], [ %i.ee, %bb.u ]
end_hunk_1
begin_hunk_2_@_ZN6Assimp19Discreet3DSExporter14WriteHierarchyERK6aiNodeii:bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8
  %.not208 = icmp eq i32 %i.ek, 0
  br i1 %.not208, label %._crit_edge, label %.lr.ph205

.lr.ph205:                                        ; preds = %.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %.pre = load i64, ptr %i.b, align 8
  br label %bb.w

bb.t:                                             ; preds = %bb.m
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit165, %.loopexit.split-lp166, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.t ], [ %lpad.loopexit167, %.loopexit165 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp166 ]
  tail call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.a, i64 %i.aa) #21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.cu, %bb.n ]
  tail call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.a, i64 %i.c) #21
  br label %bb.bc

.peel.next:                                       ; preds = %.lr.ph, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %.lr.ph ] ; 2 uses
  %.0202 = phi i32 [ %i.et, %.peel.next ], [ %i.eg, %.lr.ph ]
  %i.eq = load ptr, ptr %i.ed, align 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = tail call noundef i32 @_ZN6Assimp19Discreet3DSExporter14WriteHierarchyERK6aiNodeii(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(1144) %i.es, i32 noundef %.0202, i32 noundef %i.ea) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eu = load i32, ptr %i.eb, align 8
  %i.ev = zext i32 %i.eu to i64
  %i.ew = icmp samesign ult i64 %indvars.iv.next, %i.ev
  br i1 %i.ew, label %.peel.next, label %.preheader, !llvm.loop !28

._crit_edge:                                      ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit146, %.preheader
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %i.ki, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit146 ]
  ret i32 %.1.lcssa

bb.w:                                             ; preds = %.lr.ph205, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit146
  %i.ex = phi i64 [ %.pre, %.lr.ph205 ], [ %i.kh, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit146 ] ; 5 uses
  %indvars.iv234 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next235, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit146 ] ; 3 uses
  %.1204 = phi i32 [ %.0.lcssa, %.lr.ph205 ], [ %i.ki, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit146 ] ; 2 uses
  %i.ey = load i32, ptr %i.eb, align 8
  %i.ez = trunc nuw i64 %indvars.iv234 to i32
  %i.fa = or i32 %i.ey, %i.ez
  %i.fb = icmp eq i32 %i.fa, 0
  %i.fc = load ptr, ptr %i.el, align 8
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv234
  %i.fe = load i32, ptr %i.fd, align 4            ; 2 uses
  %i.ff = load ptr, ptr %0, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = zext i32 %i.fe to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = add i64 %i.ex, 2                        ; 4 uses
  %i.fm = load ptr, ptr %i.f, align 8
  %i.fn = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %.not.i.i.i98 = icmp ult i64 %i.fl, %i.fq
  br i1 %.not.i.i.i98, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i101, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.fl)
  %.pre.i.i.i99 = load i64, ptr %i.b, align 8
  %.pre2.i.i.i100 = load ptr, ptr %i.e, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i101

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i101: ; preds = %bb.x, %bb.w
  %i.fr = phi ptr [ %.pre2.i.i.i100, %bb.x ], [ %i.fn, %bb.w ]
  %i.fs = phi i64 [ %.pre.i.i.i99, %bb.x ], [ %i.ex, %bb.w ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fs
  store i16 -20478, ptr %i.ft, align 1
  %i.fu = load i64, ptr %i.b, align 8             ; 2 uses
  %i.fv = add i64 %i.fu, 2                        ; 2 uses
  store i64 %i.fv, ptr %i.b, align 8
  %i.fw = add i64 %i.fu, 6                        ; 2 uses
  %i.fx = load ptr, ptr %i.f, align 8
  %i.fy = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %.not.i.i5.i102 = icmp ult i64 %i.fw, %i.gb
  br i1 %.not.i.i5.i102, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit105, label %bb.y

bb.y:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i101
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.fw)
  %.pre.i.i6.i103 = load i64, ptr %i.b, align 8
  %.pre2.i.i7.i104 = load ptr, ptr %i.e, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit105

_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit105: ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i101, %bb.y
  %i.gc = phi ptr [ %.pre2.i.i7.i104, %bb.y ], [ %i.fy, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i101 ]
  %i.gd = phi i64 [ %.pre.i.i6.i103, %bb.y ], [ %i.fv, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i101 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  store i32 -559038737, ptr %i.ge, align 1
  %i.gf = load i64, ptr %i.b, align 8             ; 3 uses
  %i.gg = add i64 %i.gf, 4                        ; 4 uses
  store i64 %i.gg, ptr %i.b, align 8
  %i.gh = add i64 %i.gf, 6                        ; 4 uses
  %i.gi = load ptr, ptr %i.f, align 8
  %i.gj = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %.not.i.i.i106 = icmp ult i64 %i.gh, %i.gm
  br i1 %.not.i.i.i106, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i109, label %bb.z

bb.z:                                             ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit105
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.gh)
          to label %.noexc113 unwind label %bb.ax

.noexc113:                                        ; preds = %bb.z
  %.pre.i.i.i107 = load i64, ptr %i.b, align 8
  %.pre2.i.i.i108 = load ptr, ptr %i.e, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i109

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i109: ; preds = %.noexc113, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit105
  %i.gn = phi ptr [ %.pre2.i.i.i108, %.noexc113 ], [ %i.gj, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit105 ]
  %i.go = phi i64 [ %.pre.i.i.i107, %.noexc113 ], [ %i.gg, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit105 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.go
  store i16 -20464, ptr %i.gp, align 1
  %i.gq = load i64, ptr %i.b, align 8             ; 2 uses
  %i.gr = add i64 %i.gq, 2                        ; 2 uses
  store i64 %i.gr, ptr %i.b, align 8
  %i.gs = add i64 %i.gq, 6                        ; 2 uses
  %i.gt = load ptr, ptr %i.f, align 8
  %i.gu = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %.not.i.i5.i110 = icmp ult i64 %i.gs, %i.gx
  br i1 %.not.i.i5.i110, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i109
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.gs)
          to label %.noexc114 unwind label %bb.ax

.noexc114:                                        ; preds = %bb.aa
  %.pre.i.i6.i111 = load i64, ptr %i.b, align 8
  %.pre2.i.i7.i112 = load ptr, ptr %i.e, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc114, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i109
  %i.gy = phi ptr [ %.pre2.i.i7.i112, %.noexc114 ], [ %i.gu, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i109 ]
  %i.gz = phi i64 [ %.pre.i.i6.i111, %.noexc114 ], [ %i.gr, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i109 ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gz
  store i32 -559038737, ptr %i.ha, align 1
  %i.hb = load i64, ptr %i.b, align 8
  %i.hc = add i64 %i.hb, 4
  store i64 %i.hc, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke fastcc void @_ZN6Assimp12_GLOBAL__N_111GetMeshNameB5cxx11ERK6aiMeshjRK6aiNode(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(1320) %i.fk, i32 noundef %i.fe, ptr noundef nonnull align 8 dereferenceable(1144) %1)
          to label %bb.ac unwind label %bb.ay

bb.ac:                                            ; preds = %bb.ab
  %i.hd = load i64, ptr %i.em, align 8
  %.not10.i = icmp samesign eq i64 %i.hd, 0
  br i1 %.not10.i, label %.._crit_edge_crit_edge.i123, label %.lr.ph.i116

.._crit_edge_crit_edge.i123:                      ; preds = %bb.ac
  %.pre12.i = load i64, ptr %i.b, align 8
  br label %._crit_edge.i119

.lr.ph.i116:                                      ; preds = %bb.ac
  %i.he = load ptr, ptr %4, align 8
  %.pre.i117 = load i64, ptr %i.b, align 8
  br label %bb.ae

._crit_edge.i119:                                 ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, %.._crit_edge_crit_edge.i123
  %i.hf = phi i64 [ %.pre12.i, %.._crit_edge_crit_edge.i123 ], [ %i.iv, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %i.hg = add i64 %i.hf, 1                        ; 2 uses
  %i.hh = load ptr, ptr %i.f, align 8
  %i.hi = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %.not.i.i.i120 = icmp ult i64 %i.hg, %i.hl
  br i1 %.not.i.i.i120, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i119
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.hg)
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit

.noexc125:                                        ; preds = %bb.ad
  %.pre.i.i.i121 = load i64, ptr %i.b, align 8
  %.pre2.i.i.i122 = load ptr, ptr %i.e, align 8
  br label %bb.ao

bb.ae:                                            ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, %.lr.ph.i116
  %i.hm = phi i64 [ %.pre.i117, %.lr.ph.i116 ], [ %i.iv, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %.sroa.07.011.i = phi ptr [ %i.he, %.lr.ph.i116 ], [ %i.iw, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.011.i) ]
  %i.hn = load i8, ptr %.sroa.07.011.i, align 1
  %i.ho = add i64 %i.hm, 1                        ; 4 uses
  %i.hp = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.hq = load ptr, ptr %i.e, align 8             ; 7 uses
  %i.hr = ptrtoint ptr %i.hp to i64               ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64               ; 2 uses
  %i.ht = sub i64 %i.hr, %i.hs                    ; 9 uses
  %.not.i.i3.i = icmp ult i64 %i.ho, %i.ht
  br i1 %.not.i.i3.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hu = icmp ugt i64 %i.ho, %i.ht
  br i1 %i.hu, label %bb.ag, label %.noexc126

bb.ag:                                            ; preds = %bb.af
  %i.hv = sub nuw i64 %i.ho, %i.ht                ; 6 uses
  %i.hw = load ptr, ptr %i.en, align 8
  %i.hx = ptrtoint ptr %i.hw to i64               ; 2 uses
  %i.hy = sub i64 %i.hx, %i.hr                    ; 2 uses
  %i.hz = icmp sgt i64 %i.ht, -1
  call void @llvm.assume(i1 %i.hz)
  %i.ia = xor i64 %i.ht, 9223372036854775807      ; 2 uses
  %i.ib = icmp ule i64 %i.hy, %i.ia
  call void @llvm.assume(i1 %i.ib)
  %.not28.i.i = icmp ult i64 %i.hy, %i.hv
  br i1 %.not28.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.hp, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 1 ; 2 uses
  %i.id = add nsw i64 %i.hv, -1                   ; 2 uses
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.if = getelementptr i8, ptr %i.hp, i64 %i.hv
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ic, i8 0, i64 %i.id, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i = phi ptr [ %i.if, %bb.ai ], [ %i.ic, %bb.ah ]
  store ptr %.0.i.i.i.i.i, ptr %i.f, align 8
  %.pre2.i.i5.i.pre = load ptr, ptr %i.e, align 8
  br label %.noexc126

bb.aj:                                            ; preds = %bb.ag
  %i.ig = icmp ult i64 %i.ia, %i.hv
  br i1 %i.ig, label %bb.ak, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ht, i64 %i.hv)
  %i.ih = add nuw i64 %.sroa.speculated.i.i.i, %i.ht
  %i.ii = call i64 @llvm.umin.i64(i64 %i.ih, i64 9223372036854775807) ; 2 uses
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #22
          to label %.noexc151 unwind label %.loopexit ; 6 uses

.noexc151:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ht ; 2 uses
  store i8 0, ptr %i.ik, align 1
  %i.il = add nsw i64 %i.hv, -1                   ; 2 uses
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc151
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.in, i8 0, i64 %i.il, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.al, %.noexc151
  %.not35.i.i = icmp eq ptr %i.hp, %i.hq
  br i1 %.not35.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr align 1 %i.hq, i64 %i.ht, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.am, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  %.not.i33.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i33.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.io = sub i64 %i.hx, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.io) #25
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i: ; preds = %bb.an, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  store ptr %i.ij, ptr %i.e, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ho
  store ptr %i.ip, ptr %i.f, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ii
  store ptr %i.iq, ptr %i.en, align 8
  br label %.noexc126

.noexc126:                                        ; preds = %bb.af, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i
  %.pre2.i.i5.i = phi ptr [ %.pre2.i.i5.i.pre, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.ij, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i ], [ %i.hq, %bb.af ]
  %.pre.i.i4.i = load i64, ptr %i.b, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i: ; preds = %.noexc126, %bb.ae
  %i.ir = phi ptr [ %.pre2.i.i5.i, %.noexc126 ], [ %i.hq, %bb.ae ]
  %i.is = phi i64 [ %.pre.i.i4.i, %.noexc126 ], [ %i.hm, %bb.ae ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.is
  store i8 %i.hn, ptr %i.it, align 1
  %i.iu = load i64, ptr %i.b, align 8
  %i.iv = add i64 %i.iu, 1                        ; 3 uses
  store i64 %i.iv, ptr %i.b, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 1 ; 2 uses
  %i.ix = load ptr, ptr %4, align 8
  %i.iy = load i64, ptr %i.em, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iy
  %.not.i118 = icmp eq ptr %i.iw, %i.iz
  br i1 %.not.i118, label %._crit_edge.i119, label %bb.ae, !llvm.loop !13

bb.ao:                                            ; preds = %.noexc125, %._crit_edge.i119
  %i.ja = phi ptr [ %.pre2.i.i.i122, %.noexc125 ], [ %i.hi, %._crit_edge.i119 ]
  %i.jb = phi i64 [ %.pre.i.i.i121, %.noexc125 ], [ %i.hf, %._crit_edge.i119 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb
  store i8 0, ptr %i.jc, align 1
  %i.jd = load i64, ptr %i.b, align 8
  %i.je = add i64 %i.jd, 1                        ; 2 uses
  store i64 %i.je, ptr %i.b, align 8
  %i.jf = load ptr, ptr %4, align 8               ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.eo
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ao
  %i.jh = load i64, ptr %i.eo, align 8
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #25
  %.pre238 = load i64, ptr %i.b, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.jj = phi i64 [ %.pre238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.je, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.jk = add i64 %i.jj, 4                        ; 2 uses
  %i.jl = load ptr, ptr %i.f, align 8
  %i.jm = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %.not.i.i127 = icmp ult i64 %i.jk, %i.jp
  br i1 %.not.i.i127, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.jk)
          to label %.noexc130 unwind label %bb.az

.noexc130:                                        ; preds = %bb.ap
  %.pre.i.i128 = load i64, ptr %i.b, align 8
  %.pre2.i.i129 = load ptr, ptr %i.e, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jq = phi ptr [ %.pre2.i.i129, %.noexc130 ], [ %i.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.jr = phi i64 [ %.pre.i.i128, %.noexc130 ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jr
  store i32 0, ptr %i.js, align 1
  %i.jt = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ju = add i64 %i.jt, 4                        ; 2 uses
  store i64 %i.ju, ptr %i.b, align 8
  %i.jv = select i1 %i.fb, i32 %.1204, i32 %i.ea
  %i.jw = trunc i32 %i.jv to i16
  %i.jx = add i64 %i.jt, 6                        ; 2 uses
  %i.jy = load ptr, ptr %i.f, align 8
  %i.jz = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %.not.i.i132 = icmp ult i64 %i.jx, %i.kc
  br i1 %.not.i.i132, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.jx)
          to label %.noexc135 unwind label %bb.az

.noexc135:                                        ; preds = %bb.ar
  %.pre.i.i133 = load i64, ptr %i.b, align 8
  %.pre2.i.i134 = load ptr, ptr %i.e, align 8
  br label %bb.as

bb.as:                                            ; preds = %.noexc135, %bb.aq
  %i.kd = phi ptr [ %.pre2.i.i134, %.noexc135 ], [ %i.jz, %bb.aq ]
  %i.ke = phi i64 [ %.pre.i.i133, %.noexc135 ], [ %i.ju, %bb.aq ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ke
  store i16 %i.jw, ptr %i.kf, align 1
  %i.kg = load i64, ptr %i.b, align 8
  %i.kh = add i64 %i.kg, 2                        ; 4 uses
  %i.ki = add nsw i32 %.1204, 1                   ; 2 uses
  store i64 %i.gh, ptr %i.b, align 8
  %i.kj = add i64 %i.gf, 10                       ; 2 uses
  %i.kk = load ptr, ptr %i.f, align 8
  %i.kl = load ptr, ptr %i.e, align 8             ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp12StreamWriterILb0ELb0EED2Ev:bb.a

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.y, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4
  %i.ad = load ptr, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #21, !inline_history !4
  %i.ag = load ptr, ptr %i.x, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #21, !inline_history !4
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.h ], [ %i.al, %bb.i ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.j, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #21
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSExporter11WriteStringERK8aiString(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(1028) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre10 = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit8, %.._crit_edge_crit_edge
  %i.f = phi i64 [ %.pre10, %.._crit_edge_crit_edge ], [ %i.ah, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit8 ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = add i64 %i.f, 1                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.not.i.i = icmp ult i64 %i.h, %i.o
  br i1 %.not.i.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.h)
  %.pre.i.i = load i64, ptr %i.g, align 8
  %.pre2.i.i = load ptr, ptr %i.i, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit:  ; preds = %._crit_edge, %bb.b
  %i.p = phi ptr [ %.pre2.i.i, %bb.b ], [ %i.l, %._crit_edge ]
  %i.q = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %._crit_edge ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store i8 0, ptr %i.r, align 1
  %i.s = load i64, ptr %i.g, align 8
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.g, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit8
  %i.u = phi i64 [ %.pre, %.lr.ph ], [ %i.ah, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit8 ] ; 2 uses
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit8 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %.09
  %i.w = load i8, ptr %i.v, align 1
  %i.x = add i64 %i.u, 1                          ; 2 uses
  %i.y = load ptr, ptr %i.e, align 8
  %i.z = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %.not.i.i5 = icmp ult i64 %i.x, %i.ac
  br i1 %.not.i.i5, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit8, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.x)
  %.pre.i.i6 = load i64, ptr %i.c, align 8
  %.pre2.i.i7 = load ptr, ptr %i.d, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit8

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit8: ; preds = %bb.c, %bb.d
  %i.ad = phi ptr [ %.pre2.i.i7, %bb.d ], [ %i.z, %bb.c ]
  %i.ae = phi i64 [ %.pre.i.i6, %bb.d ], [ %i.u, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 %i.w, ptr %i.af, align 1
  %i.ag = load i64, ptr %i.c, align 8
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  store i64 %i.ah, ptr %i.c, align 8
  %i.ai = add nuw nsw i64 %.09, 1                 ; 2 uses
  %i.aj = load i32, ptr %1, align 4
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.c, label %._crit_edge, !llvm.loop !27
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSExporter11WriteStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not10 = icmp samesign eq i64 %i.b, 0
  br i1 %.not10, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre12 = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %i.d, align 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6, %.._crit_edge_crit_edge
  %i.g = phi i64 [ %.pre12, %.._crit_edge_crit_edge ], [ %i.ah, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6 ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.i.i = icmp ult i64 %i.i, %i.p
  br i1 %.not.i.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.i)
  %.pre.i.i = load i64, ptr %i.h, align 8
  %.pre2.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit:  ; preds = %._crit_edge, %bb.b
  %i.q = phi ptr [ %.pre2.i.i, %bb.b ], [ %i.m, %._crit_edge ]
  %i.r = phi i64 [ %.pre.i.i, %bb.b ], [ %i.g, %._crit_edge ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.s, align 1
  %i.t = load i64, ptr %i.h, align 8
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.h, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6
  %i.v = phi i64 [ %.pre, %.lr.ph ], [ %i.ah, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6 ] ; 2 uses
  %.sroa.07.011 = phi ptr [ %i.c, %.lr.ph ], [ %i.ai, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.011) ]
  %i.w = load i8, ptr %.sroa.07.011, align 1
  %i.x = add i64 %i.v, 1                          ; 2 uses
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %.not.i.i3 = icmp ult i64 %i.x, %i.ac
  br i1 %.not.i.i3, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.x)
  %.pre.i.i4 = load i64, ptr %i.d, align 8
  %.pre2.i.i5 = load ptr, ptr %i.e, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6: ; preds = %bb.c, %bb.d
  %i.ad = phi ptr [ %.pre2.i.i5, %bb.d ], [ %i.z, %bb.c ]
  %i.ae = phi i64 [ %.pre.i.i4, %bb.d ], [ %i.v, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 %i.w, ptr %i.af, align 1
  %i.ag = load i64, ptr %i.d, align 8
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  store i64 %i.ah, ptr %i.d, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 1 ; 2 uses
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = load i64, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %.not = icmp eq ptr %i.ai, %i.al
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !13
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6Assimp12_GLOBAL__N_111GetMeshNameB5cxx11ERK6aiMeshjRK6aiNode(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1320) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1144) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [10 x i8], align 1                ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.c, i8 0, i64 10, i1 false)
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %bb.b, label %.lr.ph.i.i.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 45, ptr %i.c, align 1
  %i.f = sub nsw i32 0, %2
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b, %bb.a
  %.153.i.i.ph = phi ptr [ %i.c, %bb.a ], [ %i.e, %bb.b ]
  %.13350.i.i.ph = phi i32 [ 1, %bb.a ], [ 2, %bb.b ]
  %.13849.i.i.ph = phi i32 [ %2, %bb.a ], [ %i.f, %bb.b ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.d
  %.153.i.i = phi ptr [ %.2.i.i, %bb.d ], [ %.153.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02752.i.i = phi i1 [ %or.cond3.i.i, %bb.d ], [ false, %.lr.ph.i.i.preheader ]
  %.03051.i.i = phi i32 [ %i.p, %bb.d ], [ 1000000000, %.lr.ph.i.i.preheader ] ; 5 uses
  %.13350.i.i = phi i32 [ %.234.i.i, %bb.d ], [ %.13350.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.13849.i.i = phi i32 [ %.239.i.i, %bb.d ], [ %.13849.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.g = sdiv i32 %.13849.i.i, %.03051.i.i        ; 3 uses
  %.recomposed = srem i32 %.13849.i.i, %.03051.i.i
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp eq i32 %.03051.i.i, 1               ; 2 uses
  %i.j = or i1 %i.i, %i.h
  %or.cond3.i.i = select i1 %.02752.i.i, i1 true, i1 %i.j ; 2 uses
  br i1 %or.cond3.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = trunc i32 %i.g to i8
  %i.l = add i8 %i.k, 48
  %i.m = getelementptr inbounds nuw i8, ptr %.153.i.i, i64 1 ; 2 uses
  store i8 %i.l, ptr %.153.i.i, align 1
  %i.n = add nuw nsw i32 %.13350.i.i, 1
  %i.o = mul i32 %i.g, %.03051.i.i                ; 0 uses
  br i1 %i.i, label %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.239.i.i = phi i32 [ %.recomposed, %bb.c ], [ %.13849.i.i, %.lr.ph.i.i ]
  %.234.i.i = phi i32 [ %i.n, %bb.c ], [ %.13350.i.i, %.lr.ph.i.i ] ; 2 uses
  %.2.i.i = phi ptr [ %i.m, %bb.c ], [ %.153.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.p = sdiv i32 %.03051.i.i, 10
  %i.q = icmp ult i32 %.234.i.i, 10
  br i1 %i.q, label %.lr.ph.i.i, label %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit

_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit:   ; preds = %bb.c, %bb.d
  %.4.i.i = phi ptr [ %.2.i.i, %bb.d ], [ %i.m, %bb.c ]
  store i8 0, ptr %.4.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.s, ptr %4, align 8
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.t, ptr %i.b, align 8
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load i64, ptr %i.b, align 8
  store i64 %i.w, ptr %i.s, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit
  %i.x = phi ptr [ %i.v, %.noexc.i ], [ %i.s, %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit ] ; 2 uses
  switch i64 %i.t, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %i.r, align 4
  store i8 %i.y, ptr %i.x, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 4 %i.r, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.z = load i64, ptr %i.b, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %4, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.ae = load i32, ptr %i.ad, align 4
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = load ptr, ptr %4, align 8               ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.s                 ; 2 uses
  br i1 %i.ai, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ak = load i64, ptr %i.s, align 8
  %i.al = select i1 %i.ai, i64 15, i64 %i.ak
  %i.am = icmp ugt i64 %i.ag, %i.al
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.af, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc11 unwind label %bb.m

.noexc11:                                         ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %4, align 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.an = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 95, ptr %i.ao, align 1
  store i64 %i.ag, ptr %i.aa, align 8
  %i.ap = load ptr, ptr %4, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ag
  store i8 0, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #21 ; 2 uses
  %i.at = load i64, ptr %i.aa, align 8
  %i.au = sub i64 4611686018427387903, %i.at
  %i.av = icmp ult i64 %i.au, %i.as
  br i1 %i.av, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc12 unwind label %bb.m

.noexc12:                                         ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.k
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.ar, i64 noundef %i.as)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.l, %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 95, ptr %i.a, align 1, !noalias !31
  %i.ay = load ptr, ptr %4, align 8, !noalias !31
end_hunk_3
begin_hunk_4_@_ZN6Assimp6Logger5errorIJRA39_KcPS2_EEEvDpOT_:bb.a
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(39) %1) #21
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(39) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #21
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #21
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSExporter22WriteFaceMaterialChunkERK6aiMesh(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1320) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 25 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %i.b, 2                          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %.not.i.i.i = icmp ult i64 %i.c, %i.j
  br i1 %.not.i.i.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.c)
  %.pre.i.i.i = load i64, ptr %i.a, align 8
  %.pre2.i.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i: ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %.pre2.i.i.i, %bb.b ], [ %i.g, %bb.a ]
  %i.l = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i16 16688, ptr %i.m, align 1
  %i.n = load i64, ptr %i.a, align 8              ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  store i64 %i.o, ptr %i.a, align 8
  %i.p = add i64 %i.n, 6                          ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %.not.i.i5.i = icmp ult i64 %i.p, %i.u
  br i1 %.not.i.i5.i, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.p)
  %.pre.i.i6.i = load i64, ptr %i.a, align 8
  %.pre2.i.i7.i = load ptr, ptr %i.d, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit

_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit: ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i, %bb.c
  %i.v = phi ptr [ %.pre2.i.i7.i, %bb.c ], [ %i.r, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i ]
  %i.w = phi i64 [ %.pre.i.i6.i, %bb.c ], [ %i.o, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store i32 -559038737, ptr %i.x, align 1
  %i.y = load i64, ptr %i.a, align 8
  %i.z = add i64 %i.y, 4
  store i64 %i.z, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke fastcc void @_ZN6Assimp12_GLOBAL__N_115GetMaterialNameB5cxx11ERK10aiMaterialj(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef %i.ae)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %.not10.i = icmp samesign eq i64 %i.aj, 0
  br i1 %.not10.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.d
  %.pre12.i = load i64, ptr %i.a, align 8
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ak = load ptr, ptr %2, align 8
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.f

._crit_edge.i:                                    ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, %.._crit_edge_crit_edge.i
  %i.al = phi i64 [ %.pre12.i, %.._crit_edge_crit_edge.i ], [ %i.be, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 2 uses
  %i.an = load ptr, ptr %i.e, align 8
  %i.ao = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.not.i.i.i21 = icmp ult i64 %i.am, %i.ar
  br i1 %.not.i.i.i21, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.am)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %.pre.i.i.i22 = load i64, ptr %i.a, align 8
  %.pre2.i.i.i23 = load ptr, ptr %i.d, align 8
  br label %bb.h

bb.f:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, %.lr.ph.i
  %i.as = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.be, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %.sroa.07.011.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.bf, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.011.i) ]
  %i.at = load i8, ptr %.sroa.07.011.i, align 1
  %i.au = add i64 %i.as, 1                        ; 2 uses
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.not.i.i3.i = icmp ult i64 %i.au, %i.az
  br i1 %.not.i.i3.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.au)
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.g
  %.pre.i.i4.i = load i64, ptr %i.a, align 8
  %.pre2.i.i5.i = load ptr, ptr %i.d, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i: ; preds = %.noexc24, %bb.f
  %i.ba = phi ptr [ %.pre2.i.i5.i, %.noexc24 ], [ %i.aw, %bb.f ]
  %i.bb = phi i64 [ %.pre.i.i4.i, %.noexc24 ], [ %i.as, %bb.f ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  store i8 %i.at, ptr %i.bc, align 1
  %i.bd = load i64, ptr %i.a, align 8
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  store i64 %i.be, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 1 ; 2 uses
  %i.bg = load ptr, ptr %2, align 8
  %i.bh = load i64, ptr %i.ai, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  %.not.i = icmp eq ptr %i.bf, %i.bi
  br i1 %.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !13

bb.h:                                             ; preds = %.noexc, %._crit_edge.i
  %i.bj = phi ptr [ %.pre2.i.i.i23, %.noexc ], [ %i.ao, %._crit_edge.i ]
  %i.bk = phi i64 [ %.pre.i.i.i22, %.noexc ], [ %i.al, %._crit_edge.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  store i8 0, ptr %i.bl, align 1
  %i.bm = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  store i64 %i.bn, ptr %i.a, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = trunc i32 %i.bp to i16
  %i.br = add i64 %i.bm, 3                        ; 2 uses
  %i.bs = load ptr, ptr %i.e, align 8
  %i.bt = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %.not.i.i = icmp ult i64 %i.br, %i.bw
  br i1 %.not.i.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.br)
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %bb.i
  %.pre.i.i = load i64, ptr %i.a, align 8
  %.pre2.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit:  ; preds = %bb.h, %.noexc25
  %i.bx = phi ptr [ %.pre2.i.i, %.noexc25 ], [ %i.bt, %bb.h ]
  %i.by = phi i64 [ %.pre.i.i, %.noexc25 ], [ %i.bn, %bb.h ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  store i16 %i.bq, ptr %i.bz, align 1
  %i.ca = load i64, ptr %i.a, align 8
  %i.cb = add i64 %i.ca, 2                        ; 3 uses
  store i64 %i.cb, ptr %i.a, align 8
  %i.cc = load i32, ptr %i.bo, align 8
  %.not = icmp eq i32 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.o, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit
  %i.cd = phi i64 [ %i.cb, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit ], [ %i.dl, %bb.o ]
  %i.ce = load ptr, ptr %2, align 8               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.ch = load i64, ptr %i.cf, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #25
  %.pre = load i64, ptr %i.a, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cj = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cd, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  store i64 %i.c, ptr %i.a, align 8
  %i.ck = add i64 %i.b, 6                         ; 2 uses
  %i.cl = load ptr, ptr %i.e, align 8
  %i.cm = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %.not.i.i.i26 = icmp ult i64 %i.ck, %i.cp
  br i1 %.not.i.i.i26, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ck)
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  %.pre.i.i.i27 = load i64, ptr %i.a, align 8
  %.pre2.i.i.i28 = load ptr, ptr %i.d, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #24
  unreachable

_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i
  %i.cs = phi ptr [ %.pre2.i.i.i28, %.noexc.i ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ct = phi i64 [ %.pre.i.i.i27, %.noexc.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.cu = sub i64 %i.cj, %i.b
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  store i32 %i.cv, ptr %i.cw, align 1
  store i64 %i.cj, ptr %i.a, align 8
  ret void

bb.l:                                             ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit, %bb.o
  %i.cz = phi i64 [ %i.dl, %bb.o ], [ %i.cb, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit ] ; 2 uses
  %.038 = phi i32 [ %i.dm, %bb.o ], [ 0, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit ] ; 2 uses
  %i.da = trunc i32 %.038 to i16
  %i.db = add i64 %i.cz, 2                        ; 2 uses
  %i.dc = load ptr, ptr %i.e, align 8
  %i.dd = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %.not.i.i29 = icmp ult i64 %i.db, %i.dg
  br i1 %.not.i.i29, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.db)
          to label %.noexc32 unwind label %bb.p

.noexc32:                                         ; preds = %bb.n
  %.pre.i.i30 = load i64, ptr %i.a, align 8
  %.pre2.i.i31 = load ptr, ptr %i.d, align 8
  br label %bb.o

bb.o:                                             ; preds = %.noexc32, %.lr.ph
  %i.dh = phi ptr [ %.pre2.i.i31, %.noexc32 ], [ %i.dd, %.lr.ph ]
  %i.di = phi i64 [ %.pre.i.i30, %.noexc32 ], [ %i.cz, %.lr.ph ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di
  store i16 %i.da, ptr %i.dj, align 1
  %i.dk = load i64, ptr %i.a, align 8
  %i.dl = add i64 %i.dk, 2                        ; 3 uses
  store i64 %i.dl, ptr %i.a, align 8
  %i.dm = add nuw i32 %.038, 1                    ; 2 uses
  %i.dn = load i32, ptr %i.bo, align 8
  %i.do = icmp ult i32 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph, label %._crit_edge, !llvm.loop !59

bb.p:                                             ; preds = %bb.n
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.m ], [ %i.dp, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dq = load ptr, ptr %2, align 8               ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.q
  %i.dt = load i64, ptr %i.dr, align 8
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_:bb.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %2, align 8
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !61

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #26 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8
  %.pre82 = load ptr, ptr %2, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8                ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp ult ptr %i.af, %i.w
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ult ptr %i.w, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !61

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #26 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi ptr [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult ptr %i.aq, %i.w                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult ptr %i.y, %i.w
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp ult ptr %i.w, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8      ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ult ptr %i.w, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !61

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #26 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi ptr [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult ptr %i.bl, %i.w                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit

_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.p, %bb.n, %._crit_edge.thread.i27, %bb.i, %bb.g, %._crit_edge.thread.i, %bb.c, %bb.r, %bb.k, %bb.o
  %.sroa.070.2 = phi ptr [ null, %bb.c ], [ null, %bb.p ], [ %spec.select, %bb.k ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.f, %bb.c ], [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #22 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #25
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 104) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
end_hunk_5
begin_hunk_6_@_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_:bb.a
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #21
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #21
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !73
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !73
  store i8 0, ptr %i.a, align 8, !alias.scope !73
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !73 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !73 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !73 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !73 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #21
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168)) unnamed_addr #3

declare i32 @aiGetMaterialProperty(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !alias.scope !86
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !alias.scope !86
  store i8 0, ptr %i.k, align 8, !alias.scope !86
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !noalias !86 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !86 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !noalias !86 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %0, align 8, !alias.scope !86 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.k, align 8, !alias.scope !86
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #25
  br label %.body

bb.f:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %bb.d
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %4, align 8
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %4, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aq) #21
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #21
  resume { ptr, i32 } %i.x
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #22 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.e, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float 1.000000e+00, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4
  %i.m = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.n, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.q
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp ult ptr %i.r, %i.t
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.v = phi i1 [ %i.u, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8
  br label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #25
  resume { ptr, i32 } %i.z

bb.e:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #25
  br label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit9: ; preds = %.thread, %bb.e
  %.sroa.013.017 = phi ptr [ %i.a, %.thread ], [ %i.n, %bb.e ]
  ret ptr %.sroa.013.017
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn }
end_hunk_6
