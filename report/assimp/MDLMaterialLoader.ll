Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/MDLMaterialLoader?download=true
inline.NumInlined: 254
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture:bb.a
  %i.hu = load i32, ptr %i.gq, align 4
  %i.hv = mul i32 %i.hu, %i.ht
  %i.hw = zext i32 %i.hv to i64
  %i.hx = icmp samesign ult i64 %indvars.iv.next231, %i.hw
  br i1 %i.hx, label %.lr.ph209, label %._crit_edge.loopexit, !llvm.loop !13

._crit_edge.loopexit:                             ; preds = %.lr.ph209
  %i.hy = trunc nuw i64 %indvars.iv.next231 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %.0181.lcssa = phi i32 [ 0, %bb.v ], [ %i.hy, %._crit_edge.loopexit ]
  %.not.i = icmp eq ptr %.pre, @_ZL21g_aclrDefaultColorMap
  %i.hz = icmp eq ptr %.pre, null
  %or.cond.i = or i1 %.not.i, %i.hz
  br i1 %or.cond.i, label %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef %.pre) #21
  br label %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit

_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit:    ; preds = %._crit_edge, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.ia = load i32, ptr %4, align 8
  %i.ib = load i32, ptr %i.gq, align 4
  %i.ic = mul i32 %i.ib, %i.ia
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit
  %.1 = phi i32 [ %.0181.lcssa, %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit ], [ %i.ic, %bb.x ]
  store i32 %.1, ptr %3, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.q, %.loopexit196, %bb.p, %.loopexit198, %bb.m, %.loopexit200, %bb.j, %bb.t, %bb.y
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL5EPKhjPj(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp eq i32 %i.a, -1                     ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #22 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1060) %i.c, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.d, i8 0, i64 1036, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  tail call void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load <2 x i32>, ptr %1, align 4
  %i.h = load i32, ptr %1, align 4                ; 4 uses
  store <2 x i32> %i.g, ptr %i.c, align 8
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %i.i = icmp eq i32 %2, 6
  br i1 %i.i, label %.critedge, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.j = icmp eq i32 %2, 6
  br i1 %i.j, label %.thread47, label %bb.c

.thread47:                                        ; preds = %.thread
  store i32 %i.h, ptr %3, align 4
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  tail call void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.l)
  store i32 0, ptr %i.f, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <4 x i8> <i8 100, i8 100, i8 115, i8 0>, ptr %i.m, align 8
  %i.n = load i32, ptr %i.c, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #22 ; 2 uses
  store ptr %i.p, ptr %i.d, align 8
  %i.q = load i32, ptr %i.c, align 8
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 4 %i.e, i64 %i.r, i1 false)
  %i.s = load i32, ptr %3, align 4
  %i.t = add i32 %i.s, 8
  store i32 %i.t, ptr %3, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %.thread
  tail call void @_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.e, i32 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %i.c)
  %i.u = load i32, ptr %3, align 4
  %i.v = add i32 %i.u, 8
  store i32 %i.v, ptr %3, align 4
  br i1 %i.b, label %_ZN9aiTextureD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.thread47, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.y, align 8
  %i.aa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #22
  %i.ab = load ptr, ptr %i.w, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store ptr %i.aa, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %i.w, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8
  store ptr %i.c, ptr %i.af, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = add i32 %i.z, 1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #22
  %i.am = load ptr, ptr %i.w, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store ptr %i.al, ptr %i.an, align 8
  %i.ao = load ptr, ptr %i.w, align 8             ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load i32, ptr %i.ap, align 8
  %.not51 = icmp eq i32 %i.aq, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ar = zext i32 %i.bi to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.loopexit
  %.lcssa48 = phi ptr [ %i.bg, %._crit_edge.loopexit ], [ %i.ao, %bb.f ]
  %.lcssa = phi i64 [ %i.ar, %._crit_edge.loopexit ], [ 0, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %.lcssa48, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.lcssa
  store ptr %i.c, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.w, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8
  %i.az = icmp eq ptr %i.ah, null
  br i1 %i.az, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.f ] ; 3 uses
  %i.ba = phi ptr [ %i.bg, %.lr.ph ], [ %i.ao, %bb.f ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  store ptr %i.bc, ptr %i.bf, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load ptr, ptr %i.w, align 8             ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !14

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.ah) #21
  br label %bb.h

