inline.NumInlined: 254
inline.NumDeleted: 140
begin_hunk_0_@_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture:bb.a
  store i8 %i.hq, ptr %i.hs, align 1
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 3 uses
  %i.ht = load i32, ptr %4, align 8
  %i.hu = load i32, ptr %i.gq, align 4
  %i.hv = mul i32 %i.hu, %i.ht
  %i.hw = zext i32 %i.hv to i64
  %i.hx = icmp samesign ult i64 %indvars.iv.next231, %i.hw
  br i1 %i.hx, label %.lr.ph209, label %._crit_edge.loopexit, !llvm.loop !13

._crit_edge.loopexit:                             ; preds = %.lr.ph209
  %i.hy = trunc nuw i64 %indvars.iv.next231 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %.0182.lcssa = phi i32 [ 0, %bb.v ], [ %i.hy, %._crit_edge.loopexit ]
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
  %.1 = phi i32 [ %.0182.lcssa, %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit ], [ %i.ic, %bb.x ]
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
define hidden void @_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL5EPKhjPj(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %1, i32 noundef %2, ptr noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp eq i32 %i.a, -1                     ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #22 ; 10 uses
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
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #22 ; 2 uses
  store ptr %i.p, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.e, i64 %i.o, i1 false)
  %i.q = load i32, ptr %3, align 4
  %i.r = add i32 %i.q, 8
  store i32 %i.r, ptr %3, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %.thread
  tail call void @_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.e, i32 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %i.c)
  %i.s = load i32, ptr %3, align 4
  %i.t = add i32 %i.s, 8
  store i32 %i.t, ptr %3, align 4
  br i1 %i.b, label %_ZN9aiTextureD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.thread47, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.w, align 8
  %i.y = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #22
  %i.z = load ptr, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store ptr %i.y, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.u, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.c, ptr %i.ad, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 72 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = add i32 %i.x, 1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #22
  store ptr %i.aj, ptr %i.ae, align 8
  %i.ak = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load i32, ptr %i.al, align 8
  %.not51 = icmp eq i32 %i.am, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.an = zext i32 %i.be to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.loopexit
  %.lcssa48 = phi ptr [ %i.bc, %._crit_edge.loopexit ], [ %i.ak, %bb.f ]
  %.lcssa = phi i64 [ %i.an, %._crit_edge.loopexit ], [ 0, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa48, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.lcssa
  store ptr %i.c, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.u, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8
  %i.av = icmp eq ptr %i.af, null
  br i1 %i.av, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.f ] ; 3 uses
  %i.aw = phi ptr [ %i.bc, %.lr.ph ], [ %i.ak, %bb.f ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv
  store ptr %i.ay, ptr %i.bb, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load i32, ptr %i.bd, align 8            ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp samesign ult i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !14

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #21
  br label %bb.h

.critedge:                                        ; preds = %bb.b
  store i32 %i.h, ptr %3, align 4
  %i.bh = zext i32 %i.h to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bh
  tail call void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.bi)
  %i.bj = load i32, ptr %3, align 4
  %i.bk = add i32 %i.bj, 8
  store i32 %i.bk, ptr %3, align 4
  br label %_ZN9aiTextureD2Ev.exit

_ZN9aiTextureD2Ev.exit:                           ; preds = %bb.c, %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 1064) #21
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %_ZN9aiTextureD2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr", align 8   ; 13 uses
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
          to label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit unwind label %bb.h ; 10 uses

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
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #22
          to label %bb.n unwind label %bb.h       ; 2 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.y, ptr %i.o, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %1, i64 %i.x, i1 false)
  br label %.loopexit210

bb.o:                                             ; preds = %bb.b
  %.not126 = icmp eq i32 %6, 1
  br i1 %.not126, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.q unwind label %bb.h

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.z, ptr noundef nonnull @.str.7)
          to label %bb.r unwind label %bb.h

bb.r:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.aa, i8 0, i64 1024, i1 false)
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1023) ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 1 %1, i64 %i.ac, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1
  %i.af = trunc nuw nsw i64 %i.ac to i32
  store i32 %i.af, ptr %8, align 4
  %i.ag = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %8, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef 0)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.cg

