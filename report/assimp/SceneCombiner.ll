inline.NumInlined: 1372
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp13SceneCombiner4CopyEPP9aiTexturePKS1_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load i32, ptr %i.g, align 4
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.i, i32 1023) ; 2 uses
  store i32 %spec.select.i.i, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = zext nneg i32 %spec.select.i.i to i64    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull align 4 %i.k, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  store i8 0, ptr %i.m, align 1
  br label %_ZN9aiTextureaSERKS_.exit

_ZN9aiTextureaSERKS_.exit:                        ; preds = %bb.b, %bb.c
  %i.n = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN9aiTextureaSERKS_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not24 = icmp eq i32 %i.p, 0
  %i.q = load i32, ptr %i.c, align 8
  %i.r = shl i32 %i.p, 2
  %i.s = select i1 %.not24, i32 1, i32 %i.r
  %.019 = mul i32 %i.q, %i.s                      ; 2 uses
  %.not25.not = icmp eq i32 %.019, 0
  br i1 %.not25.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.d, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = zext i32 %.019 to i64                    ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #22 ; 2 uses
  store ptr %i.u, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.n, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %_ZN9aiTextureaSERKS_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP10aiMaterialPKS1_(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 9 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %0, align 8
  tail call void @_ZN10aiMaterial5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 %i.j, ptr %i.k, align 8
  %i.l = zext i32 %i.g to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22
  store ptr %i.n, ptr %i.c, align 8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #24
  resume { ptr, i32 } %i.o

.lr.ph:                                           ; preds = %bb.e, %_ZN8aiStringaSERKS_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8aiStringaSERKS_.exit ], [ 0, %bb.e ] ; 3 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(1056) ptr @_Znwm(i64 noundef 1056) #22 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1040 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.p, i8 0, i64 1040, i1 false)
  store i32 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1048 ; 2 uses
  store ptr null, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  store ptr %i.p, ptr %i.t, align 8
  %i.u = load ptr, ptr %1, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8              ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1036
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 1036
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = zext i32 %i.y to i64                    ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #22 ; 2 uses
  store ptr %i.ab, ptr %i.r, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1048
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.ad, i64 %i.aa, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 1032
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 1032
  store i32 %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 1028
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 1028
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = icmp eq ptr %i.p, %i.w
  br i1 %i.ak, label %_ZN8aiStringaSERKS_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr %i.w, align 8
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.al, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.p, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ao = zext nneg i32 %spec.select.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull align 4 %i.an, i64 %i.ao, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  store i8 0, ptr %i.ap, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %.lr.ph, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 1040
  %i.ar = load i32, ptr %i.aq, align 8
  store i32 %i.ar, ptr %i.q, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.k, align 8
  %i.at = zext i32 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %.lr.ph, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %_ZN8aiStringaSERKS_.exit, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP6aiMeshPKS1_(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #22 ; 34 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1272 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1312
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.j, i8 0, i64 1032, i1 false)
  store ptr %i.c, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.c, ptr noundef nonnull align 8 dereferenceable(1320) %1, i64 236, i1 false)
  %i.k = icmp eq ptr %i.c, %1
  br i1 %i.k, label %_ZN6aiMeshaSERKS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  %i.n = load i32, ptr %i.l, align 4
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.n, i32 1023) ; 2 uses
  store i32 %spec.select.i.i, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.q = zext nneg i32 %spec.select.i.i to i64    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.p, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store i8 0, ptr %i.r, align 1
  br label %_ZN6aiMeshaSERKS_.exit

_ZN6aiMeshaSERKS_.exit:                           ; preds = %bb.b, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1264 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 56, i1 false)
  %i.u = load i32, ptr %i.d, align 4              ; 45 uses
  %i.v = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6aiMeshaSERKS_.exit
  %i.w = zext i32 %i.u to i64
  %i.x = mul nuw nsw i64 %i.w, 12                 ; 4 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #22 ; 5 uses
  %i.z = icmp eq i32 %i.u, 0
  br i1 %i.z, label %bb.f, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.d
  %i.aa = add nsw i64 %i.x, -12
  %i.ab = urem i64 %i.aa, 12
  %i.ac = sub nsw i64 %i.x, %i.ab
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.ac, i1 false)
  store ptr %i.y, ptr %i.f, align 8
  %.not9.i = icmp eq i32 %i.u, 1
  br i1 %.not9.i, label %bb.g, label %bb.e, !prof !44

bb.e:                                             ; preds = %.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr nonnull align 4 %i.v, i64 %i.x, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit

bb.f:                                             ; preds = %bb.d
  store ptr %i.y, ptr %i.f, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit

bb.g:                                             ; preds = %.loopexit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %i.v, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZN6aiMeshaSERKS_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.not.i42 = icmp eq ptr %i.ae, null
  br i1 %.not.i42, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45, label %bb.h

bb.h:                                             ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit
  %i.af = zext i32 %i.u to i64
  %i.ag = mul nuw nsw i64 %i.af, 12               ; 4 uses
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #22 ; 5 uses
  %i.ai = icmp eq i32 %i.u, 0
  br i1 %i.ai, label %bb.j, label %.loopexit.i43

.loopexit.i43:                                    ; preds = %bb.h
  %i.aj = add nsw i64 %i.ag, -12
  %i.ak = urem i64 %i.aj, 12
  %i.al = sub nsw i64 %i.ag, %i.ak
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ah, i8 0, i64 %i.al, i1 false)
  store ptr %i.ah, ptr %i.ad, align 8
  %.not9.i44 = icmp eq i32 %i.u, 1
  br i1 %.not9.i44, label %bb.k, label %bb.i, !prof !44

bb.i:                                             ; preds = %.loopexit.i43
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr nonnull align 4 %i.ae, i64 %i.ag, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45

bb.j:                                             ; preds = %bb.h
  store ptr %i.ah, ptr %i.ad, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45

bb.k:                                             ; preds = %.loopexit.i43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45: ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit, %bb.i, %bb.j, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not.i46 = icmp eq ptr %i.an, null
  br i1 %.not.i46, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45
  %i.ao = zext i32 %i.u to i64
  %i.ap = mul nuw nsw i64 %i.ao, 12               ; 4 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #22 ; 5 uses
  %i.ar = icmp eq i32 %i.u, 0
  br i1 %i.ar, label %bb.n, label %.loopexit.i47

.loopexit.i47:                                    ; preds = %bb.l
  %i.as = add nsw i64 %i.ap, -12
  %i.at = urem i64 %i.as, 12
  %i.au = sub nsw i64 %i.ap, %i.at
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aq, i8 0, i64 %i.au, i1 false)
  store ptr %i.aq, ptr %i.am, align 8
  %.not9.i48 = icmp eq i32 %i.u, 1
  br i1 %.not9.i48, label %bb.o, label %bb.m, !prof !44

bb.m:                                             ; preds = %.loopexit.i47
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr nonnull align 4 %i.an, i64 %i.ap, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49

bb.n:                                             ; preds = %bb.l
  store ptr %i.aq, ptr %i.am, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49

bb.o:                                             ; preds = %.loopexit.i47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aq, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49: ; preds = %bb.m, %bb.n, %bb.o, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not.i50 = icmp eq ptr %i.aw, null
  br i1 %.not.i50, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53, label %bb.p

bb.p:                                             ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49
  %i.ax = zext i32 %i.u to i64
  %i.ay = mul nuw nsw i64 %i.ax, 12               ; 4 uses
  %i.az = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #22 ; 5 uses
  %i.ba = icmp eq i32 %i.u, 0
  br i1 %i.ba, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53.thread, label %.loopexit.i51

