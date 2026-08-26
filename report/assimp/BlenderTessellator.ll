Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/BlenderTessellator?download=true
inline.NumInlined: 331
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK6Assimp21BlenderTessellatorP2T22MakeFacesFromTrianglesERSt6vectorIPN3p2t8TriangleESaIS4_EE:bb.a
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit14, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit14
  %i.g = phi ptr [ %i.ak, %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit14 ], [ %i.f, %bb.a ]
  %.015 = phi i64 [ %i.ai, %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit14 ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.015
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.m, -2081580349
  br i1 %.not.i, label %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr @.str, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA118_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(118) @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.g, %bb.d
  %.sink = phi ptr [ %i.z, %bb.j ], [ %i.t, %bb.g ], [ %i.n, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.u, %bb.g ], [ %i.o, %bb.d ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #24
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %common.resume

_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit: ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8
  %.not.i11 = icmp eq i32 %i.s, -2081580349
  br i1 %.not.i11, label %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit12, label %bb.e

bb.e:                                             ; preds = %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr @.str, ptr %i.b, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA118_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(118) @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %common.resume

_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit12: ; preds = %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %.not.i13 = icmp eq i32 %i.y, -2081580349
  br i1 %.not.i13, label %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit14, label %bb.h

bb.h:                                             ; preds = %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit12
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA118_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(118) @.str.2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %common.resume

_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit14: ; preds = %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit12
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.ah = load i32, ptr %i.ag, align 4
  tail call void @_ZN6Assimp21BlenderBMeshConverter7AddFaceEiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ah, i32 noundef 0)
  %i.ai = add nuw i64 %.015, 1                    ; 2 uses
  %i.aj = load ptr, ptr %i.d, align 8
  %i.ak = load ptr, ptr %1, align 8               ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = icmp ult i64 %i.ai, %i.ao
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @_ZN3p2t3CDTD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27
  br label %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i

_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !13

_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6Assimp7Blender8PointP2TESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #27
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender8PointP2TESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6Assimp7Blender8PointP2TESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4            ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load float, ptr %i.m, align 4            ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x float>, ptr %i.b, align 4      ; 9 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = fmul float %i.a, %i.s                    ; 2 uses
  %i.u = load <2 x float>, ptr %i.j, align 4      ; 7 uses
  %i.v = load <2 x float>, ptr %i.i, align 4      ; 4 uses
  %i.w = load float, ptr %i.g, align 4            ; 6 uses
  %1 = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %2 = fneg <4 x float> %1                        ; 4 uses
  %i.x = extractelement <4 x float> %2, i64 0
  %i.y = extractelement <2 x float> %i.v, i64 0   ; 7 uses
  %i.z = extractelement <2 x float> %i.u, i64 0   ; 3 uses
  %i.aa = fneg float %i.z                         ; 4 uses
  %i.ab = extractelement <4 x float> %2, i64 3    ; 3 uses
  %i.ac = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load <2 x float>, ptr %i.h, align 4     ; 12 uses
  %i.ag = load <2 x float>, ptr %i.c, align 4     ; 9 uses
  %i.ah = load float, ptr %i.f, align 4           ; 7 uses
  %i.ai = fneg float %i.ah                        ; 3 uses
  %i.aj = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %i.ak = fmul float %i.t, %i.aj
  %i.al = fmul float %i.t, %i.ah
  %i.am = fmul float %i.al, %i.x
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.e, float %i.am)
  %i.ao = extractelement <2 x float> %i.af, i64 0
  %i.ap = fmul float %i.a, %i.ao                  ; 2 uses
  %i.aq = fmul float %i.ah, %i.ap
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.y, float %i.an)
  %i.as = fmul float %i.ap, %i.aa
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.e, float %i.ar)
  %foldExtExtBinop = fmul <2 x float> %i.af, %i.ac
  %i.au = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.av = fmul float %i.au, %i.ai
  %i.aw = load <2 x float>, ptr %i.q, align 4     ; 7 uses
  %i.ax = load <2 x float>, ptr %i.k, align 4     ; 8 uses
  %i.ay = load float, ptr %i.o, align 4           ; 6 uses
  %i.az = fneg float %i.ay                        ; 4 uses
  %i.ba = load <2 x float>, ptr %i.ae, align 4    ; 8 uses
  %i.bb = load float, ptr %i.p, align 4           ; 5 uses
  %i.bc = fmul float %i.ad, %i.bb                 ; 2 uses
  %i.bd = fmul float %i.bc, %i.ab
  %i.be = extractelement <2 x float> %i.ax, i64 0
  %i.bf = fmul float %i.a, %i.be                  ; 2 uses
  %i.bg = fmul float %i.z, %i.bf
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.w, float %i.at)
  %i.bi = fmul float %i.bf, %i.ab
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.y, float %i.bh)
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.av, float %i.n, float %i.bj)
  %i.bl = fmul float %i.au, %i.ay
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.e, float %i.bk)
  %foldExtExtBinop47 = fmul <2 x float> %i.ax, %i.ac ; 2 uses
  %i.bn = extractelement <2 x float> %foldExtExtBinop47, i64 0
  %i.bo = fmul float %i.bn, %i.az
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.w, float %i.bm)
  %foldExtExtBinop49 = fmul <2 x float> %i.ag, %foldExtExtBinop47
  %i.bq = extractelement <2 x float> %foldExtExtBinop49, i64 0
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.n, float %i.bp)
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.e, float %i.br)
  %i.bt = fmul float %i.ah, %i.bc
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.w, float %i.bs)
  %i.bv = extractelement <2 x float> %i.aw, i64 0
  %foldExtExtBinop51 = fmul <2 x float> %i.ax, %i.aw
  %i.bw = extractelement <2 x float> %foldExtExtBinop51, i64 0 ; 2 uses
  %i.bx = fmul float %i.ay, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.y, float %i.bu)
  %i.bz = fmul float %i.bw, %i.aa
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.n, float %i.by)
  %i.cb = fmul float %i.bb, %i.bv                 ; 2 uses
  %i.cc = fmul float %i.z, %i.cb
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.e, float %i.ca)
  %i.ce = fmul float %i.cb, %i.ai
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.y, float %i.cd)
  %foldExtExtBinop53 = fmul <2 x float> %i.r, %i.aw
  %i.cg = extractelement <2 x float> %foldExtExtBinop53, i64 0 ; 2 uses
  %i.ch = fmul float %i.ah, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.n, float %i.cf)
  %i.cj = fmul float %i.cg, %i.az
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.e, float %i.ci)
  %i.cl = extractelement <2 x float> %i.ba, i64 0
  %i.cm = fmul float %i.bb, %i.cl                 ; 2 uses
  %i.cn = fmul float %i.cm, %i.aa
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.w, float %i.ck)
  %i.cp = fmul float %i.aj, %i.cm
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.y, float %i.co)
  %foldExtExtBinop55 = fmul <2 x float> %i.r, %i.ba
  %i.cr = extractelement <2 x float> %foldExtExtBinop55, i64 0 ; 2 uses
  %i.cs = fmul float %i.cr, %i.ab
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.n, float %i.cq)
  %i.cu = fmul float %i.ay, %i.cr
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.w, float %i.ct)
  %foldExtExtBinop57 = fmul <2 x float> %i.af, %i.ba ; 2 uses
  %i.cw = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %i.cx = fmul float %i.cw, %i.az
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.y, float %i.cv)
  %foldExtExtBinop59 = fmul <2 x float> %i.u, %foldExtExtBinop57
  %i.cz = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.cz, float %i.n, float %i.cy) ; 2 uses
  %i.db = fcmp oeq float %i.da, 0.000000e+00
  br i1 %i.db, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dc = fdiv float 1.000000e+00, %i.da          ; 3 uses
  %i.dd = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.de = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.df = fmul <4 x float> %i.de, %2
  %i.dg = fneg float %i.e
  %i.dh = fneg float %i.y
  %i.di = fneg float %i.dc                        ; 2 uses
  %i.dj = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dk = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.dl = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dm = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.dm, <4 x float> %i.df) ; 2 uses
  %i.do = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
  %i.dp = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 0, i32 2, i32 2> ; 2 uses
  %i.dq = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.dr = insertelement <4 x float> %i.dq, float %i.ai, i64 1
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.dt = fmul <4 x float> %i.dp, %i.ds
  %i.du = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> %i.dd, <4 x i32> <i32 0, i32 4, i32 5, i32 5> ; 2 uses
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> %i.do, <4 x i32> <i32 1, i32 0, i32 0, i32 4>
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.dw, <4 x float> %i.dt)
  %i.dy = shufflevector <2 x float> %i.r, <2 x float> %i.ac, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.dz = fmul <4 x float> %i.dy, %i.dx
  %i.ea = shufflevector <2 x float> %i.r, <2 x float> %i.ac, <4 x i32> <i32 0, i32 2, i32 2, i32 2> ; 2 uses
  %i.eb = shufflevector <2 x float> %i.r, <2 x float> %i.ac, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> %i.dn, <4 x float> %i.dz)
  %i.ed = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.ee = insertelement <4 x float> %i.ed, float %i.aa, i64 1
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.eg = fmul <4 x float> %i.dj, %i.ef
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %1, <4 x float> %i.eg) ; 2 uses
  %i.ei = shufflevector <2 x float> %i.af, <2 x float> %i.aw, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> %i.eh, <4 x float> %i.ec)
  %i.ek = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.el = insertelement <4 x float> %i.ek, float %i.di, i64 1 ; 2 uses
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.en = fmul <4 x float> %i.ej, %i.em
  %i.eo = fneg float %i.n
  %i.ep = shufflevector <2 x float> %i.ax, <2 x float> %i.ba, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.eq = fmul <4 x float> %i.ep, %i.ds
  %i.er = insertelement <4 x float> poison, float %i.n, i64 0
  %i.es = insertelement <4 x float> %i.dl, float %i.n, i64 0
  %i.et = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x float> %i.es, <4 x float> %i.et, <4 x i32> <i32 0, i32 5, i32 1, i32 5>
  %i.ev = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ew = insertelement <4 x float> %i.ev, float %i.n, i64 1
  %i.ex = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> %i.ew, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 1, i32 5>
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.ey, <4 x float> %i.eq) ; 2 uses
  %i.fa = shufflevector <2 x float> %i.af, <2 x float> %i.aw, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fb = shufflevector <2 x float> %i.af, <2 x float> %i.aw, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fc = fmul <4 x float> %i.fb, %i.ez
  %i.fd = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fe = insertelement <4 x float> %i.fd, float %i.a, i64 1
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fg = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.fg, <4 x float> %i.fc)
  %i.fi = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.fj = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.fk = insertelement <4 x float> %i.fj, float %i.az, i64 1
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.fm = fmul <4 x float> %i.fi, %i.fl
  %i.fn = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fo = insertelement <2 x float> %i.fn, float %i.w, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.fp, <4 x float> %i.fm)
  %i.fr = shufflevector <2 x float> %i.af, <2 x float> %i.aw, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.fq, <4 x float> %i.fh)
  %i.ft = insertelement <4 x float> poison, float %i.di, i64 0
  %i.fu = insertelement <4 x float> %i.ft, float %i.dc, i64 1 ; 2 uses
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.fw = fmul <4 x float> %i.fs, %i.fv
  %i.fx = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fy = insertelement <2 x float> %i.fx, float %i.ah, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ga = fmul <4 x float> %i.fz, %i.ef
  %i.gb = insertelement <4 x float> %i.dk, float %i.ah, i64 1
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.gc, <4 x float> %i.ga)
  %i.ge = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.gf = fmul <4 x float> %i.ea, %i.ge
  %i.gg = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gh = insertelement <2 x float> %i.gg, float %i.a, i64 1
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> %i.gd, <4 x float> %i.gf)
  %i.gk = fmul <4 x float> %i.do, %i.fl
  %i.gl = shufflevector <2 x float> %i.ax, <2 x float> %i.ba, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.gm = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> %i.gm, <4 x float> %i.gk) ; 2 uses
  %i.go = shufflevector <2 x float> %i.ax, <2 x float> %i.ba, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.gn, <4 x float> %i.gj)
  %i.gq = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gr = fmul <4 x float> %i.gp, %i.gq
  %i.gs = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.gt = insertelement <4 x float> %i.gs, float %i.bb, i64 1
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %3 = shufflevector <4 x float> %2, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.gv = fmul <4 x float> %i.gu, %3
  %i.gw = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.gx = insertelement <4 x float> %i.er, float %i.ay, i64 1
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gw, <4 x float> %i.gy, <4 x float> %i.gv)
  %i.ha = fmul <4 x float> %i.ea, %i.gz
  %i.hb = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.hc = insertelement <4 x float> %i.hb, float %i.a, i64 1
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.he = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.hf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %i.he, <4 x float> %i.ha)
  %i.hg = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 3>
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.hg, <4 x float> %i.hf)
  %i.hi = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hj = fmul <4 x float> %i.hh, %i.hi
  %i.hk = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.hl = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.hm = phi <4 x float> [ %i.en, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hn = phi <4 x float> [ %i.hk, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.ho = phi <4 x float> [ %i.hl, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hp = phi <4 x float> [ %i.hj, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.hm, ptr %0, align 4
  store <4 x float> %i.hn, ptr %i.p, align 4
  store <4 x float> %i.ho, ptr %i.o, align 4
  store <4 x float> %i.hp, ptr %i.m, align 4
  ret ptr %0
}

declare void @_ZN6Assimp21BlenderBMeshConverter7AddFaceEiiii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef float @_ZNK6Assimp21BlenderTessellatorP2T21FindLargestMatrixElemERK12aiMatrix3x3tIfE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %1) local_unnamed_addr #11 align 2 {
.split.us.2:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load float, ptr %1, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4
  %i.g = load float, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load float, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load float, ptr %i.l, align 4
  %i.n = tail call noundef float @llvm.fabs.f32(float %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = load float, ptr %i.o, align 4
  %i.q = tail call noundef float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load float, ptr %i.r, align 4
  %i.t = tail call noundef float @llvm.fabs.f32(float %i.s) ; 2 uses
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.k) ; 2 uses
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.i) ; 2 uses
  %i.w = tail call noundef float @llvm.fabs.f32(float %i.g) ; 2 uses
  %i.x = tail call noundef float @llvm.fabs.f32(float %i.f) ; 2 uses
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.d) ; 2 uses
  %i.z = fcmp one float %i.b, 0.000000e+00
  %i.aa = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.ab = select i1 %i.z, float %i.aa, float 0.000000e+00 ; 2 uses
  %i.ac = fcmp ogt float %i.y, %i.ab
  %i.ad = select i1 %i.ac, float %i.y, float %i.ab ; 2 uses
  %i.ae = fcmp ogt float %i.x, %i.ad
  %i.af = select i1 %i.ae, float %i.x, float %i.ad ; 2 uses
  %i.ag = fcmp ogt float %i.w, %i.af
  %i.ah = select i1 %i.ag, float %i.w, float %i.af ; 2 uses
  %i.ai = fcmp ogt float %i.v, %i.ah
  %i.aj = select i1 %i.ai, float %i.v, float %i.ah ; 2 uses
  %i.ak = fcmp ogt float %i.u, %i.aj
  %i.al = select i1 %i.ak, float %i.u, float %i.aj ; 2 uses
  %i.am = fcmp ogt float %i.t, %i.al
  %i.an = select i1 %i.am, float %i.t, float %i.al ; 2 uses
  %i.ao = fcmp ogt float %i.q, %i.an
  %i.ap = select i1 %i.ao, float %i.q, float %i.an ; 2 uses
  %i.aq = fcmp ogt float %i.n, %i.ap
  %i.ar = select i1 %i.aq, float %i.n, float %i.ap
  ret float %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK6Assimp21BlenderTessellatorP2T11ScaleMatrixERK12aiMatrix3x3tIfEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix3x3t) align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %2, float noundef %3) local_unnamed_addr #12 align 2 {
