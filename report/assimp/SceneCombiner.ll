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
  %i.u = load i32, ptr %i.d, align 4
  %.fr129 = freeze i32 %i.u                       ; 31 uses
  %i.v = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6aiMeshaSERKS_.exit
  %i.w = zext i32 %.fr129 to i64
  %i.x = mul nuw nsw i64 %i.w, 12                 ; 4 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #22 ; 5 uses
  %i.z = icmp eq i32 %.fr129, 0
  br i1 %i.z, label %bb.f, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.d
  %i.aa = add nsw i64 %i.x, -12
  %i.ab = urem i64 %i.aa, 12
  %i.ac = sub nsw i64 %i.x, %i.ab
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.ac, i1 false)
  store ptr %i.y, ptr %i.f, align 8
  %.not9.i = icmp eq i32 %.fr129, 1
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
  %i.af = zext i32 %.fr129 to i64
  %i.ag = mul nuw nsw i64 %i.af, 12               ; 4 uses
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #22 ; 5 uses
  %i.ai = icmp eq i32 %.fr129, 0
  br i1 %i.ai, label %bb.j, label %.loopexit.i43

.loopexit.i43:                                    ; preds = %bb.h
  %i.aj = add nsw i64 %i.ag, -12
  %i.ak = urem i64 %i.aj, 12
  %i.al = sub nsw i64 %i.ag, %i.ak
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ah, i8 0, i64 %i.al, i1 false)
  store ptr %i.ah, ptr %i.ad, align 8
  %.not9.i44 = icmp eq i32 %.fr129, 1
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
  %i.ao = zext i32 %.fr129 to i64
  %i.ap = mul nuw nsw i64 %i.ao, 12               ; 4 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #22 ; 5 uses
  %i.ar = icmp eq i32 %.fr129, 0
  br i1 %i.ar, label %bb.n, label %.loopexit.i47

.loopexit.i47:                                    ; preds = %bb.l
  %i.as = add nsw i64 %i.ap, -12
  %i.at = urem i64 %i.as, 12
  %i.au = sub nsw i64 %i.ap, %i.at
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aq, i8 0, i64 %i.au, i1 false)
  store ptr %i.aq, ptr %i.am, align 8
  %.not9.i48 = icmp eq i32 %.fr129, 1
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
  %i.ax = zext i32 %.fr129 to i64
  %i.ay = mul nuw nsw i64 %i.ax, 12               ; 4 uses
  %i.az = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #22 ; 5 uses
  %i.ba = icmp eq i32 %.fr129, 0
  br i1 %i.ba, label %bb.r, label %.loopexit.i51

.loopexit.i51:                                    ; preds = %bb.p
  %i.bb = add nsw i64 %i.ay, -12
  %i.bc = urem i64 %i.bb, 12
  %i.bd = sub nsw i64 %i.ay, %i.bc
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.az, i8 0, i64 %i.bd, i1 false)
  store ptr %i.az, ptr %i.av, align 8
  %.not9.i52 = icmp eq i32 %.fr129, 1
  br i1 %.not9.i52, label %bb.s, label %bb.q, !prof !44

bb.q:                                             ; preds = %.loopexit.i51
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.az, ptr nonnull align 4 %i.aw, i64 %i.ay, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53

bb.r:                                             ; preds = %bb.p
  store ptr %i.az, ptr %i.av, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53

bb.s:                                             ; preds = %.loopexit.i51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.az, ptr noundef nonnull align 4 dereferenceable(12) %i.aw, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53: ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49, %bb.q, %bb.r, %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.bf = icmp ne i32 %.fr129, 0                  ; 2 uses
  %i.bg = zext i32 %.fr129 to i64
  %i.bh = mul nuw nsw i64 %i.bg, 12               ; 18 uses
  %i.bi = add nsw i64 %i.bh, -12
  %i.bj = urem i64 %i.bi, 12
  %i.bk = sub nuw nsw i64 %i.bh, %i.bj            ; 8 uses
  %.not9.i57 = icmp eq i32 %.fr129, 1             ; 8 uses
  br i1 %i.bf, label %.split, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader:   ; preds = %bb.ah, %bb.ai, %.split, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.1, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.2, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.3, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.4, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.5, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.6, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %.not.i59 = icmp ne ptr %i.bm, null
  %2 = and i1 %.not.i59, %i.bf
  br i1 %2, label %.loopexit.i62, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

