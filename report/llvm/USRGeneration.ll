Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/USRGeneration?download=true
inline.NumInlined: 3066
inline.NumDeleted: 1310
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_112USRGenerator9VisitTypeEN5clang8QualTypeE:bb.a

_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit: ; preds = %bb.cvw
  %i.ogl = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ogd) #13 ; 2 uses
  %.not162 = icmp eq ptr %i.ogl, null
  br i1 %.not162, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit..thread3576_crit_edge, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread3570

_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit..thread3576_crit_edge: ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit
  %.pre3867 = load ptr, ptr %i.bb, align 16, !tbaa !478
  br label %.thread3576

_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread3570: ; preds = %.thread3562, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit
  %.1.i33743573 = phi ptr [ %i.ogl, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit ], [ %i.ogd, %.thread3562 ] ; 2 uses
  %i.ogm = load ptr, ptr %i.e, align 8, !tbaa !23 ; 3 uses
  %i.ogn = load ptr, ptr %i.f, align 8, !tbaa !22
  %.not.i3375 = icmp ult ptr %i.ogm, %i.ogn
  br i1 %.not.i3375, label %bb.cvy, label %bb.cvx

bb.cvx:                                           ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread3570
  %i.ogo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 noundef zeroext 60) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit3299

bb.cvy:                                           ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread3570
  %i.ogp = getelementptr inbounds nuw i8, ptr %i.ogm, i64 1
  store ptr %i.ogp, ptr %i.e, align 8, !tbaa !23
  store i8 60, ptr %i.ogm, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit3299

.thread3576:                                      ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit..thread3576_crit_edge, %bb.cvw
  %i.ogq = phi ptr [ %.pre3867, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit..thread3576_crit_edge ], [ %i.ogd, %bb.cvw ] ; 4 uses
  %i.ogr = getelementptr inbounds nuw i8, ptr %i.ogq, i64 16
  %i.ogs = load i8, ptr %i.ogr, align 16          ; 2 uses
  %i.ogt = add i8 %i.ogs, -50
  %switch.i.i.i.i.i.i.i.i.i4033 = icmp ult i8 %i.ogt, -3
  br i1 %switch.i.i.i.i.i.i.i.i.i4033, label %bb.cvz, label %_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit.thread4044

bb.cvz:                                           ; preds = %.thread3576
  %i.ogu = getelementptr inbounds nuw i8, ptr %i.ogq, i64 8
  %.sroa.0.0.copyload.i.i.i.i4034 = load i64, ptr %i.ogu, align 8, !tbaa !24
  %i.ogv = and i64 %.sroa.0.0.copyload.i.i.i.i4034, -16
  %i.ogw = inttoptr i64 %i.ogv to ptr
  %i.ogx = load ptr, ptr %i.ogw, align 16, !tbaa !478
  %i.ogy = getelementptr inbounds nuw i8, ptr %i.ogx, i64 16
  %i.ogz = load i8, ptr %i.ogy, align 16
  %i.oha = add i8 %i.ogz, -47
  %switch.i.i.i.i.i.i.i.i5.i = icmp ult i8 %i.oha, 3
  br i1 %switch.i.i.i.i.i.i.i.i5.i, label %_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit, label %.critedge178

_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit:   ; preds = %bb.cvz
  %i.ohb = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ogq) #13 ; 3 uses
  %.not163 = icmp eq ptr %i.ohb, null
  br i1 %.not163, label %.critedge178, label %_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit.thread4044_crit_edge

_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit.thread4044_crit_edge: ; preds = %_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit
  %.phi.trans.insert4130 = getelementptr inbounds nuw i8, ptr %i.ohb, i64 16
  %.pre4131 = load i8, ptr %.phi.trans.insert4130, align 16
  br label %_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit.thread4044

_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit.thread4044: ; preds = %_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit.thread4044_crit_edge, %.thread3576
  %i.ohc = phi i8 [ %.pre4131, %_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit.thread4044_crit_edge ], [ %i.ogs, %.thread3576 ]
  %.1.i4047 = phi ptr [ %i.ohb, %_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit.thread4044_crit_edge ], [ %i.ogq, %.thread3576 ] ; 2 uses
  %.not3598 = icmp eq i8 %i.ohc, 48
  br i1 %.not3598, label %bb.cwd, label %bb.cwa

