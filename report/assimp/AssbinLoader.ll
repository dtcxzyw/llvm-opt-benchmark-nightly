Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/AssbinLoader?download=true
inline.NumInlined: 384
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z4ReadI12aiMatrix4x4tIfEET_PN6Assimp8IOStreamE:.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ay, ptr %i.az, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ba = load ptr, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !1
  %.not.i.3.1 = icmp eq i64 %i.bd, 1
  br i1 %.not.i.3.1, label %_ZN12aiMatrix4x4tIfEixEj.exit.3.1, label %bb.a

_ZN12aiMatrix4x4tIfEixEj.exit.3.1:                ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.2.1
  %i.be = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.be, ptr %i.bf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bg = load ptr, ptr %1, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !1
  %.not.i.214 = icmp eq i64 %i.bj, 1
  br i1 %.not.i.214, label %_ZN12aiMatrix4x4tIfEixEj.exit.217, label %bb.a

_ZN12aiMatrix4x4tIfEixEj.exit.217:                ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.3.1
  %i.bk = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store float %i.bk, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bl = load ptr, ptr %1, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !1
  %.not.i.1.2 = icmp eq i64 %i.bo, 1
  br i1 %.not.i.1.2, label %_ZN12aiMatrix4x4tIfEixEj.exit.1.2, label %bb.a

_ZN12aiMatrix4x4tIfEixEj.exit.1.2:                ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.217
  %i.bp = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.bp, ptr %i.bq, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.br = load ptr, ptr %1, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef i64 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !1
  %.not.i.2.2 = icmp eq i64 %i.bu, 1
  br i1 %.not.i.2.2, label %_ZN12aiMatrix4x4tIfEixEj.exit.2.2, label %bb.a

_ZN12aiMatrix4x4tIfEixEj.exit.2.2:                ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.1.2
  %i.bv = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.bv, ptr %i.bw, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bx = load ptr, ptr %1, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call noundef i64 %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !1
  %.not.i.3.2 = icmp eq i64 %i.ca, 1
  br i1 %.not.i.3.2, label %_ZN12aiMatrix4x4tIfEixEj.exit.3.2, label %bb.a

_ZN12aiMatrix4x4tIfEixEj.exit.3.2:                ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.2.2
  %i.cb = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.cb, ptr %i.cc, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cd = load ptr, ptr %1, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call noundef i64 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !1
  %.not.i.318 = icmp eq i64 %i.cg, 1
  br i1 %.not.i.318, label %_ZN12aiMatrix4x4tIfEixEj.exit.321, label %bb.a

_ZN12aiMatrix4x4tIfEixEj.exit.321:                ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.3.2
  %i.ch = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store float %i.ch, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ci = load ptr, ptr %1, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call noundef i64 %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !1
  %.not.i.1.3 = icmp eq i64 %i.cl, 1
  br i1 %.not.i.1.3, label %_ZN12aiMatrix4x4tIfEixEj.exit.1.3, label %bb.a

_ZN12aiMatrix4x4tIfEixEj.exit.1.3:                ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.321
  %i.cm = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.cm, ptr %i.cn, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.co = load ptr, ptr %1, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef i64 %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !1
  %.not.i.2.3 = icmp eq i64 %i.cr, 1
  br i1 %.not.i.2.3, label %_ZN12aiMatrix4x4tIfEixEj.exit.2.3, label %bb.a

_ZN12aiMatrix4x4tIfEixEj.exit.2.3:                ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.1.3
  %i.cs = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.cs, ptr %i.ct, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cu = load ptr, ptr %1, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call noundef i64 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !1
  %.not.i.3.3 = icmp eq i64 %i.cx, 1
  br i1 %.not.i.3.3, label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3, label %bb.a

_ZN12aiMatrix4x4tIfEixEj.exit.3.3:                ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.2.3
  %i.cy = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.cy, ptr %i.cz, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z4ReadI11aiVectorKeyET_PN6Assimp8IOStreamE(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.aiVectorKey) align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 1), !inline_history !3
  %.not.i = icmp eq i64 %i.f, 1
  br i1 %.not.i, label %_Z4ReadIdET_PN6Assimp8IOStreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.h

_Z4ReadIdET_PN6Assimp8IOStreamE.exit:             ; preds = %bb.a
  %i.i = load double, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store double %i.i, ptr %0, align 8
  %i.j = call { <2 x float>, float } @_Z4ReadI10aiVector3tIfEET_PN6Assimp8IOStreamE(ptr noundef nonnull %1) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.j, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.j, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.fca.0.extract, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z4ReadI9aiQuatKeyET_PN6Assimp8IOStreamE(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.aiQuatKey) align 8 captures(none) initializes((0, 28)) %0, ptr noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  store double 0.000000e+00, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 1), !inline_history !3
  %.not.i = icmp eq i64 %i.g, 1
  br i1 %.not.i, label %_Z4ReadIdET_PN6Assimp8IOStreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.i

