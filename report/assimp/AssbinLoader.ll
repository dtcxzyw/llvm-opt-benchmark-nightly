inline.NumInlined: 384
inline.NumDeleted: 150
begin_hunk_0_@_ZN6Assimp14AssbinImporter14ReadBinaryAnimEPNS_8IOStreamEP11aiAnimation:bb.a

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp14AssbinImporter17ReadBinaryTextureEPNS_8IOStreamEP9aiTexture(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(74) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1), !inline_history !5
  %.not.i = icmp eq i64 %i.h, 1
  br i1 %.not.i, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.n, %bb.k, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.m, %bb.g ], [ %i.s, %bb.k ], [ %i.y, %bb.n ], [ %i.af, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit:             ; preds = %bb.a
  %i.k = load i32, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %.not = icmp eq i32 %i.k, 4662
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit
  %i.l = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.l) #15
  br label %common.resume

bb.h:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.n = load ptr, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1), !inline_history !5
  %.not.i24 = icmp eq i64 %i.q, 1
  br i1 %.not.i24, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.14)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.r) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit25:           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.t = load ptr, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1), !inline_history !5
  %.not.i26 = icmp eq i64 %i.w, 1
  br i1 %.not.i26, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit27, label %bb.l

bb.l:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit25
  %i.x = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull @.str.14)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit27:           ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit25
  %i.z = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  store i32 %i.z, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !5
  %.not.i28 = icmp eq i64 %i.ad, 1
  br i1 %.not.i28, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit29, label %bb.o

bb.o:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit27
  %i.ae = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull @.str.14)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ae) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit29:           ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit27
  %i.ag = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ai, i64 noundef 1, i64 noundef 8) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load i8, ptr %i.an, align 8, !range !21, !noundef !22
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit29
  %i.aq = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not23 = icmp eq i32 %i.aq, 0
  %i.ar = load i32, ptr %2, align 8               ; 2 uses
  br i1 %.not23, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #18 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = load ptr, ptr %1, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.au, i64 noundef 1, i64 noundef %i.as) ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ba = mul i32 %i.ar, %i.aq                    ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bc) #18 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bd, ptr %i.be, align 8
  %i.bf = shl i32 %i.ba, 2
  %i.bg = zext i32 %i.bf to i64
  %i.bh = load ptr, ptr %1, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef i64 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bd, i64 noundef 1, i64 noundef %i.bg) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %_Z4ReadIjET_PN6Assimp8IOStreamE.exit29
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp14AssbinImporter15ReadBinaryLightEPNS_8IOStreamEP7aiLight(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef captures(address) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.aiString, align 4           ; 9 uses
  %4 = alloca %struct.aiColor3D, align 8          ; 6 uses
  %5 = alloca %struct.aiColor3D, align 8          ; 6 uses
  %6 = alloca %struct.aiColor3D, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.i = load ptr, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.h, i64 noundef 4, i64 noundef 1), !inline_history !5
  %.not.i = icmp eq i64 %i.l, 1
  br i1 %.not.i, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

common.resume:                                    ; preds = %bb.aq, %bb.an, %bb.aj, %bb.ag, %bb.ad, %bb.z, %bb.w, %bb.t, %bb.p, %bb.k, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.q, %bb.g ], [ %i.w, %bb.k ], [ %i.aw, %bb.p ], [ %i.bl, %bb.t ], [ %i.bt, %bb.w ], [ %i.cb, %bb.z ], [ %i.cj, %bb.ad ], [ %i.ct, %bb.ag ], [ %i.dd, %bb.aj ], [ %i.dp, %bb.an ], [ %i.dx, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit:             ; preds = %bb.a
  %i.o = load i32, ptr %i.h, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  %.not = icmp eq i32 %i.o, 4661
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit
  %i.p = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.p) #15
  br label %common.resume

bb.h:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.r = load ptr, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1), !inline_history !5
  %.not.i45 = icmp eq i64 %i.u, 1
  br i1 %.not.i45, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit46, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.14)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit46:           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false), !alias.scope !67
  %i.x = load ptr, ptr %1, align 8, !noalias !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !noalias !67
  %i.aa = call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 %3, i64 noundef 4, i64 noundef 1), !inline_history !10 ; 0 uses
  %i.ab = load i32, ptr %3, align 4, !alias.scope !67 ; 2 uses
  %.not.i47 = icmp eq i32 %i.ab, 0
  br i1 %.not.i47, label %_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit, label %bb.l