bb.u:                                             ; preds = %bb.b
  %i.ak = icmp eq i32 %i.g, 0
  %i.al = icmp ne i32 %4, 0
  %or.cond = and i1 %i.al, %i.ak
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.am = icmp ne i32 %5, 0
  %i.an = icmp ne i32 %6, 0
  %or.cond5 = and i1 %i.am, %i.an
  br i1 %or.cond5, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ao = invoke noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #22
          to label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit142 unwind label %bb.h ; 10 uses

_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit142: ; preds = %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 66 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1060) %i.ao, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.ap, i8 0, i64 1036, i1 false)
  store ptr %i.ao, ptr %7, align 8
  %i.aq = icmp ne i32 %6, 0
  %i.ar = icmp ne i32 %5, 0
  %or.cond7 = and i1 %i.ar, %i.aq
  br i1 %or.cond7, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit142
  %i.as = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.y unwind label %bb.h

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.as, ptr noundef nonnull @.str.9)
          to label %bb.z unwind label %bb.h

bb.z:                                             ; preds = %bb.y
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 8, ptr %i.at, align 4
  store i32 8, ptr %i.ao, align 8
  %i.au = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #22
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %bb.z
  store ptr %i.au, ptr %i.ap, align 8
  %i.av = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 0, ptr %i.aw, align 1
  store i8 0, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 0, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  store i8 -1, ptr %i.ay, align 1
  %i.az = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 33
  store i8 -1, ptr %i.bb, align 1
  store i8 -1, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 34
  store i8 -1, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 35
  store i8 -1, ptr %i.bd, align 1
  %i.be = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 65
  store i8 0, ptr %i.bg, align 1
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 61
  store i8 0, ptr %i.lv, align 1
  store i8 0, ptr %i.lu, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 62
  store i8 0, ptr %i.lw, align 1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 63
  store i8 -1, ptr %i.lx, align 1
  %i.ly = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 92
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 93
  store i8 -1, ptr %i.ma, align 1
  store i8 -1, ptr %i.lz, align 1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 94
  store i8 -1, ptr %i.mb, align 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 95
  store i8 -1, ptr %i.mc, align 1
  %i.md = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 124
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 125
  store i8 0, ptr %i.mf, align 1
  store i8 0, ptr %i.me, align 1
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 126
  store i8 0, ptr %i.mg, align 1
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 127
  store i8 -1, ptr %i.mh, align 1
  %i.mi = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 156
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 157
  store i8 -1, ptr %i.mk, align 1
  store i8 -1, ptr %i.mj, align 1
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 158
  store i8 -1, ptr %i.ml, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 159
  store i8 -1, ptr %i.mm, align 1
  %i.mn = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 188
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 189
  store i8 0, ptr %i.mp, align 1
  store i8 0, ptr %i.mo, align 1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 190
  store i8 0, ptr %i.mq, align 1
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 191
  store i8 -1, ptr %i.mr, align 1
  %i.ms = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 220
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 221
  store i8 -1, ptr %i.mu, align 1
  store i8 -1, ptr %i.mt, align 1
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 222
  store i8 -1, ptr %i.mv, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 223
  store i8 -1, ptr %i.mw, align 1
  %i.mx = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 252
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 253
  store i8 0, ptr %i.mz, align 1
  store i8 0, ptr %i.my, align 1
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 254
  store i8 0, ptr %i.na, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 255
  store i8 -1, ptr %i.nb, align 1
  br label %.loopexit210

bb.aa:                                            ; preds = %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit142
  store i32 %5, ptr %i.ao, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 %6, ptr %i.nc, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4
  invoke void @_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %1, i32 noundef %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ao)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.nd = load i32, ptr %i.b, align 4
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ne
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.loopexit210

bb.ac:                                            ; preds = %bb.aa
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.cg

