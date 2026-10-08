Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Clang?download=true
inline.NumInlined: 10765
inline.NumDeleted: 2395
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionE:bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.678)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit868

bb.da:                                            ; preds = %bb.cy
  %i.abf = zext i32 %i.abc to i64
  %i.abg = load ptr, ptr %4, align 8, !tbaa !143
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.abf
  store ptr @.str.678, ptr %i.abh, align 1
  %i.abi = load i32, ptr %i.abb, align 8, !tbaa !140
  %i.abj = add i32 %i.abi, 1
  store i32 %i.abj, ptr %i.abb, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit868

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit868: ; preds = %bb.da, %bb.cz, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit866
  %i.abk = icmp ne i8 %.sroa.01294.0.lcssa210521462215, 0
  %i.abl = icmp ne i8 %.sroa.81300.0.lcssa210621452216, 0
  %or.cond1829 = select i1 %i.abk, i1 true, i1 %i.abl
  br i1 %or.cond1829, label %_ZNK4llvm12DenormalModeneES0_.exit.thread, label %bb.dm

_ZNK4llvm12DenormalModeneES0_.exit.thread:        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit868
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  %i.abm = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 2 uses
  store ptr %i.abm, ptr %47, align 8, !tbaa !167
  %i.abn = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 0, ptr %i.abn, align 8, !tbaa !168
  %i.abo = getelementptr inbounds nuw i8, ptr %47, i64 16
  store i64 64, ptr %i.abo, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  %i.abp = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i32 2, ptr %i.abp, align 8, !tbaa !309
  %i.abq = getelementptr inbounds nuw i8, ptr %48, i64 40
  store i8 0, ptr %i.abq, align 8, !tbaa !310
  %i.abr = getelementptr inbounds nuw i8, ptr %48, i64 44
  store i32 1, ptr %i.abr, align 4, !tbaa !311
  %i.abs = getelementptr inbounds nuw i8, ptr %48, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abs, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %48, align 8, !tbaa !177
  %i.abt = getelementptr inbounds nuw i8, ptr %48, i64 48 ; 2 uses
  store ptr %47, ptr %i.abt, align 8, !tbaa !313
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %48, ptr noundef null, i64 noundef 0, i32 noundef 0) #21
  %i.abu = getelementptr inbounds nuw i8, ptr %48, i64 24
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !314
  %i.abw = getelementptr inbounds nuw i8, ptr %48, i64 32 ; 3 uses
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !315 ; 2 uses
  %i.aby = ptrtoint ptr %i.abv to i64
  %i.abz = ptrtoint ptr %i.abx to i64
  %i.aca = sub i64 %i.aby, %i.abz
  %i.acb = icmp ult i64 %i.aca, 19
  br i1 %i.acb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZNK4llvm12DenormalModeneES0_.exit.thread
  %i.acc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull @.str.828, i64 noundef 19) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.dc:                                            ; preds = %_ZNK4llvm12DenormalModeneES0_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.abx, ptr noundef nonnull align 1 dereferenceable(19) @.str.828, i64 19, i1 false)
  %i.acd = load ptr, ptr %i.abw, align 8, !tbaa !315
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 19
  store ptr %i.ace, ptr %i.abw, align 8, !tbaa !315
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.db, %bb.dc
  %.0.i.i869 = phi ptr [ %i.acc, %bb.db ], [ %48, %bb.dc ] ; 7 uses
  %i.acf = icmp ult i8 %.sroa.01294.0.lcssa210521462215, 4
  br i1 %i.acf, label %switch.lookup, label %.thread.i.i

.thread.i.i:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.acg = getelementptr inbounds nuw i8, ptr %.0.i.i869, i64 24
  %i.ach = getelementptr inbounds nuw i8, ptr %.0.i.i869, i64 32
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i

switch.lookup:                                    ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.aci = zext nneg i8 %.sroa.01294.0.lcssa210521462215 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionE.62, i64 %i.aci
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 4 uses
  %i.acj = zext nneg i8 %.sroa.01294.0.lcssa210521462215 to i64
  %switch.gep2228 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionE.63, i64 %i.acj
  %switch.load2229 = load ptr, ptr %switch.gep2228, align 8 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.0.i.i869, i64 24 ; 3 uses
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !314
  %i.acm = getelementptr inbounds nuw i8, ptr %.0.i.i869, i64 32 ; 5 uses
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !315 ; 2 uses
  %i.aco = ptrtoint ptr %i.acl to i64
  %i.acp = ptrtoint ptr %i.acn to i64
  %i.acq = sub i64 %i.aco, %i.acp
  %i.acr = icmp ult i64 %i.acq, %switch.ext
  br i1 %i.acr, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %switch.lookup
  %i.acs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i869, ptr noundef nonnull %switch.load2229, i64 noundef %switch.ext) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i