.loopexit.i51:                                    ; preds = %bb.p
  %i.bb = add nsw i64 %i.ay, -12
  %i.bc = urem i64 %i.bb, 12
  %i.bd = sub nsw i64 %i.ay, %i.bc
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.az, i8 0, i64 %i.bd, i1 false)
  store ptr %i.az, ptr %i.av, align 8
  %.not9.i52 = icmp eq i32 %i.u, 1
  br i1 %.not9.i52, label %bb.r, label %bb.q, !prof !44

bb.q:                                             ; preds = %.loopexit.i51
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.az, ptr nonnull align 4 %i.aw, i64 %i.ay, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53.thread: ; preds = %bb.p
  store ptr %i.az, ptr %i.av, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

bb.r:                                             ; preds = %.loopexit.i51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.az, ptr noundef nonnull align 4 dereferenceable(12) %i.aw, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53: ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49, %bb.q, %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %2 = load ptr, ptr %i.be, align 8               ; 3 uses
  %.not.i54 = icmp ne ptr %2, null
  %i.bf = icmp ne i32 %i.u, 0                     ; 11 uses
  %i.bg = select i1 %.not.i54, i1 %i.bf, i1 false
  br i1 %i.bg, label %.loopexit.i56, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader:   ; preds = %bb.ag, %bb.ah, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53.thread, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.6, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.5, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.4, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.3, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.2, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.1, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53
  %3 = phi i1 [ false, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53.thread ], [ %i.bf, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53 ], [ %i.bf, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.6 ], [ %i.bf, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.5 ], [ %i.bf, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.4 ], [ %i.bf, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.3 ], [ %i.bf, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.2 ], [ %i.bf, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.1 ], [ %i.bf, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58 ], [ %i.bf, %bb.ah ], [ %i.bf, %bb.ag ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %.not.i59 = icmp ne ptr %i.bi, null
  %i.bj = select i1 %.not.i59, i1 %3, i1 false
  br i1 %i.bj, label %.loopexit.i62, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

.loopexit.i56:                                    ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53
  %4 = zext i32 %i.u to i64
  %5 = mul nuw nsw i64 %4, 12                     ; 4 uses
  %i.bk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %5) #22 ; 4 uses
  %6 = add nsw i64 %5, -12
  %7 = urem i64 %6, 12
  %8 = sub nuw nsw i64 %5, %7
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bk, i8 0, i64 %8, i1 false)
  store ptr %i.bk, ptr %i.be, align 8
  %.not9.i57 = icmp eq i32 %i.u, 1
  br i1 %.not9.i57, label %bb.t, label %bb.s, !prof !44

bb.s:                                             ; preds = %.loopexit.i56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr nonnull align 4 %2, i64 %5, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58

bb.t:                                             ; preds = %.loopexit.i56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58: ; preds = %bb.s, %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %.not.i54.1.not = icmp eq ptr %i.bm, null
  br i1 %.not.i54.1.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.1

.loopexit.i56.1:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58
  %9 = zext i32 %i.u to i64
  %10 = mul nuw nsw i64 %9, 12                    ; 4 uses
  %i.bn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %10) #22 ; 4 uses
  %11 = add nsw i64 %10, -12
  %12 = urem i64 %11, 12
  %13 = sub nuw nsw i64 %10, %12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bn, i8 0, i64 %13, i1 false)
  store ptr %i.bn, ptr %i.bl, align 8
  %.not9.i57.1 = icmp eq i32 %i.u, 1
  br i1 %.not9.i57.1, label %bb.v, label %bb.u, !prof !44

bb.u:                                             ; preds = %.loopexit.i56.1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bn, ptr nonnull align 4 %i.bm, i64 %10, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.1

bb.v:                                             ; preds = %.loopexit.i56.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bn, ptr noundef nonnull align 4 dereferenceable(12) %i.bm, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.1

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.1: ; preds = %bb.v, %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %.not.i54.2.not = icmp eq ptr %i.bp, null
  br i1 %.not.i54.2.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.2

.loopexit.i56.2:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.1
  %14 = zext i32 %i.u to i64
  %15 = mul nuw nsw i64 %14, 12                   ; 4 uses
  %i.bq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %15) #22 ; 4 uses
  %16 = add nsw i64 %15, -12
  %17 = urem i64 %16, 12
  %18 = sub nuw nsw i64 %15, %17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bq, i8 0, i64 %18, i1 false)
  store ptr %i.bq, ptr %i.bo, align 8
  %.not9.i57.2 = icmp eq i32 %i.u, 1
  br i1 %.not9.i57.2, label %bb.x, label %bb.w, !prof !44

bb.w:                                             ; preds = %.loopexit.i56.2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bq, ptr nonnull align 4 %i.bp, i64 %15, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.2

bb.x:                                             ; preds = %.loopexit.i56.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %i.bp, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.2

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.2: ; preds = %bb.x, %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 3 uses
  %.not.i54.3.not = icmp eq ptr %i.bs, null
  br i1 %.not.i54.3.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.3

.loopexit.i56.3:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.2
  %19 = zext i32 %i.u to i64
  %20 = mul nuw nsw i64 %19, 12                   ; 4 uses
  %i.bt = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %20) #22 ; 4 uses
  %21 = add nsw i64 %20, -12
  %22 = urem i64 %21, 12
  %23 = sub nuw nsw i64 %20, %22
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bt, i8 0, i64 %23, i1 false)
  store ptr %i.bt, ptr %i.br, align 8
  %.not9.i57.3 = icmp eq i32 %i.u, 1
  br i1 %.not9.i57.3, label %bb.z, label %bb.y, !prof !44

bb.y:                                             ; preds = %.loopexit.i56.3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr nonnull align 4 %i.bs, i64 %20, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.3

bb.z:                                             ; preds = %.loopexit.i56.3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.bs, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.3

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.3: ; preds = %bb.z, %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  %.not.i54.4.not = icmp eq ptr %i.bv, null
  br i1 %.not.i54.4.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.4

.loopexit.i56.4:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.3
  %24 = zext i32 %i.u to i64
  %25 = mul nuw nsw i64 %24, 12                   ; 4 uses
  %i.bw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %25) #22 ; 4 uses
  %26 = add nsw i64 %25, -12
  %27 = urem i64 %26, 12
  %28 = sub nuw nsw i64 %25, %27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bw, i8 0, i64 %28, i1 false)
  store ptr %i.bw, ptr %i.bu, align 8
  %.not9.i57.4 = icmp eq i32 %i.u, 1
  br i1 %.not9.i57.4, label %bb.ab, label %bb.aa, !prof !44

bb.aa:                                            ; preds = %.loopexit.i56.4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr nonnull align 4 %i.bv, i64 %25, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.4

bb.ab:                                            ; preds = %.loopexit.i56.4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bw, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.4

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.4: ; preds = %bb.ab, %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 3 uses
  %.not.i54.5.not = icmp eq ptr %i.by, null
  br i1 %.not.i54.5.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.5

.loopexit.i56.5:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.4
  %29 = zext i32 %i.u to i64
  %30 = mul nuw nsw i64 %29, 12                   ; 4 uses
  %i.bz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %30) #22 ; 4 uses
  %31 = add nsw i64 %30, -12
  %32 = urem i64 %31, 12
  %33 = sub nuw nsw i64 %30, %32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bz, i8 0, i64 %33, i1 false)
  store ptr %i.bz, ptr %i.bx, align 8
  %.not9.i57.5 = icmp eq i32 %i.u, 1
  br i1 %.not9.i57.5, label %bb.ad, label %bb.ac, !prof !44

bb.ac:                                            ; preds = %.loopexit.i56.5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr nonnull align 4 %i.by, i64 %30, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.5