.loopexit210:                                     ; preds = %.preheader, %bb.ab, %bb.n
  %i.nh = phi ptr [ %i.ao, %bb.ab ], [ %i.n, %bb.n ], [ %i.ao, %.preheader ] ; 3 uses
  %.0107 = phi ptr [ %i.nf, %bb.ab ], [ %i.v, %bb.n ], [ %1, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nj = load i32, ptr %i.ni, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.nj, 0
  br i1 %.not.i, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.loopexit210
  %i.nk = load i32, ptr %i.nh, align 8            ; 2 uses
  %.not18.i = icmp eq i32 %i.nk, 0
  br i1 %.not18.i, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nl = mul i32 %i.nk, %i.nj                    ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8            ; 6 uses
  %i.no = zext i32 %i.nl to i64
  %.idx = shl nuw nsw i64 %i.no, 2
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 %.idx
  %.not19.not.i216 = icmp eq i32 %i.nl, 1
  br i1 %.not19.not.i216, label %.critedge.i, label %.lr.ph220

.lr.ph220:                                        ; preds = %bb.ae
  %.0.i215 = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  br label %bb.ag

bb.af:                                            ; preds = %_ZNK7aiTexelneERKS_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.0.i218, i64 4 ; 2 uses
  %.not19.not.i = icmp eq ptr %.0.i, %i.np
  br i1 %.not19.not.i, label %.critedge.i, label %bb.ag, !llvm.loop !4

bb.ag:                                            ; preds = %.lr.ph220, %bb.af
  %.0.i218 = phi ptr [ %.0.i215, %.lr.ph220 ], [ %.0.i, %bb.af ] ; 3 uses
  %.pn.i217 = phi ptr [ %i.nn, %.lr.ph220 ], [ %.0.i218, %bb.af ] ; 7 uses
  %i.nq = load i8, ptr %.0.i218, align 1
  %i.nr = load i8, ptr %.pn.i217, align 1
  %.not.i.i143 = icmp eq i8 %i.nq, %i.nr
  br i1 %.not.i.i143, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.ns = getelementptr inbounds nuw i8, ptr %.pn.i217, i64 6
  %i.nt = load i8, ptr %i.ns, align 1
  %i.nu = getelementptr inbounds nuw i8, ptr %.pn.i217, i64 2
  %i.nv = load i8, ptr %i.nu, align 1
  %.not5.i.i = icmp eq i8 %i.nt, %i.nv
  br i1 %.not5.i.i, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.nw = getelementptr inbounds nuw i8, ptr %.pn.i217, i64 5
  %i.nx = load i8, ptr %i.nw, align 1
  %i.ny = getelementptr inbounds nuw i8, ptr %.pn.i217, i64 1
  %i.nz = load i8, ptr %i.ny, align 1
  %.not6.i.i = icmp eq i8 %i.nx, %i.nz
  br i1 %.not6.i.i, label %_ZNK7aiTexelneERKS_.exit.i, label %.loopexit

_ZNK7aiTexelneERKS_.exit.i:                       ; preds = %bb.ai
  %i.oa = getelementptr inbounds nuw i8, ptr %.pn.i217, i64 7
  %i.ob = load i8, ptr %i.oa, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %.pn.i217, i64 3
  %i.od = load i8, ptr %i.oc, align 1
  %.not25.i = icmp eq i8 %i.ob, %i.od
  br i1 %.not25.i, label %bb.af, label %.loopexit, !llvm.loop !4

.critedge.i:                                      ; preds = %bb.af, %bb.ae
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  %i.of = load <2 x i8>, ptr %i.oe, align 1
  %i.og = uitofp <2 x i8> %i.of to <2 x float>
  %i.oh = fdiv <2 x float> %i.og, splat (float 2.550000e+02)
  %i.oi = shufflevector <2 x float> %i.oh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oj = load i8, ptr %i.nn, align 1
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nn, i64 3
  %i.ol = load i8, ptr %i.ok, align 1
  %i.om = insertelement <2 x i8> poison, i8 %i.oj, i64 0
  %i.on = insertelement <2 x i8> %i.om, i8 %i.ol, i64 1
  %i.oo = uitofp <2 x i8> %i.on to <2 x float>
  %i.op = fdiv <2 x float> %i.oo, splat (float 2.550000e+02)
  br label %.loopexit

bb.aj:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit, %bb.bg, %bb.cb, %bb.bl
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit:                                        ; preds = %bb.ag, %bb.ah, %bb.ai, %_ZNK7aiTexelneERKS_.exit.i, %.loopexit210, %bb.ad, %.critedge.i
  %.sroa.5.0.i = phi <2 x float> [ zeroinitializer, %.loopexit210 ], [ zeroinitializer, %bb.ad ], [ %i.op, %.critedge.i ], [ zeroinitializer, %_ZNK7aiTexelneERKS_.exit.i ], [ zeroinitializer, %bb.ai ], [ zeroinitializer, %bb.ah ], [ zeroinitializer, %bb.ag ]
  %.sroa.0.0.i = phi <2 x float> [ <float +qnan, float 0.000000e+00>, %.loopexit210 ], [ <float +qnan, float 0.000000e+00>, %bb.ad ], [ %i.oi, %.critedge.i ], [ <float +qnan, float 0.000000e+00>, %_ZNK7aiTexelneERKS_.exit.i ], [ <float +qnan, float 0.000000e+00>, %bb.ai ], [ <float +qnan, float 0.000000e+00>, %bb.ah ], [ <float +qnan, float 0.000000e+00>, %bb.ag ] ; 2 uses
  store <2 x float> %.sroa.0.0.i, ptr %9, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %i.or = and i32 %4, 16
  %.not128 = icmp eq i32 %i.or, 0
  br i1 %.not128, label %bb.bf, label %bb.ak

.thread:                                          ; preds = %bb.v, %bb.s, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit
  %.0107.ph = phi ptr [ %1, %bb.v ], [ %i.ai, %bb.s ], [ %1, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.os = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.os, i8 0, i64 12, i1 false)
  store float +qnan, ptr %9, align 8
  %i.ot = and i32 %4, 16
  %.not128199 = icmp eq i32 %i.ot, 0
  br i1 %.not128199, label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152, label %bb.ak

bb.ak:                                            ; preds = %.thread, %.loopexit
  %.0107196200 = phi ptr [ %.0107.ph, %.thread ], [ %.0107, %.loopexit ] ; 11 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.0107196200, i64 68 ; 2 uses
  invoke void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.ou)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ov = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 6 uses
  store <2 x float> zeroinitializer, ptr %10, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ow, align 8
  %i.ox = load float, ptr %.0107196200, align 1   ; 2 uses
  store float %i.ox, ptr %10, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %.0107196200, i64 4
  %i.oz = load <2 x float>, ptr %i.oy, align 1    ; 2 uses
  store <2 x float> %i.oz, ptr %i.ov, align 4
  %i.pa = load float, ptr %9, align 8             ; 2 uses
  %i.pb = fcmp ord float %i.pa, 0.000000e+00
  br i1 %i.pb, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.pc = fmul float %i.ox, %i.pa
  store float %i.pc, ptr %10, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.pe = load <2 x float>, ptr %i.pd, align 4
  %i.pf = fmul <2 x float> %i.oz, %i.pe
  store <2 x float> %i.pf, ptr %i.ov, align 4
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ao:                                            ; preds = %bb.ay, %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit145, %bb.av, %bb.as, %bb.ap
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.pi = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %10, i32 noundef 12, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %bb.aq unwind label %bb.ao     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.pj = getelementptr inbounds nuw i8, ptr %.0107196200, i64 32
  %i.pk = load float, ptr %i.pj, align 1          ; 2 uses
  store float %i.pk, ptr %10, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %.0107196200, i64 36
  %i.pm = load <2 x float>, ptr %i.pl, align 1    ; 2 uses
  store <2 x float> %i.pm, ptr %i.ov, align 4
  %i.pn = load float, ptr %9, align 8             ; 2 uses
  %i.po = fcmp ord float %i.pn, 0.000000e+00
  br i1 %i.po, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.pp = fmul float %i.pk, %i.pn
  store float %i.pp, ptr %10, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.pr = load <2 x float>, ptr %i.pq, align 4
  %i.ps = fmul <2 x float> %i.pm, %i.pr
  store <2 x float> %i.ps, ptr %i.ov, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.pt = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %10, i32 noundef 12, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %bb.at unwind label %bb.ao     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.pu = getelementptr inbounds nuw i8, ptr %.0107196200, i64 16
  %i.pv = load float, ptr %i.pu, align 1          ; 2 uses
  store float %i.pv, ptr %10, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %.0107196200, i64 20
  %i.px = load <2 x float>, ptr %i.pw, align 1    ; 2 uses
  store <2 x float> %i.px, ptr %i.ov, align 4
  %i.py = load float, ptr %9, align 8             ; 2 uses
  %i.pz = fcmp ord float %i.py, 0.000000e+00
  br i1 %i.pz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.qa = fmul float %i.pv, %i.py
  store float %i.qa, ptr %10, align 8
  %i.qb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.qc = load <2 x float>, ptr %i.qb, align 4
  %i.qd = fmul <2 x float> %i.px, %i.qc
  store <2 x float> %i.qd, ptr %i.ov, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.qe = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %10, i32 noundef 12, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit145 unwind label %bb.ao ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit145: ; preds = %bb.av
  %i.qf = getelementptr inbounds nuw i8, ptr %.0107196200, i64 48
  %i.qg = load <2 x float>, ptr %i.qf, align 1
  store <2 x float> %i.qg, ptr %10, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %.0107196200, i64 56
  %i.qi = load float, ptr %i.qh, align 1
  store float %i.qi, ptr %i.ow, align 8
  %i.qj = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %10, i32 noundef 12, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %bb.aw unwind label %bb.ao     ; 0 uses