.critedge:                                        ; preds = %bb.b
  store i32 %i.h, ptr %3, align 4
  %i.bl = zext i32 %i.h to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bl
  tail call void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.bm)
  %i.bn = load i32, ptr %3, align 4
  %i.bo = add i32 %i.bn, 8
  store i32 %i.bo, ptr %3, align 4
  br label %_ZN9aiTextureD2Ev.exit

_ZN9aiTextureD2Ev.exit:                           ; preds = %bb.c, %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 1064) #21
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %_ZN9aiTextureD2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr", align 8   ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.aiString, align 4           ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %9 = alloca %class.aiColor4t, align 8           ; 20 uses
  %10 = alloca %struct.aiColor3D, align 8         ; 20 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca [5 x i8], align 1                 ; 6 uses
  %11 = alloca %struct.aiString, align 4          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %7, align 8
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %4, 15                           ; 3 uses
  switch i32 %i.g, label %bb.u [
    i32 1, label %bb.c
    i32 6, label %bb.e
    i32 7, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %5, ptr %i.a, align 4
  %i.h = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit unwind label %bb.d ; 0 uses

_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.cg

bb.e:                                             ; preds = %bb.b
  %.not127 = icmp eq i32 %6, 1
  br i1 %.not127, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull @.str.5)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.m, %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.i:                                             ; preds = %bb.g, %bb.e
  %i.l = icmp eq i32 %5, 0
  br i1 %i.l, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.m = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull @.str.6)
          to label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EED2Ev.exit unwind label %bb.h

bb.l:                                             ; preds = %bb.i
  %i.n = invoke noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #22
          to label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit unwind label %bb.h ; 11 uses

_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit: ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.p, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.o, i8 0, i64 1036, i1 false)
  store ptr %i.n, ptr %7, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.q, align 4
  store i32 %5, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 100, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  store i8 100, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  store i8 115, ptr %i.t, align 2
  %i.u = zext i32 %5 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  invoke void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.v)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit
  %i.w = load i32, ptr %i.n, align 8
  %i.x = zext i32 %i.w to i64
  %i.y = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #22
          to label %bb.n unwind label %bb.h       ; 2 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.y, ptr %i.o, align 8
  %i.z = load i32, ptr %i.n, align 8
  %i.aa = zext i32 %i.z to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %1, i64 %i.aa, i1 false)
  br label %.loopexit221

bb.o:                                             ; preds = %bb.b
  %.not126 = icmp eq i32 %6, 1
  br i1 %.not126, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.q unwind label %bb.h

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull @.str.7)
          to label %bb.r unwind label %bb.h

bb.r:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ac, i8 0, i64 1024, i1 false)
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1023) ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull align 1 %1, i64 %i.ae, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store i8 0, ptr %i.ag, align 1
  %i.ah = trunc nuw nsw i64 %i.ae to i32
  store i32 %i.ah, ptr %8, align 4
  %i.ai = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %8, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef 0)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.cg

bb.u:                                             ; preds = %bb.b
  %i.am = icmp eq i32 %i.g, 0
  %i.an = icmp ne i32 %4, 0
  %or.cond = and i1 %i.an, %i.am
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ao = icmp ne i32 %5, 0
  %i.ap = icmp ne i32 %6, 0
  %or.cond5 = and i1 %i.ao, %i.ap
  br i1 %or.cond5, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aq = invoke noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #22
          to label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit142 unwind label %bb.h ; 10 uses

_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit142: ; preds = %bb.w
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 66 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1060) %i.aq, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.ar, i8 0, i64 1036, i1 false)
  store ptr %i.aq, ptr %7, align 8
  %i.as = icmp ne i32 %6, 0
  %i.at = icmp ne i32 %5, 0
  %or.cond7 = and i1 %i.at, %i.as
  br i1 %or.cond7, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit142
  %i.au = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.y unwind label %bb.h

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull @.str.9)
          to label %bb.z unwind label %bb.h

