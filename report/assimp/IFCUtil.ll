inline.NumInlined: 1656
inline.NumDeleted: 752
begin_hunk_0_@_ZNK6Assimp3IFC8TempMesh21ComputePolygonNormalsERSt6vectorI10aiVector3tIdESaIS4_EEbm:bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.speculated, %.lr.ph ] ; 2 uses
  %i.i = shl i64 %.0.lcssa, 5
  %i.j = add i64 %i.i, 64                         ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #26 ; 18 uses
  store double 0.000000e+00, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 8        ; 2 uses
  %i.m = shl nuw nsw i64 %.0.lcssa, 5
  %.idx.i.i.i.i.i.i.i = add nuw nsw i64 %i.m, 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = load ptr, ptr %1, align 8                ; 5 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = ptrtoint ptr %i.e to i64
  %i.v = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = sub i64 %i.x, %3
  %i.z = add i64 %i.y, %i.t                       ; 4 uses
  %i.aa = icmp ugt i64 %i.z, 384307168202282325
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc40 unwind label %bb.j

.noexc40:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.r                     ; 2 uses
  %i.af = sdiv exact i64 %i.ae, 24
  %i.ag = icmp ult i64 %i.af, %i.z
  br i1 %i.ag, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.ah = mul nuw nsw i64 %i.z, 24
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #26
          to label %.noexc41 unwind label %bb.j   ; 4 uses

.noexc41:                                         ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc41, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ai, %.noexc41 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.p, %.noexc41 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !61
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i39 = icmp eq ptr %i.aj, %i.o
  br i1 %.not.i.i.i.i39, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !65

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc41
  %.not.i8.i = icmp eq ptr %i.p, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ae) #27
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ai, ptr %1, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.s
  store ptr %i.al, ptr %i.n, align 8
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.z
  store ptr %i.am, ptr %i.ab, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  %i.an = phi ptr [ %.pre, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.b, %bb.c ] ; 5 uses
  %.not5.i = icmp eq ptr %i.an, %i.c
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = shl nsw i64 %3, 2
  %i.aq = add i64 %i.ap, %i.v
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.ao                    ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader164, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.an, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi159 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load160 = load <4 x i32>, ptr %i.ay, align 4
  %i.az = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ba = add <4 x i32> %wide.load160, %vec.phi159 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ba, %i.az
  %i.bc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.preheader164

.lr.ph.i.preheader164:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bc, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.an, %.lr.ph.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader164, %.lr.ph.i
  %.07.i = phi i32 [ %i.be, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader164 ]
  %.sroa.02.06.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader164 ] ; 2 uses
  %i.bd = load i32, ptr %.sroa.02.06.i, align 4
  %i.be = add i32 %i.bd, %.07.i                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !67

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa158 = phi i32 [ %i.bc, %middle.block ], [ %i.be, %.lr.ph.i ]
  %i.bg = sext i32 %.lcssa158 to i64
  br label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit: ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit.loopexit, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit ], [ %i.bg, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit.loopexit ]
  br i1 %.not94103, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph113, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %.032111 = phi i64 [ %.0.lcssa.i, %.lr.ph113 ], [ %i.gf, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 2 uses
  %.sroa.080.1110 = phi ptr [ %i.c, %.lr.ph113 ], [ %i.gc, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 4 uses
  %i.bo = load i32, ptr %.sroa.080.1110, align 4  ; 4 uses
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %bb.f, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.e
  %i.bp = load ptr, ptr %0, align 8
  %i.bq = getelementptr [24 x i8], ptr %i.bp, i64 %.032111 ; 3 uses
  %i.br = zext i32 %i.bo to i64                   ; 2 uses
  %xtraiter = and i64 %i.br, 1
  %i.bs = icmp eq i32 %i.bo, 1
  br i1 %i.bs, label %.epil.preheader, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter = and i64 %i.br, 4294967294
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.bt = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.bu = load ptr, ptr %i.ab, align 8
  %.not.i42 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  %i.bv = load ptr, ptr %i.n, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.bw, ptr %i.n, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %1, align 8               ; 5 uses
  %i.by = ptrtoint ptr %i.bt to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.h, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.cc = sdiv exact i64 %i.ca, 24                ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i, %i.cc ; 2 uses
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 384307168202282325) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cf = mul nuw nsw i64 %i.ce, 24
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #26
          to label %.noexc44 unwind label %.loopexit ; 5 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ca
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.bx, %i.bt
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc44, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %i.cg, %.noexc44 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %i.bx, %.noexc44 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !68
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ci, %i.bt
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !65

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc44
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cg, %.noexc44 ], [ %i.cj, %.lr.ph.i.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i22.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #27
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i
  store ptr %i.cg, ptr %1, align 8
  store ptr %i.ck, ptr %i.n, align 8
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.cl, ptr %i.ab, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.j:                                             ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit64

.loopexit:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i46
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit64

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit64

._crit_edge.unr-lcssa:                            ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph108
  %.033107.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %i.ej, %._crit_edge.unr-lcssa ]
  %.034106.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %i.ek, %._crit_edge.unr-lcssa ]
  %lcmp.mod168 = trunc i32 %i.bo to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
  %i.cn = getelementptr [24 x i8], ptr %i.bq, i64 %.034106.epil.init ; 3 uses
  %i.co = load double, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.033107.epil.init ; 3 uses
  store double %i.co, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load double, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store double %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cu = load double, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store double %i.cu, ptr %i.cv, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.cw = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.cx = load ptr, ptr %i.ab, align 8
  %.not.i45 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i8 0, i64 24, i1 false)
  %i.cy = load ptr, ptr %i.n, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  store ptr %i.cz, ptr %i.n, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60

bb.l:                                             ; preds = %._crit_edge
  %i.da = load ptr, ptr %1, align 8               ; 5 uses
  %i.db = ptrtoint ptr %i.cw to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 4 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i46

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i46: ; preds = %bb.l
  %i.df = sdiv exact i64 %i.dd, 24                ; 2 uses
  %.sroa.speculated.i.i.i47 = tail call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i47, %i.df ; 2 uses
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 384307168202282325) ; 2 uses
  %.not.i.i.i48 = icmp ne i64 %i.dg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i48)
  %i.di = mul nuw nsw i64 %i.dh, 24
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #26
          to label %.noexc59 unwind label %.loopexit ; 5 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i46
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dd
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i.i49 = icmp eq ptr %i.da, %i.cw
  br i1 %.not10.i.i.i.i.i49, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i54, label %.lr.ph.i.i.i.i.i50

.lr.ph.i.i.i.i.i50:                               ; preds = %.noexc59, %.lr.ph.i.i.i.i.i50
  %.012.i.i.i.i.i51 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i50 ], [ %i.dj, %.noexc59 ] ; 2 uses
  %.0911.i.i.i.i.i52 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i50 ], [ %i.da, %.noexc59 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i51, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i52, i64 24, i1 false), !alias.scope !72
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i52, i64 24 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i51, i64 24 ; 2 uses
  %.not.i.i.i.i.i53 = icmp eq ptr %i.dl, %i.cw
  br i1 %.not.i.i.i.i.i53, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i54, label %.lr.ph.i.i.i.i.i50, !llvm.loop !65

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i54: ; preds = %.lr.ph.i.i.i.i.i50, %.noexc59
  %.0.lcssa.i.i.i.i.i55 = phi ptr [ %i.dj, %.noexc59 ], [ %i.dm, %.lr.ph.i.i.i.i.i50 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i55, i64 24 ; 2 uses
  %.not.i22.i.i56 = icmp eq ptr %i.da, null
  br i1 %.not.i22.i.i56, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i57, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i54
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dd) #27
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i57

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i57: ; preds = %bb.m, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i54
  store ptr %i.dj, ptr %1, align 8
  store ptr %i.dn, ptr %i.n, align 8
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.do, ptr %i.ab, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60