bb.cwa:                                           ; preds = %_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit.thread4044
  %i.ohd = load ptr, ptr %i.e, align 8, !tbaa !23 ; 3 uses
  %i.ohe = load ptr, ptr %i.f, align 8, !tbaa !22
  %.not.i3381 = icmp ult ptr %i.ohd, %i.ohe
  br i1 %.not.i3381, label %bb.cwc, label %bb.cwb

bb.cwb:                                           ; preds = %bb.cwa
  %i.ohf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 noundef zeroext 36) #13 ; 0 uses
  br label %.thread3581

bb.cwc:                                           ; preds = %bb.cwa
  %i.ohg = getelementptr inbounds nuw i8, ptr %i.ohd, i64 1
  store ptr %i.ohg, ptr %i.e, align 8, !tbaa !23
  store i8 36, ptr %i.ohd, align 1, !tbaa !24
  br label %.thread3581

.thread3581:                                      ; preds = %bb.cwc, %bb.cwb
  %i.ohh = getelementptr inbounds nuw i8, ptr %.1.i4047, i64 24
  %i.ohi = load ptr, ptr %i.ohh, align 8, !tbaa !593
  call fastcc void @_ZN12_GLOBAL__N_112USRGenerator12VisitTagDeclEPKN5clang7TagDeclE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.ohi)
  br label %_ZN4llvm11raw_ostreamlsEc.exit199

bb.cwd:                                           ; preds = %_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit.thread4044
  %i.ohj = getelementptr inbounds nuw i8, ptr %.1.i4047, i64 24
  %i.ohk = load ptr, ptr %i.ohj, align 8, !tbaa !593
  %i.ohl = call i64 @_ZNK5clang13CXXRecordDecl38getCanonicalTemplateSpecializationTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(144) %i.ohk, ptr noundef nonnull align 8 dereferenceable(23904) %i.d) #13
  %.pre3868 = and i64 %i.ohl, -16
  %.pre3869 = inttoptr i64 %.pre3868 to ptr
  br label %.critedge178

.critedge178:                                     ; preds = %bb.cvz, %bb.cwd, %_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit
  %.pre-phi3870 = phi ptr [ %.pre3869, %bb.cwd ], [ %i.bb, %_ZNK5clang4Type5getAsINS_7TagTypeEEEPKT_v.exit ], [ %i.bb, %bb.cvz ] ; 6 uses
  %i.ohm = load ptr, ptr %.pre-phi3870, align 8, !tbaa !478 ; 5 uses
  %i.ohn = getelementptr inbounds nuw i8, ptr %i.ohm, i64 8
  %.sroa.0.0.copyload.i.i.i.i3385 = load i64, ptr %i.ohn, align 8, !tbaa !24
  %i.oho = and i64 %.sroa.0.0.copyload.i.i.i.i3385, -16
  %i.ohp = inttoptr i64 %i.oho to ptr             ; 2 uses
  %i.ohq = load ptr, ptr %i.ohp, align 16, !tbaa !478 ; 3 uses
  %i.ohr = getelementptr inbounds nuw i8, ptr %i.ohq, i64 16
  %i.ohs = load i8, ptr %i.ohr, align 16          ; 2 uses
  %i.oht = icmp ne i8 %i.ohs, 33
  %.not1653599 = icmp eq ptr %i.ohq, null
  %.not165 = or i1 %.not1653599, %i.oht
  br i1 %.not165, label %.critedge180, label %bb.cwe

bb.cwe:                                           ; preds = %.critedge178
  %i.ohu = load ptr, ptr %i.e, align 8, !tbaa !23 ; 3 uses
  %i.ohv = load ptr, ptr %i.f, align 8, !tbaa !22
  %.not.i3387 = icmp ult ptr %i.ohu, %i.ohv
  br i1 %.not.i3387, label %bb.cwg, label %bb.cwf

bb.cwf:                                           ; preds = %bb.cwe
  %i.ohw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 noundef zeroext 36) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit3389

bb.cwg:                                           ; preds = %bb.cwe
  %i.ohx = getelementptr inbounds nuw i8, ptr %i.ohu, i64 1
  store ptr %i.ohx, ptr %i.e, align 8, !tbaa !23
  store i8 36, ptr %i.ohu, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit3389