_Z4ReadIdET_PN6Assimp8IOStreamE.exit:             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store double %i.j, ptr %0, align 8
  %i.k = call { <2 x float>, <2 x float> } @_Z4ReadI13aiQuaterniontIfEET_PN6Assimp8IOStreamE(ptr noundef nonnull %1) ; 2 uses
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.k, 0
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.k, 1
  store <2 x float> %i.l, ptr %i.b, align 8
  store <2 x float> %i.m, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp14AssbinImporter14ReadBinaryNodeEPNS_8IOStreamEPP6aiNodeS4_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(74) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %5 = alloca %struct.aiString, align 4           ; 9 uses
  %6 = alloca %class.aiMatrix4x4t, align 4        ; 5 uses
  %7 = alloca %struct.aiString, align 4           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  %i.m = load ptr, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.l, i64 noundef 4, i64 noundef 1), !inline_history !2
  %.not.i = icmp eq i64 %i.p, 1
  br i1 %.not.i, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.cs, %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.aa, %bb.k ], [ %i.u, %bb.g ], [ %.pn67.pn.pn.pn.pn, %bb.cs ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit:             ; preds = %bb.a
  %i.s = load i32, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  %.not = icmp eq i32 %i.s, 4668
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.t) #15
  br label %common.resume

bb.h:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  %i.v = load ptr, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.k, i64 noundef 4, i64 noundef 1), !inline_history !2
  %.not.i75 = icmp eq i64 %i.y, 1
  br i1 %.not.i75, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit76, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @.str.14)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.z) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit76:           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.ab = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #18 ; 14 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ab)
          to label %bb.l unwind label %bb.ab

bb.l:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit76
  store ptr %i.ab, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %5, i8 0, i64 1028, i1 false), !alias.scope !27
  %i.ac = load ptr, ptr %1, align 8, !noalias !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !27
  %i.af = invoke noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 %5, i64 noundef 4, i64 noundef 1)
          to label %.noexc unwind label %bb.ac, !inline_history !8 ; 0 uses

.noexc:                                           ; preds = %bb.l
  %i.ag = load i32, ptr %5, align 4, !alias.scope !27 ; 2 uses
  %.not.i77 = icmp eq i32 %i.ag, 0
  br i1 %.not.i77, label %_ZN8aiStringaSERKS_.exit, label %bb.m

bb.m:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ai = zext i32 %i.ag to i64
  %i.aj = load ptr, ptr %1, align 8, !noalias !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ah, i64 noundef %i.ai, i64 noundef 1)
          to label %.noexc78 unwind label %bb.ac, !inline_history !8 ; 0 uses

.noexc78:                                         ; preds = %bb.m
  %.pre.i = load i32, ptr %5, align 4, !alias.scope !27 ; 2 uses
  %i.an = zext i32 %.pre.i to i64
  %i.ao = call i32 @llvm.umin.i32(i32 %.pre.i, i32 1023)
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %.noexc78, %.noexc
  %spec.select.i = phi i32 [ %i.ao, %.noexc78 ], [ 0, %.noexc ] ; 2 uses
  %i.ap = phi i64 [ %i.an, %.noexc78 ], [ 0, %.noexc ]
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !alias.scope !27
  store i32 %spec.select.i, ptr %i.ab, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.at = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.as, ptr nonnull align 4 %i.aq, i64 %i.at, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  store i8 0, ptr %i.au, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_Z4ReadI12aiMatrix4x4tIfEET_PN6Assimp8IOStreamE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 4 %6, ptr noundef nonnull %1)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.av, ptr noundef nonnull align 4 dereferenceable(64) %6, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  %i.aw = load ptr, ptr %1, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.j, i64 noundef 4, i64 noundef 1)
          to label %.noexc80 unwind label %bb.ae, !inline_history !2

.noexc80:                                         ; preds = %bb.n
  %.not.i79 = icmp eq i64 %i.az, 1
  br i1 %.not.i79, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.noexc80
  %i.ba = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull @.str.14)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
          to label %.noexc81 unwind label %bb.ae

.noexc81:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ba) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  br label %.body

bb.r:                                             ; preds = %.noexc80
  %i.bc = load i32, ptr %i.j, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  %i.bd = load ptr, ptr %1, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke noundef i64 %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1)
          to label %.noexc84 unwind label %bb.af, !inline_history !2

.noexc84:                                         ; preds = %bb.r
  %.not.i83 = icmp eq i64 %i.bg, 1
  br i1 %.not.i83, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.noexc84