bb.n:                                             ; preds = %bb.n, %.lr.ph108.new
  %.033107 = phi i64 [ 0, %.lr.ph108.new ], [ %i.ej, %bb.n ] ; 3 uses
  %.034106 = phi i64 [ 0, %.lr.ph108.new ], [ %i.ek, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph108.new ], [ %niter.next.1, %bb.n ]
  %i.dp = getelementptr [24 x i8], ptr %i.bq, i64 %.034106 ; 3 uses
  %i.dq = load double, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.033107 ; 3 uses
  store double %i.dq, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load double, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store double %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dw = load double, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store double %i.dw, ptr %i.dx, align 8
  %i.dy = getelementptr [24 x i8], ptr %i.bq, i64 %.034106 ; 3 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 24
  %i.ea = load double, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.033107 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store double %i.ea, ptr %i.ec, align 8
  %i.ed = getelementptr i8, ptr %i.dy, i64 32
  %i.ee = load double, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  store double %i.ee, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %i.dy, i64 40
  %i.eh = load double, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  store double %i.eh, ptr %i.ei, align 8
  %i.ej = add nuw nsw i64 %.033107, 8             ; 2 uses
  %i.ek = add nuw nsw i64 %.034106, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %bb.n, !llvm.loop !76

_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i57, %bb.k
  %i.el = phi ptr [ %i.dn, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i57 ], [ %i.cz, %bb.k ] ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -24
  %i.en = load i32, ptr %.sroa.080.1110, align 4  ; 3 uses
  %i.eo = shl nsw i32 %i.en, 2                    ; 2 uses
  %i.ep = sext i32 %i.eo to i64                   ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ep
  %i.er = add i32 %i.eo, 4
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.es
  %i.eu = load <2 x double>, ptr %i.k, align 8
  store <2 x double> %i.eu, ptr %i.eq, align 8
  %i.ev = load <2 x double>, ptr %i.bi, align 8
  store <2 x double> %i.ev, ptr %i.et, align 8
  %i.ew = load double, ptr %i.bh, align 8
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ep
  store double %i.ew, ptr %i.ex, align 8
  %i.ey = load double, ptr %i.bk, align 8
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.es
  store double %i.ey, ptr %i.ez, align 8
  %i.fa = icmp sgt i32 %i.en, 0
  br i1 %i.fa, label %.lr.ph.i61, label %_ZN6Assimp12NewellNormalILi4ELi4ELi4EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit

.lr.ph.i61:                                       ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60, %.lr.ph.i61
  %.078.i = phi i32 [ %i.ga, %.lr.ph.i61 ], [ 0, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ]
  %.05477.i = phi ptr [ %i.fz, %.lr.ph.i61 ], [ %i.bl, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.05576.i = phi ptr [ %i.fy, %.lr.ph.i61 ], [ %i.bh, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.05774.i = phi ptr [ %i.fx, %.lr.ph.i61 ], [ %i.bm, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.05873.i = phi ptr [ %i.fw, %.lr.ph.i61 ], [ %i.l, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.05972.i = phi ptr [ %i.fv, %.lr.ph.i61 ], [ %i.bj, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.06071.i = phi ptr [ %i.fu, %.lr.ph.i61 ], [ %i.bn, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.06170.i = phi ptr [ %i.ft, %.lr.ph.i61 ], [ %i.k, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.06269.i = phi ptr [ %i.fs, %.lr.ph.i61 ], [ %i.bi, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.06566.i = phi double [ %i.fg, %.lr.ph.i61 ], [ 0.000000e+00, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ]
  %i.fb = phi <2 x double> [ %i.fr, %.lr.ph.i61 ], [ zeroinitializer, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ]
  %i.fc = load double, ptr %.06269.i, align 8
  %i.fd = load double, ptr %.05774.i, align 8
  %i.fe = load double, ptr %.05873.i, align 8
  %i.ff = fsub double %i.fd, %i.fe
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ff, double %.06566.i) ; 2 uses
  %i.fh = load double, ptr %.05477.i, align 8
  %i.fi = load double, ptr %.05576.i, align 8
  %i.fj = load double, ptr %.06071.i, align 8
  %i.fk = load double, ptr %.06170.i, align 8
  %i.fl = load <2 x double>, ptr %.05972.i, align 8
  %i.fm = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fn = insertelement <2 x double> %i.fm, double %i.fj, i64 1
  %i.fo = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fk, i64 1
  %i.fq = fsub <2 x double> %i.fn, %i.fp
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.fq, <2 x double> %i.fb) ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.06269.i, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %.06170.i, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %.06071.i, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %.05972.i, i64 32
  %i.fw = getelementptr inbounds nuw i8, ptr %.05873.i, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %.05774.i, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %.05576.i, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %.05477.i, i64 32
  %i.ga = add nuw nsw i32 %.078.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ga, %i.en
  br i1 %exitcond.not.i, label %_ZN6Assimp12NewellNormalILi4ELi4ELi4EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit, label %.lr.ph.i61, !llvm.loop !77

_ZN6Assimp12NewellNormalILi4ELi4ELi4EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit: ; preds = %.lr.ph.i61, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60
  %.065.lcssa.i = phi double [ 0.000000e+00, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ], [ %i.fg, %.lr.ph.i61 ]
  %i.gb = phi <2 x double> [ zeroinitializer, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ], [ %i.fr, %.lr.ph.i61 ]
  store <2 x double> %i.gb, ptr %i.em, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.el, i64 -8
  store double %.065.lcssa.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.g, %_ZN6Assimp12NewellNormalILi4ELi4ELi4EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.080.1110, i64 4 ; 2 uses
  %i.gd = load i32, ptr %.sroa.080.1110, align 4
  %i.ge = zext i32 %i.gd to i64
  %i.gf = add i64 %.032111, %i.ge
  %.not95 = icmp eq ptr %i.gc, %i.e
  br i1 %.not95, label %._crit_edge114, label %bb.e, !llvm.loop !78

._crit_edge114:                                   ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit
  br i1 %2, label %bb.o, label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.o:                                             ; preds = %._crit_edge114
  %i.gg = load ptr, ptr %1, align 8               ; 2 uses
  %i.gh = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not96115 = icmp eq ptr %i.gg, %i.gh
  br i1 %.not96115, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.o, %_ZN10aiVector3tIdE9NormalizeEv.exit
  %.sroa.065.0116 = phi ptr [ %i.gv, %_ZN10aiVector3tIdE9NormalizeEv.exit ], [ %i.gg, %bb.o ] ; 5 uses
  %i.gi = load double, ptr %.sroa.065.0116, align 8 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.065.0116, i64 8 ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8         ; 3 uses
  %i.gl = fmul double %i.gk, %i.gk
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gi, double %i.gi, double %i.gl)
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.065.0116, i64 16 ; 2 uses
  %i.go = load double, ptr %i.gn, align 8         ; 3 uses
  %i.gp = tail call noundef double @llvm.fmuladd.f64(double %i.go, double %i.go, double %i.gm) ; 2 uses
  %i.gq = fcmp oeq double %i.gp, 0.000000e+00
  br i1 %i.gq, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %.lr.ph118
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.gp)
  %i.gr = fdiv double 1.000000e+00, %sqrt.i.i     ; 3 uses
  %i.gs = fmul double %i.gi, %i.gr
  store double %i.gs, ptr %.sroa.065.0116, align 8
  %i.gt = fmul double %i.gk, %i.gr
  store double %i.gt, ptr %i.gj, align 8
  %i.gu = fmul double %i.go, %i.gr
  store double %i.gu, ptr %i.gn, align 8
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIdEdVEd.exit.i, %.lr.ph118
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.065.0116, i64 24 ; 2 uses
  %.not96 = icmp eq ptr %i.gv, %i.gh
  br i1 %.not96, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph118

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit, %bb.o, %._crit_edge114
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #27
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit64:                  ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind noalias writable writeonly sret(%class.aiVector3t) align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i64 %2, 3                            ; 2 uses
  %i.b = add i64 %i.a, 6                          ; 4 uses
  %i.c = icmp ugt i64 %i.b, 1152921504606846975
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #28
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %.noexc20

.noexc20:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 3
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #26 ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b ; 2 uses
  store double 0.000000e+00, ptr %i.e, align 8
  %i.g = add nsw i64 %i.a, 5                      ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc20
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC8TempMesh20FixupFaceOrientationEv:bb.a
  %i.dz = call noundef double @llvm.fabs.f64(double %i.dr)
  %i.ea = fcmp olt double %i.dz, f0x3EB0C6F7A0000000 ; 2 uses
  %i.eb = fcmp olt double %i.du, f0xBEB0C6F7A0000000 ; 2 uses
  %.not.i.i.i.i.i = xor i1 %i.ea, true
  %brmerge.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.eb
  br i1 %brmerge.i.i.i.i.i, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ec = call noundef double @llvm.fabs.f64(double %i.du)
  %i.ed = fcmp olt double %i.ec, f0x3EB0C6F7A0000000
  %i.ee = fcmp olt double %i.dx, f0xBEB0C6F7A0000000
  %or.cond.i.i.i.i = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i: ; preds = %bb.f
  %or.cond.i.i.i.i.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i, %bb.g, %bb.e
  br label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i ], [ 16, %bb.g ], [ 16, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i ], [ %.013.i.i.i.i, %bb.g ], [ %.013.i.i.i.i, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i ] ; 11 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ef, align 8      ; 2 uses
  %.not.i.i.i.i186 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i186, label %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i, label %bb.e, !llvm.loop !95

_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i
  %i.eg = icmp eq ptr %.19.i.i.i.i, %i.ay
  br i1 %i.eg, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ei = load double, ptr %i.eh, align 8, !noalias !96
  %i.ej = fsub double %i.dk, %i.ei                ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.el = load double, ptr %i.ek, align 8, !noalias !96
  %i.em = fsub double %i.dm, %i.el                ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.eo = load double, ptr %i.en, align 8, !noalias !96
  %i.ep = fsub double %i.do, %i.eo
  %i.eq = fcmp olt double %i.ej, f0xBEB0C6F7A0000000
  br i1 %i.eq, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.er = call noundef double @llvm.fabs.f64(double %i.ej)
  %i.es = fcmp olt double %i.er, f0x3EB0C6F7A0000000 ; 2 uses
  %i.et = fcmp olt double %i.em, f0xBEB0C6F7A0000000 ; 2 uses
  %.not.i.i187 = xor i1 %i.es, true
  %brmerge.i.i = select i1 %.not.i.i187, i1 true, i1 %i.et
  br i1 %brmerge.i.i, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eu = call noundef double @llvm.fabs.f64(double %i.em)
  %i.ev = fcmp olt double %i.eu, f0x3EB0C6F7A0000000
  %i.ew = fcmp olt double %i.ep, f0xBEB0C6F7A0000000
  %or.cond.i = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond.i, label %.critedge.i, label %bb.t

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i: ; preds = %bb.i
  %or.cond.i.i = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond.i.i, label %.critedge.i, label %bb.t

.critedge.i:                                      ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i, %bb.j, %bb.h, %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i, %bb.d
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.j ], [ %.19.i.i.i.i, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i ], [ %i.ay, %bb.d ], [ %.19.i.i.i.i, %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i ], [ %.19.i.i.i.i, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %6, ptr %3, align 8
  %i.ex = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %.noexc345 unwind label %.loopexit572 ; 9 uses

.noexc345:                                        ; preds = %.critedge.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  store ptr %i.ex, ptr %i.bd, align 8
  %i.fa = invoke { ptr, ptr } @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ey)
          to label %bb.k unwind label %bb.q       ; 2 uses

bb.k:                                             ; preds = %.noexc345
  %i.fb = extractvalue { ptr, ptr } %i.fa, 0      ; 2 uses
  %i.fc = extractvalue { ptr, ptr } %i.fa, 1      ; 6 uses
  %.not.i341 = icmp eq ptr %i.fc, null
  br i1 %.not.i341, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i342 = icmp ne ptr %i.fb, null
  %i.fd = icmp eq ptr %i.fc, %i.ay
  %or.cond.i.i.i = or i1 %.not.i.i.i342, %i.fd
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.ff = load double, ptr %i.ey, align 8, !noalias !99
  %i.fg = load double, ptr %i.fe, align 8, !noalias !99
  %i.fh = fsub double %i.ff, %i.fg                ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.fj = load double, ptr %i.fi, align 8, !noalias !99
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fl = load double, ptr %i.fk, align 8, !noalias !99
  %i.fm = fsub double %i.fj, %i.fl                ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fo = load double, ptr %i.fn, align 8, !noalias !99
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fq = load double, ptr %i.fp, align 8, !noalias !99
  %i.fr = fsub double %i.fo, %i.fq
  %i.fs = fcmp olt double %i.fh, f0xBEB0C6F7A0000000
  br i1 %i.fs, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ft = call noundef double @llvm.fabs.f64(double %i.fh)
  %i.fu = fcmp olt double %i.ft, f0x3EB0C6F7A0000000 ; 2 uses
  %i.fv = fcmp olt double %i.fm, f0xBEB0C6F7A0000000 ; 2 uses
  %or.cond.i.i.i.i343 = select i1 %i.fu, i1 %i.fv, i1 false
  %.not.i.i.i.i344 = xor i1 %i.fu, true
  %brmerge.i.i.i.i = select i1 %.not.i.i.i.i344, i1 true, i1 %i.fv
  br i1 %brmerge.i.i.i.i, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fw = call noundef double @llvm.fabs.f64(double %i.fm)
  %i.fx = fcmp olt double %i.fw, f0x3EB0C6F7A0000000
  br i1 %i.fx, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.fy = fcmp olt double %i.fr, f0xBEB0C6F7A0000000
  br label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %i.fz = phi i1 [ %i.fy, %bb.p ], [ true, %bb.l ], [ %or.cond.i.i.i.i343, %bb.n ], [ true, %bb.m ], [ false, %bb.o ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fz, ptr noundef nonnull %i.ex, ptr noundef nonnull %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.ay) #25
  %i.ga = load i64, ptr %i.bc, align 8
  %i.gb = add i64 %i.ga, 1
  store i64 %i.gb, ptr %i.bc, align 8
  br label %.noexc188

bb.q:                                             ; preds = %.noexc345
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

bb.r:                                             ; preds = %bb.k
  %i.gd = load ptr, ptr %i.ez, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #27
  br label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i: ; preds = %bb.s, %bb.r
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 80) #27
  br label %.noexc188

.noexc188:                                        ; preds = %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, %.thread.i
  %.sroa.0.010.i = phi ptr [ %i.ex, %.thread.i ], [ %i.fb, %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.t

bb.t:                                             ; preds = %.noexc188, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i, %bb.j
  %.sroa.06.0.i = phi ptr [ %.sroa.0.010.i, %.noexc188 ], [ %.19.i.i.i.i, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i ], [ %.19.i.i.i.i, %bb.j ] ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64 ; 4 uses
  %i.gl = load ptr, ptr %i.gk, align 8            ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 72 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8
  %.not.i = icmp eq ptr %i.gl, %i.gn
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %storemerge618, ptr %i.gl, align 8
  %i.go = load ptr, ptr %i.gk, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gp, ptr %i.gk, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.v:                                             ; preds = %bb.t
  %i.gq = load ptr, ptr %i.gj, align 8            ; 4 uses
  %i.gr = ptrtoint ptr %i.gl to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs                    ; 6 uses
  %i.gu = icmp eq i64 %i.gt, 9223372036854775800
  br i1 %i.gu, label %bb.w, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
          to label %.noexc189 unwind label %.loopexit.split-lp573

.noexc189:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.gv = ashr exact i64 %i.gt, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gv, i64 1)
  %i.gw = add nsw i64 %.sroa.speculated.i.i.i, %i.gv ; 2 uses
  %i.gx = call i64 @llvm.umin.i64(i64 %i.gw, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.gw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gy = shl nuw nsw i64 %i.gx, 3
  %i.gz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #26
          to label %.noexc190 unwind label %.loopexit572 ; 4 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.gt ; 2 uses
  store i64 %storemerge618, ptr %i.ha, align 8
  %i.hb = icmp sgt i64 %i.gt, 0
  br i1 %i.hb, label %bb.x, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %.noexc190
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gz, ptr align 8 %i.gq, i64 %i.gt, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %.noexc190
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.not.i17.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gt) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.gz, ptr %i.gj, align 8
  store ptr %i.hc, ptr %i.gk, align 8
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hd, ptr %i.gm, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.u
  %i.he = add nuw nsw i64 %.0144615, 1            ; 2 uses
  %i.hf = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %storemerge618
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = zext i32 %i.hh to i64
  %i.hj = icmp samesign ult i64 %i.he, %i.hi
  br i1 %i.hj, label %bb.d, label %._crit_edge617.loopexit, !llvm.loop !102

.loopexit572:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %.critedge.i
  %lpad.loopexit574 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp573:                            ; preds = %bb.w
  %lpad.loopexit.split-lp575 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.noexc185, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i181
  %.sroa.21.0 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i181 ], [ %i.cw, %.noexc185 ] ; 2 uses
  %.sroa.0482.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i181 ], [ %i.cu, %.noexc185 ] ; 12 uses
  %i.hk = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %bb.z unwind label %bb.ac      ; 7 uses

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %.not661 = icmp eq ptr %i.cl, %i.ck
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.hk, i8 0, i64 80, i1 false)
  br i1 %.not661, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %.preheader570.lr.ph