bb.l:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit46
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ad = zext i32 %i.ab to i64
  %i.ae = load ptr, ptr %1, align 8, !noalias !67
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ac, i64 noundef %i.ad, i64 noundef 1), !inline_history !10 ; 0 uses
  %.pre.i = load i32, ptr %3, align 4, !alias.scope !67 ; 2 uses
  %i.ai = zext i32 %.pre.i to i64
  %i.aj = call i32 @llvm.umin.i32(i32 %.pre.i, i32 1023)
  br label %_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit

_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit:     ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit46, %bb.l
  %spec.select.i = phi i32 [ %i.aj, %bb.l ], [ 0, %_Z4ReadIjET_PN6Assimp8IOStreamE.exit46 ] ; 2 uses
  %i.ak = phi i64 [ %i.ai, %bb.l ], [ 0, %_Z4ReadIjET_PN6Assimp8IOStreamE.exit46 ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !alias.scope !67
  %i.an = icmp eq ptr %2, %3
  br i1 %i.an, label %_ZN8aiStringaSERKS_.exit, label %bb.m

bb.m:                                             ; preds = %_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit
  store i32 %spec.select.i, ptr %2, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ap = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr nonnull align 4 %i.al, i64 %i.ap, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i8 0, ptr %i.aq, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.ar = load ptr, ptr %1, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef i64 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef 1), !inline_history !5
  %.not.i48 = icmp eq i64 %i.au, 1
  br i1 %.not.i48, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit49, label %bb.n

bb.n:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.av = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull @.str.14)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.av) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit49:           ; preds = %_ZN8aiStringaSERKS_.exit
  %i.ax = load i32, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 1028 ; 3 uses
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = call { <2 x float>, float } @_Z4ReadI10aiVector3tIfEET_PN6Assimp8IOStreamE(ptr noundef nonnull %1) ; 2 uses
  %.fca.0.extract8 = extractvalue { <2 x float>, float } %i.az, 0
  %.fca.1.extract9 = extractvalue { <2 x float>, float } %i.az, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 1032
  store <2 x float> %.fca.0.extract8, ptr %i.ba, align 4
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1040
  store float %.fca.1.extract9, ptr %.sroa.413.0..sroa_idx, align 4
  %i.bb = call { <2 x float>, float } @_Z4ReadI10aiVector3tIfEET_PN6Assimp8IOStreamE(ptr noundef nonnull %1) ; 2 uses
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.bb, 0
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.bb, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 1044
  store <2 x float> %.fca.0.extract2, ptr %i.bc, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1052
  store float %.fca.1.extract3, ptr %.sroa.47.0..sroa_idx, align 4
  %i.bd = call { <2 x float>, float } @_Z4ReadI10aiVector3tIfEET_PN6Assimp8IOStreamE(ptr noundef nonnull %1) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.bd, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.bd, 1
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 1056
  store <2 x float> %.fca.0.extract, ptr %i.be, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1064
  store float %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 4
  %i.bf = load i32, ptr %i.ay, align 4
  %.not44 = icmp eq i32 %i.bf, 1
  br i1 %.not44, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.bg = load ptr, ptr %1, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1), !inline_history !4
  %.not.i50 = icmp eq i64 %i.bj, 1
  br i1 %.not.i50, label %_Z4ReadIfET_PN6Assimp8IOStreamE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull @.str.14)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bk) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %common.resume

_Z4ReadIfET_PN6Assimp8IOStreamE.exit:             ; preds = %bb.q
  %i.bm = load float, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1068
  store float %i.bm, ptr %i.bn, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.bo = load ptr, ptr %1, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1), !inline_history !4
  %.not.i51 = icmp eq i64 %i.br, 1
  br i1 %.not.i51, label %_Z4ReadIfET_PN6Assimp8IOStreamE.exit52, label %bb.u

bb.u:                                             ; preds = %_Z4ReadIfET_PN6Assimp8IOStreamE.exit
  %i.bs = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull @.str.14)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bs) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %common.resume

_Z4ReadIfET_PN6Assimp8IOStreamE.exit52:           ; preds = %_Z4ReadIfET_PN6Assimp8IOStreamE.exit
  %i.bu = load float, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 1072
  store float %i.bu, ptr %i.bv, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.bw = load ptr, ptr %1, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef i64 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1), !inline_history !4
  %.not.i53 = icmp eq i64 %i.bz, 1
  br i1 %.not.i53, label %_Z4ReadIfET_PN6Assimp8IOStreamE.exit54, label %bb.x

