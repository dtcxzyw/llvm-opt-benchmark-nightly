Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Clang?download=true
inline.NumInlined: 10765
inline.NumDeleted: 2395
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionE:bb.a
  %i.air = getelementptr inbounds nuw i8, ptr %56, i64 24
  store i64 %.sroa.19.0.lcssa209721542207, ptr %i.air, align 8, !tbaa !138, !alias.scope !1889
  %i.ais = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %56) ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aiu = load i32, ptr %i.ait, align 8, !tbaa !140 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !141
  %.not.i903 = icmp ult i32 %i.aiu, %i.aiw
  br i1 %.not.i903, label %bb.em, label %bb.el, !prof !142

bb.el:                                            ; preds = %bb.ek
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ais)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit904

bb.em:                                            ; preds = %bb.ek
  %i.aix = zext i32 %i.aiu to i64
  %i.aiy = load ptr, ptr %4, align 8, !tbaa !143
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.aiy, i64 %i.aix
  store ptr %i.ais, ptr %i.aiz, align 1
  %i.aja = load i32, ptr %i.ait, align 8, !tbaa !140
  %i.ajb = add i32 %i.aja, 1
  store i32 %i.ajb, ptr %i.ait, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit904

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit904: ; preds = %bb.el, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  br label %bb.en

bb.en:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit904, %bb.ej
  %i.ajc = icmp eq i64 %.sroa.51309.0.lcssa210821432218, 0
  br i1 %i.ajc, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #21
  %i.ajd = getelementptr inbounds nuw i8, ptr %57, i64 32
  store i8 3, ptr %i.ajd, align 8, !tbaa !172, !alias.scope !1890
  %i.aje = getelementptr inbounds nuw i8, ptr %57, i64 33
  store i8 5, ptr %i.aje, align 1, !tbaa !173, !alias.scope !1890
  store ptr @.str.832, ptr %57, align 8, !tbaa !138, !alias.scope !1890
  %i.ajf = getelementptr inbounds nuw i8, ptr %57, i64 16
  store ptr %.sroa.01308.0.lcssa210721442217, ptr %i.ajf, align 8, !tbaa !138, !alias.scope !1890
  %i.ajg = getelementptr inbounds nuw i8, ptr %57, i64 24
  store i64 %.sroa.51309.0.lcssa210821432218, ptr %i.ajg, align 8, !tbaa !138, !alias.scope !1890
  %i.ajh = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %57) ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ajj = load i32, ptr %i.aji, align 8, !tbaa !140 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !141
  %.not.i905 = icmp ult i32 %i.ajj, %i.ajl
  br i1 %.not.i905, label %bb.eq, label %bb.ep, !prof !142

bb.ep:                                            ; preds = %bb.eo
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ajh)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit906

bb.eq:                                            ; preds = %bb.eo
  %i.ajm = zext i32 %i.ajj to i64
  %i.ajn = load ptr, ptr %4, align 8, !tbaa !143
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.ajm
  store ptr %i.ajh, ptr %i.ajo, align 1
  %i.ajp = load i32, ptr %i.aji, align 8, !tbaa !140
  %i.ajq = add i32 %i.ajp, 1
  store i32 %i.ajq, ptr %i.aji, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit906

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit906: ; preds = %bb.ep, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  br label %bb.er

bb.er:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit906, %bb.en
  %i.ajr = icmp eq i64 %.sroa.71279.0.lcssa210221492212, 0
  br i1 %i.ajr, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #21
  %i.ajs = getelementptr inbounds nuw i8, ptr %58, i64 32
  store i8 3, ptr %i.ajs, align 8, !tbaa !172, !alias.scope !1891
  %i.ajt = getelementptr inbounds nuw i8, ptr %58, i64 33
  store i8 5, ptr %i.ajt, align 1, !tbaa !173, !alias.scope !1891
  store ptr @.str.833, ptr %58, align 8, !tbaa !138, !alias.scope !1891
  %i.aju = getelementptr inbounds nuw i8, ptr %58, i64 16
  store ptr %.sroa.01278.0.lcssa210121502211, ptr %i.aju, align 8, !tbaa !138, !alias.scope !1891
  %i.ajv = getelementptr inbounds nuw i8, ptr %58, i64 24
  store i64 %.sroa.71279.0.lcssa210221492212, ptr %i.ajv, align 8, !tbaa !138, !alias.scope !1891
  %i.ajw = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %58) ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ajy = load i32, ptr %i.ajx, align 8, !tbaa !140 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !141
  %.not.i907 = icmp ult i32 %i.ajy, %i.aka
  br i1 %.not.i907, label %bb.eu, label %bb.et, !prof !142