.preheader570.lr.ph:                              ; preds = %bb.z
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hn = ptrtoint ptr %i.hk to i64               ; 2 uses
  br label %.preheader570

.preheader570:                                    ; preds = %.preheader570.lr.ph, %._crit_edge622
  %i.ho = phi ptr [ %i.ck, %.preheader570.lr.ph ], [ %i.ij, %._crit_edge622 ] ; 2 uses
  %i.hp = phi ptr [ %i.cl, %.preheader570.lr.ph ], [ %i.ik, %._crit_edge622 ]
  %.0145623 = phi i64 [ 0, %.preheader570.lr.ph ], [ %i.il, %._crit_edge622 ] ; 5 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %.0145623
  %i.hr = load i32, ptr %i.hq, align 4            ; 2 uses
  %.not662 = icmp eq i32 %i.hr, 0
  br i1 %.not662, label %._crit_edge622, label %.lr.ph621

.lr.ph621:                                        ; preds = %.preheader570
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0501.0772776, i64 %.0145623
  br label %bb.ad

._crit_edge624:                                   ; preds = %._crit_edge622
  %i.hu = icmp eq ptr %i.ik, %i.ij
  br i1 %i.hu, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge624
  %i.hv = add nsw i64 %i.ip, 63                   ; 2 uses
  %i.hw = lshr i64 %i.hv, 3
  %i.hx = and i64 %i.hw, 2305843009213693944
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hx) #26
          to label %.noexc197 unwind label %bb.bt ; 4 uses

.noexc197:                                        ; preds = %bb.aa
  %i.hz = lshr i64 %i.hv, 6                       ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = sdiv i64 %i.ip, 64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.ib
  %i.id = and i64 %i.ip, -9223372036854775745
  %i.ie = icmp ugt i64 %i.id, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ie, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ic, i64 %storemerge.idx.i.i.i.i.i
  %i.if = trunc i64 %i.ip to i32
  %i.ig = and i32 %i.if, 63
  %.idx.i = shl nuw nsw i64 %i.hz, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hy, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

bb.ab:                                            ; preds = %bb.c, %bb.b
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

._crit_edge622.loopexit:                          ; preds = %bb.bs
  %.pre699 = load ptr, ptr %i.y, align 8
  br label %._crit_edge622

._crit_edge622:                                   ; preds = %._crit_edge622.loopexit, %.preheader570
  %i.ij = phi ptr [ %i.qd, %._crit_edge622.loopexit ], [ %i.ho, %.preheader570 ] ; 3 uses
  %i.ik = phi ptr [ %.pre699, %._crit_edge622.loopexit ], [ %i.hp, %.preheader570 ] ; 3 uses
  %i.il = add nuw i64 %.0145623, 1                ; 2 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = ashr exact i64 %i.io, 2                 ; 5 uses
  %i.iq = icmp ult i64 %i.il, %i.ip
  br i1 %i.iq, label %.preheader570, label %._crit_edge624, !llvm.loop !103

bb.ad:                                            ; preds = %.lr.ph621, %bb.bs
  %i.ir = phi i64 [ %i.hs, %.lr.ph621 ], [ %i.qg, %bb.bs ]
  %.0146620 = phi i64 [ 0, %.lr.ph621 ], [ %i.iu, %bb.bs ] ; 2 uses
  %i.is = load i64, ptr %i.ht, align 8            ; 2 uses
  %i.it = add i64 %i.is, %.0146620                ; 2 uses
  %i.iu = add nuw nsw i64 %.0146620, 1            ; 3 uses
  %i.iv = load ptr, ptr %0, align 8               ; 3 uses
  %i.iw = getelementptr inbounds nuw [24 x i8], ptr %i.iv, i64 %i.it ; 4 uses
  %i.ix = load ptr, ptr %i.ci, align 8            ; 4 uses
  %.not11.i.i.i.i198 = icmp eq ptr %i.ix, null
  br i1 %.not11.i.i.i.i198, label %.critedge.i215, label %.lr.ph.i.i.i.i199