bb.de:                                            ; preds = %switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.acn, ptr noundef nonnull align 1 dereferenceable(1) %switch.load2229, i64 %switch.ext, i1 false)
  %i.act = load ptr, ptr %i.acm, align 8, !tbaa !315
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 %switch.ext
  store ptr %i.acu, ptr %i.acm, align 8, !tbaa !315
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i:  ; preds = %bb.de, %bb.dd, %.thread.i.i
  %i.acv = phi ptr [ %i.acm, %bb.dd ], [ %i.ach, %.thread.i.i ], [ %i.acm, %bb.de ] ; 5 uses
  %i.acw = phi ptr [ %i.ack, %bb.dd ], [ %i.acg, %.thread.i.i ], [ %i.ack, %bb.de ] ; 2 uses
  %i.acx = load ptr, ptr %i.acv, align 8, !tbaa !315 ; 3 uses
  %i.acy = load ptr, ptr %i.acw, align 8, !tbaa !314
  %.not.i9.i.i = icmp ult ptr %i.acx, %i.acy
  br i1 %.not.i9.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i
  %i.acz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i869, i8 noundef zeroext 44) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i

bb.dg:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acx, i64 1
  store ptr %i.ada, ptr %i.acv, align 8, !tbaa !315
  store i8 44, ptr %i.acx, align 1, !tbaa !138
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i.i:               ; preds = %bb.dg, %bb.df
  %i.adb = icmp ult i8 %.sroa.81300.0.lcssa210621452216, 4
  br i1 %i.adb, label %switch.lookup2230, label %_ZN4llvmlsERNS_11raw_ostreamENS_12DenormalModeE.exit

switch.lookup2230:                                ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i
  %i.adc = zext nneg i8 %.sroa.81300.0.lcssa210621452216 to i64
  %switch.gep2231 = getelementptr inbounds nuw i8, ptr @switch.table._ZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionE.62, i64 %i.adc
  %switch.load2232 = load i8, ptr %switch.gep2231, align 1
  %switch.ext2233 = zext i8 %switch.load2232 to i64 ; 4 uses
  %i.add = zext nneg i8 %.sroa.81300.0.lcssa210621452216 to i64
  %switch.gep2234 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionE.63, i64 %i.add
  %switch.load2235 = load ptr, ptr %switch.gep2234, align 8 ; 2 uses
  %i.ade = load ptr, ptr %i.acw, align 8, !tbaa !314
  %i.adf = load ptr, ptr %i.acv, align 8, !tbaa !315 ; 2 uses
  %i.adg = ptrtoint ptr %i.ade to i64
  %i.adh = ptrtoint ptr %i.adf to i64
  %i.adi = sub i64 %i.adg, %i.adh
  %i.adj = icmp ult i64 %i.adi, %switch.ext2233
  br i1 %i.adj, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %switch.lookup2230
  %i.adk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i869, ptr noundef nonnull %switch.load2235, i64 noundef %switch.ext2233) #21 ; 0 uses
  br label %_ZN4llvmlsERNS_11raw_ostreamENS_12DenormalModeE.exit

bb.di:                                            ; preds = %switch.lookup2230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.adf, ptr noundef nonnull align 1 dereferenceable(1) %switch.load2235, i64 %switch.ext2233, i1 false)
  %i.adl = load ptr, ptr %i.acv, align 8, !tbaa !315
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 %switch.ext2233
  store ptr %i.adm, ptr %i.acv, align 8, !tbaa !315
  br label %_ZN4llvmlsERNS_11raw_ostreamENS_12DenormalModeE.exit