bb.et:                                            ; preds = %bb.es
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ajw)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit908

bb.eu:                                            ; preds = %bb.es
  %i.akb = zext i32 %i.ajy to i64
  %i.akc = load ptr, ptr %4, align 8, !tbaa !143
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %i.akc, i64 %i.akb
  store ptr %i.ajw, ptr %i.akd, align 1
  %i.ake = load i32, ptr %i.ajx, align 8, !tbaa !140
  %i.akf = add i32 %i.ake, 1
  store i32 %i.akf, ptr %i.ajx, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit908

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit908: ; preds = %bb.et, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #21
  br label %bb.ev

bb.ev:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit908, %bb.er
  %i.akg = icmp eq i64 %.sroa.51276.0.lcssa210021512210, 0
  br i1 %i.akg, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #21
  %i.akh = getelementptr inbounds nuw i8, ptr %59, i64 32
  store i8 3, ptr %i.akh, align 8, !tbaa !172, !alias.scope !1892
  %i.aki = getelementptr inbounds nuw i8, ptr %59, i64 33
  store i8 5, ptr %i.aki, align 1, !tbaa !173, !alias.scope !1892
  store ptr @.str.834, ptr %59, align 8, !tbaa !138, !alias.scope !1892
  %i.akj = getelementptr inbounds nuw i8, ptr %59, i64 16
  store ptr %.sroa.01275.0.lcssa209921522209, ptr %i.akj, align 8, !tbaa !138, !alias.scope !1892
  %i.akk = getelementptr inbounds nuw i8, ptr %59, i64 24
  store i64 %.sroa.51276.0.lcssa210021512210, ptr %i.akk, align 8, !tbaa !138, !alias.scope !1892
  %i.akl = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %59) ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.akn = load i32, ptr %i.akm, align 8, !tbaa !140 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !141
  %.not.i909 = icmp ult i32 %i.akn, %i.akp
  br i1 %.not.i909, label %bb.ey, label %bb.ex, !prof !142

bb.ex:                                            ; preds = %bb.ew
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.akl)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit910

bb.ey:                                            ; preds = %bb.ew
  %i.akq = zext i32 %i.akn to i64
  %i.akr = load ptr, ptr %4, align 8, !tbaa !143
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.akr, i64 %i.akq
  store ptr %i.akl, ptr %i.aks, align 1
  %i.akt = load i32, ptr %i.akm, align 8, !tbaa !140
  %i.aku = add i32 %i.akt, 1
  store i32 %i.aku, ptr %i.akm, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit910

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit910: ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #21
  br label %bb.ez

bb.ez:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit910, %bb.ev
  %i.akv = load ptr, ptr %1, align 8, !tbaa !101, !nonnull !36, !align !37
  %i.akw = call { ptr, i64 } @_ZN5clang17parseMRecipOptionERNS_17DiagnosticsEngineERKN4llvm3opt7ArgListE(ptr noundef nonnull align 8 dereferenceable(15256) %i.akv, ptr noundef nonnull align 8 dereferenceable(176) %3) #21 ; 2 uses
  %i.akx = extractvalue { ptr, i64 } %i.akw, 1    ; 2 uses
  %i.aky = icmp eq i64 %i.akx, 0
  br i1 %i.aky, label %bb.fd, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.akz = extractvalue { ptr, i64 } %i.akw, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #21
  %i.ala = getelementptr inbounds nuw i8, ptr %60, i64 32
  store i8 3, ptr %i.ala, align 8, !tbaa !172, !alias.scope !1893
  %i.alb = getelementptr inbounds nuw i8, ptr %60, i64 33
  store i8 5, ptr %i.alb, align 1, !tbaa !173, !alias.scope !1893
  store ptr @.str.835, ptr %60, align 8, !tbaa !138, !alias.scope !1893
  %i.alc = getelementptr inbounds nuw i8, ptr %60, i64 16
  store ptr %i.akz, ptr %i.alc, align 8, !tbaa !138, !alias.scope !1893
  %i.ald = getelementptr inbounds nuw i8, ptr %60, i64 24
  store i64 %i.akx, ptr %i.ald, align 8, !tbaa !138, !alias.scope !1893
  %i.ale = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %60) ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.alg = load i32, ptr %i.alf, align 8, !tbaa !140 ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !141
  %.not.i911 = icmp ult i32 %i.alg, %i.ali
  br i1 %.not.i911, label %bb.fc, label %bb.fb, !prof !142