bb.ad:                                            ; preds = %.loopexit.i56.5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %i.by, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.5

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.5: ; preds = %bb.ad, %bb.ac
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %.not.i54.6.not = icmp eq ptr %i.cb, null
  br i1 %.not.i54.6.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.6

.loopexit.i56.6:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.5
  %34 = zext i32 %i.u to i64
  %35 = mul nuw nsw i64 %34, 12                   ; 4 uses
  %i.cc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %35) #22 ; 4 uses
  %36 = add nsw i64 %35, -12
  %37 = urem i64 %36, 12
  %38 = sub nuw nsw i64 %35, %37
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cc, i8 0, i64 %38, i1 false)
  store ptr %i.cc, ptr %i.ca, align 8
  %.not9.i57.6 = icmp eq i32 %i.u, 1
  br i1 %.not9.i57.6, label %bb.af, label %bb.ae, !prof !44

bb.ae:                                            ; preds = %.loopexit.i56.6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr nonnull align 4 %i.cb, i64 %35, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.6

bb.af:                                            ; preds = %.loopexit.i56.6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) %i.cb, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.6

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.6: ; preds = %bb.af, %bb.ae
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %.not.i54.7.not = icmp eq ptr %i.ce, null
  br i1 %.not.i54.7.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.7

.loopexit.i56.7:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.6
  %39 = zext i32 %i.u to i64
  %40 = mul nuw nsw i64 %39, 12                   ; 4 uses
  %i.cf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %40) #22 ; 4 uses
  %41 = add nsw i64 %40, -12
  %42 = urem i64 %41, 12
  %43 = sub nuw nsw i64 %40, %42
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cf, i8 0, i64 %43, i1 false)
  store ptr %i.cf, ptr %i.cd, align 8
  %.not9.i57.7 = icmp eq i32 %i.u, 1
  br i1 %.not9.i57.7, label %bb.ah, label %bb.ag, !prof !44

bb.ag:                                            ; preds = %.loopexit.i56.7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cf, ptr nonnull align 4 %i.ce, i64 %40, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

bb.ah:                                            ; preds = %.loopexit.i56.7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %i.ce, i64 12, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

.loopexit.i62:                                    ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader
  %i.cg = zext i32 %i.u to i64
  %i.ch = shl nuw nsw i64 %i.cg, 4                ; 3 uses
  %i.ci = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ch) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ci, i8 0, i64 %i.ch, i1 false)
  store ptr %i.ci, ptr %i.bh, align 8
  %.not9.i63 = icmp eq i32 %i.u, 1
  br i1 %.not9.i63, label %bb.aj, label %bb.ai, !prof !44

bb.ai:                                            ; preds = %.loopexit.i62
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ci, ptr nonnull align 4 %i.bi, i64 %i.ch, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit

bb.aj:                                            ; preds = %.loopexit.i62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ci, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit: ; preds = %bb.ai, %bb.aj
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %.not.i59.1.not = icmp eq ptr %i.ck, null
  br i1 %.not.i59.1.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.1

.loopexit.i62.1:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit
  %i.cl = zext i32 %i.u to i64
  %i.cm = shl nuw nsw i64 %i.cl, 4                ; 3 uses
  %i.cn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cn, i8 0, i64 %i.cm, i1 false)
  store ptr %i.cn, ptr %i.cj, align 8
  %.not9.i63.1 = icmp eq i32 %i.u, 1
  br i1 %.not9.i63.1, label %bb.al, label %bb.ak, !prof !44

bb.ak:                                            ; preds = %.loopexit.i62.1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr nonnull align 4 %i.ck, i64 %i.cm, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1

bb.al:                                            ; preds = %.loopexit.i62.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %i.ck, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1: ; preds = %bb.al, %bb.ak
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 3 uses
  %.not.i59.2.not = icmp eq ptr %i.cp, null
  br i1 %.not.i59.2.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.2

.loopexit.i62.2:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1
  %i.cq = zext i32 %i.u to i64
  %i.cr = shl nuw nsw i64 %i.cq, 4                ; 3 uses
  %i.cs = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cr) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cs, i8 0, i64 %i.cr, i1 false)
  store ptr %i.cs, ptr %i.co, align 8
  %.not9.i63.2 = icmp eq i32 %i.u, 1
  br i1 %.not9.i63.2, label %bb.an, label %bb.am, !prof !44

bb.am:                                            ; preds = %.loopexit.i62.2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr nonnull align 4 %i.cp, i64 %i.cr, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2

bb.an:                                            ; preds = %.loopexit.i62.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cs, ptr noundef nonnull align 4 dereferenceable(16) %i.cp, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2: ; preds = %bb.an, %bb.am
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 3 uses
  %.not.i59.3.not = icmp eq ptr %i.cu, null
  br i1 %.not.i59.3.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.3

.loopexit.i62.3:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2
  %i.cv = zext i32 %i.u to i64
  %i.cw = shl nuw nsw i64 %i.cv, 4                ; 3 uses
  %i.cx = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cw) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cx, i8 0, i64 %i.cw, i1 false)
  store ptr %i.cx, ptr %i.ct, align 8
  %.not9.i63.3 = icmp eq i32 %i.u, 1
  br i1 %.not9.i63.3, label %bb.ap, label %bb.ao, !prof !44

bb.ao:                                            ; preds = %.loopexit.i62.3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cx, ptr nonnull align 4 %i.cu, i64 %i.cw, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3

bb.ap:                                            ; preds = %.loopexit.i62.3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cx, ptr noundef nonnull align 4 dereferenceable(16) %i.cu, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3: ; preds = %bb.ap, %bb.ao
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 3 uses
  %.not.i59.4.not = icmp eq ptr %i.cz, null
  br i1 %.not.i59.4.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.4

.loopexit.i62.4:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3
  %i.da = zext i32 %i.u to i64
  %i.db = shl nuw nsw i64 %i.da, 4                ; 3 uses
  %i.dc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.db) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dc, i8 0, i64 %i.db, i1 false)
  store ptr %i.dc, ptr %i.cy, align 8
  %.not9.i63.4 = icmp eq i32 %i.u, 1
  br i1 %.not9.i63.4, label %bb.ar, label %bb.aq, !prof !44

bb.aq:                                            ; preds = %.loopexit.i62.4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dc, ptr nonnull align 4 %i.cz, i64 %i.db, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4

bb.ar:                                            ; preds = %.loopexit.i62.4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dc, ptr noundef nonnull align 4 dereferenceable(16) %i.cz, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4: ; preds = %bb.ar, %bb.aq
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not.i59.5.not = icmp eq ptr %i.de, null
  br i1 %.not.i59.5.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.5

.loopexit.i62.5:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4
  %i.df = zext i32 %i.u to i64
  %i.dg = shl nuw nsw i64 %i.df, 4                ; 3 uses
  %i.dh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dg) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dh, i8 0, i64 %i.dg, i1 false)
  store ptr %i.dh, ptr %i.dd, align 8
  %.not9.i63.5 = icmp eq i32 %i.u, 1
  br i1 %.not9.i63.5, label %bb.at, label %bb.as, !prof !44

bb.as:                                            ; preds = %.loopexit.i62.5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr nonnull align 4 %i.de, i64 %i.dg, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5

bb.at:                                            ; preds = %.loopexit.i62.5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dh, ptr noundef nonnull align 4 dereferenceable(16) %i.de, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5: ; preds = %bb.at, %bb.as
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8            ; 3 uses
  %.not.i59.6.not = icmp eq ptr %i.dj, null
  br i1 %.not.i59.6.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.6