bb.aw:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit145
  %i.qk = getelementptr inbounds nuw i8, ptr %.0107196200, i64 28
  %i.ql = load float, ptr %i.qk, align 1          ; 2 uses
  store float %i.ql, ptr %10, align 8
  %i.qm = load float, ptr %9, align 8
  %i.qn = fcmp ord float %i.qm, 0.000000e+00
  br i1 %i.qn, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.qo = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.qp = load float, ptr %i.qo, align 4
  %i.qq = fmul float %i.ql, %i.qp
  store float %i.qq, ptr %10, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.qr = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %10, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit unwind label %bb.ao ; 0 uses

_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 2, ptr %i.c, align 4
  %i.qs = getelementptr inbounds nuw i8, ptr %.0107196200, i64 64
  %i.qt = load float, ptr %i.qs, align 1          ; 2 uses
  %i.qu = fcmp une float %i.qt, 0.000000e+00
  br i1 %i.qu, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit
  store i32 3, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store float %i.qt, ptr %i.d, align 4
  %i.qv = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.d, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit147 unwind label %bb.ba ; 0 uses

_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit147: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.bd

bb.bb:                                            ; preds = %_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit147, %_ZN10aiMaterial11AddPropertyIfEE8aiReturnPKT_jPKcjj.exit
  %i.qx = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit148 unwind label %bb.bc ; 0 uses