.lr.ph.i.i.i.i199:                                ; preds = %bb.ad
  %i.iy = load double, ptr %i.iw, align 8, !noalias !104 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.ja = load double, ptr %i.iz, align 8, !noalias !104 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.jc = load double, ptr %i.jb, align 8, !noalias !104 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205, %.lr.ph.i.i.i.i199
  %.013.i.i.i.i200 = phi ptr [ %i.ix, %.lr.ph.i.i.i.i199 ], [ %.1.i.i.i.i208, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205 ] ; 6 uses
  %.0812.i.i.i.i201 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i199 ], [ %.19.i.i.i.i207, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i200, i64 32
  %i.je = load double, ptr %i.jd, align 8, !noalias !104
  %i.jf = fsub double %i.je, %i.iy                ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i200, i64 40
  %i.jh = load double, ptr %i.jg, align 8, !noalias !104
  %i.ji = fsub double %i.jh, %i.ja                ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i200, i64 48
  %i.jk = load double, ptr %i.jj, align 8, !noalias !104
  %i.jl = fsub double %i.jk, %i.jc
  %i.jm = fcmp olt double %i.jf, f0xBEB0C6F7A0000000
  br i1 %i.jm, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jn = call noundef double @llvm.fabs.f64(double %i.jf)
  %i.jo = fcmp olt double %i.jn, f0x3EB0C6F7A0000000 ; 2 uses
  %i.jp = fcmp olt double %i.ji, f0xBEB0C6F7A0000000 ; 2 uses
  %.not.i.i.i.i.i202 = xor i1 %i.jo, true
  %brmerge.i.i.i.i.i203 = select i1 %.not.i.i.i.i.i202, i1 true, i1 %i.jp
  br i1 %brmerge.i.i.i.i.i203, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i220, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jq = call noundef double @llvm.fabs.f64(double %i.ji)
  %i.jr = fcmp olt double %i.jq, f0x3EB0C6F7A0000000
  %i.js = fcmp olt double %i.jl, f0xBEB0C6F7A0000000
  %or.cond.i.i.i.i204 = select i1 %i.jr, i1 %i.js, i1 false
  br i1 %or.cond.i.i.i.i204, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i220: ; preds = %bb.af
  %or.cond.i.i.i.i.i221 = select i1 %i.jo, i1 %i.jp, i1 false
  br i1 %or.cond.i.i.i.i.i221, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i220, %bb.ag, %bb.ae
  br label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205

_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i220, %bb.ag
  %.sink.i.i.i.i206 = phi i64 [ 24, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219 ], [ 16, %bb.ag ], [ 16, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i220 ]
  %.19.i.i.i.i207 = phi ptr [ %.0812.i.i.i.i201, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread.i.i.i.i219 ], [ %.013.i.i.i.i200, %bb.ag ], [ %.013.i.i.i.i200, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i.i.i.i220 ] ; 11 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i200, i64 %.sink.i.i.i.i206
  %.1.i.i.i.i208 = load ptr, ptr %i.jt, align 8   ; 2 uses
  %.not.i.i.i.i209 = icmp eq ptr %.1.i.i.i.i208, null
  br i1 %.not.i.i.i.i209, label %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i210, label %bb.ae, !llvm.loop !95

_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i210: ; preds = %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.thread10.i.i.i.i205
  %i.ju = icmp eq ptr %.19.i.i.i.i207, %i.cj
  br i1 %i.ju, label %.critedge.i215, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEE11lower_boundERS9_.exit.i210
  %i.jv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i207, i64 32
  %i.jw = load double, ptr %i.jv, align 8, !noalias !107
  %i.jx = fsub double %i.iy, %i.jw                ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i207, i64 40
  %i.jz = load double, ptr %i.jy, align 8, !noalias !107
  %i.ka = fsub double %i.ja, %i.jz                ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i207, i64 48
  %i.kc = load double, ptr %i.kb, align 8, !noalias !107
  %i.kd = fsub double %i.jc, %i.kc
  %i.ke = fcmp olt double %i.jx, f0xBEB0C6F7A0000000
  br i1 %i.ke, label %.critedge.i215, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kf = call noundef double @llvm.fabs.f64(double %i.jx)
  %i.kg = fcmp olt double %i.kf, f0x3EB0C6F7A0000000 ; 2 uses
  %i.kh = fcmp olt double %i.ka, f0xBEB0C6F7A0000000 ; 2 uses
  %.not.i.i211 = xor i1 %i.kg, true
  %brmerge.i.i212 = select i1 %.not.i.i211, i1 true, i1 %i.kh
  br i1 %brmerge.i.i212, label %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i217, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ki = call noundef double @llvm.fabs.f64(double %i.ka)
  %i.kj = fcmp olt double %i.ki, f0x3EB0C6F7A0000000
  %i.kk = fcmp olt double %i.kd, f0xBEB0C6F7A0000000
  %or.cond.i213 = select i1 %i.kj, i1 %i.kk, i1 false
  br i1 %or.cond.i213, label %.critedge.i215, label %bb.at
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC8TempMesh20FixupFaceOrientationEv:bb.a
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.025.2.i, i64 16
  %i.adf = load double, ptr %i.ade, align 8, !noalias !163
  %i.adg = fsub double %i.adf, %.sroa.0384.sroa.3.0.copyload ; 2 uses
  %i.adh = fmul double %i.add, %i.add
  %i.adi = call double @llvm.fmuladd.f64(double %i.ada, double %i.ada, double %i.adh)
  %i.adj = call noundef double @llvm.fmuladd.f64(double %i.adg, double %i.adg, double %i.adi)
  %i.adk = call noundef double @llvm.fabs.f64(double %i.adj)
  %i.adl = fcmp olt double %i.adk, f0x3EB0C6F7A0000000
  br i1 %i.adl, label %.loopexit564, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge._crit_edge53.i
  br label %.loopexit564

.loopexit564.loopexit.split.loop.exit:            ; preds = %bb.ce
  %i.adm = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 24
  br label %.loopexit564

.loopexit564.loopexit.split.loop.exit806:         ; preds = %bb.cf
  %i.adn = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 48
  br label %.loopexit564

.loopexit564.loopexit.split.loop.exit808:         ; preds = %bb.cg
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i, i64 72
  br label %.loopexit564

.loopexit564:                                     ; preds = %bb.cd, %.loopexit564.loopexit.split.loop.exit, %.loopexit564.loopexit.split.loop.exit806, %.loopexit564.loopexit.split.loop.exit808, %._crit_edge.i374, %bb.ci, %._crit_edge._crit_edge.i, %._crit_edge._crit_edge53.i, %bb.cl
  %.sroa.08.0.in.sroa.speculated.i = phi ptr [ %.sroa.025.1.i, %._crit_edge._crit_edge.i ], [ %i.zm, %._crit_edge.i374 ], [ %.sroa.025.0.lcssa.i, %bb.ci ], [ %i.zm, %bb.cl ], [ %.sroa.025.2.i, %._crit_edge._crit_edge53.i ], [ %i.ado, %.loopexit564.loopexit.split.loop.exit808 ], [ %i.adn, %.loopexit564.loopexit.split.loop.exit806 ], [ %i.adm, %.loopexit564.loopexit.split.loop.exit ], [ %.sroa.025.044.i, %bb.cd ]
  %i.adp = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i to i64
  %i.adq = sub i64 %i.adp, %i.zn
  %i.adr = sdiv exact i64 %i.adq, 24
  %i.ads = add nsw i64 %i.adr, 1
  %i.adt = urem i64 %i.ads, %i.zk
  %i.adu = add nuw nsw i64 %.0152649, 1           ; 2 uses
  %i.adv = icmp eq i64 %i.adu, %i.yp
  %iv.rem = select i1 %i.adv, i64 0, i64 %i.adu
  %i.adw = getelementptr [24 x i8], ptr %i.zd, i64 %i.yl
  %i.adx = getelementptr [24 x i8], ptr %i.adw, i64 %iv.rem ; 3 uses
  %i.ady = getelementptr [24 x i8], ptr %i.zl, i64 %i.adt ; 3 uses
  %i.adz = load double, ptr %i.adx, align 8, !noalias !166
  %i.aea = load double, ptr %i.ady, align 8, !noalias !166
  %i.aeb = fsub double %i.adz, %i.aea             ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  %i.aed = load double, ptr %i.aec, align 8, !noalias !166
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  %i.aef = load double, ptr %i.aee, align 8, !noalias !166
  %i.aeg = fsub double %i.aed, %i.aef             ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %i.aei = load double, ptr %i.aeh, align 8, !noalias !166
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  %i.aek = load double, ptr %i.aej, align 8, !noalias !166
  %i.ael = fsub double %i.aei, %i.aek             ; 2 uses
  %i.aem = fmul double %i.aeg, %i.aeg
  %i.aen = call double @llvm.fmuladd.f64(double %i.aeb, double %i.aeb, double %i.aem)
  %i.aeo = call noundef double @llvm.fmuladd.f64(double %i.ael, double %i.ael, double %i.aen)
  %i.aep = call noundef double @llvm.fabs.f64(double %i.aeo)
  %i.aeq = fcmp olt double %i.aep, f0x3EB0C6F7A0000000
  br i1 %i.aeq, label %bb.cm, label %.loopexit

bb.cm:                                            ; preds = %.loopexit564
  %i.aer = icmp ugt i32 %i.zj, 1
  br i1 %i.aer, label %.lr.ph.i.i296.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307

.lr.ph.i.i296.preheader:                          ; preds = %bb.cm
  %.sroa.0.08.i.i294 = getelementptr inbounds i8, ptr %i.zm, i64 -24
  br label %.lr.ph.i.i296

.lr.ph.i.i296:                                    ; preds = %.lr.ph.i.i296.preheader, %.lr.ph.i.i296
  %.sroa.0.010.i.i297 = phi ptr [ %.sroa.0.0.i.i299, %.lr.ph.i.i296 ], [ %.sroa.0.08.i.i294, %.lr.ph.i.i296.preheader ] ; 3 uses
  %.sroa.05.09.i.i298 = phi ptr [ %i.aes, %.lr.ph.i.i296 ], [ %i.zl, %.lr.ph.i.i296.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.09.i.i298, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.09.i.i298, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i297, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i297, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aes = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i298, i64 24 ; 2 uses
  %.sroa.0.0.i.i299 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i297, i64 -24 ; 2 uses
  %i.aet = icmp ult ptr %i.aes, %.sroa.0.0.i.i299
  br i1 %i.aet, label %.lr.ph.i.i296, label %.lr.ph.i.i303.preheader, !llvm.loop !139

.lr.ph.i.i303.preheader:                          ; preds = %.lr.ph.i.i296
  %i.aeu = getelementptr inbounds [8 x i8], ptr %.sroa.0482.0, i64 %i.zg ; 2 uses
  %.idx561 = shl nuw nsw i64 %i.zk, 3
  %i.aev = getelementptr i8, ptr %i.aeu, i64 %.idx561
  %.sroa.0.08.i.i301 = getelementptr i8, ptr %i.aev, i64 -8
  br label %.lr.ph.i.i303

.lr.ph.i.i303:                                    ; preds = %.lr.ph.i.i303.preheader, %.lr.ph.i.i303
  %.sroa.0.010.i.i304 = phi ptr [ %.sroa.0.0.i.i306, %.lr.ph.i.i303 ], [ %.sroa.0.08.i.i301, %.lr.ph.i.i303.preheader ] ; 3 uses
  %.sroa.05.09.i.i305 = phi ptr [ %i.aey, %.lr.ph.i.i303 ], [ %i.aeu, %.lr.ph.i.i303.preheader ] ; 3 uses
  %i.aew = load i64, ptr %.sroa.05.09.i.i305, align 8
  %i.aex = load i64, ptr %.sroa.0.010.i.i304, align 8
  store i64 %i.aex, ptr %.sroa.05.09.i.i305, align 8
  store i64 %i.aew, ptr %.sroa.0.010.i.i304, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i305, i64 8 ; 2 uses
  %.sroa.0.0.i.i306 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i304, i64 -8 ; 2 uses
  %i.aez = icmp ult ptr %i.aey, %.sroa.0.0.i.i306
  br i1 %i.aez, label %.lr.ph.i.i303, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307.thread, !llvm.loop !140

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307.thread: ; preds = %.lr.ph.i.i303
  %i.afa = add nsw i64 %i.zk, -1
  br label %.lr.ph645.preheader

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307: ; preds = %bb.cm
  %.not666 = icmp eq i32 %i.zj, 1
  br i1 %.not666, label %.loopexit, label %.lr.ph645.preheader

.lr.ph645.preheader:                              ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307.thread, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307
  %i.afb = phi i64 [ %i.afa, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307.thread ], [ -1, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307 ] ; 3 uses
  %invariant.gep814 = getelementptr [8 x i8], ptr %.sroa.0482.0, i64 %i.zg ; 6 uses
  %load_initial840 = load i64, ptr %invariant.gep814, align 8 ; 5 uses
  %i.afc = add nsw i64 %i.afb, -1
  %xtraiter878 = and i64 %i.afb, 3                ; 3 uses
  %i.afd = icmp ult i64 %i.afc, 3
  br i1 %i.afd, label %.lr.ph645.epil.preheader, label %.lr.ph645.preheader.new

.lr.ph645.preheader.new:                          ; preds = %.lr.ph645.preheader
  %unroll_iter882 = and i64 %i.afb, -4
  br label %.lr.ph645

.lr.ph645:                                        ; preds = %.lr.ph645, %.lr.ph645.preheader.new
  %.0644 = phi i64 [ 0, %.lr.ph645.preheader.new ], [ %i.afp, %.lr.ph645 ] ; 5 uses
  %niter883 = phi i64 [ 0, %.lr.ph645.preheader.new ], [ %niter883.next.3, %.lr.ph645 ]
  %gep815 = getelementptr [8 x i8], ptr %invariant.gep814, i64 %.0644 ; 2 uses
  %i.afe = getelementptr i8, ptr %gep815, i64 8   ; 2 uses
  %i.aff = load i64, ptr %i.afe, align 8
  store i64 %i.aff, ptr %gep815, align 8
  store i64 %load_initial840, ptr %i.afe, align 8
  %i.afg = getelementptr [8 x i8], ptr %invariant.gep814, i64 %.0644 ; 2 uses
  %gep815.1 = getelementptr i8, ptr %i.afg, i64 8
  %i.afh = getelementptr i8, ptr %i.afg, i64 16   ; 2 uses
  %i.afi = load i64, ptr %i.afh, align 8
  store i64 %i.afi, ptr %gep815.1, align 8
  store i64 %load_initial840, ptr %i.afh, align 8
  %i.afj = getelementptr [8 x i8], ptr %invariant.gep814, i64 %.0644 ; 2 uses
  %gep815.2 = getelementptr i8, ptr %i.afj, i64 16
  %i.afk = getelementptr i8, ptr %i.afj, i64 24   ; 2 uses
  %i.afl = load i64, ptr %i.afk, align 8
  store i64 %i.afl, ptr %gep815.2, align 8
  store i64 %load_initial840, ptr %i.afk, align 8
  %i.afm = getelementptr [8 x i8], ptr %invariant.gep814, i64 %.0644 ; 2 uses
  %gep815.3 = getelementptr i8, ptr %i.afm, i64 24
  %i.afn = getelementptr i8, ptr %i.afm, i64 32   ; 2 uses
  %i.afo = load i64, ptr %i.afn, align 8
  store i64 %i.afo, ptr %gep815.3, align 8
  store i64 %load_initial840, ptr %i.afn, align 8
  %i.afp = add nuw i64 %.0644, 4                  ; 2 uses
  %niter883.next.3 = add i64 %niter883, 4         ; 2 uses
  %niter883.ncmp.3 = icmp eq i64 %niter883.next.3, %unroll_iter882
  br i1 %niter883.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph645, !llvm.loop !169

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph645
  %lcmp.mod880.not = icmp eq i64 %xtraiter878, 0
  br i1 %lcmp.mod880.not, label %.loopexit, label %.lr.ph645.epil.preheader

.lr.ph645.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph645.preheader
  %.0644.epil.init = phi i64 [ 0, %.lr.ph645.preheader ], [ %i.afp, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod881 = icmp ne i64 %xtraiter878, 0
  call void @llvm.assume(i1 %lcmp.mod881)
  br label %.lr.ph645.epil

.lr.ph645.epil:                                   ; preds = %.lr.ph645.epil, %.lr.ph645.epil.preheader
  %.0644.epil = phi i64 [ %i.afs, %.lr.ph645.epil ], [ %.0644.epil.init, %.lr.ph645.epil.preheader ] ; 2 uses
  %epil.iter879 = phi i64 [ %epil.iter879.next, %.lr.ph645.epil ], [ 0, %.lr.ph645.epil.preheader ]
  %gep815.epil = getelementptr [8 x i8], ptr %invariant.gep814, i64 %.0644.epil ; 2 uses
  %i.afq = getelementptr i8, ptr %gep815.epil, i64 8 ; 2 uses
  %i.afr = load i64, ptr %i.afq, align 8
  store i64 %i.afr, ptr %gep815.epil, align 8
  store i64 %load_initial840, ptr %i.afq, align 8
  %i.afs = add nuw i64 %.0644.epil, 1
  %epil.iter879.next = add i64 %epil.iter879, 1   ; 2 uses
  %epil.iter879.cmp.not = icmp eq i64 %epil.iter879.next, %xtraiter878
  br i1 %epil.iter879.cmp.not, label %.loopexit, label %.lr.ph645.epil, !llvm.loop !170

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph645.epil, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit307, %.loopexit564
  %i.aft = load i64, ptr %storemerge.i.i.i.i.i290, align 8
  %i.afu = or i64 %i.aft, %i.za
  store i64 %i.afu, ptr %storemerge.i.i.i.i.i290, align 8
  %.not.i312 = icmp eq ptr %.sroa.11.1647, %.sroa.23.1648
  br i1 %.not.i312, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.loopexit
  store i64 %i.yt, ptr %.sroa.11.1647, align 8
  %i.afv = getelementptr inbounds nuw i8, ptr %.sroa.11.1647, i64 8
  br label %.critedge

bb.co:                                            ; preds = %.loopexit
  %i.afw = ptrtoint ptr %.sroa.23.1648 to i64
  %i.afx = ptrtoint ptr %.sroa.0394.1646 to i64
  %i.afy = sub i64 %i.afw, %i.afx                 ; 7 uses
  %i.afz = icmp eq i64 %i.afy, 9223372036854775800
  br i1 %i.afz, label %bb.cp, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i313

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
          to label %.noexc319 unwind label %.loopexit.split-lp

.noexc319:                                        ; preds = %bb.cp
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i313: ; preds = %bb.co
  %i.aga = ashr exact i64 %i.afy, 3               ; 2 uses
  %.sroa.speculated.i.i.i314 = call i64 @llvm.umax.i64(i64 %i.aga, i64 1)
  %i.agb = add nsw i64 %.sroa.speculated.i.i.i314, %i.aga ; 2 uses
  %i.agc = call i64 @llvm.umin.i64(i64 %i.agb, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i315 = icmp ne i64 %i.agb, 0
  call void @llvm.assume(i1 %.not.i.i.i315)
  %i.agd = shl nuw nsw i64 %i.agc, 3
  %i.age = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agd) #26
          to label %.noexc320 unwind label %.loopexit566 ; 4 uses

.noexc320:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i313
  %i.agf = getelementptr inbounds i8, ptr %i.age, i64 %i.afy ; 2 uses
  store i64 %i.yt, ptr %i.agf, align 8
  %i.agg = icmp sgt i64 %i.afy, 0
  br i1 %i.agg, label %bb.cq, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318

bb.cq:                                            ; preds = %.noexc320
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.age, ptr align 8 %.sroa.0394.1646, i64 %i.afy, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318: ; preds = %bb.cq, %.noexc320
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0394.1646, i64 noundef %i.afy) #27
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.agc
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318, %bb.cn, %.lr.ph651, %bb.cb
  %.sroa.0394.2 = phi ptr [ %.sroa.0394.1646, %.lr.ph651 ], [ %.sroa.0394.1646, %bb.cb ], [ %i.age, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318 ], [ %.sroa.0394.1646, %bb.cn ] ; 2 uses
  %.sroa.11.2 = phi ptr [ %.sroa.11.1647, %.lr.ph651 ], [ %.sroa.11.1647, %bb.cb ], [ %i.agh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318 ], [ %i.afv, %bb.cn ] ; 2 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.1648, %.lr.ph651 ], [ %.sroa.23.1648, %bb.cb ], [ %i.agi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i318 ], [ %.sroa.23.1648, %bb.cn ] ; 2 uses
  %i.agj = add nuw nsw i64 %.0152649, 1           ; 2 uses
  %exitcond694.not = icmp eq i64 %i.agj, %i.yp
  br i1 %exitcond694.not, label %.loopexit565, label %.lr.ph651, !llvm.loop !171

.loopexit566:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i313
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp:                               ; preds = %bb.cp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.loopexit565
  %i.agk = ptrtoint ptr %.sroa.23.1.lcssa to i64
  %i.agl = ptrtoint ptr %.sroa.0394.1.lcssa to i64
  %i.agm = sub i64 %i.agk, %i.agl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0394.1.lcssa, i64 noundef %i.agm) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge

bb.cr:                                            ; preds = %.loopexit566, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit566 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0394.1646, i64 noundef %i.afy) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit324.thread

_ZNSt6vectorImSaImEED2Ev.exit324.thread:          ; preds = %.thread, %bb.cr
  %.pn156.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.cr ], [ %i.yq, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.cw

_ZNSt6vectorImSaImEED2Ev.exit324:                 ; preds = %._crit_edge631
  %i.agn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.not.i.i332 = icmp eq ptr %.sroa.0462.0, null
  br i1 %.not.i.i332, label %_ZNSt6vectorImSaImEED2Ev.exit335, label %bb.cw

_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit.thread: ; preds = %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.not.i.i325 = icmp eq ptr %.sroa.0462.0, null
  br i1 %.not.i.i325, label %_ZNSt6vectorImSaImEED2Ev.exit327, label %bb.cs

bb.cs:                                            ; preds = %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit.thread
  %i.ago = ptrtoint ptr %.sroa.20470.0 to i64
  %i.agp = ptrtoint ptr %.sroa.0462.0 to i64
  %i.agq = sub i64 %i.ago, %i.agp                 ; 2 uses
  %i.agr = ashr exact i64 %i.agq, 3
  %i.ags = sub nsw i64 0, %i.agr
  %i.agt = getelementptr inbounds [8 x i8], ptr %.sroa.20470.0, i64 %i.ags
  call void @_ZdlPvm(ptr noundef %i.agt, i64 noundef %i.agq) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit327

_ZNSt6vectorImSaImEED2Ev.exit327:                 ; preds = %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit.thread, %bb.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 80) #27
  %.not.i.i.i328 = icmp eq ptr %.sroa.0482.0, null
  br i1 %.not.i.i.i328, label %_ZNSt6vectorImSaImEED2Ev.exit329, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit327
  %i.agu = ptrtoint ptr %.sroa.0482.0 to i64
  %i.agv = sub i64 %.sroa.21.0, %i.agu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0482.0, i64 noundef %i.agv) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit329