bb.fb:                                            ; preds = %bb.fa
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ale)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit912

bb.fc:                                            ; preds = %bb.fa
  %i.alj = zext i32 %i.alg to i64
  %i.alk = load ptr, ptr %4, align 8, !tbaa !143
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.alk, i64 %i.alj
  store ptr %i.ale, ptr %i.all, align 1
  %i.alm = load i32, ptr %i.alf, align 8, !tbaa !140
  %i.aln = add i32 %i.alm, 1
  store i32 %i.aln, ptr %i.alf, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit912

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit912: ; preds = %bb.fb, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  br label %bb.fd

bb.fd:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit912, %bb.ez
  %i.alo = or i8 %.01458.lcssa209021612200, %.01462.lcssa208921622199 ; 2 uses
  %or.cond29 = trunc nuw i8 %i.alo to i1
  %i.alp = or i8 %i.alo, %.01472.lcssa208521662195
  %66 = trunc nuw i8 %i.alp to i1
  %or.cond31.not1832 = xor i1 %66, true
  %i.alq = and i8 %.01446.lcssa209321582203, %.01454.lcssa209121602201
  %i.alr = trunc nuw i8 %i.alq to i1
  %or.cond35 = and i1 %or.cond31.not1832, %i.alr
  %or.cond37 = select i1 %or.cond35, i1 %.01450.lcssa209221592202, i1 false
  %or.cond37.not = xor i1 %or.cond37, true
  %or.cond39 = select i1 %or.cond37.not, i1 true, i1 %.01442.lcssa209421572204
  %i.als = or i8 %.01433.lcssa209621552206, %.01437.lcssa209521562205
  %i.alt = trunc nuw i8 %i.als to i1
  %or.cond43 = select i1 %or.cond39, i1 true, i1 %i.alt
  br i1 %or.cond43, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit914, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.alu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.alv = load i32, ptr %i.alu, align 8, !tbaa !140 ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !141
  %.not.i913 = icmp ult i32 %i.alv, %i.alx
  br i1 %.not.i913, label %bb.fg, label %bb.ff, !prof !142

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.680)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit914

bb.fg:                                            ; preds = %bb.fe
  %i.aly = zext i32 %i.alv to i64
  %i.alz = load ptr, ptr %4, align 8, !tbaa !143
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %i.alz, i64 %i.aly
  store ptr @.str.680, ptr %i.ama, align 1
  %i.amb = load i32, ptr %i.alu, align 8, !tbaa !140
  %i.amc = add i32 %i.amb, 1
  store i32 %i.amc, ptr %i.alu, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit914

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit914: ; preds = %bb.fg, %bb.ff, %bb.fd
  br i1 %or.cond29, label %bb.fh, label %.critedge

bb.fh:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit914
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !1894
  store i32 3710, ptr %6, align 4, !noalias !1894
  %i.amd = call i64 @_ZNK4llvm3opt7ArgList8getRangeESt16initializer_listINS0_12OptSpecifierEE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr nonnull %6, i64 1) #21, !noalias !1894 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.amd, 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !1894
  %i.ame = load ptr, ptr %i.aw, align 8, !tbaa !143, !noalias !1894 ; 2 uses
  %i.amf = and i64 %i.amd, 4294967295             ; 2 uses
  %i.amg = getelementptr inbounds nuw [8 x i8], ptr %i.ame, i64 %i.amf ; 2 uses
  %i.amh = getelementptr [8 x i8], ptr %i.ame, i64 %.sroa.4.0.extract.shift.i ; 5 uses
  %.not29.i.i.i = icmp samesign eq i64 %i.amf, %.sroa.4.0.extract.shift.i
  br i1 %.not29.i.i.i, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.lr.ph.i.i.i916

.lr.ph.i.i.i916:                                  ; preds = %bb.fh, %.thread25.i.i.i
  %.sroa.024.0.i = phi ptr [ %i.amk, %.thread25.i.i.i ], [ %i.amg, %bb.fh ] ; 3 uses
  %i.ami = load ptr, ptr %.sroa.024.0.i, align 8, !tbaa !164, !noalias !1894 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.ami, null
  br i1 %.not14.i.i.i, label %.thread25.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph.i.i.i916
  %i.amj = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.ami, i32 3710) #21, !noalias !1894
  br i1 %i.amj, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.thread25.i.i.i