.loopexit.i62.6:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5
  %i.dk = zext i32 %i.u to i64
  %i.dl = shl nuw nsw i64 %i.dk, 4                ; 3 uses
  %i.dm = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dl) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dm, i8 0, i64 %i.dl, i1 false)
  store ptr %i.dm, ptr %i.di, align 8
  %.not9.i63.6 = icmp eq i32 %i.u, 1
  br i1 %.not9.i63.6, label %bb.av, label %bb.au, !prof !44

bb.au:                                            ; preds = %.loopexit.i62.6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dm, ptr nonnull align 4 %i.dj, i64 %i.dl, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6

bb.av:                                            ; preds = %.loopexit.i62.6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dm, ptr noundef nonnull align 4 dereferenceable(16) %i.dj, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6: ; preds = %bb.av, %bb.au
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8            ; 3 uses
  %.not.i59.7.not = icmp eq ptr %i.do, null
  br i1 %.not.i59.7.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.7

.loopexit.i62.7:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6
  %i.dp = zext i32 %i.u to i64
  %i.dq = shl nuw nsw i64 %i.dp, 4                ; 3 uses
  %i.dr = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dq) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dr, i8 0, i64 %i.dq, i1 false)
  store ptr %i.dr, ptr %i.dn, align 8
  %.not9.i63.7 = icmp eq i32 %i.u, 1
  br i1 %.not9.i63.7, label %bb.ax, label %bb.aw, !prof !44

bb.aw:                                            ; preds = %.loopexit.i62.7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dr, ptr nonnull align 4 %i.do, i64 %i.dq, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.ax:                                            ; preds = %.loopexit.i62.7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dr, ptr noundef nonnull align 4 dereferenceable(16) %i.do, i64 16, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

_ZNK6aiMesh15HasVertexColorsEj.exit.thread:       ; preds = %bb.aw, %bb.ax, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit, %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader
  %i.ds = load ptr, ptr %i.g, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.du = load i32, ptr %i.dt, align 8            ; 2 uses
  %.not.i64 = icmp eq i32 %i.du, 0
  br i1 %.not.i64, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.thread
  store ptr null, ptr %i.g, align 8
  br label %_ZN6Assimp12CopyPtrArrayI6aiBoneEEvRPPT_PKPKS2_j.exit

bb.az:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.thread
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #22
  store ptr %i.dx, ptr %i.g, align 8
end_hunk_0
begin_hunk_1_@_ZN10aiMetadataC2ERKS_:bb.a
  store i8 0, ptr %i.ds, align 1
  %i.dt = load ptr, ptr %i.c, align 8
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %.05981
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dp, ptr %i.dv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.y

bb.l:                                             ; preds = %bb.d
  %i.dw = trunc nuw i64 %.05981 to i32
  %i.dx = load i32, ptr %1, align 8
  %.not.i64 = icmp ugt i32 %i.dx, %i.dw
  br i1 %.not.i64, label %bb.m, label %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbjRT_.exit

bb.m:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8            ; 2 uses
  %i.ea = load <2 x float>, ptr %i.dz, align 4
  %.sroa.6.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.6.0.copyload74 = load float, ptr %.sroa.6.0..sroa_idx73, align 4
  br label %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbjRT_.exit

_ZNK10aiMetadata3GetI10aiVector3tIfEEEbjRT_.exit: ; preds = %bb.l, %bb.m
  %.sroa.6.0 = phi float [ %.sroa.6.0.copyload74, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.eb = phi <2 x float> [ %i.ea, %bb.m ], [ zeroinitializer, %bb.l ]
  %i.ec = call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #22 ; 3 uses
  store <2 x float> %i.eb, ptr %i.ec, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store float %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ed = load ptr, ptr %i.c, align 8
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %.05981
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ec, ptr %i.ef, align 8
  br label %bb.y

bb.n:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 0, ptr %4, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.eg = trunc nuw i64 %.05981 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.eh = load i32, ptr %1, align 8
  %.not.i67 = icmp ugt i32 %i.eh, %i.eg
  br i1 %.not.i67, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ei = load i32, ptr %i.bt, align 8
  %.not7.i69 = icmp eq i32 %i.ei, 7
  br i1 %.not7.i69, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  invoke void @_ZN10aiMetadataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ek)
          to label %.noexc unwind label %bb.t, !inline_history !116

.noexc:                                           ; preds = %bb.p
  %i.el = load i32, ptr %4, align 8
  %i.em = load i32, ptr %2, align 8
  store i32 %i.em, ptr %4, align 8
  store i32 %i.el, ptr %2, align 8
  %i.en = load <2 x ptr>, ptr %i.bl, align 8
  %i.eo = load <2 x ptr>, ptr %i.bk, align 8
  store <2 x ptr> %i.en, ptr %i.bk, align 8
  store <2 x ptr> %i.eo, ptr %i.bl, align 8
  call void @_ZN10aiMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23, !inline_history !116
  br label %bb.q

bb.q:                                             ; preds = %.noexc, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ep = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.r unwind label %bb.t       ; 3 uses

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN10aiMetadataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.eq = load ptr, ptr %i.c, align 8
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %.05981
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.ep, ptr %i.es, align 8
  call void @_ZN10aiMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.y

bb.t:                                             ; preds = %bb.p, %bb.q
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 24) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.u ], [ %i.et, %bb.t ]
  call void @_ZN10aiMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.d
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  %.0.copyload1 = load i64, ptr %i.ew, align 1
  %i.ex = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 2 uses
  store i64 %.0.copyload1, ptr %i.ex, align 8
  %i.ey = load ptr, ptr %i.c, align 8
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %.05981
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.ex, ptr %i.fa, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.d
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  %.0.copyload = load i32, ptr %i.fc, align 1
  %i.fd = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22 ; 2 uses
  store i32 %.0.copyload, ptr %i.fd, align 4
  %i.fe = load ptr, ptr %i.c, align 8
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %.05981
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.fd, ptr %i.fg, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %_ZNK10aiMetadata3GetI8aiStringEEbjRT_.exit, %_ZNK10aiMetadata3GetI10aiVector3tIfEEEbjRT_.exit, %bb.s, %bb.w, %bb.x, %bb.d
  %i.fh = add nuw nsw i64 %.05981, 1              ; 2 uses
  %i.fi = load i32, ptr %0, align 8
  %i.fj = zext i32 %i.fi to i64
  %i.fk = icmp samesign ult i64 %i.fh, %i.fj
  br i1 %i.fk, label %bb.d, label %._crit_edge84, !llvm.loop !117
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP8aiStringPKS1_(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN8aiStringaSERKS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #22 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %i.c, i8 0, i64 1028, i1 false)
  store ptr %i.c, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %_ZN8aiStringaSERKS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = zext nneg i32 %spec.select.i to i64      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull align 4 %i.g, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  store i8 0, ptr %i.i, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP10aiAnimMeshPKS1_(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1200) ptr @_Znwm(i64 noundef 1200) #22 ; 26 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1200) %i.c, i8 0, i64 1028, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1032 ; 4 uses
  store ptr %i.c, ptr %0, align 8
  %i.e = icmp eq ptr %i.c, %1
  br i1 %i.e, label %_ZN10aiAnimMeshaSERKS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 4
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.f, i32 1023) ; 2 uses
  store i32 %spec.select.i.i, ptr %i.c, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = zext nneg i32 %spec.select.i.i to i64    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr nonnull align 4 %i.h, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  store i8 0, ptr %i.j, align 1
  br label %_ZN10aiAnimMeshaSERKS_.exit

_ZN10aiAnimMeshaSERKS_.exit:                      ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1032
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.d, ptr noundef nonnull align 8 dereferenceable(168) %i.k, i64 168, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1192
  %i.m = load i32, ptr %i.l, align 8              ; 60 uses
  %i.n = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit, label %bb.d