end_hunk_0
begin_hunk_1_@_ZN6Assimp14AssbinImporter14ReadBinaryMeshEPNS_8IOStreamEP6aiMesh:bb.a
bb.ai:                                            ; preds = %bb.ag
  %i.dc = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cx) #18 ; 3 uses
  %i.dd = icmp eq i32 %i.cv, 0
  br i1 %i.dd, label %.loopexit216, label %.loopexit216.loopexit

.loopexit216.loopexit:                            ; preds = %bb.ai
  %i.de = add nsw i64 %i.cx, -12                  ; 2 uses
  %i.df = urem i64 %i.de, 12
  %i.dg = sub nuw nsw i64 %i.de, %i.df
  %i.dh = add nsw i64 %i.dg, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dc, i8 0, i64 %i.dh, i1 false)
  br label %.loopexit216

.loopexit216:                                     ; preds = %.loopexit216.loopexit, %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.dc, ptr %i.di, align 8
  %i.dj = load i32, ptr %i.aq, align 4            ; 2 uses
  %.not.i149 = icmp eq i32 %i.dj, 0
  br i1 %.not.i149, label %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit159, label %.lr.ph.preheader.i150

.lr.ph.preheader.i150:                            ; preds = %.loopexit216
  %wide.trip.count.i151 = zext i32 %i.dj to i64
  br label %.lr.ph.i152

.lr.ph.i152:                                      ; preds = %.lr.ph.i152, %.lr.ph.preheader.i150
  %indvars.iv.i153 = phi i64 [ 0, %.lr.ph.preheader.i150 ], [ %indvars.iv.next.i157, %.lr.ph.i152 ] ; 2 uses
  %i.dk = call { <2 x float>, float } @_Z4ReadI10aiVector3tIfEET_PN6Assimp8IOStreamE(ptr noundef nonnull %1) ; 2 uses
  %.fca.0.extract.i154 = extractvalue { <2 x float>, float } %i.dk, 0
  %.fca.1.extract.i155 = extractvalue { <2 x float>, float } %i.dk, 1
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %i.dc, i64 %indvars.iv.i153 ; 2 uses
  store <2 x float> %.fca.0.extract.i154, ptr %i.dl, align 4
  %.sroa.4.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store float %.fca.1.extract.i155, ptr %.sroa.4.0..sroa_idx.i156, align 4
  %indvars.iv.next.i157 = add nuw nsw i64 %indvars.iv.i153, 1 ; 2 uses
  %exitcond.not.i158 = icmp eq i64 %indvars.iv.next.i157, %wide.trip.count.i151
  br i1 %exitcond.not.i158, label %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit159, label %.lr.ph.i152, !llvm.loop !36

_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit159: ; preds = %.lr.ph.i152, %.loopexit216, %bb.ah, %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit
  %i.dm = and i32 %i.bv, 4
  %.not130 = icmp eq i32 %i.dm, 0
  br i1 %.not130, label %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit181, label %bb.aj

bb.aj:                                            ; preds = %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit159
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.do = load i8, ptr %i.dn, align 8, !range !11, !noundef !12
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = mul nuw nsw i64 %i.dr, 12               ; 3 uses
  br i1 %i.dp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dt = load ptr, ptr %1, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ds, i32 noundef 1), !inline_history !35 ; 0 uses
  %i.dx = load i32, ptr %i.aq, align 4
  %i.dy = zext i32 %i.dx to i64
  %i.dz = mul nuw nsw i64 %i.dy, 12
  %i.ea = load ptr, ptr %1, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = call noundef i32 %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.dz, i32 noundef 1), !inline_history !35 ; 0 uses
  br label %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit181

bb.al:                                            ; preds = %bb.aj
  %i.ee = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ds) #18 ; 3 uses
  %i.ef = icmp eq i32 %i.dq, 0
  br i1 %i.ef, label %.loopexit215, label %.loopexit215.loopexit

.loopexit215.loopexit:                            ; preds = %bb.al
  %i.eg = add nsw i64 %i.ds, -12                  ; 2 uses
  %i.eh = urem i64 %i.eg, 12
  %i.ei = sub nuw nsw i64 %i.eg, %i.eh
  %i.ej = add nsw i64 %i.ei, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ee, i8 0, i64 %i.ej, i1 false)
  br label %.loopexit215

.loopexit215:                                     ; preds = %.loopexit215.loopexit, %bb.al
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ee, ptr %i.ek, align 8
  %i.el = load i32, ptr %i.aq, align 4            ; 2 uses
  %.not.i160 = icmp eq i32 %i.el, 0
  br i1 %.not.i160, label %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit170.thread, label %.lr.ph.preheader.i161