_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit148: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %thread-pre-split

bb.bc:                                            ; preds = %bb.bb
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.qy, %bb.bc ], [ %i.qw, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ao
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bd ], [ %i.ph, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.cf

bb.bf:                                            ; preds = %.loopexit
  %i.qz = extractelement <2 x float> %.sroa.0.0.i, i64 0 ; 2 uses
  %i.ra = fcmp ord float %i.qz, 0.000000e+00
  br i1 %i.ra, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.rb = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %9, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit unwind label %bb.aj ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.bg
  %i.rc = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %9, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %thread-pre-split unwind label %bb.aj ; 0 uses

thread-pre-split:                                 ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit148
  %.1.ph = phi ptr [ %.0107, %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit ], [ %i.ou, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit148 ]
  %.pr = load float, ptr %9, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %thread-pre-split, %bb.bf
  %i.rd = phi float [ %.pr, %thread-pre-split ], [ %i.qz, %bb.bf ]
  %.1 = phi ptr [ %.1.ph, %thread-pre-split ], [ %.0107, %bb.bf ] ; 3 uses
  %i.re = fcmp ord float %i.rd, 0.000000e+00
  br i1 %i.re, label %bb.bi, label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152

bb.bi:                                            ; preds = %bb.bh
  %i.rf = load ptr, ptr %7, align 8               ; 3 uses
  store ptr null, ptr %7, align 8
  %.not.i.i150 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i150, label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8            ; 2 uses
  %i.ri = icmp eq ptr %i.rh, null
  br i1 %i.ri, label %_ZNKSt14default_deleteI9aiTextureEclEPS0_.exit.i.i151, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.rh) #21
  br label %_ZNKSt14default_deleteI9aiTextureEclEPS0_.exit.i.i151