_ZN4llvmlsERNS_11raw_ostreamENS_12DenormalModeE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i, %bb.dh, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  %i.adn = load ptr, ptr %i.abt, align 8, !tbaa !1887, !nonnull !36, !align !37 ; 2 uses
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !167
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !168
  %i.adr = getelementptr inbounds nuw i8, ptr %49, i64 32
  store i8 5, ptr %i.adr, align 8, !tbaa !172
  %i.ads = getelementptr inbounds nuw i8, ptr %49, i64 33
  store i8 1, ptr %i.ads, align 1, !tbaa !173
  store ptr %i.ado, ptr %49, align 8, !tbaa !138
  %i.adt = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 %i.adq, ptr %i.adt, align 8, !tbaa !138
  %i.adu = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %49) ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.adw = load i32, ptr %i.adv, align 8, !tbaa !140 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !141
  %.not.i872 = icmp ult i32 %i.adw, %i.ady
  br i1 %.not.i872, label %bb.dk, label %bb.dj, !prof !142

bb.dj:                                            ; preds = %_ZN4llvmlsERNS_11raw_ostreamENS_12DenormalModeE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.adu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit873

bb.dk:                                            ; preds = %_ZN4llvmlsERNS_11raw_ostreamENS_12DenormalModeE.exit
  %i.adz = zext i32 %i.adw to i64
  %i.aea = load ptr, ptr %4, align 8, !tbaa !143
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %i.adz
  store ptr %i.adu, ptr %i.aeb, align 1
  %i.aec = load i32, ptr %i.adv, align 8, !tbaa !140
  %i.aed = add i32 %i.aec, 1
  store i32 %i.aed, ptr %i.adv, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit873

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit873: ; preds = %bb.dj, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %48) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  %i.aee = load ptr, ptr %47, align 8, !tbaa !167 ; 2 uses
  %i.aef = icmp eq ptr %i.aee, %i.abm
  br i1 %i.aef, label %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit, label %bb.dl

bb.dl:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit873
  call void @free(ptr noundef %i.aee) #21
  br label %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit

_ZN4llvm11SmallVectorIcLj64EED2Ev.exit:           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit873, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %bb.dm

bb.dm:                                            ; preds = %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit868
  %66 = icmp ne i8 %.sroa.01294.0.lcssa210521462215, %.sroa.01284.0.lcssa210321482213
  %67 = icmp ne i8 %.sroa.81300.0.lcssa210621452216, %.sroa.81288.0.lcssa210421472214
  %or.cond1852 = select i1 %66, i1 true, i1 %67
  br i1 %or.cond1852, label %_ZNK4llvm12DenormalModeneES0_.exit874.thread, label %bb.dy

_ZNK4llvm12DenormalModeneES0_.exit874.thread:     ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  %i.aeg = getelementptr inbounds nuw i8, ptr %50, i64 24 ; 2 uses
  store ptr %i.aeg, ptr %50, align 8, !tbaa !167
  %i.aeh = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 0, ptr %i.aeh, align 8, !tbaa !168
  %i.aei = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i64 64, ptr %i.aei, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  %i.aej = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i32 2, ptr %i.aej, align 8, !tbaa !309
  %i.aek = getelementptr inbounds nuw i8, ptr %51, i64 40
  store i8 0, ptr %i.aek, align 8, !tbaa !310
  %i.ael = getelementptr inbounds nuw i8, ptr %51, i64 44
  store i32 1, ptr %i.ael, align 4, !tbaa !311
  %i.aem = getelementptr inbounds nuw i8, ptr %51, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aem, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %51, align 8, !tbaa !177
  %i.aen = getelementptr inbounds nuw i8, ptr %51, i64 48 ; 2 uses
  store ptr %50, ptr %i.aen, align 8, !tbaa !313
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %51, ptr noundef null, i64 noundef 0, i32 noundef 0) #21
  %i.aeo = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !314
  %i.aeq = getelementptr inbounds nuw i8, ptr %51, i64 32 ; 3 uses
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !315 ; 2 uses
  %i.aes = ptrtoint ptr %i.aep to i64
  %i.aet = ptrtoint ptr %i.aer to i64
  %i.aeu = sub i64 %i.aes, %i.aet
  %i.aev = icmp ult i64 %i.aeu, 23
  br i1 %i.aev, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %_ZNK4llvm12DenormalModeneES0_.exit874.thread
  %i.aew = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef nonnull @.str.829, i64 noundef 23) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit877

bb.do:                                            ; preds = %_ZNK4llvm12DenormalModeneES0_.exit874.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.aer, ptr noundef nonnull align 1 dereferenceable(23) @.str.829, i64 23, i1 false)
  %i.aex = load ptr, ptr %i.aeq, align 8, !tbaa !315
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 23
  store ptr %i.aey, ptr %i.aeq, align 8, !tbaa !315
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit877