.thread25.i.i.i:                                  ; preds = %bb.fi, %.lr.ph.i.i.i916
  %i.amk = getelementptr inbounds nuw i8, ptr %.sroa.024.0.i, i64 8 ; 2 uses
  %.not.i.i.i917 = icmp eq ptr %i.amk, %i.amh
  br i1 %.not.i.i.i917, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936, label %.lr.ph.i.i.i916, !llvm.loop !1

_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit: ; preds = %bb.fi, %bb.fh
  %.sroa.024.1.i = phi ptr [ %i.amg, %bb.fh ], [ %.sroa.024.0.i, %bb.fi ] ; 2 uses
  %.not18331923 = icmp eq ptr %.sroa.024.1.i, %i.amh
  br i1 %.not18331923, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936, label %.lr.ph1927

._crit_edge1928:                                  ; preds = %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit
  %i.aml = select i1 %.1335, i1 true, i1 %.1337
  br i1 %i.aml, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936, label %.critedge

.lr.ph1927:                                       ; preds = %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit
  %.03341926 = phi i1 [ %.1335, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit ], [ true, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit ] ; 3 uses
  %.03361925 = phi i1 [ %.1337, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit ], [ true, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit ] ; 4 uses
  %.sroa.0976.01924 = phi ptr [ %.sroa.0976.2, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit ], [ %.sroa.024.1.i, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit ] ; 2 uses
  %i.amm = load ptr, ptr %.sroa.0976.01924, align 8, !tbaa !164
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 48
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !143
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !156 ; 4 uses
  %.not.i920 = icmp eq ptr %i.amp, null
  br i1 %.not.i920, label %_ZN4llvmeqENS_9StringRefES0_.exit927.thread, label %_ZN4llvm9StringRefC2EPKc.exit922

_ZN4llvm9StringRefC2EPKc.exit922:                 ; preds = %.lr.ph1927
  %i.amq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.amp) #21
  %cond = icmp eq i64 %i.amq, 16
  br i1 %cond, label %_ZN4llvmeqENS_9StringRefES0_.exit927, label %_ZN4llvmeqENS_9StringRefES0_.exit927.thread

_ZN4llvmeqENS_9StringRefES0_.exit927:             ; preds = %_ZN4llvm9StringRefC2EPKc.exit922
  %i.amr = load i128, ptr %i.amp, align 1
  %i.ams = icmp ne i128 %i.amr, 153434348292595123709847100076492942637
  %i.amt = zext i1 %i.ams to i32
  %i.amu = icmp eq i32 %i.amt, 0
  br i1 %i.amu, label %_ZN4llvmeqENS_9StringRefES0_.exit927.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit927.thread1751

_ZN4llvmeqENS_9StringRefES0_.exit927.thread1751:  ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit927
  %i.amv = load i128, ptr %i.amp, align 1
  %i.amw = icmp ne i128 %i.amv, 153393073192910879989212679452406148397
  %i.amx = zext i1 %i.amw to i32
  %bcmp.i931.fr = freeze i32 %i.amx
  %i.amy = icmp ne i32 %bcmp.i931.fr, 0
  %spec.select1853 = select i1 %i.amy, i1 %.03361925, i1 false
  br label %_ZN4llvmeqENS_9StringRefES0_.exit927.thread

_ZN4llvmeqENS_9StringRefES0_.exit927.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit927.thread1751, %_ZN4llvm9StringRefC2EPKc.exit922, %.lr.ph1927, %_ZN4llvmeqENS_9StringRefES0_.exit927
  %.1337 = phi i1 [ %.03361925, %_ZN4llvm9StringRefC2EPKc.exit922 ], [ %.03361925, %_ZN4llvmeqENS_9StringRefES0_.exit927 ], [ %.03361925, %.lr.ph1927 ], [ %spec.select1853, %_ZN4llvmeqENS_9StringRefES0_.exit927.thread1751 ] ; 2 uses
  %.1335 = phi i1 [ %.03341926, %_ZN4llvm9StringRefC2EPKc.exit922 ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit927 ], [ %.03341926, %.lr.ph1927 ], [ %.03341926, %_ZN4llvmeqENS_9StringRefES0_.exit927.thread1751 ] ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %.sroa.0976.01924, i64 8 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.amz, %i.amh
  br i1 %.not29.i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.lr.ph.i.i933