_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit170.thread: ; preds = %.loopexit215
  %i.em = call noalias noundef nonnull ptr @_Znam(i64 noundef 0) #18
  br label %.loopexit214

.lr.ph.preheader.i161:                            ; preds = %.loopexit215
  %wide.trip.count.i162 = zext i32 %i.el to i64
  br label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %.lr.ph.i163, %.lr.ph.preheader.i161
  %indvars.iv.i164 = phi i64 [ 0, %.lr.ph.preheader.i161 ], [ %indvars.iv.next.i168, %.lr.ph.i163 ] ; 2 uses
  %i.en = call { <2 x float>, float } @_Z4ReadI10aiVector3tIfEET_PN6Assimp8IOStreamE(ptr noundef nonnull %1) ; 2 uses
  %.fca.0.extract.i165 = extractvalue { <2 x float>, float } %i.en, 0
  %.fca.1.extract.i166 = extractvalue { <2 x float>, float } %i.en, 1
  %i.eo = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %indvars.iv.i164 ; 2 uses
  store <2 x float> %.fca.0.extract.i165, ptr %i.eo, align 4
  %.sroa.4.0..sroa_idx.i167 = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store float %.fca.1.extract.i166, ptr %.sroa.4.0..sroa_idx.i167, align 4
  %indvars.iv.next.i168 = add nuw nsw i64 %indvars.iv.i164, 1 ; 2 uses
  %exitcond.not.i169 = icmp eq i64 %indvars.iv.next.i168, %wide.trip.count.i162
  br i1 %exitcond.not.i169, label %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit170, label %.lr.ph.i163, !llvm.loop !36

_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit170: ; preds = %.lr.ph.i163
  %.pr = load i32, ptr %i.aq, align 4             ; 2 uses
  %i.ep = zext i32 %.pr to i64
  %i.eq = mul nuw nsw i64 %i.ep, 12               ; 2 uses
  %i.er = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #18 ; 3 uses
  %i.es = icmp eq i32 %.pr, 0
  br i1 %i.es, label %.loopexit214, label %.loopexit214.loopexit

.loopexit214.loopexit:                            ; preds = %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit170
  %i.et = add nsw i64 %i.eq, -12                  ; 2 uses
  %i.eu = urem i64 %i.et, 12
  %i.ev = sub nuw nsw i64 %i.et, %i.eu
  %i.ew = add nsw i64 %i.ev, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.er, i8 0, i64 %i.ew, i1 false)
  br label %.loopexit214

.loopexit214:                                     ; preds = %.loopexit214.loopexit, %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit170.thread, %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit170
  %i.ex = phi ptr [ %i.em, %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit170.thread ], [ %i.er, %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit170 ], [ %i.er, %.loopexit214.loopexit ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ex, ptr %i.ey, align 8
  %i.ez = load i32, ptr %i.aq, align 4            ; 2 uses
  %.not.i171 = icmp eq i32 %i.ez, 0
  br i1 %.not.i171, label %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit181, label %.lr.ph.preheader.i172

.lr.ph.preheader.i172:                            ; preds = %.loopexit214
  %wide.trip.count.i173 = zext i32 %i.ez to i64
  br label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %.lr.ph.i174, %.lr.ph.preheader.i172
  %indvars.iv.i175 = phi i64 [ 0, %.lr.ph.preheader.i172 ], [ %indvars.iv.next.i179, %.lr.ph.i174 ] ; 2 uses
  %i.fa = call { <2 x float>, float } @_Z4ReadI10aiVector3tIfEET_PN6Assimp8IOStreamE(ptr noundef nonnull %1) ; 2 uses
  %.fca.0.extract.i176 = extractvalue { <2 x float>, float } %i.fa, 0
  %.fca.1.extract.i177 = extractvalue { <2 x float>, float } %i.fa, 1
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.ex, i64 %indvars.iv.i175 ; 2 uses
  store <2 x float> %.fca.0.extract.i176, ptr %i.fb, align 4
  %.sroa.4.0..sroa_idx.i178 = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store float %.fca.1.extract.i177, ptr %.sroa.4.0..sroa_idx.i178, align 4
  %indvars.iv.next.i179 = add nuw nsw i64 %indvars.iv.i175, 1 ; 2 uses
  %exitcond.not.i180 = icmp eq i64 %indvars.iv.next.i179, %wide.trip.count.i173
  br i1 %exitcond.not.i180, label %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit181, label %.lr.ph.i174, !llvm.loop !36

_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit181: ; preds = %.lr.ph.i174, %.loopexit214, %bb.ak, %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit159
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.am

bb.am:                                            ; preds = %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit181, %_Z9ReadArrayI9aiColor4tIfEEvPN6Assimp8IOStreamEPT_j.exit
  %indvars.iv = phi i64 [ 0, %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit181 ], [ %indvars.iv.next, %_Z9ReadArrayI9aiColor4tIfEEvPN6Assimp8IOStreamEPT_j.exit ] ; 3 uses
  %i.fe = trunc nuw nsw i64 %indvars.iv to i32
  %i.ff = shl nuw nsw i32 65536, %i.fe
  %i.fg = and i32 %i.ff, %i.bv
  %.not131 = icmp eq i32 %i.fg, 0
  br i1 %.not131, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = load i8, ptr %i.fc, align 8, !range !11, !noundef !12
  %i.fi = trunc nuw i8 %i.fh to i1
  %i.fj = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = shl nuw nsw i64 %i.fk, 4                ; 3 uses
  br i1 %i.fi, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fm = load ptr, ptr %1, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call noundef i32 %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.fl, i32 noundef 1), !inline_history !37 ; 0 uses
  br label %_Z9ReadArrayI9aiColor4tIfEEvPN6Assimp8IOStreamEPT_j.exit