_ZN4llvm11raw_ostreamlsEPKc.exit877:              ; preds = %bb.dn, %bb.do
  %.0.i.i876 = phi ptr [ %i.aew, %bb.dn ], [ %51, %bb.do ] ; 7 uses
  %i.aez = icmp ult i8 %.sroa.01284.0.lcssa210321482213, 4
  br i1 %i.aez, label %switch.lookup2236, label %.thread.i.i890

.thread.i.i890:                                   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit877
  %i.afa = getelementptr inbounds nuw i8, ptr %.0.i.i876, i64 24
  %i.afb = getelementptr inbounds nuw i8, ptr %.0.i.i876, i64 32
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i884

switch.lookup2236:                                ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit877
  %i.afc = zext nneg i8 %.sroa.01284.0.lcssa210321482213 to i64
  %switch.gep2237 = getelementptr inbounds nuw i8, ptr @switch.table._ZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionE.62, i64 %i.afc
  %switch.load2238 = load i8, ptr %switch.gep2237, align 1
  %switch.ext2239 = zext i8 %switch.load2238 to i64 ; 4 uses
  %i.afd = zext nneg i8 %.sroa.01284.0.lcssa210321482213 to i64
  %switch.gep2240 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionE.63, i64 %i.afd
  %switch.load2241 = load ptr, ptr %switch.gep2240, align 8 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.0.i.i876, i64 24 ; 3 uses
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !314
  %i.afg = getelementptr inbounds nuw i8, ptr %.0.i.i876, i64 32 ; 5 uses
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !315 ; 2 uses
  %i.afi = ptrtoint ptr %i.aff to i64
  %i.afj = ptrtoint ptr %i.afh to i64
  %i.afk = sub i64 %i.afi, %i.afj
  %i.afl = icmp ult i64 %i.afk, %switch.ext2239
  br i1 %i.afl, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %switch.lookup2236
  %i.afm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i876, ptr noundef nonnull %switch.load2241, i64 noundef %switch.ext2239) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i884

bb.dq:                                            ; preds = %switch.lookup2236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.afh, ptr noundef nonnull align 1 dereferenceable(1) %switch.load2241, i64 %switch.ext2239, i1 false)
  %i.afn = load ptr, ptr %i.afg, align 8, !tbaa !315
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 %switch.ext2239
  store ptr %i.afo, ptr %i.afg, align 8, !tbaa !315
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i884

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i884: ; preds = %bb.dq, %bb.dp, %.thread.i.i890
  %i.afp = phi ptr [ %i.afg, %bb.dp ], [ %i.afb, %.thread.i.i890 ], [ %i.afg, %bb.dq ] ; 5 uses
  %i.afq = phi ptr [ %i.afe, %bb.dp ], [ %i.afa, %.thread.i.i890 ], [ %i.afe, %bb.dq ] ; 2 uses
  %i.afr = load ptr, ptr %i.afp, align 8, !tbaa !315 ; 3 uses
  %i.afs = load ptr, ptr %i.afq, align 8, !tbaa !314
  %.not.i9.i.i885 = icmp ult ptr %i.afr, %i.afs
  br i1 %.not.i9.i.i885, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i884
  %i.aft = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i876, i8 noundef zeroext 44) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i886

bb.ds:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i884
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 1
  store ptr %i.afu, ptr %i.afp, align 8, !tbaa !315
  store i8 44, ptr %i.afr, align 1, !tbaa !138
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i886

_ZN4llvm11raw_ostreamlsEc.exit.i.i886:            ; preds = %bb.ds, %bb.dr
  %i.afv = icmp ult i8 %.sroa.81288.0.lcssa210421472214, 4
  br i1 %i.afv, label %switch.lookup2242, label %_ZN4llvmlsERNS_11raw_ostreamENS_12DenormalModeE.exit891