bb.x:                                             ; preds = %_Z4ReadIfET_PN6Assimp8IOStreamE.exit52
  %i.ca = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull @.str.14)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ca) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %common.resume

_Z4ReadIfET_PN6Assimp8IOStreamE.exit54:           ; preds = %_Z4ReadIfET_PN6Assimp8IOStreamE.exit52
  %i.cc = load float, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 1076
  store float %i.cc, ptr %i.cd, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %_Z4ReadIfET_PN6Assimp8IOStreamE.exit54, %_Z4ReadIjET_PN6Assimp8IOStreamE.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  store <2 x float> zeroinitializer, ptr %4, align 8, !alias.scope !70
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %7, align 8, !alias.scope !70
  %i.ce = load ptr, ptr %1, align 8, !noalias !70
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !70
  %i.ch = call noundef i64 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 %4, i64 noundef 12, i64 noundef 1), !inline_history !73
  %.not.i55 = icmp eq i64 %i.ch, 1
  br i1 %.not.i55, label %_Z4ReadI9aiColor3DET_PN6Assimp8IOStreamE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull @.str.14)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ci) #15
  br label %common.resume

_Z4ReadI9aiColor3DET_PN6Assimp8IOStreamE.exit:    ; preds = %bb.aa
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 1080
  %i.cl = load <2 x float>, ptr %4, align 8
  store <2 x float> %i.cl, ptr %i.ck, align 4
  %i.cm = load float, ptr %7, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store float %i.cm, ptr %i.cn, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  store <2 x float> zeroinitializer, ptr %5, align 8, !alias.scope !74
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %8, align 8, !alias.scope !74
  %i.co = load ptr, ptr %1, align 8, !noalias !74
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !74
  %i.cr = call noundef i64 %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 %5, i64 noundef 12, i64 noundef 1), !inline_history !73
  %.not.i56 = icmp eq i64 %i.cr, 1
  br i1 %.not.i56, label %_Z4ReadI9aiColor3DET_PN6Assimp8IOStreamE.exit57, label %bb.ae

bb.ae:                                            ; preds = %_Z4ReadI9aiColor3DET_PN6Assimp8IOStreamE.exit
  %i.cs = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull @.str.14)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @__cxa_throw(ptr nonnull %i.cs, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cs) #15
  br label %common.resume

_Z4ReadI9aiColor3DET_PN6Assimp8IOStreamE.exit57:  ; preds = %_Z4ReadI9aiColor3DET_PN6Assimp8IOStreamE.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 1092
  %i.cv = load <2 x float>, ptr %5, align 8
  store <2 x float> %i.cv, ptr %i.cu, align 4
  %i.cw = load float, ptr %8, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 1100
  store float %i.cw, ptr %i.cx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  store <2 x float> zeroinitializer, ptr %6, align 8, !alias.scope !77
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %9, align 8, !alias.scope !77
  %i.cy = load ptr, ptr %1, align 8, !noalias !77
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !77
  %i.db = call noundef i64 %i.da(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 %6, i64 noundef 12, i64 noundef 1), !inline_history !73
  %.not.i58 = icmp eq i64 %i.db, 1
  br i1 %.not.i58, label %_Z4ReadI9aiColor3DET_PN6Assimp8IOStreamE.exit59, label %bb.ah

bb.ah:                                            ; preds = %_Z4ReadI9aiColor3DET_PN6Assimp8IOStreamE.exit57
  %i.dc = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull @.str.14)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dc) #15
  br label %common.resume

_Z4ReadI9aiColor3DET_PN6Assimp8IOStreamE.exit59:  ; preds = %_Z4ReadI9aiColor3DET_PN6Assimp8IOStreamE.exit57
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 1104
  %i.df = load <2 x float>, ptr %6, align 8
  store <2 x float> %i.df, ptr %i.de, align 4
  %i.dg = load float, ptr %9, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 1112
  store float %i.dg, ptr %i.dh, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.di = load i32, ptr %i.ay, align 4
  %i.dj = icmp eq i32 %i.di, 3
  br i1 %i.dj, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %_Z4ReadI9aiColor3DET_PN6Assimp8IOStreamE.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.dk = load ptr, ptr %1, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call noundef i64 %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1), !inline_history !4
  %.not.i60 = icmp eq i64 %i.dn, 1
  br i1 %.not.i60, label %_Z4ReadIfET_PN6Assimp8IOStreamE.exit61, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.do = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull @.str.14)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @__cxa_throw(ptr nonnull %i.do, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.do) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %common.resume