bb.ap:                                            ; preds = %bb.an
  %i.fq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fl) #18 ; 3 uses
  %i.fr = icmp eq i32 %i.fj, 0
  br i1 %i.fr, label %.loopexit213, label %.loopexit213.loopexit

.loopexit213.loopexit:                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fq, i8 0, i64 %i.fl, i1 false)
  br label %.loopexit213

.loopexit213:                                     ; preds = %.loopexit213.loopexit, %bb.ap
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv
  store ptr %i.fq, ptr %i.fs, align 8
  %i.ft = load i32, ptr %i.aq, align 4            ; 2 uses
  %.not.i182 = icmp eq i32 %i.ft, 0
  br i1 %.not.i182, label %_Z9ReadArrayI9aiColor4tIfEEvPN6Assimp8IOStreamEPT_j.exit, label %.lr.ph.preheader.i183

.lr.ph.preheader.i183:                            ; preds = %.loopexit213
  %wide.trip.count.i184 = zext i32 %i.ft to i64
  br label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %.lr.ph.i185, %.lr.ph.preheader.i183
  %indvars.iv.i186 = phi i64 [ 0, %.lr.ph.preheader.i183 ], [ %indvars.iv.next.i188, %.lr.ph.i185 ] ; 2 uses
  %i.fu = call { <2 x float>, <2 x float> } @_Z4ReadI9aiColor4tIfEET_PN6Assimp8IOStreamE(ptr noundef %1) ; 2 uses
  %i.fv = extractvalue { <2 x float>, <2 x float> } %i.fu, 0
  %i.fw = extractvalue { <2 x float>, <2 x float> } %i.fu, 1
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %indvars.iv.i186 ; 2 uses
  store <2 x float> %i.fv, ptr %i.fx, align 4
  %.sroa.4.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store <2 x float> %i.fw, ptr %.sroa.4.0..sroa_idx.i187, align 4
  %indvars.iv.next.i188 = add nuw nsw i64 %indvars.iv.i186, 1 ; 2 uses
  %exitcond.not.i189 = icmp eq i64 %indvars.iv.next.i188, %wide.trip.count.i184
  br i1 %exitcond.not.i189, label %_Z9ReadArrayI9aiColor4tIfEEvPN6Assimp8IOStreamEPT_j.exit, label %.lr.ph.i185, !llvm.loop !38

_Z9ReadArrayI9aiColor4tIfEEvPN6Assimp8IOStreamEPT_j.exit: ; preds = %.lr.ph.i185, %.loopexit213, %bb.ao
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.aq, label %bb.am, !llvm.loop !39

bb.aq:                                            ; preds = %bb.am, %_Z9ReadArrayI9aiColor4tIfEEvPN6Assimp8IOStreamEPT_j.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 112
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit202
  %indvars.iv231 = phi i64 [ 0, %bb.aq ], [ %indvars.iv.next232, %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit202 ] ; 4 uses
  %i.ga = trunc nuw nsw i64 %indvars.iv231 to i32
  %i.gb = shl nuw nsw i32 256, %i.ga
  %i.gc = and i32 %i.gb, %i.bv
  %.not132 = icmp eq i32 %i.gc, 0
  br i1 %.not132, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.gd = load ptr, ptr %1, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = call noundef i64 %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1), !inline_history !2
  %.not.i190 = icmp eq i64 %i.gg, 1
  br i1 %.not.i190, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit191, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gh = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull @.str.14)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @__cxa_throw(ptr nonnull %i.gh, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gh) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit191:          ; preds = %bb.as
  %i.gj = load i32, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv231
  store i32 %i.gj, ptr %i.gk, align 4
  %i.gl = load i8, ptr %i.fc, align 8, !range !11, !noundef !12
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = mul nuw nsw i64 %i.go, 12               ; 3 uses
  br i1 %i.gm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit191
  %i.gq = load ptr, ptr %1, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = call noundef i32 %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.gp, i32 noundef 1), !inline_history !35 ; 0 uses
  br label %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit202