bb.d:                                             ; preds = %_ZN10aiAnimMeshaSERKS_.exit
  %i.o = zext i32 %i.m to i64
  %i.p = mul nuw nsw i64 %i.o, 12                 ; 4 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #22 ; 5 uses
  %i.r = icmp eq i32 %i.m, 0
  br i1 %i.r, label %bb.f, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.d
  %i.s = add nsw i64 %i.p, -12
  %i.t = urem i64 %i.s, 12
  %i.u = sub nsw i64 %i.p, %i.t
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 0, i64 %i.u, i1 false)
  store ptr %i.q, ptr %i.d, align 8
  %.not9.i = icmp eq i32 %i.m, 1
  br i1 %.not9.i, label %bb.g, label %bb.e, !prof !44

bb.e:                                             ; preds = %.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.n, i64 %i.p, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit

bb.f:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.d, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit

bb.g:                                             ; preds = %.loopexit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %i.n, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZN10aiAnimMeshaSERKS_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1040 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i25 = icmp eq ptr %i.w, null
  br i1 %.not.i25, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit28, label %bb.h

bb.h:                                             ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit
  %i.x = zext i32 %i.m to i64
  %i.y = mul nuw nsw i64 %i.x, 12                 ; 4 uses
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #22 ; 5 uses
  %i.aa = icmp eq i32 %i.m, 0
  br i1 %i.aa, label %bb.j, label %.loopexit.i26

.loopexit.i26:                                    ; preds = %bb.h
  %i.ab = add nsw i64 %i.y, -12
  %i.ac = urem i64 %i.ab, 12
  %i.ad = sub nsw i64 %i.y, %i.ac
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 0, i64 %i.ad, i1 false)
  store ptr %i.z, ptr %i.v, align 8
  %.not9.i27 = icmp eq i32 %i.m, 1
  br i1 %.not9.i27, label %bb.k, label %bb.i, !prof !44

bb.i:                                             ; preds = %.loopexit.i26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr nonnull align 4 %i.w, i64 %i.y, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit28

bb.j:                                             ; preds = %bb.h
  store ptr %i.z, ptr %i.v, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit28

bb.k:                                             ; preds = %.loopexit.i26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.z, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit28

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit28: ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit, %bb.i, %bb.j, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 1048 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not.i29 = icmp eq ptr %i.af, null
  br i1 %.not.i29, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit32, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit28
  %i.ag = zext i32 %i.m to i64
  %i.ah = mul nuw nsw i64 %i.ag, 12               ; 4 uses
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #22 ; 5 uses
  %i.aj = icmp eq i32 %i.m, 0
  br i1 %i.aj, label %bb.n, label %.loopexit.i30

.loopexit.i30:                                    ; preds = %bb.l
  %i.ak = add nsw i64 %i.ah, -12
  %i.al = urem i64 %i.ak, 12
  %i.am = sub nsw i64 %i.ah, %i.al
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.am, i1 false)
  store ptr %i.ai, ptr %i.ae, align 8
  %.not9.i31 = icmp eq i32 %i.m, 1
  br i1 %.not9.i31, label %bb.o, label %bb.m, !prof !44

bb.m:                                             ; preds = %.loopexit.i30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %i.af, i64 %i.ah, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit32

bb.n:                                             ; preds = %bb.l
  store ptr %i.ai, ptr %i.ae, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit32

bb.o:                                             ; preds = %.loopexit.i30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %i.af, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit32

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit32: ; preds = %bb.m, %bb.n, %bb.o, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit28
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 1056 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %.not.i33 = icmp eq ptr %i.ao, null
  br i1 %.not.i33, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit36, label %bb.p

bb.p:                                             ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit32
  %i.ap = zext i32 %i.m to i64
  %i.aq = mul nuw nsw i64 %i.ap, 12               ; 4 uses
  %i.ar = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #22 ; 5 uses
  %i.as = icmp eq i32 %i.m, 0
  br i1 %i.as, label %bb.r, label %.loopexit.i34

.loopexit.i34:                                    ; preds = %bb.p
  %i.at = add nsw i64 %i.aq, -12
  %i.au = urem i64 %i.at, 12
  %i.av = sub nsw i64 %i.aq, %i.au
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ar, i8 0, i64 %i.av, i1 false)
  store ptr %i.ar, ptr %i.an, align 8
  %.not9.i35 = icmp eq i32 %i.m, 1
  br i1 %.not9.i35, label %bb.s, label %bb.q, !prof !44

bb.q:                                             ; preds = %.loopexit.i34
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %i.ao, i64 %i.aq, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit36

bb.r:                                             ; preds = %bb.p
  store ptr %i.ar, ptr %i.an, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit36

bb.s:                                             ; preds = %.loopexit.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ar, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit36

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit36: ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit32, %bb.q, %bb.r, %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 1128 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader, label %bb.t

_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader: ; preds = %bb.aw, %bb.ax, %bb.ay, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.6, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.5, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.4, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.3, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.2, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.1, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 1064 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %.not45 = icmp eq ptr %i.az, null
  br i1 %.not45, label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread, label %bb.az

bb.t:                                             ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit36
  %i.ba = zext i32 %i.m to i64
  %i.bb = mul nuw nsw i64 %i.ba, 12               ; 4 uses
  %i.bc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #22 ; 5 uses
  %i.bd = icmp eq i32 %i.m, 0
  br i1 %i.bd, label %bb.v, label %.loopexit.i38

.loopexit.i38:                                    ; preds = %bb.t
  %i.be = add nsw i64 %i.bb, -12
  %i.bf = urem i64 %i.be, 12
  %i.bg = sub nsw i64 %i.bb, %i.bf
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bc, i8 0, i64 %i.bg, i1 false)
  store ptr %i.bc, ptr %i.aw, align 8
  %.not9.i39 = icmp eq i32 %i.m, 1
  br i1 %.not9.i39, label %bb.w, label %bb.u, !prof !44

bb.u:                                             ; preds = %.loopexit.i38
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr nonnull align 4 %i.ax, i64 %i.bb, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40

bb.v:                                             ; preds = %bb.t
  store ptr %i.bc, ptr %i.aw, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40

bb.w:                                             ; preds = %.loopexit.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bc, ptr noundef nonnull align 4 dereferenceable(12) %i.ax, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40: ; preds = %bb.u, %bb.v, %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 1136 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %.not.1 = icmp eq ptr %i.bi, null
  br i1 %.not.1, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader, label %bb.x

bb.x:                                             ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40
  %i.bj = zext i32 %i.m to i64
  %i.bk = mul nuw nsw i64 %i.bj, 12               ; 4 uses
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #22 ; 5 uses
  %i.bm = icmp eq i32 %i.m, 0
  br i1 %i.bm, label %bb.aa, label %.loopexit.i38.1

.loopexit.i38.1:                                  ; preds = %bb.x
  %i.bn = add nsw i64 %i.bk, -12
  %i.bo = urem i64 %i.bn, 12
  %i.bp = sub nsw i64 %i.bk, %i.bo
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bl, i8 0, i64 %i.bp, i1 false)
  store ptr %i.bl, ptr %i.bh, align 8
  %.not9.i39.1 = icmp eq i32 %i.m, 1
  br i1 %.not9.i39.1, label %bb.z, label %bb.y, !prof !44

bb.y:                                             ; preds = %.loopexit.i38.1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bl, ptr nonnull align 4 %i.bi, i64 %i.bk, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.1

bb.z:                                             ; preds = %.loopexit.i38.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %i.bi, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.1

bb.aa:                                            ; preds = %bb.x
  store ptr %i.bl, ptr %i.bh, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.1

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.1: ; preds = %bb.aa, %bb.z, %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 1144 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 3 uses
  %.not.2 = icmp eq ptr %i.br, null
  br i1 %.not.2, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader, label %bb.ab

