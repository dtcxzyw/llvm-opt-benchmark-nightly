Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGDebugInfo?download=true
inline.NumInlined: 37011
inline.NumDeleted: 15434
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5clang7CodeGen11CGDebugInfo25getDynamicInitializerNameEPKNS_7VarDeclENS_15DynamicInitKindEPN4llvm8FunctionE:bb.a
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = icmp ugt i64 %.sroa.752.0, %i.cy
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit22
  %i.da = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %.sroa.051.0, i64 noundef %.sroa.752.0) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit28

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit22
  %.not.i26 = icmp eq i64 %.sroa.752.0, 0
  br i1 %.not.i26, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit28, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %.sroa.051.0, i64 %.sroa.752.0, i1 false)
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !1458
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sroa.752.0
  store ptr %i.dc, ptr %i.cu, align 8, !tbaa !1458
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit28

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit28:    ; preds = %bb.q, %bb.r, %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = and i32 %i.de, 126
  %.not = icmp eq i32 %i.df, 42
  br i1 %.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit28
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1651 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !1453
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.dl = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 144
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !605, !nonnull !494, !align !495
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 17728
  %.sroa.0.0.copyload.i29 = load i64, ptr %i.do, align 8, !tbaa !984
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 184
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !493, !nonnull !494, !align !495
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 136
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = and i64 %i.ds, 4096
  %.not.i30 = icmp eq i64 %i.dt, 0
  %.sroa.0.0.v.i31 = select i1 %.not.i30, i64 1073741824, i64 69793218560
  %.sroa.0.0.copyload.masked.i32 = and i64 %.sroa.0.0.copyload.i29, -84663469129729
  %i.du = or i64 %.sroa.0.0.copyload.masked.i32, %.sroa.0.0.v.i31
  %i.dv = or disjoint i64 %i.du, 9895604649984
  store i64 %i.dv, ptr %10, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ac, ptr %i.dw, align 8
  call void @_ZN5clang25printTemplateArgumentListERN4llvm11raw_ostreamENS0_8ArrayRefINS_16TemplateArgumentEEERKNS_14PrintingPolicyEPKNS_21TemplateParameterListE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr nonnull %i.dk, i64 %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit28
  %i.dx = load ptr, ptr %i.cu, align 8, !tbaa !1458 ; 3 uses
  %i.dy = load ptr, ptr %i.cs, align 8, !tbaa !1457
  %.not.i35 = icmp ult ptr %i.dx, %i.dy
  br i1 %.not.i35, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 noundef zeroext 39) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.w:                                             ; preds = %bb.u
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store ptr %i.ea, ptr %i.cu, align 8, !tbaa !1458
  store i8 39, ptr %i.dx, align 1, !tbaa !984
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.v, %bb.w
  %i.eb = load ptr, ptr %i.ay, align 8, !tbaa !1482, !nonnull !494, !align !495 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !601
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !602 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 3 uses
  %i.eg = add i64 %i.ee, 7
  %i.eh = and i64 %i.eg, -8                       ; 2 uses
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !1443 ; 2 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = add i64 %i.eh, %i.ej                    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.em = load i64, ptr %i.el, align 8, !tbaa !1444
  %i.en = icmp ult i64 %i.ek, %i.em
  br i1 %i.en, label %bb.x, label %bb.y, !prof !1309

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.eo = inttoptr i64 %i.ek to ptr
  store ptr %i.eo, ptr %i.ef, align 8, !tbaa !1443
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIcEEPT_m.exit.i

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.ep = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ef, i64 noundef %i.ee, i64 noundef %i.eh, i8 0)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIcEEPT_m.exit.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIcEEPT_m.exit.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i = phi ptr [ %i.ei, %bb.x ], [ %i.ep, %bb.y ] ; 2 uses
  %i.eq = icmp eq i64 %i.ee, 0
  br i1 %i.eq, label %_ZN5clang7CodeGen11CGDebugInfo12internStringEN4llvm9StringRefES3_.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIcEEPT_m.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %i.ec, i64 %i.ee, i1 false)
  br label %_ZN5clang7CodeGen11CGDebugInfo12internStringEN4llvm9StringRefES3_.exit