.split:                                           ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53
  %3 = load ptr, ptr %i.be, align 8               ; 3 uses
  %.not.i54.not = icmp eq ptr %3, null
  br i1 %.not.i54.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56

.loopexit.i56:                                    ; preds = %.split
  %i.bn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bn, i8 0, i64 %i.bk, i1 false)
  store ptr %i.bn, ptr %i.be, align 8
  br i1 %.not9.i57, label %bb.u, label %bb.t, !prof !44

bb.t:                                             ; preds = %.loopexit.i56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bn, ptr nonnull align 4 %3, i64 %i.bh, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58

bb.u:                                             ; preds = %.loopexit.i56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bn, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58: ; preds = %bb.t, %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %.not.i54.not.1 = icmp eq ptr %i.bp, null
  br i1 %.not.i54.not.1, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.1

.loopexit.i56.1:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58
  %i.bq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bq, i8 0, i64 %i.bk, i1 false)
  store ptr %i.bq, ptr %i.bo, align 8
  br i1 %.not9.i57, label %bb.w, label %bb.v, !prof !44

bb.v:                                             ; preds = %.loopexit.i56.1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bq, ptr nonnull align 4 %i.bp, i64 %i.bh, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.1

bb.w:                                             ; preds = %.loopexit.i56.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %i.bp, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.1

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.1: ; preds = %bb.w, %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 3 uses
  %.not.i54.not.2 = icmp eq ptr %i.bs, null
  br i1 %.not.i54.not.2, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.2

.loopexit.i56.2:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.1
  %i.bt = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bt, i8 0, i64 %i.bk, i1 false)
  store ptr %i.bt, ptr %i.br, align 8
  br i1 %.not9.i57, label %bb.y, label %bb.x, !prof !44

bb.x:                                             ; preds = %.loopexit.i56.2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr nonnull align 4 %i.bs, i64 %i.bh, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.2

bb.y:                                             ; preds = %.loopexit.i56.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.bs, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.2

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.2: ; preds = %bb.y, %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  %.not.i54.not.3 = icmp eq ptr %i.bv, null
  br i1 %.not.i54.not.3, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.3

.loopexit.i56.3:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.2
  %i.bw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bw, i8 0, i64 %i.bk, i1 false)
  store ptr %i.bw, ptr %i.bu, align 8
  br i1 %.not9.i57, label %bb.aa, label %bb.z, !prof !44

bb.z:                                             ; preds = %.loopexit.i56.3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr nonnull align 4 %i.bv, i64 %i.bh, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.3

bb.aa:                                            ; preds = %.loopexit.i56.3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bw, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.3

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.3: ; preds = %bb.aa, %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 3 uses
  %.not.i54.not.4 = icmp eq ptr %i.by, null
  br i1 %.not.i54.not.4, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.4

.loopexit.i56.4:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.3
  %i.bz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bz, i8 0, i64 %i.bk, i1 false)
  store ptr %i.bz, ptr %i.bx, align 8
  br i1 %.not9.i57, label %bb.ac, label %bb.ab, !prof !44

bb.ab:                                            ; preds = %.loopexit.i56.4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr nonnull align 4 %i.by, i64 %i.bh, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.4

bb.ac:                                            ; preds = %.loopexit.i56.4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %i.by, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.4

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.4: ; preds = %bb.ac, %bb.ab
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %.not.i54.not.5 = icmp eq ptr %i.cb, null
  br i1 %.not.i54.not.5, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.5

.loopexit.i56.5:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.4
  %i.cc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cc, i8 0, i64 %i.bk, i1 false)
  store ptr %i.cc, ptr %i.ca, align 8
  br i1 %.not9.i57, label %bb.ae, label %bb.ad, !prof !44

