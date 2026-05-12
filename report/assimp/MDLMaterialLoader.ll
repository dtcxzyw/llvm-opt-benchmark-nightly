inline.NumInlined: 254
inline.NumDeleted: 140
begin_hunk_0_@_ZN6Assimp11MDLImporter28CreateTextureARGB8_3DGS_MDL3EPKh:bb.a
  br label %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit

_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit:    ; preds = %._crit_edge, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ar = load i32, ptr %i.aq, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MDLImporter28CreateTextureARGB8_3DGS_MDL3EPKh:bb.a
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.au) #22
  store ptr %i.av, ptr %i.ao, align 8
  %i.aw = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ay = load i32, ptr %i.ax, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL4EPKhjPj:bb.a

.critedge:                                        ; preds = %bb.c
  tail call void @_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %i.h)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL4EPKhjPj:bb.a
  br label %bb.g

bb.e:                                             ; preds = %.critedge
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = add i32 %i.s, 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #22
  store ptr %i.ae, ptr %i.z, align 8
  %i.af = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load i32, ptr %i.ag, align 8
end_hunk_3
begin_hunk_4_@_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL5EPKhjPj:bb.a
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp eq i32 %i.a, -1                     ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #22 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1060) %i.c, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.d, i8 0, i64 1036, i1 false)
end_hunk_4
begin_hunk_5_@_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL5EPKhjPj:bb.a
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
end_hunk_5
begin_hunk_6_@_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL5EPKhjPj:bb.a
  br i1 %i.b, label %_ZN9aiTextureD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.thread47, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL5EPKhjPj:bb.a
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
end_hunk_7
begin_hunk_8_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a

bb.l:                                             ; preds = %bb.i
  %i.n = invoke noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #22
          to label %_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit unwind label %bb.h ; 10 uses

_ZNSt10unique_ptrI9aiTextureSt14default_deleteIS0_EE5resetEPS0_.exit: ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a

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
end_hunk_9
begin_hunk_10_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a
  br i1 %.not158, label %bb.cb, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 64
  %i.rt = load i32, ptr %i.rs, align 8            ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a
  br label %bb.ca

bb.bv:                                            ; preds = %bb.br
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sc, i64 72 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8            ; 3 uses
  %i.so = add i32 %i.se, 1
  %i.sp = zext i32 %i.so to i64
end_hunk_11
begin_hunk_12_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj:bb.a
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.sr, ptr %i.sm, align 8
  %i.ss = load ptr, ptr %i.rq, align 8            ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 64
  %i.su = load i32, ptr %i.st, align 8
end_hunk_12
begin_hunk_13_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_RSt6vectorIP10aiMaterialSaIS6_EE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c
end_hunk_13
begin_hunk_14_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_RSt6vectorIP10aiMaterialSaIS6_EE:bb.a
bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %3, align 8                ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_14
begin_hunk_15_@_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_RSt6vectorIP10aiMaterialSaIS6_EE:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #21
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
end_hunk_15