bb.ax:                                            ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit191
  %i.gu = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gp) #18 ; 3 uses
  %i.gv = icmp eq i32 %i.gn, 0
  br i1 %i.gv, label %.loopexit212, label %.loopexit212.loopexit

.loopexit212.loopexit:                            ; preds = %bb.ax
  %i.gw = add nsw i64 %i.gp, -12                  ; 2 uses
  %i.gx = urem i64 %i.gw, 12
  %i.gy = sub nuw nsw i64 %i.gw, %i.gx
  %i.gz = add nsw i64 %i.gy, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gu, i8 0, i64 %i.gz, i1 false)
  br label %.loopexit212

.loopexit212:                                     ; preds = %.loopexit212.loopexit, %bb.ax
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv231
  store ptr %i.gu, ptr %i.ha, align 8
  %i.hb = load i32, ptr %i.aq, align 4            ; 2 uses
  %.not.i192 = icmp eq i32 %i.hb, 0
  br i1 %.not.i192, label %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit202, label %.lr.ph.preheader.i193

.lr.ph.preheader.i193:                            ; preds = %.loopexit212
  %wide.trip.count.i194 = zext i32 %i.hb to i64
  br label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %.lr.ph.i195, %.lr.ph.preheader.i193
  %indvars.iv.i196 = phi i64 [ 0, %.lr.ph.preheader.i193 ], [ %indvars.iv.next.i200, %.lr.ph.i195 ] ; 2 uses
  %i.hc = call { <2 x float>, float } @_Z4ReadI10aiVector3tIfEET_PN6Assimp8IOStreamE(ptr noundef nonnull %1) ; 2 uses
  %.fca.0.extract.i197 = extractvalue { <2 x float>, float } %i.hc, 0
  %.fca.1.extract.i198 = extractvalue { <2 x float>, float } %i.hc, 1
  %i.hd = getelementptr inbounds nuw [12 x i8], ptr %i.gu, i64 %indvars.iv.i196 ; 2 uses
  store <2 x float> %.fca.0.extract.i197, ptr %i.hd, align 4
  %.sroa.4.0..sroa_idx.i199 = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store float %.fca.1.extract.i198, ptr %.sroa.4.0..sroa_idx.i199, align 4
  %indvars.iv.next.i200 = add nuw nsw i64 %indvars.iv.i196, 1 ; 2 uses
  %exitcond.not.i201 = icmp eq i64 %indvars.iv.next.i200, %wide.trip.count.i194
  br i1 %exitcond.not.i201, label %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit202, label %.lr.ph.i195, !llvm.loop !36

_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit202: ; preds = %.lr.ph.i195, %.loopexit212, %bb.aw
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next232, 8
  br i1 %exitcond234.not, label %bb.ay, label %bb.ar, !llvm.loop !40

bb.ay:                                            ; preds = %bb.ar, %_Z9ReadArrayI10aiVector3tIfEEvPN6Assimp8IOStreamEPT_j.exit202
  %i.he = load i8, ptr %i.fc, align 8, !range !11, !noundef !12
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.hg = load ptr, ptr %1, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = call noundef i64 %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1), !inline_history !2
  %.not.i203 = icmp eq i64 %i.hj, 1
  br i1 %.not.i203, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit204, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hk = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull @.str.14)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @__cxa_throw(ptr nonnull %i.hk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hk) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit204:          ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %.loopexit210