_ZNSt6vectorImSaImEED2Ev.exit329:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit327, %bb.ct
  %i.agw = load ptr, ptr %i.ci, align 8
  invoke void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.agw)
          to label %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit unwind label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit329
  %i.agx = landingpad { ptr, i32 }
          catch ptr null
  %i.agy = extractvalue { ptr, i32 } %i.agx, 0
  call void @__clang_call_terminate(ptr %i.agy) #29
  unreachable

_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit329
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i.i.i330 = icmp eq ptr %.sroa.0501.0772776, null
  br i1 %.not.i.i.i330, label %_ZNSt6vectorImSaImEED2Ev.exit331, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit
  %i.agz = ptrtoint ptr %.sroa.21516.0770778 to i64
  %i.aha = ptrtoint ptr %.sroa.0501.0772776 to i64
  %i.ahb = sub i64 %i.agz, %i.aha
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0501.0772776, i64 noundef %i.ahb) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit331

_ZNSt6vectorImSaImEED2Ev.exit331:                 ; preds = %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit, %bb.cv
  ret void

bb.cw:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit324.thread, %_ZNSt6vectorImSaImEED2Ev.exit324
  %.pn156.pn.pn.pn.pn.pn.pn785 = phi { ptr, i32 } [ %.pn156.pn.pn.pn.pn.pn.pn.ph, %_ZNSt6vectorImSaImEED2Ev.exit324.thread ], [ %i.agn, %_ZNSt6vectorImSaImEED2Ev.exit324 ]
  %i.ahc = ptrtoint ptr %.sroa.20470.0 to i64
  %i.ahd = ptrtoint ptr %.sroa.0462.0 to i64
  %i.ahe = sub i64 %i.ahc, %i.ahd                 ; 2 uses
  %i.ahf = ashr exact i64 %i.ahe, 3
  %i.ahg = sub nsw i64 0, %i.ahf
  %i.ahh = getelementptr inbounds [8 x i8], ptr %.sroa.20470.0, i64 %i.ahg
  call void @_ZdlPvm(ptr noundef %i.ahh, i64 noundef %i.ahe) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