.lr.ph.i.i933:                                    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit927.thread, %.thread25.i.i
  %.sroa.0976.1 = phi ptr [ %i.anc, %.thread25.i.i ], [ %i.amz, %_ZN4llvmeqENS_9StringRefES0_.exit927.thread ] ; 3 uses
  %i.ana = load ptr, ptr %.sroa.0976.1, align 8, !tbaa !164 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ana, null
  br i1 %.not14.i.i, label %.thread25.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph.i.i933
  %i.anb = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.ana, i32 3710) #21
  br i1 %i.anb, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.thread25.i.i

.thread25.i.i:                                    ; preds = %.preheader.preheader.i.i, %.lr.ph.i.i933
  %i.anc = getelementptr inbounds nuw i8, ptr %.sroa.0976.1, i64 8 ; 3 uses
  %.not.i.i934 = icmp eq ptr %i.anc, %i.amh
  br i1 %.not.i.i934, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.lr.ph.i.i933, !llvm.loop !1

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit: ; preds = %.preheader.preheader.i.i, %.thread25.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit927.thread
  %.sroa.0976.2 = phi ptr [ %i.amz, %_ZN4llvmeqENS_9StringRefES0_.exit927.thread ], [ %.sroa.0976.1, %.preheader.preheader.i.i ], [ %i.anc, %.thread25.i.i ] ; 2 uses
  %.not1833 = icmp eq ptr %.sroa.0976.2, %i.amh
  br i1 %.not1833, label %._crit_edge1928, label %.lr.ph1927

.critedge:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit914, %._crit_edge1928
  %i.and = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ane = load i32, ptr %i.and, align 8, !tbaa !140 ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !141
  %.not.i935 = icmp ult i32 %i.ane, %i.ang
  br i1 %.not.i935, label %bb.fk, label %bb.fj, !prof !142

bb.fj:                                            ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.681)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936

bb.fk:                                            ; preds = %.critedge
  %i.anh = zext i32 %i.ane to i64
  %i.ani = load ptr, ptr %4, align 8, !tbaa !143
  %i.anj = getelementptr inbounds nuw [8 x i8], ptr %i.ani, i64 %i.anh
  store ptr @.str.681, ptr %i.anj, align 1
  %i.ank = load i32, ptr %i.and, align 8, !tbaa !140
  %i.anl = add i32 %i.ank, 1
  store i32 %i.anl, ptr %i.and, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936: ; preds = %.thread25.i.i.i, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, %bb.fk, %bb.fj, %._crit_edge1928
  %i.anm = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %3, i32 noundef 2558) ; 2 uses
  %.not346 = icmp eq ptr %i.anm, null
  br i1 %.not346, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit940, label %bb.fl

bb.fl:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936
  %i.ann = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.ano = load i32, ptr %i.ann, align 8, !tbaa !140 ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.anq = load i32, ptr %i.anp, align 4, !tbaa !141
  %.not.i937 = icmp ult i32 %i.ano, %i.anq
  br i1 %.not.i937, label %bb.fn, label %bb.fm, !prof !142

bb.fm:                                            ; preds = %bb.fl
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.836)
  %.pre1933 = load i32, ptr %i.ann, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit938

bb.fn:                                            ; preds = %bb.fl
  %i.anr = zext i32 %i.ano to i64
  %i.ans = load ptr, ptr %4, align 8, !tbaa !143
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %i.anr
  store ptr @.str.836, ptr %i.ant, align 1
  %i.anu = load i32, ptr %i.ann, align 8, !tbaa !140
  %i.anv = add i32 %i.anu, 1                      ; 2 uses
  store i32 %i.anv, ptr %i.ann, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit938

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit938: ; preds = %bb.fm, %bb.fn
  %i.anw = phi i32 [ %.pre1933, %bb.fm ], [ %i.anv, %bb.fn ] ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anm, i64 48
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !143
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !156 ; 2 uses
  %i.aoa = load i32, ptr %i.anp, align 4, !tbaa !141
  %.not.i939 = icmp ult i32 %i.anw, %i.aoa
  br i1 %.not.i939, label %bb.fp, label %bb.fo, !prof !142

bb.fo:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit938
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.anz)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit940

bb.fp:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit938
  %i.aob = zext i32 %i.anw to i64
  %i.aoc = load ptr, ptr %4, align 8, !tbaa !143
  %i.aod = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %i.aob
  store ptr %i.anz, ptr %i.aod, align 1
end_hunk_0