bb.ad:                                            ; preds = %.loopexit.i56.5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr nonnull align 4 %i.cb, i64 %i.bh, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.5

bb.ae:                                            ; preds = %.loopexit.i56.5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) %i.cb, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.5

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.5: ; preds = %bb.ae, %bb.ad
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %.not.i54.not.6 = icmp eq ptr %i.ce, null
  br i1 %.not.i54.not.6, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.6

.loopexit.i56.6:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.5
  %i.cf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cf, i8 0, i64 %i.bk, i1 false)
  store ptr %i.cf, ptr %i.cd, align 8
  br i1 %.not9.i57, label %bb.ag, label %bb.af, !prof !44

bb.af:                                            ; preds = %.loopexit.i56.6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cf, ptr nonnull align 4 %i.ce, i64 %i.bh, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.6

bb.ag:                                            ; preds = %.loopexit.i56.6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %i.ce, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.6

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.6: ; preds = %bb.ag, %bb.af
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %.not.i54.not.7 = icmp eq ptr %i.ch, null
  br i1 %.not.i54.not.7, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %.loopexit.i56.7

.loopexit.i56.7:                                  ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit58.6
  %i.ci = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ci, i8 0, i64 %i.bk, i1 false)
  store ptr %i.ci, ptr %i.cg, align 8
  br i1 %.not9.i57, label %bb.ai, label %bb.ah, !prof !44

bb.ah:                                            ; preds = %.loopexit.i56.7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ci, ptr nonnull align 4 %i.ch, i64 %i.bh, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

bb.ai:                                            ; preds = %.loopexit.i56.7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ci, ptr noundef nonnull align 4 dereferenceable(12) %i.ch, i64 12, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

.loopexit.i62:                                    ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader
  %i.cj = zext i32 %.fr129 to i64
  %i.ck = shl nuw nsw i64 %i.cj, 4                ; 3 uses
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cl, i8 0, i64 %i.ck, i1 false)
  store ptr %i.cl, ptr %i.bl, align 8
  %.not9.i63 = icmp eq i32 %.fr129, 1
  br i1 %.not9.i63, label %bb.ak, label %bb.aj, !prof !44

bb.aj:                                            ; preds = %.loopexit.i62
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr nonnull align 4 %i.bm, i64 %i.ck, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit

bb.ak:                                            ; preds = %.loopexit.i62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cl, ptr noundef nonnull align 4 dereferenceable(16) %i.bm, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit: ; preds = %bb.aj, %bb.ak
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  %.not.i59.1.not = icmp eq ptr %i.cn, null
  br i1 %.not.i59.1.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.1

.loopexit.i62.1:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit
  %i.co = zext i32 %.fr129 to i64
  %i.cp = shl nuw nsw i64 %i.co, 4                ; 3 uses
  %i.cq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cq, i8 0, i64 %i.cp, i1 false)
  store ptr %i.cq, ptr %i.cm, align 8
  %.not9.i63.1 = icmp eq i32 %.fr129, 1
  br i1 %.not9.i63.1, label %bb.am, label %bb.al, !prof !44

bb.al:                                            ; preds = %.loopexit.i62.1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr nonnull align 4 %i.cn, i64 %i.cp, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1

bb.am:                                            ; preds = %.loopexit.i62.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cq, ptr noundef nonnull align 4 dereferenceable(16) %i.cn, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1: ; preds = %bb.am, %bb.al
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %.not.i59.2.not = icmp eq ptr %i.cs, null
  br i1 %.not.i59.2.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.2

.loopexit.i62.2:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1
  %i.ct = zext i32 %.fr129 to i64
  %i.cu = shl nuw nsw i64 %i.ct, 4                ; 3 uses
  %i.cv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cv, i8 0, i64 %i.cu, i1 false)
  store ptr %i.cv, ptr %i.cr, align 8
  %.not9.i63.2 = icmp eq i32 %.fr129, 1
  br i1 %.not9.i63.2, label %bb.ao, label %bb.an, !prof !44

bb.an:                                            ; preds = %.loopexit.i62.2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cv, ptr nonnull align 4 %i.cs, i64 %i.cu, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2