_ZN4llvm11raw_ostreamlsEc.exit3389:               ; preds = %bb.cwf, %bb.cwg
  %i.ohy = call noundef ptr @_ZNK5clang17ObjCInterfaceType7getDeclEv(ptr noundef nonnull align 16 dereferenceable(48) %i.ohq) #13
  call fastcc void @_ZN12_GLOBAL__N_112USRGenerator22VisitObjCContainerDeclEPKN5clang17ObjCContainerDeclEPKNS1_16ObjCCategoryDeclE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.ohy, ptr noundef null)
  br label %_ZN4llvm11raw_ostreamlsEc.exit199

.critedge180:                                     ; preds = %.critedge178
  %i.ohz = getelementptr inbounds nuw i8, ptr %i.ohm, i64 16
  %i.oia = load i8, ptr %i.ohz, align 16
  %i.oib = and i8 %i.oia, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i4035 = icmp eq i8 %i.oib, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i4035, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread4050, label %bb.cwh

bb.cwh:                                           ; preds = %.critedge180
  %i.oic = and i8 %i.ohs, -2
  %spec.select.i.i.i.i.i.i.i.i5.i4037 = icmp eq i8 %i.oic, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i4037, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit, label %.critedge182

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit: ; preds = %bb.cwh
  %i.oid = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ohm) #13 ; 2 uses
  %.not166 = icmp eq ptr %i.oid, null
  br i1 %.not166, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit..critedge182_crit_edge, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread4050

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit..critedge182_crit_edge: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit
  %.pre4132 = load ptr, ptr %.pre-phi3870, align 8, !tbaa !478 ; 2 uses
  %.phi.trans.insert4133 = getelementptr inbounds nuw i8, ptr %.pre4132, i64 8
  %.sroa.0.0.copyload.i.i.i.i3398.pre = load i64, ptr %.phi.trans.insert4133, align 8, !tbaa !24
  %.pre4136 = and i64 %.sroa.0.0.copyload.i.i.i.i3398.pre, -16
  %.pre4137 = inttoptr i64 %.pre4136 to ptr
  br label %.critedge182

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread4050: ; preds = %.critedge180, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit
  %.1.i40384053 = phi ptr [ %i.oid, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit ], [ %i.ohm, %.critedge180 ] ; 3 uses
  %i.oie = load ptr, ptr %i.e, align 8, !tbaa !23 ; 3 uses
  %i.oif = load ptr, ptr %i.f, align 8, !tbaa !22
  %.not.i3391 = icmp ult ptr %i.oie, %i.oif
  br i1 %.not.i3391, label %bb.cwj, label %bb.cwi

bb.cwi:                                           ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread4050
  %i.oig = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 noundef zeroext 81) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit3393

bb.cwj:                                           ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread4050
  %i.oih = getelementptr inbounds nuw i8, ptr %i.oie, i64 1
  store ptr %i.oih, ptr %i.e, align 8, !tbaa !23
  store i8 81, ptr %i.oie, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit3393

_ZN4llvm11raw_ostreamlsEc.exit3393:               ; preds = %bb.cwi, %bb.cwj
  %i.oii = getelementptr inbounds nuw i8, ptr %.1.i40384053, i64 24
  %.sroa.0.0.copyload.i3394 = load i64, ptr %i.oii, align 8, !tbaa !24
  call fastcc void @_ZN12_GLOBAL__N_112USRGenerator9VisitTypeEN5clang8QualTypeE(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 %.sroa.0.0.copyload.i3394)
  %i.oij = getelementptr inbounds nuw i8, ptr %.1.i40384053, i64 48
  %i.oik = getelementptr inbounds nuw i8, ptr %.1.i40384053, i64 16
  %i.oil = load i32, ptr %i.oik, align 16         ; 2 uses
  %i.oim = lshr i32 %i.oil, 19
  %i.oin = and i32 %i.oim, 127
  %i.oio = zext nneg i32 %i.oin to i64
  %i.oip = getelementptr inbounds nuw [8 x i8], ptr %i.oij, i64 %i.oio ; 2 uses
  %i.oiq = lshr i32 %i.oil, 23
  %i.oir = and i32 %i.oiq, 504                    ; 2 uses
  %.idx = zext nneg i32 %i.oir to i64
  %i.ois = getelementptr inbounds nuw i8, ptr %i.oip, i64 %.idx
  %.not1673651 = icmp eq i32 %i.oir, 0
  br i1 %.not1673651, label %_ZN4llvm11raw_ostreamlsEc.exit199, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEc.exit3393, %.lr.ph
  %.01323652 = phi ptr [ %i.oiu, %.lr.ph ], [ %i.oip, %_ZN4llvm11raw_ostreamlsEc.exit3393 ] ; 2 uses
  %i.oit = load ptr, ptr %.01323652, align 8, !tbaa !595
  call fastcc void @_ZN12_GLOBAL__N_112USRGenerator22VisitObjCContainerDeclEPKN5clang17ObjCContainerDeclEPKNS1_16ObjCCategoryDeclE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.oit, ptr noundef null)
  %i.oiu = getelementptr inbounds nuw i8, ptr %.01323652, i64 8 ; 2 uses
  %.not167 = icmp eq ptr %i.oiu, %i.ois
  br i1 %.not167, label %_ZN4llvm11raw_ostreamlsEc.exit199, label %.lr.ph