bb.z:                                             ; preds = %bb.y
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 8, ptr %i.av, align 4
  store i32 8, ptr %i.aq, align 8
  %i.aw = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #22
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %bb.z
  store ptr %i.aw, ptr %i.ar, align 8
  %i.ax = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 0, ptr %i.ay, align 1
  store i8 0, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i8 0, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  store i8 -1, ptr %i.ba, align 1
  %i.bb = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 33
  store i8 -1, ptr %i.bd, align 1
  store i8 -1, ptr %i.bc, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 34
  store i8 -1, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 35
  store i8 -1, ptr %i.bf, align 1
  %i.bg = load ptr, ptr %i.ar, align 8            ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a
  store i8 -1, ptr %i.jm, align 1
  %i.jn = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 180
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 181
  store i8 0, ptr %i.jp, align 1
  store i8 0, ptr %i.jo, align 1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 182
  store i8 0, ptr %i.jq, align 1
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 183
  store i8 -1, ptr %i.jr, align 1
  %i.js = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 212
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 213
  store i8 -1, ptr %i.ju, align 1
  store i8 -1, ptr %i.jt, align 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 214
  store i8 -1, ptr %i.jv, align 1
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 215
  store i8 -1, ptr %i.jw, align 1
  %i.jx = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 244
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 245
  store i8 0, ptr %i.jz, align 1
  store i8 0, ptr %i.jy, align 1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 246
  store i8 0, ptr %i.ka, align 1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 247
  store i8 -1, ptr %i.kb, align 1
  %i.kc = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 25
  store i8 0, ptr %i.ke, align 1
  store i8 0, ptr %i.kd, align 1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 26
  store i8 0, ptr %i.kf, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 27
  store i8 -1, ptr %i.kg, align 1
  %i.kh = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 56
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 57
  store i8 -1, ptr %i.kj, align 1
  store i8 -1, ptr %i.ki, align 1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 58
  store i8 -1, ptr %i.kk, align 1
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 59
  store i8 -1, ptr %i.kl, align 1
  %i.km = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 88
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 89
  store i8 0, ptr %i.ko, align 1
  store i8 0, ptr %i.kn, align 1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 90
  store i8 0, ptr %i.kp, align 1
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 91
  store i8 -1, ptr %i.kq, align 1
  %i.kr = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 120
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 121
  store i8 -1, ptr %i.kt, align 1
  store i8 -1, ptr %i.ks, align 1
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 122
  store i8 -1, ptr %i.ku, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 123
  store i8 -1, ptr %i.kv, align 1
  %i.kw = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 152
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 153
  store i8 0, ptr %i.ky, align 1
  store i8 0, ptr %i.kx, align 1
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 154
  store i8 0, ptr %i.kz, align 1
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 155
  store i8 -1, ptr %i.la, align 1
  %i.lb = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 184
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 185
  store i8 -1, ptr %i.ld, align 1
  store i8 -1, ptr %i.lc, align 1
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 186
  store i8 -1, ptr %i.le, align 1
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 187
  store i8 -1, ptr %i.lf, align 1
  %i.lg = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 216
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 217
  store i8 0, ptr %i.li, align 1
  store i8 0, ptr %i.lh, align 1
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 218
  store i8 0, ptr %i.lj, align 1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 219
  store i8 -1, ptr %i.lk, align 1
  %i.ll = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 248
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 249
  store i8 -1, ptr %i.ln, align 1
  store i8 -1, ptr %i.lm, align 1
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 250
  store i8 -1, ptr %i.lo, align 1
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 251
  store i8 -1, ptr %i.lp, align 1
  %i.lq = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 28
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 29
  store i8 -1, ptr %i.ls, align 1
  store i8 -1, ptr %i.lr, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 30
  store i8 -1, ptr %i.lt, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 31
  store i8 -1, ptr %i.lu, align 1
  %i.lv = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 60
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 61
  store i8 0, ptr %i.lx, align 1
  store i8 0, ptr %i.lw, align 1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 62
  store i8 0, ptr %i.ly, align 1
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 63
  store i8 -1, ptr %i.lz, align 1
  %i.ma = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 92
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 93
  store i8 -1, ptr %i.mc, align 1
  store i8 -1, ptr %i.mb, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 94
  store i8 -1, ptr %i.md, align 1
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 95
  store i8 -1, ptr %i.me, align 1
  %i.mf = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 124
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 125
  store i8 0, ptr %i.mh, align 1
  store i8 0, ptr %i.mg, align 1
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 126
  store i8 0, ptr %i.mi, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 127
  store i8 -1, ptr %i.mj, align 1
  %i.mk = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 156
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 157
  store i8 -1, ptr %i.mm, align 1
  store i8 -1, ptr %i.ml, align 1
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 158
  store i8 -1, ptr %i.mn, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 159
  store i8 -1, ptr %i.mo, align 1
  %i.mp = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 188
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 189
  store i8 0, ptr %i.mr, align 1
  store i8 0, ptr %i.mq, align 1
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 190
  store i8 0, ptr %i.ms, align 1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 191
  store i8 -1, ptr %i.mt, align 1
  %i.mu = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 220
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 221
  store i8 -1, ptr %i.mw, align 1
  store i8 -1, ptr %i.mv, align 1
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 222
  store i8 -1, ptr %i.mx, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 223
  store i8 -1, ptr %i.my, align 1
  %i.mz = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 252
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 253
  store i8 0, ptr %i.nb, align 1
  store i8 0, ptr %i.na, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 254
  store i8 0, ptr %i.nc, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 255
  store i8 -1, ptr %i.nd, align 1
  br label %.loopexit221