bb.ab:                                            ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.1
  %i.bs = zext i32 %i.m to i64
  %i.bt = mul nuw nsw i64 %i.bs, 12               ; 4 uses
  %i.bu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #22 ; 5 uses
  %i.bv = icmp eq i32 %i.m, 0
  br i1 %i.bv, label %bb.ae, label %.loopexit.i38.2

.loopexit.i38.2:                                  ; preds = %bb.ab
  %i.bw = add nsw i64 %i.bt, -12
  %i.bx = urem i64 %i.bw, 12
  %i.by = sub nsw i64 %i.bt, %i.bx
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bu, i8 0, i64 %i.by, i1 false)
  store ptr %i.bu, ptr %i.bq, align 8
  %.not9.i39.2 = icmp eq i32 %i.m, 1
  br i1 %.not9.i39.2, label %bb.ad, label %bb.ac, !prof !44

bb.ac:                                            ; preds = %.loopexit.i38.2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr nonnull align 4 %i.br, i64 %i.bt, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.2

bb.ad:                                            ; preds = %.loopexit.i38.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bu, ptr noundef nonnull align 4 dereferenceable(12) %i.br, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.2

bb.ae:                                            ; preds = %bb.ab
  store ptr %i.bu, ptr %i.bq, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.2

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.2: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 1152 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 3 uses
  %.not.3 = icmp eq ptr %i.ca, null
  br i1 %.not.3, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader, label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.2
  %i.cb = zext i32 %i.m to i64
  %i.cc = mul nuw nsw i64 %i.cb, 12               ; 4 uses
  %i.cd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cc) #22 ; 5 uses
  %i.ce = icmp eq i32 %i.m, 0
  br i1 %i.ce, label %bb.ai, label %.loopexit.i38.3

.loopexit.i38.3:                                  ; preds = %bb.af
  %i.cf = add nsw i64 %i.cc, -12
  %i.cg = urem i64 %i.cf, 12
  %i.ch = sub nsw i64 %i.cc, %i.cg
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cd, i8 0, i64 %i.ch, i1 false)
  store ptr %i.cd, ptr %i.bz, align 8
  %.not9.i39.3 = icmp eq i32 %i.m, 1
  br i1 %.not9.i39.3, label %bb.ah, label %bb.ag, !prof !44

bb.ag:                                            ; preds = %.loopexit.i38.3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cd, ptr nonnull align 4 %i.ca, i64 %i.cc, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.3

bb.ah:                                            ; preds = %.loopexit.i38.3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.ca, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.3

bb.ai:                                            ; preds = %bb.af
  store ptr %i.cd, ptr %i.bz, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.3

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.3: ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 1160 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 3 uses
  %.not.4 = icmp eq ptr %i.cj, null
  br i1 %.not.4, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader, label %bb.aj

bb.aj:                                            ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.3
  %i.ck = zext i32 %i.m to i64
  %i.cl = mul nuw nsw i64 %i.ck, 12               ; 4 uses
  %i.cm = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cl) #22 ; 5 uses
  %i.cn = icmp eq i32 %i.m, 0
  br i1 %i.cn, label %bb.am, label %.loopexit.i38.4

.loopexit.i38.4:                                  ; preds = %bb.aj
  %i.co = add nsw i64 %i.cl, -12
  %i.cp = urem i64 %i.co, 12
  %i.cq = sub nsw i64 %i.cl, %i.cp
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cm, i8 0, i64 %i.cq, i1 false)
  store ptr %i.cm, ptr %i.ci, align 8
  %.not9.i39.4 = icmp eq i32 %i.m, 1
  br i1 %.not9.i39.4, label %bb.al, label %bb.ak, !prof !44

bb.ak:                                            ; preds = %.loopexit.i38.4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr nonnull align 4 %i.cj, i64 %i.cl, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.4

bb.al:                                            ; preds = %.loopexit.i38.4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %i.cj, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.4

bb.am:                                            ; preds = %bb.aj
  store ptr %i.cm, ptr %i.ci, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.4

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.4: ; preds = %bb.am, %bb.al, %bb.ak
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 1168 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %.not.5 = icmp eq ptr %i.cs, null
  br i1 %.not.5, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader, label %bb.an

bb.an:                                            ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.4
  %i.ct = zext i32 %i.m to i64
  %i.cu = mul nuw nsw i64 %i.ct, 12               ; 4 uses
  %i.cv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #22 ; 5 uses
  %i.cw = icmp eq i32 %i.m, 0
  br i1 %i.cw, label %bb.aq, label %.loopexit.i38.5

.loopexit.i38.5:                                  ; preds = %bb.an
  %i.cx = add nsw i64 %i.cu, -12
  %i.cy = urem i64 %i.cx, 12
  %i.cz = sub nsw i64 %i.cu, %i.cy
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cv, i8 0, i64 %i.cz, i1 false)
  store ptr %i.cv, ptr %i.cr, align 8
  %.not9.i39.5 = icmp eq i32 %i.m, 1
  br i1 %.not9.i39.5, label %bb.ap, label %bb.ao, !prof !44

bb.ao:                                            ; preds = %.loopexit.i38.5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cv, ptr nonnull align 4 %i.cs, i64 %i.cu, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.5

bb.ap:                                            ; preds = %.loopexit.i38.5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cv, ptr noundef nonnull align 4 dereferenceable(12) %i.cs, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.5

bb.aq:                                            ; preds = %bb.an
  store ptr %i.cv, ptr %i.cr, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.5

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.5: ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 1176 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8            ; 3 uses
  %.not.6 = icmp eq ptr %i.db, null
  br i1 %.not.6, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader, label %bb.ar

bb.ar:                                            ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.5
  %i.dc = zext i32 %i.m to i64
  %i.dd = mul nuw nsw i64 %i.dc, 12               ; 4 uses
  %i.de = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dd) #22 ; 5 uses
  %i.df = icmp eq i32 %i.m, 0
  br i1 %i.df, label %bb.au, label %.loopexit.i38.6

.loopexit.i38.6:                                  ; preds = %bb.ar
  %i.dg = add nsw i64 %i.dd, -12
  %i.dh = urem i64 %i.dg, 12
  %i.di = sub nsw i64 %i.dd, %i.dh
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.de, i8 0, i64 %i.di, i1 false)
  store ptr %i.de, ptr %i.da, align 8
  %.not9.i39.6 = icmp eq i32 %i.m, 1
  br i1 %.not9.i39.6, label %bb.at, label %bb.as, !prof !44

bb.as:                                            ; preds = %.loopexit.i38.6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.de, ptr nonnull align 4 %i.db, i64 %i.dd, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.6

bb.at:                                            ; preds = %.loopexit.i38.6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.de, ptr noundef nonnull align 4 dereferenceable(12) %i.db, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.6

bb.au:                                            ; preds = %bb.ar
  store ptr %i.de, ptr %i.da, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.6

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.6: ; preds = %bb.au, %bb.at, %bb.as
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 1184 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8            ; 3 uses
  %.not.7 = icmp eq ptr %i.dk, null
  br i1 %.not.7, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader, label %bb.av

bb.av:                                            ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit40.6
  %i.dl = zext i32 %i.m to i64
  %i.dm = mul nuw nsw i64 %i.dl, 12               ; 4 uses
  %i.dn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #22 ; 5 uses
  %i.do = icmp eq i32 %i.m, 0
  br i1 %i.do, label %bb.ay, label %.loopexit.i38.7