.critedge182:                                     ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit..critedge182_crit_edge, %bb.cwh
  %.pre-phi4138 = phi ptr [ %.pre4137, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit..critedge182_crit_edge ], [ %i.ohp, %bb.cwh ]
  %i.oiv = phi ptr [ %.pre4132, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit..critedge182_crit_edge ], [ %i.ohm, %bb.cwh ]
  %i.oiw = load ptr, ptr %.pre-phi4138, align 8, !tbaa !478 ; 4 uses
  %i.oix = getelementptr inbounds nuw i8, ptr %i.oiw, i64 16
  %i.oiy = load i8, ptr %i.oix, align 16
  %i.oiz = icmp ne i8 %i.oiy, 51
  %.not1683600 = icmp eq ptr %i.oiw, null
  %.not168 = or i1 %.not1683600, %i.oiz
  br i1 %.not168, label %.critedge184, label %bb.cwk

bb.cwk:                                           ; preds = %.critedge182
  %i.oja = getelementptr inbounds nuw i8, ptr %i.oiw, i64 16
  %i.ojb = load ptr, ptr %i.e, align 8, !tbaa !23 ; 3 uses
  %i.ojc = load ptr, ptr %i.f, align 8, !tbaa !22
  %.not.i3400 = icmp ult ptr %i.ojb, %i.ojc
  br i1 %.not.i3400, label %bb.cwm, label %bb.cwl

bb.cwl:                                           ; preds = %bb.cwk
  %i.ojd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 noundef zeroext 116) #13
  br label %_ZN4llvm11raw_ostreamlsEc.exit3402

bb.cwm:                                           ; preds = %bb.cwk
  %i.oje = getelementptr inbounds nuw i8, ptr %i.ojb, i64 1
  store ptr %i.oje, ptr %i.e, align 8, !tbaa !23
  store i8 116, ptr %i.ojb, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit3402

_ZN4llvm11raw_ostreamlsEc.exit3402:               ; preds = %bb.cwl, %bb.cwm
  %.0.i3401 = phi ptr [ %i.ojd, %bb.cwl ], [ %i.g, %bb.cwm ]
  %3 = getelementptr inbounds nuw i8, ptr %i.oiw, i64 20
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 32767
  %6 = zext nneg i32 %5 to i64
  %i.ojf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i3401, i64 noundef %6) #13 ; 4 uses
  %i.ojg = getelementptr inbounds nuw i8, ptr %i.ojf, i64 32 ; 2 uses
  %i.ojh = load ptr, ptr %i.ojg, align 8, !tbaa !23 ; 3 uses
  %i.oji = getelementptr inbounds nuw i8, ptr %i.ojf, i64 24
  %i.ojj = load ptr, ptr %i.oji, align 8, !tbaa !22
  %.not.i3403 = icmp ult ptr %i.ojh, %i.ojj
  br i1 %.not.i3403, label %bb.cwo, label %bb.cwn

bb.cwn:                                           ; preds = %_ZN4llvm11raw_ostreamlsEc.exit3402
  %i.ojk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ojf, i8 noundef zeroext 46) #13
  br label %_ZN4llvm11raw_ostreamlsEc.exit3405