switch.lookup2242:                                ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i886
  %i.afw = zext nneg i8 %.sroa.81288.0.lcssa210421472214 to i64
  %switch.gep2243 = getelementptr inbounds nuw i8, ptr @switch.table._ZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionE.62, i64 %i.afw
  %switch.load2244 = load i8, ptr %switch.gep2243, align 1
  %switch.ext2245 = zext i8 %switch.load2244 to i64 ; 4 uses
  %i.afx = zext nneg i8 %.sroa.81288.0.lcssa210421472214 to i64
  %switch.gep2246 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionE.63, i64 %i.afx
  %switch.load2247 = load ptr, ptr %switch.gep2246, align 8 ; 2 uses
  %i.afy = load ptr, ptr %i.afq, align 8, !tbaa !314
  %i.afz = load ptr, ptr %i.afp, align 8, !tbaa !315 ; 2 uses
  %i.aga = ptrtoint ptr %i.afy to i64
  %i.agb = ptrtoint ptr %i.afz to i64
  %i.agc = sub i64 %i.aga, %i.agb
  %i.agd = icmp ult i64 %i.agc, %switch.ext2245
  br i1 %i.agd, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %switch.lookup2242
  %i.age = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i876, ptr noundef nonnull %switch.load2247, i64 noundef %switch.ext2245) #21 ; 0 uses
  br label %_ZN4llvmlsERNS_11raw_ostreamENS_12DenormalModeE.exit891

bb.du:                                            ; preds = %switch.lookup2242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.afz, ptr noundef nonnull align 1 dereferenceable(1) %switch.load2247, i64 %switch.ext2245, i1 false)
  %i.agf = load ptr, ptr %i.afp, align 8, !tbaa !315
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 %switch.ext2245
  store ptr %i.agg, ptr %i.afp, align 8, !tbaa !315
  br label %_ZN4llvmlsERNS_11raw_ostreamENS_12DenormalModeE.exit891

_ZN4llvmlsERNS_11raw_ostreamENS_12DenormalModeE.exit891: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i886, %bb.dt, %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  %i.agh = load ptr, ptr %i.aen, align 8, !tbaa !1887, !nonnull !36, !align !37 ; 2 uses
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !167
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !168
  %i.agl = getelementptr inbounds nuw i8, ptr %52, i64 32
  store i8 5, ptr %i.agl, align 8, !tbaa !172
  %i.agm = getelementptr inbounds nuw i8, ptr %52, i64 33
  store i8 1, ptr %i.agm, align 1, !tbaa !173
  store ptr %i.agi, ptr %52, align 8, !tbaa !138
  %i.agn = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 %i.agk, ptr %i.agn, align 8, !tbaa !138
  %i.ago = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %52) ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.agq = load i32, ptr %i.agp, align 8, !tbaa !140 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !141
  %.not.i894 = icmp ult i32 %i.agq, %i.ags
  br i1 %.not.i894, label %bb.dw, label %bb.dv, !prof !142

bb.dv:                                            ; preds = %_ZN4llvmlsERNS_11raw_ostreamENS_12DenormalModeE.exit891
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ago)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit895

bb.dw:                                            ; preds = %_ZN4llvmlsERNS_11raw_ostreamENS_12DenormalModeE.exit891
  %i.agt = zext i32 %i.agq to i64
  %i.agu = load ptr, ptr %4, align 8, !tbaa !143
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.agu, i64 %i.agt
  store ptr %i.ago, ptr %i.agv, align 1
  %i.agw = load i32, ptr %i.agp, align 8, !tbaa !140
  %i.agx = add i32 %i.agw, 1
  store i32 %i.agx, ptr %i.agp, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit895

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit895: ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %51) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  %i.agy = load ptr, ptr %50, align 8, !tbaa !167 ; 2 uses
  %i.agz = icmp eq ptr %i.agy, %i.aeg
  br i1 %i.agz, label %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit896, label %bb.dx

bb.dx:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit895
  call void @free(ptr noundef %i.agy) #21
  br label %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit896

_ZN4llvm11SmallVectorIcLj64EED2Ev.exit896:        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit895, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %bb.dy

bb.dy:                                            ; preds = %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit896, %bb.dm
  %i.aha = icmp eq i64 %.sroa.18.1.lcssa208821632198, 0
  br i1 %i.aha, label %bb.ec, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21
  %i.ahb = getelementptr inbounds nuw i8, ptr %53, i64 32
  store i8 3, ptr %i.ahb, align 8, !tbaa !172, !alias.scope !1888
  %i.ahc = getelementptr inbounds nuw i8, ptr %53, i64 33
  store i8 5, ptr %i.ahc, align 1, !tbaa !173, !alias.scope !1888
  store ptr @.str.821, ptr %53, align 8, !tbaa !138, !alias.scope !1888
  %i.ahd = getelementptr inbounds nuw i8, ptr %53, i64 16
  store ptr %.sroa.01376.1.lcssa208721642197, ptr %i.ahd, align 8, !tbaa !138, !alias.scope !1888
  %i.ahe = getelementptr inbounds nuw i8, ptr %53, i64 24
  store i64 %.sroa.18.1.lcssa208821632198, ptr %i.ahe, align 8, !tbaa !138, !alias.scope !1888
  %i.ahf = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %53) ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ahh = load i32, ptr %i.ahg, align 8, !tbaa !140 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !141
  %.not.i897 = icmp ult i32 %i.ahh, %i.ahj
  br i1 %.not.i897, label %bb.eb, label %bb.ea, !prof !142