bb.bd:                                            ; preds = %bb.ay
  %i.hm = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 5 uses
  %i.ho = shl nuw nsw i64 %i.hn, 4
  %i.hp = or disjoint i64 %i.ho, 8
  %i.hq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hp) #18 ; 2 uses
  store i64 %i.hn, ptr %i.hq, align 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  %i.hs = icmp eq i32 %i.hm, 0
  br i1 %i.hs, label %.loopexit211, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hr, i64 %i.hn
  %i.hu = add nuw nsw i64 %i.hn, 1152921504606846975
  %i.hv = and i64 %i.hu, 1152921504606846975
  %xtraiter = and i64 %i.hn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.be, %.prol.preheader
  %i.hw = phi ptr [ %i.hy, %.prol.preheader ], [ %i.hr, %bb.be ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.be ]
  store i32 0, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store ptr null, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !41

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.be
  %.unr = phi ptr [ %i.hr, %bb.be ], [ %i.hy, %.prol.preheader ]
  %i.hz = icmp samesign ult i64 %i.hv, 7
  br i1 %i.hz, label %.loopexit211, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ia = phi ptr [ %i.iq, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr null, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store i32 0, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  store ptr null, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  store i32 0, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  store ptr null, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  store i32 0, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  store ptr null, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 64
  store i32 0, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 72
  store ptr null, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 80
  store i32 0, ptr %i.ik, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp14AssbinImporter18ReadBinaryNodeAnimEPNS_8IOStreamEP10aiNodeAnim:bb.a
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  store i32 1, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  store double 0.000000e+00, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  store i32 1, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 96
  store double 0.000000e+00, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 120
  store i32 1, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  store double 0.000000e+00, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 152
  store i32 1, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 160
  store double 0.000000e+00, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 184
  store i32 1, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dp, i64 192
  store double 0.000000e+00, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 216
  store i32 1, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dp, i64 224
  store double 0.000000e+00, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.dp, i64 248
  store i32 1, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 256 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.dh
  br i1 %i.eo, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 1048
  store ptr %i.dg, ptr %i.ep, align 8
  %i.eq = load i32, ptr %i.bf, align 8
  call void @_Z9ReadArrayI9aiQuatKeyEvPN6Assimp8IOStreamEPT_j(ptr noundef nonnull %1, ptr noundef nonnull %i.dg, i32 noundef %i.eq)
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %.unr-lcssa, %bb.ah
  %i.er = load i32, ptr %i.bn, align 8            ; 2 uses
  %.not47 = icmp eq i32 %i.er, 0
  br i1 %.not47, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.et = load i8, ptr %i.es, align 8, !range !11, !noundef !12
  %i.eu = trunc nuw i8 %i.et to i1
  %i.ev = zext i32 %i.er to i64                   ; 2 uses
  %i.ew = mul nuw nsw i64 %i.ev, 24               ; 2 uses
  br i1 %i.eu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ex = load ptr, ptr %1, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = call noundef i32 %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ew, i32 noundef 1), !inline_history !51 ; 0 uses
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.fb = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #18 ; 4 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.ev
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %i.fd = phi ptr [ %i.fb, %bb.ao ], [ %i.ff, %bb.ap ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 24 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.fc
  br i1 %i.fg, label %bb.aq, label %bb.ap

bb.aq:                                            ; preds = %bb.ap
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 1064
  store ptr %i.fb, ptr %i.fh, align 8
  %i.fi = load i32, ptr %i.bn, align 8
  call void @_Z9ReadArrayI11aiVectorKeyEvPN6Assimp8IOStreamEPT_j(ptr noundef nonnull %1, ptr noundef nonnull %i.fb, i32 noundef %i.fi)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.aq, %bb.al
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z9ReadArrayI11aiVectorKeyEvPN6Assimp8IOStreamEPT_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_Z4ReadI11aiVectorKeyET_PN6Assimp8IOStreamE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_Z4ReadI11aiVectorKeyET_PN6Assimp8IOStreamE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_Z4ReadI11aiVectorKeyET_PN6Assimp8IOStreamE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !59
  %i.b = load ptr, ptr %0, align 8, !noalias !59
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !59
  %i.e = call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 1), !noalias !59, !inline_history !57
  %.not.i.i = icmp eq i64 %i.e, 1
  br i1 %.not.i.i, label %_Z4ReadI11aiVectorKeyET_PN6Assimp8IOStreamE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = call ptr @__cxa_allocate_exception(i64 16) #15, !noalias !59 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.d, !noalias !59

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17, !noalias !59
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.f) #15, !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !59
  resume { ptr, i32 } %i.g

_Z4ReadI11aiVectorKeyET_PN6Assimp8IOStreamE.exit: ; preds = %.lr.ph
  %i.h = load double, ptr %i.a, align 8, !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !59
  %i.i = call { <2 x float>, float } @_Z4ReadI10aiVector3tIfEET_PN6Assimp8IOStreamE(ptr noundef nonnull %0), !noalias !59 ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.i, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.i, 1
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  store double %i.h, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store <2 x float> %.fca.0.extract.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store float %.fca.1.extract.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z9ReadArrayI9aiQuatKeyEvPN6Assimp8IOStreamEPT_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_Z4ReadI9aiQuatKeyET_PN6Assimp8IOStreamE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_Z4ReadI9aiQuatKeyET_PN6Assimp8IOStreamE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_Z4ReadI9aiQuatKeyET_PN6Assimp8IOStreamE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !64
  %i.b = load ptr, ptr %0, align 8, !noalias !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !64
  %i.e = call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 1), !noalias !64, !inline_history !62
  %.not.i.i = icmp eq i64 %i.e, 1
  br i1 %.not.i.i, label %_Z4ReadI9aiQuatKeyET_PN6Assimp8IOStreamE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = call ptr @__cxa_allocate_exception(i64 16) #15, !noalias !64 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.d, !noalias !64

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17, !noalias !64
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.f) #15, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !64
  resume { ptr, i32 } %i.g