_ZNSt6vectorImSaImEED2Ev.exit335:                 ; preds = %bb.bt, %_ZNSt6vectorImSaImEED2Ev.exit324, %bb.cw, %bb.bq, %bb.bg, %bb.bp, %bb.aq
  %.pn170.pn.pn = phi { ptr, i32 } [ %i.ov, %bb.bg ], [ %i.lq, %bb.aq ], [ %.pn156.pn.pn.pn.pn.pn.pn785, %bb.cw ], [ %i.px, %bb.bp ], [ %i.py, %bb.bq ], [ %i.rj, %bb.bt ], [ %i.agn, %_ZNSt6vectorImSaImEED2Ev.exit324 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 80) #27
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit335, %bb.ac
  %.pn170.pn.pn.pn = phi { ptr, i32 } [ %.pn170.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit335 ], [ %i.ii, %bb.ac ] ; 2 uses
  %.not.i.i.i336 = icmp eq ptr %.sroa.0482.0, null
  br i1 %.not.i.i.i336, label %.body, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ahi = ptrtoint ptr %.sroa.0482.0 to i64
  %i.ahj = sub i64 %.sroa.21.0, %i.ahi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0482.0, i64 noundef %i.ahj) #27
  br label %.body

.body:                                            ; preds = %.loopexit572, %.loopexit.split-lp573, %bb.ab, %bb.cx, %bb.cy, %bb.q
  %i.ahk = phi ptr [ %i.az, %bb.q ], [ %i.ci, %bb.cy ], [ %i.ci, %bb.ab ], [ %i.ci, %bb.cx ], [ %i.az, %.loopexit572 ], [ %i.az, %.loopexit.split-lp573 ]
  %.sroa.21516.0770777 = phi ptr [ %i.an, %bb.q ], [ %.sroa.21516.0770778, %bb.cy ], [ %.sroa.21516.0770778, %bb.ab ], [ %.sroa.21516.0770778, %bb.cx ], [ %i.an, %.loopexit572 ], [ %i.an, %.loopexit.split-lp573 ]
  %.sroa.0501.0773 = phi ptr [ %i.am, %bb.q ], [ %.sroa.0501.0772776, %bb.cy ], [ %.sroa.0501.0772776, %bb.ab ], [ %.sroa.0501.0772776, %bb.cx ], [ %i.am, %.loopexit572 ], [ %i.am, %.loopexit.split-lp573 ] ; 3 uses
  %.pn177 = phi { ptr, i32 } [ %i.gc, %bb.q ], [ %.pn170.pn.pn.pn, %bb.cy ], [ %i.ih, %bb.ab ], [ %.pn170.pn.pn.pn, %bb.cx ], [ %lpad.loopexit574, %.loopexit572 ], [ %lpad.loopexit.split-lp575, %.loopexit.split-lp573 ]
  %i.ahl = load ptr, ptr %i.ahk, align 8
  invoke void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.ahl)
          to label %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit338 unwind label %bb.cz

bb.cz:                                            ; preds = %.body
  %i.ahm = landingpad { ptr, i32 }
          catch ptr null
  %i.ahn = extractvalue { ptr, i32 } %i.ahm, 0
  call void @__clang_call_terminate(ptr %i.ahn) #29
  unreachable

_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit338: ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i.i.i339 = icmp eq ptr %.sroa.0501.0773, null
  br i1 %.not.i.i.i339, label %_ZNSt6vectorImSaImEED2Ev.exit340, label %bb.da

bb.da:                                            ; preds = %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit338
  %i.aho = ptrtoint ptr %.sroa.21516.0770777 to i64
  %i.ahp = ptrtoint ptr %.sroa.0501.0773 to i64
  %i.ahq = sub i64 %i.aho, %i.ahp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0501.0773, i64 noundef %i.ahq) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit340

_ZNSt6vectorImSaImEED2Ev.exit340:                 ; preds = %bb.da, %_ZNSt3mapI10aiVector3tIdESt6vectorImSaImEEN6Assimp3IFC13CompareVectorESaISt4pairIKS1_S4_EEED2Ev.exit338
  resume { ptr, i32 } %.pn177
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC8TempMesh24RemoveAdjacentDuplicatesEv(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not69 = icmp eq ptr %i.c, %i.e
  br i1 %.not69, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA28_KcEEEvDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge
  br i1 %.3, label %._crit_edge.thread, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA28_KcEEEvDpOT_.exit

bb.b:                                             ; preds = %.backedge, %.lr.ph
  %.072 = phi i1 [ false, %.lr.ph ], [ %.072.be, %.backedge ] ; 3 uses
  %.sroa.048.071 = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.048.071.be, %.backedge ] ; 10 uses
  %.sroa.045.070 = phi ptr [ %i.c, %.lr.ph ], [ %.sroa.045.070.be, %.backedge ] ; 8 uses
  %i.h = load i32, ptr %.sroa.045.070, align 4    ; 3 uses
  %i.i = icmp ult i32 %i.h, 2
  br i1 %i.i, label %.critedge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i32 %i.h to i64       ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.034.0 = phi double [ -1.000000e+10, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %.sroa.038.0 = phi double [ 1.000000e+10, %.lr.ph.preheader.i ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.j = phi <2 x double> [ splat (double 1.000000e+10), %.lr.ph.preheader.i ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.k = phi <2 x double> [ splat (double -1.000000e+10), %.lr.ph.preheader.i ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.sroa.048.071, i64 %indvars.iv.i ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !noalias !172 ; 4 uses
  %i.n = fcmp olt double %.sroa.038.0, %i.m
  %i.o = select i1 %i.n, double %.sroa.038.0, double %i.m ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load <2 x double>, ptr %i.p, align 8, !noalias !172 ; 4 uses
  %i.r = fcmp olt <2 x double> %i.j, %i.q
end_hunk_2