bb.ao:                                            ; preds = %.loopexit.i62.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cv, ptr noundef nonnull align 4 dereferenceable(16) %i.cs, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2: ; preds = %bb.ao, %bb.an
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 3 uses
  %.not.i59.3.not = icmp eq ptr %i.cx, null
  br i1 %.not.i59.3.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.3

.loopexit.i62.3:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2
  %i.cy = zext i32 %.fr129 to i64
  %i.cz = shl nuw nsw i64 %i.cy, 4                ; 3 uses
  %i.da = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cz) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.da, i8 0, i64 %i.cz, i1 false)
  store ptr %i.da, ptr %i.cw, align 8
  %.not9.i63.3 = icmp eq i32 %.fr129, 1
  br i1 %.not9.i63.3, label %bb.aq, label %bb.ap, !prof !44

bb.ap:                                            ; preds = %.loopexit.i62.3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.da, ptr nonnull align 4 %i.cx, i64 %i.cz, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3

bb.aq:                                            ; preds = %.loopexit.i62.3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.da, ptr noundef nonnull align 4 dereferenceable(16) %i.cx, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3: ; preds = %bb.aq, %bb.ap
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 3 uses
  %.not.i59.4.not = icmp eq ptr %i.dc, null
  br i1 %.not.i59.4.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.4

.loopexit.i62.4:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3
  %i.dd = zext i32 %.fr129 to i64
  %i.de = shl nuw nsw i64 %i.dd, 4                ; 3 uses
  %i.df = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.df, i8 0, i64 %i.de, i1 false)
  store ptr %i.df, ptr %i.db, align 8
  %.not9.i63.4 = icmp eq i32 %.fr129, 1
  br i1 %.not9.i63.4, label %bb.as, label %bb.ar, !prof !44

bb.ar:                                            ; preds = %.loopexit.i62.4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.df, ptr nonnull align 4 %i.dc, i64 %i.de, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4

bb.as:                                            ; preds = %.loopexit.i62.4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.df, ptr noundef nonnull align 4 dereferenceable(16) %i.dc, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4: ; preds = %bb.as, %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 3 uses
  %.not.i59.5.not = icmp eq ptr %i.dh, null
  br i1 %.not.i59.5.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.5

.loopexit.i62.5:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4
  %i.di = zext i32 %.fr129 to i64
  %i.dj = shl nuw nsw i64 %i.di, 4                ; 3 uses
  %i.dk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dk, i8 0, i64 %i.dj, i1 false)
  store ptr %i.dk, ptr %i.dg, align 8
  %.not9.i63.5 = icmp eq i32 %.fr129, 1
  br i1 %.not9.i63.5, label %bb.au, label %bb.at, !prof !44

bb.at:                                            ; preds = %.loopexit.i62.5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dk, ptr nonnull align 4 %i.dh, i64 %i.dj, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5

bb.au:                                            ; preds = %.loopexit.i62.5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dk, ptr noundef nonnull align 4 dereferenceable(16) %i.dh, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5: ; preds = %bb.au, %bb.at
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 3 uses
  %.not.i59.6.not = icmp eq ptr %i.dm, null
  br i1 %.not.i59.6.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.6

.loopexit.i62.6:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5
  %i.dn = zext i32 %.fr129 to i64
  %i.do = shl nuw nsw i64 %i.dn, 4                ; 3 uses
  %i.dp = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.do) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dp, i8 0, i64 %i.do, i1 false)
  store ptr %i.dp, ptr %i.dl, align 8
  %.not9.i63.6 = icmp eq i32 %.fr129, 1
  br i1 %.not9.i63.6, label %bb.aw, label %bb.av, !prof !44

bb.av:                                            ; preds = %.loopexit.i62.6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dp, ptr nonnull align 4 %i.dm, i64 %i.do, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6

bb.aw:                                            ; preds = %.loopexit.i62.6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dp, ptr noundef nonnull align 4 dereferenceable(16) %i.dm, i64 16, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6