_ZN5clang7CodeGen11CGDebugInfo12internStringEN4llvm9StringRefES3_.exit: ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIcEEPT_m.exit.i, %bb.z
  %.fca.0.insert.i39 = insertvalue { ptr, i64 } poison, ptr %.0.i.i.i.i.i, 0
  %.fca.1.insert.i40 = insertvalue { ptr, i64 } %.fca.0.insert.i39, i64 %i.ee, 1
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.er = load ptr, ptr %8, align 8, !tbaa !601   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ar
  br i1 %i.es, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang7CodeGen11CGDebugInfo12internStringEN4llvm9StringRefES3_.exit
  call void @free(ptr noundef %i.er) #28
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit:          ; preds = %_ZN5clang7CodeGen11CGDebugInfo12internStringEN4llvm9StringRefES3_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.et = load ptr, ptr %4, align 8, !tbaa !601   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.j
  br i1 %i.eu, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit41, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit
  call void @free(ptr noundef %i.et) #28
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit41

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit41:        ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit41, %bb.b
  %.pn = phi { ptr, i64 } [ %i.i, %bb.b ], [ %.fca.1.insert.i40, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit41 ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen11CGDebugInfo17CollectVTableInfoEPKNS_13CXXRecordDeclEPN4llvm6DIFileERNS5_15SmallVectorImplIPNS5_8MetadataEEE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl14isDynamicClassEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br i1 %i.a, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit34

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !605, !nonnull !494, !align !495
  %i.e = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, ptr noundef nonnull %1) #28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1620 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 2
  %.not40 = icmp eq i8 %i.j, 0
  br i1 %.not40, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit34, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !493, !nonnull !494, !align !495
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 4096
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 216
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1000, !nonnull !494, !align !495
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 348
  %.sroa.0.0.copyload.i = load i32, ptr %i.s, align 4, !tbaa !1603
  %cond.i = icmp eq i32 %.sroa.0.0.copyload.i, 10
  br i1 %cond.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !605, !nonnull !494, !align !495 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 19320
  %.sroa.0.0.copyload.i31 = load i64, ptr %i.v, align 8, !tbaa !984
  %i.w = and i64 %.sroa.0.0.copyload.i31, -16
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !1439
  %i.z = tail call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.u, ptr noundef %i.y) #28
  %i.aa = extractvalue { i64, i64 } %i.z, 0       ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 416
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1604
  %i.ae = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZN5clang22MicrosoftVTableContext16getVFTableLayoutEPKNS_13CXXRecordDeclENS_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(144) %i.ad, ptr noundef nonnull %1, i64 0) #28
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !598
  %i.ah = zext i32 %i.ag to i64
  %i.ai = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !979, !nonnull !494, !align !495
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %7 = lshr i64 %i.am, 52
  %8 = and i64 %7, 1
  %9 = sub nsw i64 %i.ah, %8
  %i.an = mul i64 %9, %i.aa
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 216
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1000, !nonnull !494, !align !495 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !596
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 912
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(517) %i.ap) #28
  %i.au = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1000, !nonnull !494, !align !495 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !596
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 920
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call i64 %i.az(ptr noundef nonnull align 8 dereferenceable(517) %i.aw, i32 noundef %i.at) #28
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = and i64 %i.an, 4294967295
  store ptr @.str.84, ptr %5, align 8, !tbaa !1009
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 15, ptr %i.bd, align 8, !tbaa !1008
  %i.be = tail call noundef ptr @_ZN4llvm9DIBuilder17createPointerTypeEPNS_6DITypeEmjSt8optionalIjENS_9StringRefENS_24MDTupleTypedArrayWrapperINS_6DINodeEEE(ptr noundef nonnull align 8 dereferenceable(384) %i.bb, ptr noundef null, i64 noundef %i.bc, i32 noundef 0, i64 %i.ba, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5, ptr null) #28 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !598 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !599
  %.not.i = icmp ult i32 %i.bg, %i.bi
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !1309

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.be)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit

bb.g:                                             ; preds = %bb.e
  %i.bj = zext i32 %i.bg to i64
  %i.bk = load ptr, ptr %3, align 8, !tbaa !597
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  store ptr %i.be, ptr %i.bl, align 1
  %i.bm = load i32, ptr %i.bf, align 8, !tbaa !598
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bf, align 8, !tbaa !598
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit: ; preds = %bb.f, %bb.g
  store ptr @.str.1, ptr %6, align 8, !tbaa !1009
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !1008
  %i.bp = tail call noundef ptr @_ZN4llvm9DIBuilder17createPointerTypeEPNS_6DITypeEmjSt8optionalIjENS_9StringRefENS_24MDTupleTypedArrayWrapperINS_6DINodeEEE(ptr noundef nonnull align 8 dereferenceable(384) %i.bb, ptr noundef %i.be, i64 noundef %i.aa, i32 noundef 0, i64 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %6, ptr null) #28
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !1620
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit, %bb.d
  %i.bq = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit ], [ %i.g, %bb.d ], [ %i.g, %bb.c ]
  %.0 = phi ptr [ %i.bp, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %.0.copyload.i.i.i.i = load i64, ptr %i.br, align 8
  %.not29 = icmp ult i64 %.0.copyload.i.i.i.i, 8
  br i1 %.not29, label %bb.h, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit34

bb.h:                                             ; preds = %.critedge
  %.not30 = icmp eq ptr %.0, null
  br i1 %.not30, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateVTablePtrTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr noundef %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi ptr [ %.0, %bb.h ], [ %i.bs, %bb.i ]
  %i.bt = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 144
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !605, !nonnull !494, !align !495 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 19320
  %.sroa.0.0.copyload.i32 = load i64, ptr %i.bw, align 8, !tbaa !984
  %i.bx = and i64 %.sroa.0.0.copyload.i32, -16
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !1439
  %i.ca = tail call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bv, ptr noundef %i.bz) #28
  %i.cb = extractvalue { i64, i64 } %i.ca, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZNK5clang15DeclarationName11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cd) #28
  %i.ce = load ptr, ptr %4, align 8, !tbaa !981
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !982 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 3 uses
  %i.ci = add i64 %i.cg, 6                        ; 2 uses
  %i.cj = add i64 %i.cg, 13
  %i.ck = and i64 %i.cj, -8                       ; 2 uses
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !1443 ; 2 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = add i64 %i.ck, %i.cm                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !1444
  %i.cq = icmp ult i64 %i.cn, %i.cp
  br i1 %i.cq, label %bb.k, label %bb.l, !prof !1309