bb.aa:                                            ; preds = %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit142
  store i32 %5, ptr %i.aq, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %6, ptr %i.ne, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4
  invoke void @_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %1, i32 noundef %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aq)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.nf = load i32, ptr %i.b, align 4
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ng
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.loopexit221

bb.ac:                                            ; preds = %bb.aa
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.cg

.loopexit221:                                     ; preds = %.preheader, %bb.ab, %bb.n
  %i.nj = phi ptr [ %i.aq, %bb.ab ], [ %i.n, %bb.n ], [ %i.aq, %.preheader ] ; 6 uses
  %.0107 = phi ptr [ %i.nh, %bb.ab ], [ %i.v, %bb.n ], [ %1, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nl = load i32, ptr %i.nk, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.nl, 0
  br i1 %.not.i, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.loopexit221
  %i.nm = load i32, ptr %i.nj, align 8            ; 2 uses
  %.not18.i = icmp eq i32 %i.nm, 0
  br i1 %.not18.i, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nn = mul i32 %i.nm, %i.nl                    ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.np = load ptr, ptr %i.no, align 8            ; 6 uses
  %i.nq = zext i32 %i.nn to i64
  %.idx = shl nuw nsw i64 %i.nq, 2
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 %.idx
  %.not19.not.i227 = icmp eq i32 %i.nn, 1
  br i1 %.not19.not.i227, label %.critedge.i, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.ae
  %.0.i226 = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  br label %bb.ag

bb.af:                                            ; preds = %_ZNK7aiTexelneERKS_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.0.i229, i64 4 ; 2 uses
  %.not19.not.i = icmp eq ptr %.0.i, %i.nr
  br i1 %.not19.not.i, label %.critedge.i, label %bb.ag, !llvm.loop !0

bb.ag:                                            ; preds = %.lr.ph231, %bb.af
  %.0.i229 = phi ptr [ %.0.i226, %.lr.ph231 ], [ %.0.i, %bb.af ] ; 3 uses
  %.pn.i228 = phi ptr [ %i.np, %.lr.ph231 ], [ %.0.i229, %bb.af ] ; 7 uses
  %i.ns = load i8, ptr %.0.i229, align 1
  %i.nt = load i8, ptr %.pn.i228, align 1
  %.not.i.i143 = icmp eq i8 %i.ns, %i.nt
  br i1 %.not.i.i143, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.nu = getelementptr inbounds nuw i8, ptr %.pn.i228, i64 6
  %i.nv = load i8, ptr %i.nu, align 1
  %i.nw = getelementptr inbounds nuw i8, ptr %.pn.i228, i64 2
  %i.nx = load i8, ptr %i.nw, align 1
  %.not5.i.i = icmp eq i8 %i.nv, %i.nx
  br i1 %.not5.i.i, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.ny = getelementptr inbounds nuw i8, ptr %.pn.i228, i64 5
  %i.nz = load i8, ptr %i.ny, align 1
  %i.oa = getelementptr inbounds nuw i8, ptr %.pn.i228, i64 1
  %i.ob = load i8, ptr %i.oa, align 1
  %.not6.i.i = icmp eq i8 %i.nz, %i.ob
  br i1 %.not6.i.i, label %_ZNK7aiTexelneERKS_.exit.i, label %.loopexit

_ZNK7aiTexelneERKS_.exit.i:                       ; preds = %bb.ai
  %i.oc = getelementptr inbounds nuw i8, ptr %.pn.i228, i64 7
  %i.od = load i8, ptr %i.oc, align 1
  %i.oe = getelementptr inbounds nuw i8, ptr %.pn.i228, i64 3
  %i.of = load i8, ptr %i.oe, align 1
  %.not25.i = icmp eq i8 %i.od, %i.of
  br i1 %.not25.i, label %bb.af, label %.loopexit, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.af, %bb.ae
  %i.og = getelementptr inbounds nuw i8, ptr %i.np, i64 1
  %i.oh = load <2 x i8>, ptr %i.og, align 1
  %i.oi = uitofp <2 x i8> %i.oh to <2 x float>
  %i.oj = fdiv <2 x float> %i.oi, splat (float 2.550000e+02)
  %i.ok = shufflevector <2 x float> %i.oj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ol = load i8, ptr %i.np, align 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.np, i64 3
  %i.on = load i8, ptr %i.om, align 1
  %i.oo = insertelement <2 x i8> poison, i8 %i.ol, i64 0
  %i.op = insertelement <2 x i8> %i.oo, i8 %i.on, i64 1
  %i.oq = uitofp <2 x i8> %i.op to <2 x float>
  %i.or = fdiv <2 x float> %i.oq, splat (float 2.550000e+02)
  br label %.loopexit

bb.aj:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit, %bb.bg, %bb.cb, %bb.bl
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit:                                        ; preds = %bb.ag, %bb.ah, %bb.ai, %_ZNK7aiTexelneERKS_.exit.i, %.loopexit221, %bb.ad, %.critedge.i
  %.sroa.5.0.i = phi <2 x float> [ zeroinitializer, %.loopexit221 ], [ zeroinitializer, %bb.ad ], [ %i.or, %.critedge.i ], [ zeroinitializer, %_ZNK7aiTexelneERKS_.exit.i ], [ zeroinitializer, %bb.ai ], [ zeroinitializer, %bb.ah ], [ zeroinitializer, %bb.ag ]
  %.sroa.0.0.i = phi <2 x float> [ <float +qnan, float 0.000000e+00>, %.loopexit221 ], [ <float +qnan, float 0.000000e+00>, %bb.ad ], [ %i.ok, %.critedge.i ], [ <float +qnan, float 0.000000e+00>, %_ZNK7aiTexelneERKS_.exit.i ], [ <float +qnan, float 0.000000e+00>, %bb.ai ], [ <float +qnan, float 0.000000e+00>, %bb.ah ], [ <float +qnan, float 0.000000e+00>, %bb.ag ] ; 2 uses
  store <2 x float> %.sroa.0.0.i, ptr %9, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ot = and i32 %4, 16
  %.not128 = icmp eq i32 %i.ot, 0
  br i1 %.not128, label %bb.bf, label %bb.ak

.thread:                                          ; preds = %bb.v, %bb.s, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit
  %.0107.ph = phi ptr [ %1, %bb.v ], [ %i.ak, %bb.s ], [ %1, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ou = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ou, i8 0, i64 12, i1 false)
  store float +qnan, ptr %9, align 8
  %i.ov = and i32 %4, 16
  %.not128204 = icmp eq i32 %i.ov, 0
  br i1 %.not128204, label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152, label %bb.ak

bb.ak:                                            ; preds = %.thread, %.loopexit
  %i.ow = phi ptr [ null, %.thread ], [ %i.nj, %.loopexit ]
  %.0107198209 = phi ptr [ %.0107.ph, %.thread ], [ %.0107, %.loopexit ] ; 11 uses
  %.not157200207 = phi i1 [ true, %.thread ], [ false, %.loopexit ]
  %i.ox = getelementptr inbounds nuw i8, ptr %.0107198209, i64 68 ; 2 uses
  invoke void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.ox)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.oy = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 6 uses
  store <2 x float> zeroinitializer, ptr %10, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.oz, align 8
  %i.pa = load float, ptr %.0107198209, align 1   ; 2 uses
  store float %i.pa, ptr %10, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %.0107198209, i64 4
  %i.pc = load <2 x float>, ptr %i.pb, align 1    ; 2 uses
  store <2 x float> %i.pc, ptr %i.oy, align 4
  %i.pd = load float, ptr %9, align 8             ; 2 uses
  %i.pe = fcmp ord float %i.pd, 0.000000e+00
  br i1 %i.pe, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.pf = fmul float %i.pa, %i.pd
  store float %i.pf, ptr %10, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ph = load <2 x float>, ptr %i.pg, align 4
  %i.pi = fmul <2 x float> %i.pc, %i.ph
  store <2 x float> %i.pi, ptr %i.oy, align 4
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ao:                                            ; preds = %bb.ay, %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit145, %bb.av, %bb.as, %bb.ap
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.pl = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %10, i32 noundef 12, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %bb.aq unwind label %bb.ao     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.pm = getelementptr inbounds nuw i8, ptr %.0107198209, i64 32
  %i.pn = load float, ptr %i.pm, align 1          ; 2 uses
  store float %i.pn, ptr %10, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %.0107198209, i64 36
  %i.pp = load <2 x float>, ptr %i.po, align 1    ; 2 uses
  store <2 x float> %i.pp, ptr %i.oy, align 4
  %i.pq = load float, ptr %9, align 8             ; 2 uses
  %i.pr = fcmp ord float %i.pq, 0.000000e+00
  br i1 %i.pr, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ps = fmul float %i.pn, %i.pq
  store float %i.ps, ptr %10, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.pu = load <2 x float>, ptr %i.pt, align 4
  %i.pv = fmul <2 x float> %i.pp, %i.pu
  store <2 x float> %i.pv, ptr %i.oy, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.pw = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %10, i32 noundef 12, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %bb.at unwind label %bb.ao     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.px = getelementptr inbounds nuw i8, ptr %.0107198209, i64 16
  %i.py = load float, ptr %i.px, align 1          ; 2 uses
  store float %i.py, ptr %10, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %.0107198209, i64 20
  %i.qa = load <2 x float>, ptr %i.pz, align 1    ; 2 uses
  store <2 x float> %i.qa, ptr %i.oy, align 4
  %i.qb = load float, ptr %9, align 8             ; 2 uses
  %i.qc = fcmp ord float %i.qb, 0.000000e+00
  br i1 %i.qc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.qd = fmul float %i.py, %i.qb
  store float %i.qd, ptr %10, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.qf = load <2 x float>, ptr %i.qe, align 4
  %i.qg = fmul <2 x float> %i.qa, %i.qf
  store <2 x float> %i.qg, ptr %i.oy, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.qh = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %10, i32 noundef 12, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit145 unwind label %bb.ao ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit145: ; preds = %bb.av
  %i.qi = getelementptr inbounds nuw i8, ptr %.0107198209, i64 48
  %i.qj = load <2 x float>, ptr %i.qi, align 1
  store <2 x float> %i.qj, ptr %10, align 8
  %i.qk = getelementptr inbounds nuw i8, ptr %.0107198209, i64 56
  %i.ql = load float, ptr %i.qk, align 1
  store float %i.ql, ptr %i.oz, align 8
  %i.qm = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %10, i32 noundef 12, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %bb.aw unwind label %bb.ao     ; 0 uses