bb.cwo:                                           ; preds = %_ZN4llvm11raw_ostreamlsEc.exit3402
  %i.ojl = getelementptr inbounds nuw i8, ptr %i.ojh, i64 1
  store ptr %i.ojl, ptr %i.ojg, align 8, !tbaa !23
  store i8 46, ptr %i.ojh, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit3405

_ZN4llvm11raw_ostreamlsEc.exit3405:               ; preds = %bb.cwn, %bb.cwo
  %.0.i3404 = phi ptr [ %i.ojk, %bb.cwn ], [ %i.ojf, %bb.cwo ]
  %i.ojm = load i64, ptr %i.oja, align 16
  %i.ojn = lshr i64 %i.ojm, 48
  %i.ojo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i3404, i64 noundef %i.ojn) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit199

.critedge184:                                     ; preds = %.critedge182
  %i.ojp = call noundef ptr @_ZNK5clang4Type5getAsINS_26TemplateSpecializationTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.oiv) #13 ; 4 uses
  %.not169 = icmp eq ptr %i.ojp, null
  br i1 %.not169, label %.critedge186, label %bb.cwp

bb.cwp:                                           ; preds = %.critedge184
  %i.ojq = load ptr, ptr %i.e, align 8, !tbaa !23 ; 3 uses
  %i.ojr = load ptr, ptr %i.f, align 8, !tbaa !22
  %.not.i3407 = icmp ult ptr %i.ojq, %i.ojr
  br i1 %.not.i3407, label %bb.cwr, label %bb.cwq

bb.cwq:                                           ; preds = %bb.cwp
  %i.ojs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 noundef zeroext 62) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit3409

bb.cwr:                                           ; preds = %bb.cwp
  %i.ojt = getelementptr inbounds nuw i8, ptr %i.ojq, i64 1
  store ptr %i.ojt, ptr %i.e, align 8, !tbaa !23
  store i8 62, ptr %i.ojq, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit3409

_ZN4llvm11raw_ostreamlsEc.exit3409:               ; preds = %bb.cwq, %bb.cwr
  %i.oju = getelementptr inbounds nuw i8, ptr %i.ojp, i64 32
  %.sroa.0.0.copyload.i3410 = load i64, ptr %i.oju, align 16
  call fastcc void @_ZN12_GLOBAL__N_112USRGenerator17VisitTemplateNameEN5clang12TemplateNameE(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 %.sroa.0.0.copyload.i3410)
  %i.ojv = getelementptr inbounds nuw i8, ptr %i.ojp, i64 48 ; 2 uses
  %i.ojw = getelementptr inbounds nuw i8, ptr %i.ojp, i64 20 ; 2 uses
  %i.ojx = load i32, ptr %i.ojw, align 4, !tbaa !24
  %i.ojy = zext i32 %i.ojx to i64
  %i.ojz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 noundef %i.ojy) #13 ; 0 uses
  %i.oka = load i32, ptr %i.ojw, align 4, !tbaa !24 ; 2 uses
  %i.okb = zext i32 %i.oka to i64
  %.idx3659 = mul nuw nsw i64 %i.okb, 24
  %i.okc = getelementptr inbounds nuw i8, ptr %i.ojv, i64 %.idx3659
  %.not1703653 = icmp eq i32 %i.oka, 0
  br i1 %.not1703653, label %_ZN4llvm11raw_ostreamlsEc.exit199, label %.lr.ph3655

.lr.ph3655:                                       ; preds = %_ZN4llvm11raw_ostreamlsEc.exit3409, %.lr.ph3655
  %.01313654 = phi ptr [ %i.okd, %.lr.ph3655 ], [ %i.ojv, %_ZN4llvm11raw_ostreamlsEc.exit3409 ] ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_112USRGenerator21VisitTemplateArgumentERKN5clang16TemplateArgumentE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %.01313654)
  %i.okd = getelementptr inbounds nuw i8, ptr %.01313654, i64 24 ; 2 uses
  %.not170 = icmp eq ptr %i.okd, %i.okc
  br i1 %.not170, label %_ZN4llvm11raw_ostreamlsEc.exit199, label %.lr.ph3655

.critedge186:                                     ; preds = %.critedge184
  %i.oke = load ptr, ptr %.pre-phi3870, align 8, !tbaa !478 ; 5 uses
  %i.okf = getelementptr inbounds nuw i8, ptr %i.oke, i64 16
  %i.okg = load i8, ptr %i.okf, align 16
  %.not.i4039 = icmp eq i8 %i.okg, 20
  br i1 %.not.i4039, label %_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit.thread4056, label %bb.cws