_Z4ReadI9aiQuatKeyET_PN6Assimp8IOStreamE.exit:    ; preds = %.lr.ph
  %i.h = load double, ptr %i.a, align 8, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !64
  %i.i = call { <2 x float>, <2 x float> } @_Z4ReadI13aiQuaterniontIfEET_PN6Assimp8IOStreamE(ptr noundef nonnull %0), !noalias !64 ; 2 uses
  %i.j = extractvalue { <2 x float>, <2 x float> } %i.i, 0
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.i, 1
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  store double %i.h, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store <2 x float> %i.j, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x float> %i.k, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 1, ptr %.sroa.11.0..sroa_idx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp14AssbinImporter14ReadBinaryAnimEPNS_8IOStreamEP11aiAnimation(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(74) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.aiString, align 4           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1), !inline_history !2
  %.not.i = icmp eq i64 %i.i, 1
  br i1 %.not.i, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

common.resume:                                    ; preds = %bb.v, %bb.s, %bb.p, %bb.k, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.n, %bb.g ], [ %i.t, %bb.k ], [ %i.at, %bb.p ], [ %i.bb, %bb.s ], [ %i.bj, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit:             ; preds = %bb.a
  %i.l = load i32, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  %.not = icmp eq i32 %i.l, 4667
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit
  %i.m = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.m) #15
  br label %common.resume

bb.h:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.o = load ptr, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1), !inline_history !2
  %.not.i25 = icmp eq i64 %i.r, 1
  br i1 %.not.i25, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit26, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull @.str.14)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.s) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit26:           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false), !alias.scope !68
  %i.u = load ptr, ptr %1, align 8, !noalias !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !68
  %i.x = call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 %3, i64 noundef 4, i64 noundef 1), !inline_history !8 ; 0 uses
  %i.y = load i32, ptr %3, align 4, !alias.scope !68 ; 2 uses
  %.not.i27 = icmp eq i32 %i.y, 0
  br i1 %.not.i27, label %_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit, label %bb.l

bb.l:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = zext i32 %i.y to i64
  %i.ab = load ptr, ptr %1, align 8, !noalias !68
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.z, i64 noundef %i.aa, i64 noundef 1), !inline_history !8 ; 0 uses
  %.pre.i = load i32, ptr %3, align 4, !alias.scope !68 ; 2 uses
  %i.af = zext i32 %.pre.i to i64
  %i.ag = call i32 @llvm.umin.i32(i32 %.pre.i, i32 1023)
  br label %_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit

_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit:     ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit26, %bb.l
  %spec.select.i = phi i32 [ %i.ag, %bb.l ], [ 0, %_Z4ReadIjET_PN6Assimp8IOStreamE.exit26 ] ; 2 uses
  %i.ah = phi i64 [ %i.af, %bb.l ], [ 0, %_Z4ReadIjET_PN6Assimp8IOStreamE.exit26 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !alias.scope !68
  %i.ak = icmp eq ptr %2, %3
  br i1 %i.ak, label %_ZN8aiStringaSERKS_.exit, label %bb.m

bb.m:                                             ; preds = %_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit
  store i32 %spec.select.i, ptr %2, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.am = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.al, ptr nonnull align 4 %i.ai, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  store i8 0, ptr %i.an, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.ao = load ptr, ptr %1, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 1), !inline_history !3
  %.not.i28 = icmp eq i64 %i.ar, 1
  br i1 %.not.i28, label %_Z4ReadIdET_PN6Assimp8IOStreamE.exit, label %bb.n

bb.n:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.as = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.14)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.as) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %common.resume

_Z4ReadIdET_PN6Assimp8IOStreamE.exit:             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.au = load double, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 1032
  store double %i.au, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.aw = load ptr, ptr %1, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1), !inline_history !3
  %.not.i29 = icmp eq i64 %i.az, 1
  br i1 %.not.i29, label %_Z4ReadIdET_PN6Assimp8IOStreamE.exit30, label %bb.q

bb.q:                                             ; preds = %_Z4ReadIdET_PN6Assimp8IOStreamE.exit
  %i.ba = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull @.str.14)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ba) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %common.resume

_Z4ReadIdET_PN6Assimp8IOStreamE.exit30:           ; preds = %_Z4ReadIdET_PN6Assimp8IOStreamE.exit
  %i.bc = load double, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1040
  store double %i.bc, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.be = load ptr, ptr %1, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !2
  %.not.i31 = icmp eq i64 %i.bh, 1
  br i1 %.not.i31, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit32, label %bb.t
end_hunk_2