.loopexit.i38.7:                                  ; preds = %bb.av
  %i.dp = add nsw i64 %i.dm, -12
  %i.dq = urem i64 %i.dp, 12
  %i.dr = sub nsw i64 %i.dm, %i.dq
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dn, i8 0, i64 %i.dr, i1 false)
  store ptr %i.dn, ptr %i.dj, align 8
  %.not9.i39.7 = icmp eq i32 %i.m, 1
  br i1 %.not9.i39.7, label %bb.ax, label %bb.aw, !prof !44

bb.aw:                                            ; preds = %.loopexit.i38.7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dn, ptr nonnull align 4 %i.dk, i64 %i.dm, i1 false)
  br label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader

bb.ax:                                            ; preds = %.loopexit.i38.7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dn, ptr noundef nonnull align 4 dereferenceable(12) %i.dk, i64 12, i1 false)
  br label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader

bb.ay:                                            ; preds = %bb.av
  store ptr %i.dn, ptr %i.dj, align 8
  br label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader

bb.az:                                            ; preds = %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader
  %i.ds = zext i32 %i.m to i64
  %i.dt = shl nuw nsw i64 %i.ds, 4                ; 3 uses
  %i.du = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #22 ; 5 uses
  %i.dv = icmp eq i32 %i.m, 0
  br i1 %i.dv, label %bb.bb, label %.loopexit.i42

.loopexit.i42:                                    ; preds = %bb.az
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.du, i8 0, i64 %i.dt, i1 false)
  store ptr %i.du, ptr %i.ay, align 8
  %.not9.i43 = icmp eq i32 %i.m, 1
  br i1 %.not9.i43, label %bb.bc, label %bb.ba, !prof !44

bb.ba:                                            ; preds = %.loopexit.i42
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr nonnull align 4 %i.az, i64 %i.dt, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit

bb.bb:                                            ; preds = %bb.az
  store ptr %i.du, ptr %i.ay, align 8
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit

bb.bc:                                            ; preds = %.loopexit.i42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.du, ptr noundef nonnull align 4 dereferenceable(16) %i.az, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit: ; preds = %bb.ba, %bb.bb, %bb.bc
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 1072 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8            ; 3 uses
  %.not45.1 = icmp eq ptr %i.dx, null
  br i1 %.not45.1, label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit
  %i.dy = zext i32 %i.m to i64
  %i.dz = shl nuw nsw i64 %i.dy, 4                ; 3 uses
  %i.ea = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #22 ; 5 uses
  %i.eb = icmp eq i32 %i.m, 0
  br i1 %i.eb, label %bb.bg, label %.loopexit.i42.1

.loopexit.i42.1:                                  ; preds = %bb.bd
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ea, i8 0, i64 %i.dz, i1 false)
  store ptr %i.ea, ptr %i.dw, align 8
  %.not9.i43.1 = icmp eq i32 %i.m, 1
  br i1 %.not9.i43.1, label %bb.bf, label %bb.be, !prof !44

bb.be:                                            ; preds = %.loopexit.i42.1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr nonnull align 4 %i.dx, i64 %i.dz, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1

bb.bf:                                            ; preds = %.loopexit.i42.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ea, ptr noundef nonnull align 4 dereferenceable(16) %i.dx, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1

bb.bg:                                            ; preds = %bb.bd
  store ptr %i.ea, ptr %i.dw, align 8
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 1080 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 3 uses
  %.not45.2 = icmp eq ptr %i.ed, null
  br i1 %.not45.2, label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1
  %i.ee = zext i32 %i.m to i64
  %i.ef = shl nuw nsw i64 %i.ee, 4                ; 3 uses
  %i.eg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ef) #22 ; 5 uses
  %i.eh = icmp eq i32 %i.m, 0
  br i1 %i.eh, label %bb.bk, label %.loopexit.i42.2

.loopexit.i42.2:                                  ; preds = %bb.bh
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.eg, i8 0, i64 %i.ef, i1 false)
  store ptr %i.eg, ptr %i.ec, align 8
  %.not9.i43.2 = icmp eq i32 %i.m, 1
  br i1 %.not9.i43.2, label %bb.bj, label %bb.bi, !prof !44

bb.bi:                                            ; preds = %.loopexit.i42.2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eg, ptr nonnull align 4 %i.ed, i64 %i.ef, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2

bb.bj:                                            ; preds = %.loopexit.i42.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.eg, ptr noundef nonnull align 4 dereferenceable(16) %i.ed, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2

bb.bk:                                            ; preds = %bb.bh
  store ptr %i.eg, ptr %i.ec, align 8
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2: ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 1088 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8            ; 3 uses
  %.not45.3 = icmp eq ptr %i.ej, null
  br i1 %.not45.3, label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2
  %i.ek = zext i32 %i.m to i64
  %i.el = shl nuw nsw i64 %i.ek, 4                ; 3 uses
  %i.em = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.el) #22 ; 5 uses
  %i.en = icmp eq i32 %i.m, 0
  br i1 %i.en, label %bb.bo, label %.loopexit.i42.3

.loopexit.i42.3:                                  ; preds = %bb.bl
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.em, i8 0, i64 %i.el, i1 false)
  store ptr %i.em, ptr %i.ei, align 8
  %.not9.i43.3 = icmp eq i32 %i.m, 1
  br i1 %.not9.i43.3, label %bb.bn, label %bb.bm, !prof !44

bb.bm:                                            ; preds = %.loopexit.i42.3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.em, ptr nonnull align 4 %i.ej, i64 %i.el, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3

bb.bn:                                            ; preds = %.loopexit.i42.3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.em, ptr noundef nonnull align 4 dereferenceable(16) %i.ej, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3

bb.bo:                                            ; preds = %bb.bl
  store ptr %i.em, ptr %i.ei, align 8
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3: ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 1096 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8            ; 3 uses
  %.not45.4 = icmp eq ptr %i.ep, null
  br i1 %.not45.4, label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3
  %i.eq = zext i32 %i.m to i64
  %i.er = shl nuw nsw i64 %i.eq, 4                ; 3 uses
  %i.es = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.er) #22 ; 5 uses
  %i.et = icmp eq i32 %i.m, 0
  br i1 %i.et, label %bb.bs, label %.loopexit.i42.4

.loopexit.i42.4:                                  ; preds = %bb.bp
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.es, i8 0, i64 %i.er, i1 false)
  store ptr %i.es, ptr %i.eo, align 8
  %.not9.i43.4 = icmp eq i32 %i.m, 1
  br i1 %.not9.i43.4, label %bb.br, label %bb.bq, !prof !44

bb.bq:                                            ; preds = %.loopexit.i42.4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.es, ptr nonnull align 4 %i.ep, i64 %i.er, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4

bb.br:                                            ; preds = %.loopexit.i42.4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.es, ptr noundef nonnull align 4 dereferenceable(16) %i.ep, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4

bb.bs:                                            ; preds = %bb.bp
  store ptr %i.es, ptr %i.eo, align 8
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4: ; preds = %bb.bs, %bb.br, %bb.bq
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 1104 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8            ; 3 uses
  %.not45.5 = icmp eq ptr %i.ev, null
  br i1 %.not45.5, label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4
  %i.ew = zext i32 %i.m to i64
  %i.ex = shl nuw nsw i64 %i.ew, 4                ; 3 uses
  %i.ey = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ex) #22 ; 5 uses
  %i.ez = icmp eq i32 %i.m, 0
  br i1 %i.ez, label %bb.bw, label %.loopexit.i42.5

.loopexit.i42.5:                                  ; preds = %bb.bt
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ey, i8 0, i64 %i.ex, i1 false)
  store ptr %i.ey, ptr %i.eu, align 8
  %.not9.i43.5 = icmp eq i32 %i.m, 1
  br i1 %.not9.i43.5, label %bb.bv, label %bb.bu, !prof !44