bb.ea:                                            ; preds = %bb.dz
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ahf)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit898

bb.eb:                                            ; preds = %bb.dz
  %i.ahk = zext i32 %i.ahh to i64
  %i.ahl = load ptr, ptr %4, align 8, !tbaa !143
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.ahl, i64 %i.ahk
  store ptr %i.ahf, ptr %i.ahm, align 1
  %i.ahn = load i32, ptr %i.ahg, align 8, !tbaa !140
  %i.aho = add i32 %i.ahn, 1
  store i32 %i.aho, ptr %i.ahg, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit898

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit898: ; preds = %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  br label %bb.ec

bb.ec:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit898, %bb.dy
  %i.ahp = trunc nuw i8 %.01433.lcssa209621552206 to i1
  %i.ahq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  br i1 %i.ahp, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #21
  %i.ahs = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.aht = getelementptr inbounds nuw i8, ptr %54, i64 33
  store i8 1, ptr %i.aht, align 1, !tbaa !173
  store ptr @.str.830, ptr %54, align 8, !tbaa !138
  store i8 3, ptr %i.ahs, align 8, !tbaa !172
  %i.ahu = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %54) ; 2 uses
  %i.ahv = load i32, ptr %i.ahq, align 8, !tbaa !140 ; 2 uses
  %i.ahw = load i32, ptr %i.ahr, align 4, !tbaa !141
  %.not.i899 = icmp ult i32 %i.ahv, %i.ahw
  br i1 %.not.i899, label %bb.ef, label %bb.ee, !prof !142

bb.ee:                                            ; preds = %bb.ed
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ahu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit900

bb.ef:                                            ; preds = %bb.ed
  %i.ahx = zext i32 %i.ahv to i64
  %i.ahy = load ptr, ptr %4, align 8, !tbaa !143
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.ahy, i64 %i.ahx
  store ptr %i.ahu, ptr %i.ahz, align 1
  %i.aia = load i32, ptr %i.ahq, align 8, !tbaa !140
  %i.aib = add i32 %i.aia, 1
  store i32 %i.aib, ptr %i.ahq, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit900

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit900: ; preds = %bb.ee, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21
  br label %bb.ej

bb.eg:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #21
  %i.aic = getelementptr inbounds nuw i8, ptr %55, i64 32
  %i.aid = getelementptr inbounds nuw i8, ptr %55, i64 33
  store i8 1, ptr %i.aid, align 1, !tbaa !173
  store ptr @.str.831, ptr %55, align 8, !tbaa !138
  store i8 3, ptr %i.aic, align 8, !tbaa !172
  %i.aie = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %55) ; 2 uses
  %i.aif = load i32, ptr %i.ahq, align 8, !tbaa !140 ; 2 uses
  %i.aig = load i32, ptr %i.ahr, align 4, !tbaa !141
  %.not.i901 = icmp ult i32 %i.aif, %i.aig
  br i1 %.not.i901, label %bb.ei, label %bb.eh, !prof !142

bb.eh:                                            ; preds = %bb.eg
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.aie)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit902

bb.ei:                                            ; preds = %bb.eg
  %i.aih = zext i32 %i.aif to i64
  %i.aii = load ptr, ptr %4, align 8, !tbaa !143
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %i.aii, i64 %i.aih
  store ptr %i.aie, ptr %i.aij, align 1
  %i.aik = load i32, ptr %i.ahq, align 8, !tbaa !140
  %i.ail = add i32 %i.aik, 1
  store i32 %i.ail, ptr %i.ahq, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit902

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit902: ; preds = %bb.eh, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  br label %bb.ej