bb.aw:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit145
  %i.qn = getelementptr inbounds nuw i8, ptr %.0107198209, i64 28
  %i.qo = load float, ptr %i.qn, align 1          ; 2 uses
  store float %i.qo, ptr %10, align 8
  %i.qp = load float, ptr %9, align 8
  %i.qq = fcmp ord float %i.qp, 0.000000e+00
  br i1 %i.qq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.qr = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.qs = load float, ptr %i.qr, align 4
  %i.qt = fmul float %i.qo, %i.qs
  store float %i.qt, ptr %10, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.qu = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %10, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit unwind label %bb.ao ; 0 uses

_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 2, ptr %i.c, align 4
  %i.qv = getelementptr inbounds nuw i8, ptr %.0107198209, i64 64
  %i.qw = load float, ptr %i.qv, align 1          ; 2 uses
  %i.qx = fcmp une float %i.qw, 0.000000e+00
  br i1 %i.qx, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit
  store i32 3, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store float %i.qw, ptr %i.d, align 4
  %i.qy = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.d, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit147 unwind label %bb.ba ; 0 uses

_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit147: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.qz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.bd

bb.bb:                                            ; preds = %_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit147, %_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit
  %i.ra = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit148 unwind label %bb.bc ; 0 uses

_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit148: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %thread-pre-split