bb.cws:                                           ; preds = %.critedge186
  %i.okh = getelementptr inbounds nuw i8, ptr %i.oke, i64 8
  %.sroa.0.0.copyload.i.i.i.i4040 = load i64, ptr %i.okh, align 8, !tbaa !24
  %i.oki = and i64 %.sroa.0.0.copyload.i.i.i.i4040, -16
  %i.okj = inttoptr i64 %i.oki to ptr
  %i.okk = load ptr, ptr %i.okj, align 16, !tbaa !478
  %i.okl = getelementptr inbounds nuw i8, ptr %i.okk, i64 16
  %i.okm = load i8, ptr %i.okl, align 16
  %i.okn = icmp eq i8 %i.okm, 20
  br i1 %i.okn, label %_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit, label %.critedge188

_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit: ; preds = %bb.cws
  %i.oko = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.oke) #13 ; 2 uses
  %.not171 = icmp eq ptr %i.oko, null
  br i1 %.not171, label %_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit..critedge188_crit_edge, label %_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit.thread4056

_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit..critedge188_crit_edge: ; preds = %_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit
  %.pre4135 = load ptr, ptr %.pre-phi3870, align 8, !tbaa !478
  br label %.critedge188

_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit.thread4056: ; preds = %.critedge186, %_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit
  %.1.i40414059 = phi ptr [ %i.oko, %_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit ], [ %i.oke, %.critedge186 ] ; 2 uses
  %i.okp = load ptr, ptr %i.e, align 8, !tbaa !23 ; 3 uses
  %i.okq = load ptr, ptr %i.f, align 8, !tbaa !22
  %.not.i3416 = icmp ult ptr %i.okp, %i.okq
  br i1 %.not.i3416, label %bb.cwu, label %bb.cwt

bb.cwt:                                           ; preds = %_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit.thread4056
  %i.okr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 noundef zeroext 94) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit3418

bb.cwu:                                           ; preds = %_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit.thread4056
  %i.oks = getelementptr inbounds nuw i8, ptr %i.okp, i64 1
  store ptr %i.oks, ptr %i.e, align 8, !tbaa !23
  store i8 94, ptr %i.okp, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit3418

_ZN4llvm11raw_ostreamlsEc.exit3418:               ; preds = %bb.cwt, %bb.cwu
  %i.okt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.oku = load ptr, ptr %i.okt, align 8, !tbaa !481, !nonnull !425, !align !426 ; 2 uses
  %i.okv = getelementptr inbounds nuw i8, ptr %.1.i40414059, i64 32
  %.sroa.0.0.copyload.i3419 = load i64, ptr %i.okv, align 16, !tbaa !17
  %.val = load i64, ptr %i.oku, align 8
  %i.okw = getelementptr i8, ptr %i.oku, i64 80
  %.val189 = load i64, ptr %i.okw, align 8
  call fastcc void @_ZL14printQualifierRN4llvm11raw_ostreamERKN5clang11LangOptionsENS2_19NestedNameSpecifierE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 %.val, i64 %.val189, i64 %.sroa.0.0.copyload.i3419)
  %i.okx = load ptr, ptr %i.e, align 8, !tbaa !23 ; 3 uses
  %i.oky = load ptr, ptr %i.f, align 8, !tbaa !22
  %.not.i3420 = icmp ult ptr %i.okx, %i.oky
  br i1 %.not.i3420, label %bb.cww, label %bb.cwv

bb.cwv:                                           ; preds = %_ZN4llvm11raw_ostreamlsEc.exit3418
  %i.okz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 noundef zeroext 58) #13
  br label %_ZN4llvm11raw_ostreamlsEc.exit3422

bb.cww:                                           ; preds = %_ZN4llvm11raw_ostreamlsEc.exit3418
  %i.ola = getelementptr inbounds nuw i8, ptr %i.okx, i64 1
  store ptr %i.ola, ptr %i.e, align 8, !tbaa !23
  store i8 58, ptr %i.okx, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit3422