bb.ej:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit902, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit900
  %i.aim = icmp eq i64 %.sroa.19.0.lcssa209721542207, 0
  br i1 %i.aim, label %bb.en, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #21
  %i.ain = getelementptr inbounds nuw i8, ptr %56, i64 32
  store i8 3, ptr %i.ain, align 8, !tbaa !172, !alias.scope !1889
  %i.aio = getelementptr inbounds nuw i8, ptr %56, i64 33
  store i8 5, ptr %i.aio, align 1, !tbaa !173, !alias.scope !1889
  store ptr @.str.816, ptr %56, align 8, !tbaa !138, !alias.scope !1889
  %i.aip = getelementptr inbounds nuw i8, ptr %56, i64 16
  store ptr %.sroa.0.0.lcssa209821532208, ptr %i.aip, align 8, !tbaa !138, !alias.scope !1889
  %i.aiq = getelementptr inbounds nuw i8, ptr %56, i64 24
  store i64 %.sroa.19.0.lcssa209721542207, ptr %i.aiq, align 8, !tbaa !138, !alias.scope !1889
  %i.air = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %56) ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ait = load i32, ptr %i.ais, align 8, !tbaa !140 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !141
  %.not.i903 = icmp ult i32 %i.ait, %i.aiv
  br i1 %.not.i903, label %bb.em, label %bb.el, !prof !142

bb.el:                                            ; preds = %bb.ek
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.air)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit904

bb.em:                                            ; preds = %bb.ek
  %i.aiw = zext i32 %i.ait to i64
  %i.aix = load ptr, ptr %4, align 8, !tbaa !143
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %i.aiw
  store ptr %i.air, ptr %i.aiy, align 1
  %i.aiz = load i32, ptr %i.ais, align 8, !tbaa !140
  %i.aja = add i32 %i.aiz, 1
  store i32 %i.aja, ptr %i.ais, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit904

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit904: ; preds = %bb.el, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  br label %bb.en

bb.en:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit904, %bb.ej
  %i.ajb = icmp eq i64 %.sroa.51309.0.lcssa210821432218, 0
  br i1 %i.ajb, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #21
  %i.ajc = getelementptr inbounds nuw i8, ptr %57, i64 32
  store i8 3, ptr %i.ajc, align 8, !tbaa !172, !alias.scope !1890
  %i.ajd = getelementptr inbounds nuw i8, ptr %57, i64 33
  store i8 5, ptr %i.ajd, align 1, !tbaa !173, !alias.scope !1890
  store ptr @.str.832, ptr %57, align 8, !tbaa !138, !alias.scope !1890
  %i.aje = getelementptr inbounds nuw i8, ptr %57, i64 16
  store ptr %.sroa.01308.0.lcssa210721442217, ptr %i.aje, align 8, !tbaa !138, !alias.scope !1890
  %i.ajf = getelementptr inbounds nuw i8, ptr %57, i64 24
  store i64 %.sroa.51309.0.lcssa210821432218, ptr %i.ajf, align 8, !tbaa !138, !alias.scope !1890
  %i.ajg = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %57) ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aji = load i32, ptr %i.ajh, align 8, !tbaa !140 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !141
  %.not.i905 = icmp ult i32 %i.aji, %i.ajk
  br i1 %.not.i905, label %bb.eq, label %bb.ep, !prof !142

bb.ep:                                            ; preds = %bb.eo
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ajg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit906

bb.eq:                                            ; preds = %bb.eo
  %i.ajl = zext i32 %i.aji to i64
  %i.ajm = load ptr, ptr %4, align 8, !tbaa !143
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.ajl
  store ptr %i.ajg, ptr %i.ajn, align 1
  %i.ajo = load i32, ptr %i.ajh, align 8, !tbaa !140
  %i.ajp = add i32 %i.ajo, 1
  store i32 %i.ajp, ptr %i.ajh, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit906

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit906: ; preds = %bb.ep, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  br label %bb.er

bb.er:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit906, %bb.en
  %i.ajq = icmp eq i64 %.sroa.71279.0.lcssa210221492212, 0
  br i1 %i.ajq, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #21
  %i.ajr = getelementptr inbounds nuw i8, ptr %58, i64 32
  store i8 3, ptr %i.ajr, align 8, !tbaa !172, !alias.scope !1891
  %i.ajs = getelementptr inbounds nuw i8, ptr %58, i64 33
  store i8 5, ptr %i.ajs, align 1, !tbaa !173, !alias.scope !1891
end_hunk_0