bb.bc:                                            ; preds = %bb.bb
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.rb, %bb.bc ], [ %i.qz, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ao
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bd ], [ %i.pk, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.cf

bb.bf:                                            ; preds = %.loopexit
  %i.rc = extractelement <2 x float> %.sroa.0.0.i, i64 0 ; 2 uses
  %i.rd = fcmp ord float %i.rc, 0.000000e+00
  br i1 %i.rd, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.re = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %9, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit unwind label %bb.aj ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.bg
  %i.rf = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %9, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %thread-pre-split unwind label %bb.aj ; 0 uses

thread-pre-split:                                 ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit148
  %i.rg = phi ptr [ %i.nj, %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit ], [ %i.ow, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit148 ]
  %.not157200206 = phi i1 [ false, %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit ], [ %.not157200207, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit148 ]
  %.1.ph = phi ptr [ %.0107, %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit ], [ %i.ox, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit148 ]
  %.pr = load float, ptr %9, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %thread-pre-split, %bb.bf
  %i.rh = phi ptr [ %i.rg, %thread-pre-split ], [ %i.nj, %bb.bf ] ; 3 uses
  %.not157200205 = phi i1 [ %.not157200206, %thread-pre-split ], [ false, %bb.bf ]
  %i.ri = phi float [ %.pr, %thread-pre-split ], [ %i.rc, %bb.bf ]
  %.1 = phi ptr [ %.1.ph, %thread-pre-split ], [ %.0107, %bb.bf ] ; 3 uses
  %i.rj = fcmp ord float %i.ri, 0.000000e+00
  br i1 %i.rj, label %bb.bi, label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152

bb.bi:                                            ; preds = %bb.bh
  store ptr null, ptr %7, align 8
  br i1 %.not157200205, label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8            ; 2 uses
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %_ZNKSt14default_deleteI9aiTextureEclEPS0_.exit.i.i151, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.rl) #21
  br label %_ZNKSt14default_deleteI9aiTextureEclEPS0_.exit.i.i151