_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6: ; preds = %bb.aw, %bb.av
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8            ; 3 uses
  %.not.i59.7.not = icmp eq ptr %i.dr, null
  br i1 %.not.i59.7.not, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %.loopexit.i62.7

.loopexit.i62.7:                                  ; preds = %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6
  %i.ds = zext i32 %.fr129 to i64
  %i.dt = shl nuw nsw i64 %i.ds, 4                ; 3 uses
  %i.du = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.du, i8 0, i64 %i.dt, i1 false)
  store ptr %i.du, ptr %i.dq, align 8
  %.not9.i63.7 = icmp eq i32 %.fr129, 1
  br i1 %.not9.i63.7, label %bb.ay, label %bb.ax, !prof !44

bb.ax:                                            ; preds = %.loopexit.i62.7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr nonnull align 4 %i.dr, i64 %i.dt, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.ay:                                            ; preds = %.loopexit.i62.7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.du, ptr noundef nonnull align 4 dereferenceable(16) %i.dr, i64 16, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

_ZNK6aiMesh15HasVertexColorsEj.exit.thread:       ; preds = %bb.ax, %bb.ay, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.6, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.5, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.4, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.3, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.2, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit.1, %_ZN6Assimp12GetArrayCopyI9aiColor4tIfEEEvRPT_j.exit, %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader
  %i.dv = load ptr, ptr %i.g, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.dx = load i32, ptr %i.dw, align 8            ; 2 uses
  %.not.i64 = icmp eq i32 %i.dx, 0
  br i1 %.not.i64, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.thread
  store ptr null, ptr %i.g, align 8
  br label %_ZN6Assimp12CopyPtrArrayI6aiBoneEEvRPPT_PKPKS2_j.exit

bb.ba:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.thread
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #22
  store ptr %i.ea, ptr %i.g, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %indvars.iv.i = phi i64 [ 0, %bb.ba ], [ %indvars.iv.next.i, %bb.bb ] ; 3 uses
  %i.eb = load ptr, ptr %i.g, align 8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.i
  %i.ee = load ptr, ptr %i.ed, align 8
  tail call void @_ZN6Assimp13SceneCombiner4CopyEPP6aiBonePKS1_(ptr noundef %i.ec, ptr noundef %i.ee)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dy
  br i1 %exitcond.not.i, label %_ZN6Assimp12CopyPtrArrayI6aiBoneEEvRPPT_PKPKS2_j.exit, label %bb.bb, !llvm.loop !64

_ZN6Assimp12CopyPtrArrayI6aiBoneEEvRPPT_PKPKS2_j.exit: ; preds = %bb.bb, %bb.az
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %.not.i66 = icmp eq ptr %i.eg, null
  br i1 %.not.i66, label %_ZN6Assimp12GetArrayCopyI6aiFaceEEvRPT_j.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN6Assimp12CopyPtrArrayI6aiBoneEEvRPPT_PKPKS2_j.exit
  %i.eh = load i32, ptr %i.e, align 8             ; 2 uses
  %i.ei = zext i32 %i.eh to i64                   ; 6 uses
  %i.ej = shl nuw nsw i64 %i.ei, 4
  %i.ek = or disjoint i64 %i.ej, 8
  %i.el = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ek) #22 ; 2 uses
  store i64 %i.ei, ptr %i.el, align 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 6 uses
  %i.en = icmp eq i32 %i.eh, 0
  br i1 %i.en, label %.loopexit.thread.i, label %bb.bd

.loopexit.thread.i:                               ; preds = %bb.bc
  store ptr %i.em, ptr %i.ef, align 8
  br label %_ZN6Assimp12GetArrayCopyI6aiFaceEEvRPT_j.exit