_Z4ReadIfET_PN6Assimp8IOStreamE.exit61:           ; preds = %bb.ak
  %i.dq = load float, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 1116
  store float %i.dq, ptr %i.dr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ds = load ptr, ptr %1, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef i64 %i.du(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !4
  %.not.i62 = icmp eq i64 %i.dv, 1
  br i1 %.not.i62, label %_Z4ReadIfET_PN6Assimp8IOStreamE.exit63, label %bb.ao

bb.ao:                                            ; preds = %_Z4ReadIfET_PN6Assimp8IOStreamE.exit61
  %i.dw = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull @.str.14)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @__cxa_throw(ptr nonnull %i.dw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dw) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %common.resume

_Z4ReadIfET_PN6Assimp8IOStreamE.exit63:           ; preds = %_Z4ReadIfET_PN6Assimp8IOStreamE.exit61
  %i.dy = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 1120
  store float %i.dy, ptr %i.dz, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %_Z4ReadIfET_PN6Assimp8IOStreamE.exit63, %_Z4ReadI9aiColor3DET_PN6Assimp8IOStreamE.exit59
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp14AssbinImporter16ReadBinaryCameraEPNS_8IOStreamEP8aiCamera(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef writeonly captures(address) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.aiString, align 4           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef 1), !inline_history !5
  %.not.i = icmp eq i64 %i.j, 1
  br i1 %.not.i, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.v, %bb.s, %bb.p, %bb.k, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.o, %bb.g ], [ %i.u, %bb.k ], [ %i.ba, %bb.p ], [ %i.bi, %bb.s ], [ %i.bq, %bb.v ], [ %i.by, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit:             ; preds = %bb.a
  %i.m = load i32, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  %.not = icmp eq i32 %i.m, 4660
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #15
  br label %common.resume

bb.h:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.p = load ptr, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1), !inline_history !5
  %.not.i32 = icmp eq i64 %i.s, 1
  br i1 %.not.i32, label %_Z4ReadIjET_PN6Assimp8IOStreamE.exit33, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.14)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.t) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %common.resume

_Z4ReadIjET_PN6Assimp8IOStreamE.exit33:           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false), !alias.scope !80
  %i.v = load ptr, ptr %1, align 8, !noalias !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !noalias !80
  %i.y = call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 %3, i64 noundef 4, i64 noundef 1), !inline_history !10 ; 0 uses
  %i.z = load i32, ptr %3, align 4, !alias.scope !80 ; 2 uses
  %.not.i34 = icmp eq i32 %i.z, 0
  br i1 %.not.i34, label %_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit, label %bb.l

bb.l:                                             ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit33
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = zext i32 %i.z to i64
  %i.ac = load ptr, ptr %1, align 8, !noalias !80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.aa, i64 noundef %i.ab, i64 noundef 1), !inline_history !10 ; 0 uses
  %.pre.i = load i32, ptr %3, align 4, !alias.scope !80 ; 2 uses
  %i.ag = zext i32 %.pre.i to i64
  %i.ah = call i32 @llvm.umin.i32(i32 %.pre.i, i32 1023)
  br label %_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit

_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit:     ; preds = %_Z4ReadIjET_PN6Assimp8IOStreamE.exit33, %bb.l
  %spec.select.i = phi i32 [ %i.ah, %bb.l ], [ 0, %_Z4ReadIjET_PN6Assimp8IOStreamE.exit33 ] ; 2 uses
  %i.ai = phi i64 [ %i.ag, %bb.l ], [ 0, %_Z4ReadIjET_PN6Assimp8IOStreamE.exit33 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !alias.scope !80
  %i.al = icmp eq ptr %2, %3
  br i1 %i.al, label %_ZN8aiStringaSERKS_.exit, label %bb.m

bb.m:                                             ; preds = %_Z4ReadI8aiStringET_PN6Assimp8IOStreamE.exit
  store i32 %spec.select.i, ptr %2, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.an = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull align 4 %i.aj, i64 %i.an, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  store i8 0, ptr %i.ao, align 1
  br label %_ZN8aiStringaSERKS_.exit
end_hunk_0