.split.us.2:
  %i.a = load <4 x float>, ptr %2, align 4
  %i.b = insertelement <4 x float> poison, float %3, i64 0
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.d = fmul <4 x float> %i.c, %i.a
  store <4 x float> %i.d, ptr %0, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <4 x float>, ptr %i.e, align 4
  %i.h = fmul <4 x float> %i.c, %i.g
  store <4 x float> %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pn.us.2.2 = load float, ptr %i.i, align 4
  %i.j = fmul float %3, %.pn.us.2.2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.j, ptr %i.k, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { <2 x float>, float } @_ZNK6Assimp21BlenderTessellatorP2T35GetEigenVectorFromLargestEigenValueERK12aiMatrix3x3tIfE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load float, ptr %i.f, align 4            ; 2 uses
  %i.h = tail call noundef float @llvm.fabs.f32(float %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load float, ptr %i.i, align 4            ; 2 uses
  %i.k = tail call noundef float @llvm.fabs.f32(float %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load float, ptr %i.l, align 4            ; 2 uses
  %i.n = tail call noundef float @llvm.fabs.f32(float %i.m) ; 2 uses
  %i.o = load <4 x float>, ptr %1, align 4        ; 4 uses
  %i.p = load float, ptr %i.a, align 4
  %i.q = load float, ptr %i.c, align 4
  %i.r = load float, ptr %i.b, align 4
  %i.s = load <2 x float>, ptr %i.d, align 4      ; 3 uses
  %i.t = load float, ptr %i.e, align 4
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.t) ; 2 uses
  %i.v = extractelement <2 x float> %i.s, i64 0
  %i.w = tail call noundef float @llvm.fabs.f32(float %i.v) ; 2 uses
  %i.x = tail call noundef float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.q) ; 2 uses
  %i.z = tail call noundef float @llvm.fabs.f32(float %i.r) ; 2 uses
  %i.aa = extractelement <4 x float> %i.o, i64 0  ; 2 uses
  %i.ab = fcmp one float %i.aa, 0.000000e+00
  %i.ac = tail call noundef float @llvm.fabs.f32(float %i.aa)
  %i.ad = select i1 %i.ab, float %i.ac, float 0.000000e+00 ; 2 uses
  %i.ae = fcmp ogt float %i.z, %i.ad
  %i.af = select i1 %i.ae, float %i.z, float %i.ad ; 2 uses
  %i.ag = fcmp ogt float %i.y, %i.af
  %i.ah = select i1 %i.ag, float %i.y, float %i.af ; 2 uses
  %i.ai = fcmp ogt float %i.x, %i.ah
  %i.aj = select i1 %i.ai, float %i.x, float %i.ah ; 2 uses
  %i.ak = fcmp ogt float %i.w, %i.aj
  %i.al = select i1 %i.ak, float %i.w, float %i.aj ; 2 uses
  %i.am = fcmp ogt float %i.u, %i.al
  %i.an = select i1 %i.am, float %i.u, float %i.al ; 2 uses
  %i.ao = fcmp ogt float %i.n, %i.an
  %i.ap = select i1 %i.ao, float %i.n, float %i.an ; 2 uses
  %i.aq = fcmp ogt float %i.k, %i.ap
  %i.ar = select i1 %i.aq, float %i.k, float %i.ap ; 2 uses
  %i.as = fcmp ogt float %i.h, %i.ar
  %i.at = select i1 %i.as, float %i.h, float %i.ar
  %i.au = fdiv float 1.000000e+00, %i.at          ; 4 uses
  %i.av = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.aw = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ay = fmul <2 x float> %i.av, %i.ax           ; 9 uses
  %i.az = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ba = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x float> %i.o, <4 x float> %i.ba, <2 x i32> <i32 1, i32 4>
  %i.bc = fmul <2 x float> %i.bb, %i.ax           ; 9 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bf = shufflevector <2 x float> %i.az, <2 x float> %i.s, <2 x i32> <i32 0, i32 3>
  %i.bg = fmul <2 x float> %i.bf, %i.ax           ; 7 uses
  %i.bh = fmul float %i.g, %i.au                  ; 6 uses
  %i.bi = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bj = fmul <2 x float> %i.bi, %i.bc
  %i.bk = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.ay, <2 x float> %i.bj)
  %i.bm = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bn = fmul <2 x float> %i.bm, %i.bc
  %i.bo = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.ay, <2 x float> %i.bn)
  %i.bq = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.br = fmul <2 x float> %i.bq, %i.bc
  %i.bs = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.ay, <2 x float> %i.br)
  %i.bu = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bg, <2 x float> %i.bt) ; 3 uses
  %i.bx = extractelement <2 x float> %i.ay, i64 1
  %i.by = extractelement <2 x float> %i.ay, i64 0
  %i.bz = extractelement <2 x float> %i.bc, i64 1
  %i.ca = extractelement <2 x float> %i.bc, i64 0
  %i.cb = fmul float %i.j, %i.au                  ; 6 uses
  %i.cc = fmul float %i.bx, %i.cb
  %i.cd = fmul float %i.m, %i.au                  ; 6 uses
  %i.ce = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.bg, <2 x float> %i.bl) ; 3 uses
  %i.ch = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.bg, <2 x float> %i.bp) ; 3 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cd, float %i.cc)
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bh, float %i.ck)
  %i.cm = fmul float %i.bz, %i.cb
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.cd, float %i.cm)
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bh, float %i.cn)
end_hunk_0