bb.k:                                             ; preds = %bb.j
  %i.cr = inttoptr i64 %i.cn to ptr
  store ptr %i.cr, ptr %i.ch, align 8, !tbaa !1443
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIcEEPT_m.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.cs = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, i64 noundef %i.ci, i64 noundef %i.ck, i8 0)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIcEEPT_m.exit.i.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIcEEPT_m.exit.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi ptr [ %i.cl, %bb.k ], [ %i.cs, %bb.l ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.0.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str.85, i64 6, i1 false)
  %i.ct = icmp eq i64 %i.cg, 0
  br i1 %i.ct, label %_ZN5clang7CodeGen11CGDebugInfo12internStringEN4llvm9StringRefES3_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIcEEPT_m.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr align 1 %i.ce, i64 %i.cg, i1 false)
  br label %_ZN5clang7CodeGen11CGDebugInfo12internStringEN4llvm9StringRefES3_.exit.i

_ZN5clang7CodeGen11CGDebugInfo12internStringEN4llvm9StringRefES3_.exit.i: ; preds = %bb.m, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIcEEPT_m.exit.i.i
  %i.cv = load ptr, ptr %4, align 8, !tbaa !981   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN5clang7CodeGen11CGDebugInfo13getVTableNameEPKNS_13CXXRecordDeclE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5clang7CodeGen11CGDebugInfo12internStringEN4llvm9StringRefES3_.exit.i
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !984
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #29
  br label %_ZN5clang7CodeGen11CGDebugInfo13getVTableNameEPKNS_13CXXRecordDeclE.exit

_ZN5clang7CodeGen11CGDebugInfo13getVTableNameEPKNS_13CXXRecordDeclE.exit: ; preds = %_ZN5clang7CodeGen11CGDebugInfo12internStringEN4llvm9StringRefES3_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.da = and i64 %i.cb, 4294967295
  %i.db = call noundef ptr @_ZN4llvm9DIBuilder16createMemberTypeEPNS_7DIScopeENS_9StringRefEPNS_6DIFileEjmjmNS_6DINode7DIFlagsEPNS_6DITypeENS_24MDTupleTypedArrayWrapperIS6_EE(ptr noundef nonnull align 8 dereferenceable(384) %i.cc, ptr noundef %2, ptr nonnull %.0.i.i.i.i.i.i, i64 %i.ci, ptr noundef %2, i32 noundef 0, i64 noundef %i.da, i32 noundef 0, i64 noundef 0, i32 noundef 64, ptr noundef %.1, i64 0) #28 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !598 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !599
  %.not.i33 = icmp ult i32 %i.dd, %i.df
  br i1 %.not.i33, label %bb.o, label %bb.n, !prof !1309

bb.n:                                             ; preds = %_ZN5clang7CodeGen11CGDebugInfo13getVTableNameEPKNS_13CXXRecordDeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.db)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit34

bb.o:                                             ; preds = %_ZN5clang7CodeGen11CGDebugInfo13getVTableNameEPKNS_13CXXRecordDeclE.exit
  %i.dg = zext i32 %i.dd to i64
  %i.dh = load ptr, ptr %3, align 8, !tbaa !597
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg
  store ptr %i.db, ptr %i.di, align 1
  %i.dj = load i32, ptr %i.dc, align 8, !tbaa !598
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.dc, align 8, !tbaa !598
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit34

_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit34: ; preds = %bb.o, %bb.n, %bb.b, %.critedge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang13CXXRecordDecl14isDynamicClassEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1561 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 1
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.e, i64 %i.f, i64 0 ; 3 uses
  %i.g = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18624
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1423 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1443 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1444
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !1309

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1443
  br label %bb.g

bb.f:                                             ; preds = %bb.d
end_hunk_0