_ZNKSt14default_deleteI9aiTextureEclEPS0_.exit.i.i151: ; preds = %bb.bk, %bb.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.rf, i64 noundef 1064) #21
  br label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152

_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152: ; preds = %.thread, %_ZNKSt14default_deleteI9aiTextureEclEPS0_.exit.i.i151, %bb.bi, %bb.bh
  %.1206 = phi ptr [ %.1, %bb.bh ], [ %.1, %_ZNKSt14default_deleteI9aiTextureEclEPS0_.exit.i.i151 ], [ %.1, %bb.bi ], [ %.0107.ph, %.thread ] ; 4 uses
  %i.rj = and i32 %4, 32
  %.not132 = icmp eq i32 %i.rj, 0
  br i1 %.not132, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152
  invoke void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %.1206)
          to label %bb.bm unwind label %bb.aj

bb.bm:                                            ; preds = %bb.bl
  %i.rk = load i32, ptr %.1206, align 4
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr i8, ptr %.1206, i64 %i.rl
  %i.rn = getelementptr i8, ptr %i.rm, i64 4      ; 2 uses
  invoke void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %i.rn)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bo:                                            ; preds = %bb.bm, %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152
  %.2 = phi ptr [ %.1206, %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit152 ], [ %i.rn, %bb.bm ] ; 2 uses
  %i.rp = load ptr, ptr %7, align 8               ; 3 uses
  %.not158 = icmp eq ptr %i.rp, null
  br i1 %.not158, label %bb.cb, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 64
  %i.rt = load i32, ptr %i.rs, align 8            ; 2 uses
  %i.ru = icmp ult i32 %i.rt, 1000
  br i1 %i.ru, label %bb.bq, label %bb.cb

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.rv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 5, ptr noundef nonnull @.str.17, i32 noundef %i.rt) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.rw = getelementptr inbounds nuw i8, ptr %11, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.rw, i8 0, i64 1024, i1 false)
  %i.rx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #24 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.rz = add i64 %i.rx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ry, ptr nonnull align 1 %i.e, i64 %i.rz, i1 false)
  %i.sa = trunc i64 %i.rx to i32
  store i32 %i.sa, ptr %11, align 4
  %i.sb = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %11, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef 0)
          to label %bb.br unwind label %bb.bu     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.sc = load ptr, ptr %i.rq, align 8            ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 64 ; 2 uses
  %i.se = load i32, ptr %i.sd, align 8            ; 2 uses
  %.not133 = icmp eq i32 %i.se, 0
  br i1 %.not133, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  store i32 1, ptr %i.sd, align 8
  %i.sf = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #22
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.sg = load ptr, ptr %i.rq, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 72
  store ptr %i.sf, ptr %i.sh, align 8
  store ptr null, ptr %7, align 8
  %i.si = load ptr, ptr %i.rq, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 72
  %i.sk = load ptr, ptr %i.sj, align 8
  store ptr %i.rp, ptr %i.sk, align 8
  br label %bb.bz

bb.bu:                                            ; preds = %bb.bs, %bb.bq
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bv:                                            ; preds = %bb.br
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sc, i64 72 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8            ; 3 uses
  %i.so = add i32 %i.se, 1
  %i.sp = zext i32 %i.so to i64
  %i.sq = shl nuw nsw i64 %i.sp, 3
  %i.sr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sq) #22
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.sr, ptr %i.sm, align 8
  %i.ss = load ptr, ptr %i.rq, align 8            ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 64
  %i.su = load i32, ptr %i.st, align 8
  %.not165 = icmp eq i32 %i.su, 0
  br i1 %.not165, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.sv = zext i32 %i.tn to i64
  br label %._crit_edge

end_hunk_1