bb.bd:                                            ; preds = %bb.bc
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.ei
  %i.ep = add nuw nsw i64 %i.ei, 1152921504606846975
  %i.eq = and i64 %i.ep, 1152921504606846975
  %xtraiter = and i64 %i.ei, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bd, %.prol.preheader
  %i.er = phi ptr [ %i.et, %.prol.preheader ], [ %i.em, %bb.bd ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.bd ]
  store i32 0, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr null, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !65

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bd
  %.unr = phi ptr [ %i.em, %bb.bd ], [ %i.et, %.prol.preheader ]
  %i.eu = icmp samesign ult i64 %i.eq, 7
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.preheader.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ev = phi ptr [ %i.fl, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr null, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i32 0, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store ptr null, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  store i32 0, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  store ptr null, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  store i32 0, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  store ptr null, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  store i32 0, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  store ptr null, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 80
  store i32 0, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 88
  store ptr null, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 96
  store i32 0, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 104
  store ptr null, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 112
  store i32 0, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ev, i64 120
  store ptr null, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 128 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.eo
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i.preheader.i, label %.new

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %.new, %.prol.loopexit
  store ptr %i.em, ptr %i.ef, align 8
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.fz, %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i.i ], [ %i.ei, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.fy, %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i.i ], [ %i.em, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.fx, %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i.i ], [ %i.eg, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.fn = icmp eq ptr %.0910.i.i.i.i.i.i, %.0811.i.i.i.i.i.i
  br i1 %i.fn, label %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZdaPv(ptr noundef nonnull %i.fp) #24
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.fr = load i32, ptr %.0910.i.i.i.i.i.i, align 8 ; 3 uses
  store i32 %i.fr, ptr %.0811.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fs = zext i32 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 2                ; 2 uses
  %i.fu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ft) #22 ; 2 uses
  store ptr %i.fu, ptr %i.fo, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fu, ptr align 4 %i.fw, i64 %i.ft, i1 false)
  br label %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  store ptr null, ptr %i.fo, align 8
  br label %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i.i

_ZN6aiFaceaSERKS_.exit.i.i.i.i.i.i:               ; preds = %bb.bi, %bb.bh, %.lr.ph.i.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.fz = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ga = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ga, label %.lr.ph.i.i.i.i.i.i, label %_ZN6Assimp12GetArrayCopyI6aiFaceEEvRPT_j.exit, !llvm.loop !66

_ZN6Assimp12GetArrayCopyI6aiFaceEEvRPT_j.exit:    ; preds = %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i.i, %_ZN6Assimp12CopyPtrArrayI6aiBoneEEvRPPT_PKPKS2_j.exit, %.loopexit.thread.i
  %i.gb = load ptr, ptr %i.h, align 8
  %i.gc = load i32, ptr %i.s, align 8             ; 2 uses
  %.not.i67 = icmp eq i32 %i.gc, 0
  br i1 %.not.i67, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZN6Assimp12GetArrayCopyI6aiFaceEEvRPT_j.exit
  store ptr null, ptr %i.h, align 8
  br label %_ZN6Assimp12CopyPtrArrayI10aiAnimMeshEEvRPPT_PKPKS2_j.exit

bb.bk:                                            ; preds = %_ZN6Assimp12GetArrayCopyI6aiFaceEEvRPT_j.exit
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = shl nuw nsw i64 %i.gd, 3
  %i.gf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ge) #22
  store ptr %i.gf, ptr %i.h, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %indvars.iv.i68 = phi i64 [ 0, %bb.bk ], [ %indvars.iv.next.i69, %bb.bl ] ; 3 uses
  %i.gg = load ptr, ptr %i.h, align 8
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.i68
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.i68
  %i.gj = load ptr, ptr %i.gi, align 8
  tail call void @_ZN6Assimp13SceneCombiner4CopyEPP10aiAnimMeshPKS1_(ptr noundef %i.gh, ptr noundef %i.gj)
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next.i69, %i.gd
  br i1 %exitcond.not.i70, label %_ZN6Assimp12CopyPtrArrayI10aiAnimMeshEEvRPPT_PKPKS2_j.exit, label %bb.bl, !llvm.loop !67

_ZN6Assimp12CopyPtrArrayI10aiAnimMeshEEvRPPT_PKPKS2_j.exit: ; preds = %bb.bl, %bb.bj
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %i.gl = load ptr, ptr %i.gk, align 8            ; 9 uses
end_hunk_0