_ZNKSt14default_deleteI9aiTextureEclEPS0_.exit.i.i151: ; preds = %bb.bk, %bb.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.rh, i64 noundef 1064) #21
  br label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152

_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152: ; preds = %.thread, %_ZNKSt14default_deleteI9aiTextureEclEPS0_.exit.i.i151, %bb.bi, %bb.bh
  %.1217 = phi ptr [ %.1, %_ZNKSt14default_deleteI9aiTextureEclEPS0_.exit.i.i151 ], [ %.1, %bb.bi ], [ %.1, %bb.bh ], [ %.0107.ph, %.thread ] ; 4 uses
  %i.rn = phi ptr [ null, %_ZNKSt14default_deleteI9aiTextureEclEPS0_.exit.i.i151 ], [ null, %bb.bi ], [ %i.rh, %bb.bh ], [ null, %.thread ]
  %i.ro = and i32 %4, 32
  %.not132 = icmp eq i32 %i.ro, 0
  br i1 %.not132, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152
  invoke void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %.1217)
          to label %bb.bm unwind label %bb.aj

bb.bm:                                            ; preds = %bb.bl
  %i.rp = load i32, ptr %.1217, align 4
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr i8, ptr %.1217, i64 %i.rq
  %i.rs = getelementptr i8, ptr %i.rr, i64 4      ; 2 uses
  invoke void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %i.rs)
          to label %._crit_edge173 unwind label %bb.bn