_ZN4llvm11raw_ostreamlsEc.exit3422:               ; preds = %bb.cwv, %bb.cww
  %.0.i3421 = phi ptr [ %i.okz, %bb.cwv ], [ %i.g, %bb.cww ]
  %i.olb = getelementptr inbounds nuw i8, ptr %.1.i40414059, i64 40
  %i.olc = load ptr, ptr %i.olb, align 8, !tbaa !598
  %i.old = getelementptr inbounds nuw i8, ptr %i.olc, i64 16
  %i.ole = load ptr, ptr %i.old, align 8, !tbaa !471 ; 2 uses
  %i.olf = getelementptr inbounds nuw i8, ptr %i.ole, i64 16
  %i.olg = load i64, ptr %i.ole, align 8, !tbaa !473
  %i.olh = and i64 %i.olg, 4294967295
  %i.oli = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i3421, ptr nonnull %i.olf, i64 %i.olh) ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit199

.critedge188:                                     ; preds = %_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit..critedge188_crit_edge, %bb.cws
  %i.olj = phi ptr [ %.pre4135, %_ZNK5clang4Type5getAsINS_17DependentNameTypeEEEPKT_v.exit..critedge188_crit_edge ], [ %i.oke, %bb.cws ]
  %i.olk = call noundef ptr @_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.olj) ; 3 uses
  %.not172 = icmp eq ptr %i.olk, null
  %i.oll = load ptr, ptr %.pre-phi3870, align 8, !tbaa !478 ; 5 uses
  br i1 %.not172, label %bb.cxb, label %bb.cwx

bb.cwx:                                           ; preds = %.critedge188
  %i.olm = getelementptr inbounds nuw i8, ptr %i.oll, i64 8
  %.sroa.0.0.copyload.i.i.i.i3427 = load i64, ptr %i.olm, align 8, !tbaa !24
  %i.oln = and i64 %.sroa.0.0.copyload.i.i.i.i3427, -16
  %i.olo = inttoptr i64 %i.oln to ptr
  %i.olp = load ptr, ptr %i.olo, align 16, !tbaa !478
  %i.olq = getelementptr inbounds nuw i8, ptr %i.olp, i64 16
  %i.olr = load i8, ptr %i.olq, align 16
  %i.ols = icmp eq i8 %i.olr, 59
  %i.olt = select i1 %i.ols, i8 93, i8 91         ; 2 uses
  %i.olu = load ptr, ptr %i.e, align 8, !tbaa !23 ; 3 uses
  %i.olv = load ptr, ptr %i.f, align 8, !tbaa !22
  %.not.i3428 = icmp ult ptr %i.olu, %i.olv
  br i1 %.not.i3428, label %bb.cwz, label %bb.cwy

bb.cwy:                                           ; preds = %bb.cwx
  %i.olw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 noundef zeroext %i.olt) #13 ; 0 uses
  br label %bb.cxa

bb.cwz:                                           ; preds = %bb.cwx
  %i.olx = getelementptr inbounds nuw i8, ptr %i.olu, i64 1
  store ptr %i.olx, ptr %i.e, align 8, !tbaa !23
  store i8 %i.olt, ptr %i.olu, align 1, !tbaa !24
  br label %bb.cxa

bb.cxa:                                           ; preds = %bb.cwz, %bb.cwy
  %i.oly = getelementptr inbounds nuw i8, ptr %i.olk, i64 20
  %i.olz = load i32, ptr %i.oly, align 4, !tbaa !24
  %i.oma = zext i32 %i.olz to i64
  %i.omb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 noundef %i.oma) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit3299

bb.cxb:                                           ; preds = %.critedge188
  %i.omc = getelementptr inbounds nuw i8, ptr %i.oll, i64 16 ; 2 uses
  %i.omd = load i8, ptr %i.omc, align 16
  %i.ome = add i8 %i.omd, -7
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ome, -5
  %.not1733601 = icmp eq ptr %i.oll, null
  %.not173 = or i1 %.not1733601, %switch.i.i.i.i.i.i.i.i.i
  %i.omf = load ptr, ptr %i.e, align 8, !tbaa !23 ; 5 uses
  %i.omg = load ptr, ptr %i.f, align 8, !tbaa !22
  %.not.i3447 = icmp ult ptr %i.omf, %i.omg       ; 2 uses
  br i1 %.not173, label %bb.cxr, label %bb.cxc

bb.cxc:                                           ; preds = %bb.cxb
end_hunk_0