bb.bu:                                            ; preds = %.loopexit.i42.5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ey, ptr nonnull align 4 %i.ev, i64 %i.ex, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5

bb.bv:                                            ; preds = %.loopexit.i42.5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ey, ptr noundef nonnull align 4 dereferenceable(16) %i.ev, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5

bb.bw:                                            ; preds = %bb.bt
  store ptr %i.ey, ptr %i.eu, align 8
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5: ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 1112 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8            ; 3 uses
  %.not45.6 = icmp eq ptr %i.fb, null
  br i1 %.not45.6, label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5
  %i.fc = zext i32 %i.m to i64
  %i.fd = shl nuw nsw i64 %i.fc, 4                ; 3 uses
  %i.fe = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fd) #22 ; 5 uses
  %i.ff = icmp eq i32 %i.m, 0
  br i1 %i.ff, label %bb.ca, label %.loopexit.i42.6

.loopexit.i42.6:                                  ; preds = %bb.bx
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fe, i8 0, i64 %i.fd, i1 false)
  store ptr %i.fe, ptr %i.fa, align 8
  %.not9.i43.6 = icmp eq i32 %i.m, 1
  br i1 %.not9.i43.6, label %bb.bz, label %bb.by, !prof !44

bb.by:                                            ; preds = %.loopexit.i42.6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fe, ptr nonnull align 4 %i.fb, i64 %i.fd, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6

bb.bz:                                            ; preds = %.loopexit.i42.6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fe, ptr noundef nonnull align 4 dereferenceable(16) %i.fb, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6

bb.ca:                                            ; preds = %bb.bx
  store ptr %i.fe, ptr %i.fa, align 8
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6: ; preds = %bb.ca, %bb.bz, %bb.by
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 1120 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8            ; 3 uses
  %.not45.7 = icmp eq ptr %i.fh, null
  br i1 %.not45.7, label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6
  %i.fi = zext i32 %i.m to i64
  %i.fj = shl nuw nsw i64 %i.fi, 4                ; 3 uses
  %i.fk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fj) #22 ; 5 uses
  %i.fl = icmp eq i32 %i.m, 0
  br i1 %i.fl, label %bb.ce, label %.loopexit.i42.7

.loopexit.i42.7:                                  ; preds = %bb.cb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fk, i8 0, i64 %i.fj, i1 false)
  store ptr %i.fk, ptr %i.fg, align 8
  %.not9.i43.7 = icmp eq i32 %i.m, 1
  br i1 %.not9.i43.7, label %bb.cd, label %bb.cc, !prof !44

bb.cc:                                            ; preds = %.loopexit.i42.7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fk, ptr nonnull align 4 %i.fh, i64 %i.fj, i1 false)
  br label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread

bb.cd:                                            ; preds = %.loopexit.i42.7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fk, ptr noundef nonnull align 4 dereferenceable(16) %i.fh, i64 16, i1 false)
  br label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread

bb.ce:                                            ; preds = %bb.cb
  store ptr %i.fk, ptr %i.fg, align 8
  br label %_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread

_ZNK10aiAnimMesh15HasVertexColorsEj.exit.thread:  ; preds = %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.preheader, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6, %bb.ce, %bb.cd, %bb.cc, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP10aiNodeAnimPKS1_(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN6Assimp12GetArrayCopyI9aiQuatKeyEEvRPT_j.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #22 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1048 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1056
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1064 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.c, i8 0, i64 1032, i1 false)
  store ptr %i.c, ptr %0, align 8
  %i.g = icmp eq ptr %i.c, %1
  br i1 %i.g, label %_ZN10aiNodeAnimaSERKS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %1, align 4
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 1023) ; 2 uses
  store i32 %spec.select.i.i, ptr %i.c, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = zext nneg i32 %spec.select.i.i to i64    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %i.j, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  store i8 0, ptr %i.l, align 1
  br label %_ZN10aiNodeAnimaSERKS_.exit

_ZN10aiNodeAnimaSERKS_.exit:                      ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1028 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1028
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.m, ptr noundef nonnull align 4 dereferenceable(52) %i.n, i64 52, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1032 ; 3 uses
  %i.p = load i32, ptr %i.m, align 4              ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit, label %bb.d

bb.d:                                             ; preds = %_ZN10aiNodeAnimaSERKS_.exit
  %i.r = zext i32 %i.p to i64                     ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #22 ; 6 uses
  %i.u = icmp eq i32 %i.p, 0
  br i1 %i.u, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.r
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.w = phi ptr [ %i.t, %bb.e ], [ %i.y, %bb.f ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.v
  br i1 %i.z, label %.loopexit.i, label %bb.f

.loopexit.i:                                      ; preds = %bb.f
  store ptr %i.t, ptr %i.o, align 8
  %.not9.i = icmp eq i32 %i.p, 1
  br i1 %.not9.i, label %bb.i, label %bb.g, !prof !44

bb.g:                                             ; preds = %.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit

bb.h:                                             ; preds = %bb.d
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit

bb.i:                                             ; preds = %.loopexit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit

_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit: ; preds = %_ZN10aiNodeAnimaSERKS_.exit, %bb.g, %bb.h, %bb.i
  %i.aa = load i32, ptr %i.e, align 8             ; 3 uses
  %i.ab = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i13 = icmp eq ptr %i.ab, null
  br i1 %.not.i13, label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16, label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit
  %i.ac = zext i32 %i.aa to i64                   ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24               ; 2 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #22 ; 6 uses
  %i.af = icmp eq i32 %i.aa, 0
  br i1 %i.af, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ac
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = phi ptr [ %i.ae, %bb.k ], [ %i.aj, %bb.l ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ag
  br i1 %i.ak, label %.loopexit.i14, label %bb.l

.loopexit.i14:                                    ; preds = %bb.l
  store ptr %i.ae, ptr %i.f, align 8
  %.not9.i15 = icmp eq i32 %i.aa, 1
  br i1 %.not9.i15, label %bb.o, label %bb.m, !prof !44

bb.m:                                             ; preds = %.loopexit.i14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ab, i64 %i.ad, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16

bb.n:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %i.f, align 8
  br label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16

bb.o:                                             ; preds = %.loopexit.i14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16

_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16: ; preds = %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit, %bb.m, %bb.n, %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 1040
  %i.am = load i32, ptr %i.al, align 8            ; 3 uses
  %i.an = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not.i17 = icmp eq ptr %i.an, null
  br i1 %.not.i17, label %_ZN6Assimp12GetArrayCopyI9aiQuatKeyEEvRPT_j.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6Assimp12GetArrayCopyI11aiVectorKeyEEvRPT_j.exit16
  %i.ao = zext i32 %i.am to i64                   ; 4 uses
  %i.ap = shl nuw nsw i64 %i.ao, 5                ; 2 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #22 ; 7 uses
  %i.ar = icmp eq i32 %i.am, 0
  br i1 %i.ar, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.ao
  %i.at = add nuw nsw i64 %i.ao, 576460752303423487
  %i.au = and i64 %i.at, 576460752303423487
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %i.av = phi ptr [ %i.ay, %.prol.preheader ], [ %i.aq, %bb.q ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.q ]
  store double 0.000000e+00, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i32 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !118

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.unr = phi ptr [ %i.aq, %bb.q ], [ %i.ay, %.prol.preheader ]
  %i.az = icmp samesign ult i64 %i.au, 7
  br i1 %i.az, label %.loopexit.i18, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ba = phi ptr [ %i.by, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i32 1, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store double 0.000000e+00, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store i32 1, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store double 0.000000e+00, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  store i32 1, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  store double 0.000000e+00, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
end_hunk_1