._crit_edge173:                                   ; preds = %bb.bm
  %.pre = load ptr, ptr %7, align 8
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bo:                                            ; preds = %._crit_edge173, %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152
  %i.ru = phi ptr [ %i.rn, %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152 ], [ %.pre, %._crit_edge173 ] ; 3 uses
  %.2 = phi ptr [ %.1217, %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152 ], [ %i.rs, %._crit_edge173 ] ; 2 uses
  %.not158 = icmp eq ptr %i.ru, null
  br i1 %.not158, label %bb.cb, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.rw = load ptr, ptr %i.rv, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 64
  %i.ry = load i32, ptr %i.rx, align 8            ; 2 uses
  %i.rz = icmp ult i32 %i.ry, 1000
  br i1 %i.rz, label %bb.bq, label %bb.cb

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.sa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 5, ptr noundef nonnull @.str.17, i32 noundef %i.ry) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.sb = getelementptr inbounds nuw i8, ptr %11, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.sb, i8 0, i64 1024, i1 false)
  %i.sc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #24 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.se = add i64 %i.sc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sd, ptr nonnull align 1 %i.e, i64 %i.se, i1 false)
  %i.sf = trunc i64 %i.sc to i32
  store i32 %i.sf, ptr %11, align 4
  %i.sg = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %11, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef 0)
          to label %bb.br unwind label %bb.bu     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.sh = load ptr, ptr %i.rv, align 8            ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 64 ; 2 uses
  %i.sj = load i32, ptr %i.si, align 8            ; 2 uses
  %.not133 = icmp eq i32 %i.sj, 0
  br i1 %.not133, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  store i32 1, ptr %i.si, align 8
  %i.sk = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #22
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.sl = load ptr, ptr %i.rv, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 72
  store ptr %i.sk, ptr %i.sm, align 8
  store ptr null, ptr %7, align 8
  %i.sn = load ptr, ptr %i.rv, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 72
  %i.sp = load ptr, ptr %i.so, align 8
  store ptr %i.ru, ptr %i.sp, align 8
  br label %bb.bz

bb.bu:                                            ; preds = %bb.bs, %bb.bq
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bv:                                            ; preds = %bb.br
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sh, i64 72
  %i.ss = load ptr, ptr %i.sr, align 8            ; 3 uses
  %i.st = add i32 %i.sj, 1
  %i.su = zext i32 %i.st to i64
  %i.sv = shl nuw nsw i64 %i.su, 3
  %i.sw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sv) #22
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.sx = load ptr, ptr %i.rv, align 8
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 72
  store ptr %i.sw, ptr %i.sy, align 8
  %i.sz = load ptr, ptr %i.rv, align 8            ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 64
  %i.tb = load i32, ptr %i.ta, align 8
  %.not165 = icmp eq i32 %i.tb, 0
  br i1 %.not165, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.tc = zext i32 %i.tu to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bw, %._crit_edge.loopexit
  %.lcssa160 = phi ptr [ %i.ts, %._crit_edge.loopexit ], [ %i.sz, %bb.bw ]
  %.lcssa = phi i64 [ %i.tc, %._crit_edge.loopexit ], [ 0, %bb.bw ]
  store ptr null, ptr %7, align 8
  %i.td = getelementptr inbounds nuw i8, ptr %.lcssa160, i64 72
  %i.te = load ptr, ptr %i.td, align 8
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %.lcssa
  store ptr %i.ru, ptr %i.tf, align 8
  %i.tg = load ptr, ptr %i.rv, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 64 ; 2 uses
  %i.ti = load i32, ptr %i.th, align 8
  %i.tj = add i32 %i.ti, 1
  store i32 %i.tj, ptr %i.th, align 8
  %i.tk = icmp eq ptr %i.ss, null
  br i1 %i.tk, label %bb.bz, label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.lr.ph:                                           ; preds = %bb.bw, %.lr.ph
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %.lr.ph ], [ 0, %bb.bw ] ; 3 uses
  %i.tm = phi ptr [ %i.ts, %.lr.ph ], [ %i.sz, %bb.bw ]
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %indvars.iv170
  %i.to = load ptr, ptr %i.tn, align 8
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 72
  %i.tq = load ptr, ptr %i.tp, align 8
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv170
  store ptr %i.to, ptr %i.tr, align 8
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %i.ts = load ptr, ptr %i.rv, align 8            ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 64
  %i.tu = load i32, ptr %i.tt, align 8            ; 2 uses
  %i.tv = zext i32 %i.tu to i64
  %i.tw = icmp samesign ult i64 %indvars.iv.next171, %i.tv
  br i1 %i.tw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !15

bb.by:                                            ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.ss) #21
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge, %bb.by, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bx, %bb.bu
  %.pn134 = phi { ptr, i32 } [ %i.tl, %bb.bx ], [ %i.sq, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.cf

bb.cb:                                            ; preds = %bb.bz, %bb.bp, %bb.bo
  invoke void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %.2)
          to label %bb.cc unwind label %bb.aj

bb.cc:                                            ; preds = %bb.cb
  store ptr %.2, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %.pr155.pre = load ptr, ptr %7, align 8         ; 3 uses
  %.not.i153 = icmp eq ptr %.pr155.pre, null
  br i1 %.not.i153, label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EED2Ev.exit, label %bb.cd

end_hunk_1
