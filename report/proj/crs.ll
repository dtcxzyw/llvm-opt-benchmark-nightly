Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/crs?download=true
inline.NumInlined: 8471
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK5osgeo4proj3crs11CompoundCRS8identifyB5cxx11ERKSt10shared_ptrINS0_2io16AuthorityFactoryEE:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %spec.select.i = select i1 %i.dw, ptr null, ptr %i.dx
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !110
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = invoke noundef zeroext i1 %i.ea(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, ptr noundef %spec.select.i, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %.noexc unwind label %bb.am, !inline_history !489

.noexc:                                           ; preds = %.lr.ph.i198
  br i1 %i.eb, label %bb.x, label %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit

_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit: ; preds = %.noexc, %bb.x, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit, %bb.v, %bb.w, %.preheader.i
  %i.ec = phi i32 [ 25, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit ], [ 100, %.preheader.i ], [ 25, %bb.w ], [ 25, %bb.v ], [ 25, %.noexc ], [ 100, %bb.x ]
  %i.ed = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc199 unwind label %bb.an ; 3 uses

.noexc199:                                        ; preds = %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !128 ; 2 uses
  %i.eh = load <2 x ptr>, ptr %5, align 16, !tbaa !155
  store <2 x ptr> %i.eh, ptr %i.ee, align 8, !tbaa !155
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.critedge, label %bb.y

bb.y:                                             ; preds = %.noexc199
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  %i.ej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !130
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.ei, align 4, !tbaa !130
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  %i.em = atomicrmw volatile add ptr %i.ei, i32 1 acq_rel, align 4 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.z, %.noexc199
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store i32 %i.ec, ptr %i.en, align 8, !tbaa !492
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %4) #39
  %i.eo = load i64, ptr %i.c, align 8, !tbaa !495
  %i.ep = add i64 %i.eo, 1                        ; 2 uses
  store i64 %i.ep, ptr %i.c, align 8, !tbaa !495
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !353 ; 2 uses
  %i.er = load ptr, ptr %4, align 8, !tbaa !354   ; 2 uses
  store ptr %i.er, ptr %0, align 8, !tbaa !354
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.eq, ptr %i.es, align 8, !tbaa !353
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ep, ptr %i.et, align 8, !tbaa !356
  %i.eu = icmp eq ptr %i.er, %4
  br i1 %i.eu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge
  store ptr %0, ptr %i.es, align 8, !tbaa !353
  store ptr %0, ptr %0, align 8, !tbaa !354
  br label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit

bb.ac:                                            ; preds = %.critedge
  store ptr %0, ptr %i.eq, align 8, !tbaa !354
  %i.ev = load ptr, ptr %0, align 8, !tbaa !354
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %0, ptr %i.ew, align 8, !tbaa !353
  store ptr %4, ptr %i.b, align 8, !tbaa !353
  store ptr %4, ptr %4, align 8, !tbaa !354
  store i64 0, ptr %i.c, align 8, !tbaa !356
  br label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit

_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit: ; preds = %bb.ab, %bb.ac
  %i.ex = load ptr, ptr %i.ef, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i200 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i200, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.ey, align 8, !tbaa !135
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !136
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !110
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #39, !inline_history !48
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !110
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #39, !inline_history !48
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i201 = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i201, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i202

bb.ah:                                            ; preds = %bb.af
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i202

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i202: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i203 = phi i32 [ %i.fb, %bb.ag ], [ %i.fl, %bb.ah ]
  %i.fm = icmp eq i32 %.0.i.i.i.i.i203, 1
  br i1 %i.fm, label %bb.ai, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit, !prof !137

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i202
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit: ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i202, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %.critedge190

bb.aj:                                            ; preds = %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit.thread
  %i.fn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.al

bb.ak:                                            ; preds = %bb.n
  %i.fo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #39
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn154 = phi { ptr, i32 } [ %i.fo, %bb.ak ], [ %i.fn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.ap

bb.am:                                            ; preds = %.lr.ph.i198
  %i.fp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ao

bb.an:                                            ; preds = %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn156 = phi { ptr, i32 } [ %i.fq, %bb.an ], [ %i.fp, %bb.am ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #39
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.pn156.pn = phi { ptr, i32 } [ %.pn156, %bb.ao ], [ %.pn154, %bb.al ] ; 3 uses
  %.2108 = extractvalue { ptr, i32 } %.pn156.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.fr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #39
  %i.fs = icmp eq i32 %.2108, %i.fr
  br i1 %i.fs, label %bb.aq, label %.loopexit479

bb.aq:                                            ; preds = %bb.ap
  %.2 = extractvalue { ptr, i32 } %.pn156.pn, 0
  %i.ft = call ptr @__cxa_begin_catch(ptr %.2) #39 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit.thread428 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit479

_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit.thread428: ; preds = %bb.m, %bb.aq, %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0416.0511, i64 16 ; 2 uses
  %.not470 = icmp eq ptr %i.fv, %i.ap
  br i1 %.not470, label %.critedge184, label %bb.l

_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryEPKNS0_6common16IdentifiedObjectERKSt10shared_ptrINS0_2io16AuthorityFactoryEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread4.i, %bb.h
  br i1 %i.al, label %.critedge184, label %.preheader476

.preheader476:                                    ; preds = %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryEPKNS0_6common16IdentifiedObjectERKSt10shared_ptrINS0_2io16AuthorityFactoryEE.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.as

bb.as:                                            ; preds = %.preheader476, %bb.dm
  %i.gc = phi i1 [ false, %.preheader476 ], [ true, %bb.dm ]
  %i.gd = phi i1 [ true, %.preheader476 ], [ false, %bb.dm ]
  %.0142517 = phi i8 [ 0, %.preheader476 ], [ %.2144437653, %bb.dm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.ge = load ptr, ptr %2, align 8, !tbaa !359
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.gf = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #40
          to label %bb.au unwind label %bb.at     ; 3 uses

bb.at:                                            ; preds = %bb.as
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = load ptr, ptr %8, align 8, !tbaa !363   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i4.i, label %.body, label %.body.sink.split

bb.au:                                            ; preds = %bb.as
  store ptr %i.gf, ptr %8, align 8, !tbaa !363
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  store ptr %i.gi, ptr %i.fw, align 8, !tbaa !364
  store i32 15, ptr %i.gf, align 4, !tbaa !361
  store ptr %i.gi, ptr %i.fx, align 8, !tbaa !370
  invoke void @_ZNK5osgeo4proj2io16AuthorityFactory21createObjectsFromNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS2_10ObjectTypeESaISC_EEbm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list.525") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext %i.gc, i64 noundef 0)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gj = load ptr, ptr %8, align 8, !tbaa !363   ; 3 uses
  %.not.i.i.i204 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i204, label %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gk = load ptr, ptr %i.fw, align 8, !tbaa !364
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gj to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gn) #38
  br label %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit

_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %.sroa.0409.0512 = load ptr, ptr %7, align 8, !tbaa !354 ; 2 uses
  %.not471513 = icmp eq ptr %.sroa.0409.0512, %7
  br i1 %.not471513, label %.thread433, label %.lr.ph516.preheader

.lr.ph516.preheader:                              ; preds = %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit
  %26 = trunc nuw i8 %.0142517 to i1
  br label %.lr.ph516

bb.ax:                                            ; preds = %bb.au
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %8, align 8, !tbaa !363   ; 2 uses
  %.not.i.i.i206 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i206, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ax, %bb.at
  %.sink676 = phi ptr [ %i.gh, %bb.at ], [ %i.gp, %bb.ax ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.gg, %bb.at ], [ %i.go, %bb.ax ]
  %i.gq = load ptr, ptr %i.fw, align 8, !tbaa !364
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %.sink676 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %.sink676, i64 noundef %i.gt) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ax, %bb.at
  %.pn = phi { ptr, i32 } [ %i.gg, %bb.at ], [ %i.go, %bb.ax ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.dn

.lr.ph516:                                        ; preds = %.lr.ph516.preheader, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251
  %.sroa.0409.0515 = phi ptr [ %.sroa.0409.0, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251 ], [ %.sroa.0409.0512, %.lr.ph516.preheader ] ; 3 uses
  %.1143514 = phi i1 [ %i.hs, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251 ], [ %26, %.lr.ph516.preheader ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0409.0515, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !367, !noalias !1491 ; 6 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph516
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !110, !noalias !1491
  %i.gy = icmp eq ptr %i.gx, getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5osgeo4proj3crs11CompoundCRSE, i64 16)
  br i1 %i.gy, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph516
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !alias.scope !1491
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread

bb.ba:                                            ; preds = %bb.ay
  store ptr %i.gv, ptr %9, align 8, !tbaa !258, !alias.scope !1491
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0409.0515, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !128, !noalias !1491 ; 5 uses
  store ptr %i.ha, ptr %i.fy, align 8, !tbaa !128, !alias.scope !1491
  %.not.i.i.i.i209 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i209, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 3 uses
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !1491
  %.not.i.i.i.i.i = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread656

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread656: ; preds = %bb.bb
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !130, !noalias !1491
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.hb, align 4, !tbaa !130, !noalias !1491
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  store ptr %i.gv, ptr %10, align 16, !tbaa !258
  store ptr %i.ha, ptr %i.fz, align 8, !tbaa !128
  br label %bb.bc

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread: ; preds = %bb.az, %bb.ba
  %.ph = phi ptr [ %i.gv, %bb.ba ], [ null, %bb.az ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  store ptr %.ph, ptr %10, align 16, !tbaa !258
  store ptr null, ptr %i.fz, align 8, !tbaa !128
  br label %bb.bf

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit: ; preds = %bb.bb
  %i.hf = atomicrmw volatile add ptr %i.hb, i32 1 acq_rel, align 4, !noalias !1491 ; 0 uses
  %.pre = load ptr, ptr %9, align 8, !tbaa !258   ; 3 uses
  %.pre547 = load ptr, ptr %i.fy, align 8, !tbaa !128 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  store ptr %.pre, ptr %10, align 16, !tbaa !258
  store ptr %.pre547, ptr %i.fz, align 8, !tbaa !128
  %.not.i.i.i.i210 = icmp eq ptr %.pre547, null
  br i1 %.not.i.i.i.i210, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread656, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit
  %i.hg = phi ptr [ %i.gv, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread656 ], [ %.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit ]
  %i.hh = phi ptr [ %i.ha, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread656 ], [ %.pre547, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 3 uses
  %i.hj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i211 = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.i.i.i211, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hk = load i32, ptr %i.hi, align 4, !tbaa !130
  %i.hl = add nsw i32 %i.hk, 1
  store i32 %i.hl, ptr %i.hi, align 4, !tbaa !130
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.hm = atomicrmw volatile add ptr %i.hi, i32 1 acq_rel, align 4 ; 0 uses
  %.pre548 = load ptr, ptr %9, align 8, !tbaa !258
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread
  %i.hn = phi ptr [ %.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit ], [ %i.hg, %bb.bd ], [ %.pre548, %bb.be ], [ %.ph, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread ] ; 4 uses
  %i.ho = load ptr, ptr %i.d, align 8, !tbaa !150
  %i.hp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.hn) #42
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !150
  %i.hr = call noundef zeroext i1 @_ZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_(ptr noundef %i.ho, ptr noundef %i.hq) #39 ; 2 uses
  %i.hs = or i1 %i.hr, %.1143514                  ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !110
  %i.hv = icmp eq ptr %i.hu, getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj3crs11CompoundCRSE, i64 104)
  br i1 %i.hv, label %bb.bg, label %.loopexit475

bb.bg:                                            ; preds = %bb.bf
  %i.hw = load ptr, ptr %i.e, align 8, !tbaa !241 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 72
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !241 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !256 ; 2 uses
  %i.ib = load ptr, ptr %i.hw, align 8, !tbaa !259 ; 3 uses
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !256
  %i.ih = load ptr, ptr %i.hy, align 8, !tbaa !259
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %.not.i213 = icmp eq i64 %i.ie, %i.ik
  br i1 %.not.i213, label %.preheader.i214, label %.loopexit475

.preheader.i214:                                  ; preds = %bb.bg
  %.not2527.i215 = icmp eq ptr %i.ia, %i.ib
  br i1 %.not2527.i215, label %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221, label %.lr.ph.i216

bb.bh:                                            ; preds = %.noexc220
  %i.il = add nuw i64 %.028.i217, 1               ; 2 uses
  %i.im = load ptr, ptr %i.hz, align 8, !tbaa !256
  %i.in = load ptr, ptr %i.hw, align 8, !tbaa !259 ; 2 uses
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = ashr exact i64 %i.iq, 4
  %.not25.not.i219 = icmp ult i64 %i.il, %i.ir
  br i1 %.not25.not.i219, label %.lr.ph.i216, label %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221, !llvm.loop !82

.lr.ph.i216:                                      ; preds = %.preheader.i214, %bb.bh
  %i.is = phi ptr [ %i.in, %bb.bh ], [ %i.ib, %.preheader.i214 ]
  %.028.i217 = phi i64 [ %i.il, %bb.bh ], [ 0, %.preheader.i214 ] ; 3 uses
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.is, i64 %.028.i217
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !158 ; 2 uses
  %i.iv = load ptr, ptr %i.hy, align 8, !tbaa !259
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %.028.i217
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !158 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %spec.select.i218 = select i1 %i.iy, ptr null, ptr %i.iz
  %i.ja = load ptr, ptr %i.iu, align 8, !tbaa !110
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = invoke noundef zeroext i1 %i.jc(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, ptr noundef %spec.select.i218, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %.noexc220 unwind label %bb.cg, !inline_history !489

.noexc220:                                        ; preds = %.lr.ph.i216
  br i1 %i.jd, label %bb.bh, label %.loopexit475

_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221: ; preds = %bb.bh, %.preheader.i214
  %i.je = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.hn) #42 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !149 ; 3 uses
  %i.jh = load i64, ptr %i.ag, align 8, !tbaa !149
  %i.ji = icmp eq i64 %i.jg, %i.jh
  br i1 %i.ji, label %bb.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432

bb.bi:                                            ; preds = %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221
  %i.jj = icmp eq i64 %i.jg, 0
  br i1 %i.jj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.bi
  %i.jk = load ptr, ptr %i.d, align 8, !tbaa !150
  %i.jl = load ptr, ptr %i.je, align 8, !tbaa !150
  %bcmp.i = call i32 @bcmp(ptr %i.jl, ptr %i.jk, i64 %i.jg)
  %i.jm = icmp eq i32 %bcmp.i, 0
  br i1 %i.jm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.bi, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %27 = zext i1 %i.hs to i8
  %i.jn = load ptr, ptr %4, align 8, !tbaa !354   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.jn, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.jo, %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i ], [ %i.jn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 3 uses
  %i.jo = load ptr, ptr %.09.i.i, align 8, !tbaa !354 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 4 uses
  %i.js = load atomic i64, ptr %i.jr acquire, align 8 ; 2 uses
  %i.jt = icmp eq i64 %i.js, 4294967297
  %i.ju = trunc i64 %i.js to i32                  ; 2 uses
  br i1 %i.jt, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.jr, align 8, !tbaa !135
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  store i32 0, ptr %i.jv, align 4, !tbaa !136
  %i.jw = load ptr, ptr %i.jq, align 8, !tbaa !110
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #39, !inline_history !1482
  %i.jz = load ptr, ptr %i.jq, align 8, !tbaa !110
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #39, !inline_history !1482
  br label %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.kc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.kc, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kd = add nsw i32 %i.ju, -1
  store i32 %i.kd, ptr %i.jr, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.ke = atomicrmw volatile add ptr %i.jr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ju, %bb.bm ], [ %i.ke, %bb.bn ]
  %i.kf = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.kf, label %bb.bo, label %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i, !prof !137

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #39
  br label %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i

_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i: ; preds = %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bk, %.lr.ph.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 40) #38
  %.not.i.i = icmp eq ptr %i.jo, %4
  br i1 %.not.i.i, label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !83

_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit: ; preds = %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  store ptr %4, ptr %i.b, align 8, !tbaa !353
  store ptr %4, ptr %4, align 8, !tbaa !354
  store i64 0, ptr %i.c, align 8, !tbaa !356
  %i.kg = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc224 unwind label %bb.ch ; 3 uses

.noexc224:                                        ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.fz, align 8, !tbaa !128 ; 2 uses
  %i.kj = load <2 x ptr>, ptr %10, align 16, !tbaa !155
  store <2 x ptr> %i.kj, ptr %i.kh, align 8, !tbaa !155
  %.not.i.i.i.i.i.i.i.i222 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i.i.i.i.i.i222, label %.critedge186, label %bb.bp

bb.bp:                                            ; preds = %.noexc224
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 3 uses
  %i.kl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i.i.i223 = icmp eq i8 %i.kl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i223, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.km = load i32, ptr %i.kk, align 4, !tbaa !130
  %i.kn = add nsw i32 %i.km, 1
  store i32 %i.kn, ptr %i.kk, align 4, !tbaa !130
  br label %.critedge186

bb.br:                                            ; preds = %bb.bp
  %i.ko = atomicrmw volatile add ptr %i.kk, i32 1 acq_rel, align 4 ; 0 uses
  br label %.critedge186

.critedge186:                                     ; preds = %bb.br, %bb.bq, %.noexc224
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  store i32 100, ptr %i.kp, align 8, !tbaa !492
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.kg, ptr noundef nonnull align 8 dereferenceable(24) %4) #39
  %i.kq = load i64, ptr %i.c, align 8, !tbaa !495
  %i.kr = add i64 %i.kq, 1                        ; 2 uses
  store i64 %i.kr, ptr %i.c, align 8, !tbaa !495
  %i.ks = load ptr, ptr %i.b, align 8, !tbaa !353 ; 2 uses
  %i.kt = load ptr, ptr %4, align 8, !tbaa !354   ; 2 uses
  store ptr %i.kt, ptr %0, align 8, !tbaa !354
  store ptr %i.ks, ptr %i.ga, align 8, !tbaa !353
  store i64 %i.kr, ptr %i.gb, align 8, !tbaa !356
  %i.ku = icmp eq ptr %i.kt, %4
  br i1 %i.ku, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.critedge186
  store ptr %0, ptr %i.ga, align 8, !tbaa !353
  store ptr %0, ptr %0, align 8, !tbaa !354
  br label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit226

bb.bt:                                            ; preds = %.critedge186
  store ptr %0, ptr %i.ks, align 8, !tbaa !354
  %i.kv = load ptr, ptr %0, align 8, !tbaa !354
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store ptr %0, ptr %i.kw, align 8, !tbaa !353
  store ptr %4, ptr %i.b, align 8, !tbaa !353
  store ptr %4, ptr %4, align 8, !tbaa !354
  store i64 0, ptr %i.c, align 8, !tbaa !356
  br label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit226

_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit226: ; preds = %bb.bs, %bb.bt
  %i.kx = load ptr, ptr %i.fz, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i227 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i227, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit226
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 4 uses
  %i.kz = load atomic i64, ptr %i.ky acquire, align 8 ; 2 uses
  %i.la = icmp eq i64 %i.kz, 4294967297
  %i.lb = trunc i64 %i.kz to i32                  ; 2 uses
  br i1 %i.la, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.ky, align 8, !tbaa !135
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  store i32 0, ptr %i.lc, align 4, !tbaa !136
  %i.ld = load ptr, ptr %i.kx, align 8, !tbaa !110
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #39, !inline_history !48
  %i.lg = load ptr, ptr %i.kx, align 8, !tbaa !110
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #39, !inline_history !48
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231

bb.bw:                                            ; preds = %bb.bu
  %i.lj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i228 = icmp eq i8 %i.lj, 0
  br i1 %.not.i.i.i.i228, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lk = add nsw i32 %i.lb, -1
  store i32 %i.lk, ptr %i.ky, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i229

bb.by:                                            ; preds = %bb.bw
  %i.ll = atomicrmw volatile add ptr %i.ky, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i229

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i229: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i230 = phi i32 [ %i.lb, %bb.bx ], [ %i.ll, %bb.by ]
  %i.lm = icmp eq i32 %.0.i.i.i.i.i230, 1
  br i1 %i.lm, label %bb.bz, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231, !prof !137

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i229
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231: ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit226, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i229, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ln = load ptr, ptr %i.fy, align 8, !tbaa !128 ; 8 uses
  %.not.i.i232 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i232, label %bb.df, label %bb.ca

bb.ca:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 4 uses
  %i.lp = load atomic i64, ptr %i.lo acquire, align 8 ; 2 uses
  %i.lq = icmp eq i64 %i.lp, 4294967297
  %i.lr = trunc i64 %i.lp to i32                  ; 2 uses
  br i1 %i.lq, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.lo, align 8, !tbaa !135
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store i32 0, ptr %i.ls, align 4, !tbaa !136
  %i.lt = load ptr, ptr %i.ln, align 8, !tbaa !110
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #39, !inline_history !20
  %i.lw = load ptr, ptr %i.ln, align 8, !tbaa !110
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #39, !inline_history !20
  br label %bb.df

bb.cc:                                            ; preds = %bb.ca
  %i.lz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
end_hunk_0
begin_hunk_1_@_ZNK5osgeo4proj3crs11CompoundCRS8identifyB5cxx11ERKSt10shared_ptrINS0_2io16AuthorityFactoryEE:bb.a
  %i.mb = atomicrmw volatile add ptr %i.lo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i = phi i32 [ %i.lr, %bb.cd ], [ %i.mb, %bb.ce ]
  %i.mc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.mc, label %bb.cf, label %bb.df, !prof !137

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #39
  br label %bb.df

bb.cg:                                            ; preds = %.lr.ph.i216
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.ch:                                            ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432: ; preds = %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.mf = select i1 %i.hr, i32 90, i32 70         ; 3 uses
  %i.mg = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc236 unwind label %bb.cl ; 4 uses

.noexc236:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load ptr, ptr %i.fz, align 8, !tbaa !128 ; 2 uses
  %i.mj = load <2 x ptr>, ptr %10, align 16, !tbaa !155
  store <2 x ptr> %i.mj, ptr %i.mh, align 8, !tbaa !155
  %.not.i.i.i.i.i.i.i.i234 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i.i.i.i.i234, label %bb.cq, label %bb.ci

bb.ci:                                            ; preds = %.noexc236
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 3 uses
  %i.ml = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i.i.i235 = icmp eq i8 %i.ml, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i235, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mm = load i32, ptr %i.mk, align 4, !tbaa !130
  %i.mn = add nsw i32 %i.mm, 1
  store i32 %i.mn, ptr %i.mk, align 4, !tbaa !130
  br label %bb.cq

bb.ck:                                            ; preds = %bb.ci
  %i.mo = atomicrmw volatile add ptr %i.mk, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cq

bb.cl:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.loopexit475:                                     ; preds = %.noexc220, %bb.bg, %bb.bf
  %i.mq = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc240 unwind label %bb.cp ; 4 uses

.noexc240:                                        ; preds = %.loopexit475
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.fz, align 8, !tbaa !128 ; 2 uses
  %i.mt = load <2 x ptr>, ptr %10, align 16, !tbaa !155
  store <2 x ptr> %i.mt, ptr %i.mr, align 8, !tbaa !155
  %.not.i.i.i.i.i.i.i.i238 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i.i.i.i.i238, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %.noexc240
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 3 uses
  %i.mv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i.i.i239 = icmp eq i8 %i.mv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i239, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mw = load i32, ptr %i.mu, align 4, !tbaa !130
  %i.mx = add nsw i32 %i.mw, 1
  store i32 %i.mx, ptr %i.mu, align 4, !tbaa !130
  br label %bb.cq

bb.co:                                            ; preds = %bb.cm
  %i.my = atomicrmw volatile add ptr %i.mu, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cq

bb.cp:                                            ; preds = %.loopexit475
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.cq:                                            ; preds = %.noexc240, %bb.cn, %bb.co, %.noexc236, %bb.cj, %bb.ck
  %.sink681.a = phi ptr [ %i.mg, %.noexc236 ], [ %i.mg, %bb.ck ], [ %i.mg, %bb.cj ], [ %i.mq, %bb.co ], [ %i.mq, %bb.cn ], [ %i.mq, %.noexc240 ] ; 2 uses
  %.sink679 = phi i32 [ %i.mf, %.noexc236 ], [ %i.mf, %bb.ck ], [ %i.mf, %bb.cj ], [ 25, %bb.co ], [ 25, %bb.cn ], [ 25, %.noexc240 ]
  %i.na = getelementptr inbounds nuw i8, ptr %.sink681.a, i64 32
  store i32 %.sink679, ptr %i.na, align 8, !tbaa !492
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %.sink681.a, ptr noundef nonnull align 8 dereferenceable(24) %4) #39
  %i.nb = load i64, ptr %i.c, align 8, !tbaa !495
  %storemerge = add i64 %i.nb, 1
  store i64 %storemerge, ptr %i.c, align 8, !tbaa !495
  %i.nc = load ptr, ptr %i.fz, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i242 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i242, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 4 uses
  %i.ne = load atomic i64, ptr %i.nd acquire, align 8 ; 2 uses
  %i.nf = icmp eq i64 %i.ne, 4294967297
  %i.ng = trunc i64 %i.ne to i32                  ; 2 uses
  br i1 %i.nf, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.nd, align 8, !tbaa !135
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  store i32 0, ptr %i.nh, align 4, !tbaa !136
  %i.ni = load ptr, ptr %i.nc, align 8, !tbaa !110
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8
  call void %i.nk(ptr noundef nonnull align 8 dereferenceable(16) %i.nc) #39, !inline_history !48
  %i.nl = load ptr, ptr %i.nc, align 8, !tbaa !110
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8
  call void %i.nn(ptr noundef nonnull align 8 dereferenceable(16) %i.nc) #39, !inline_history !48
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246

bb.ct:                                            ; preds = %bb.cr
  %i.no = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i243 = icmp eq i8 %i.no, 0
  br i1 %.not.i.i.i.i243, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.np = add nsw i32 %i.ng, -1
  store i32 %i.np, ptr %i.nd, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244

bb.cv:                                            ; preds = %bb.ct
  %i.nq = atomicrmw volatile add ptr %i.nd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i.i245 = phi i32 [ %i.ng, %bb.cu ], [ %i.nq, %bb.cv ]
  %i.nr = icmp eq i32 %.0.i.i.i.i.i245, 1
  br i1 %i.nr, label %bb.cw, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246, !prof !137

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nc) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246: ; preds = %bb.cq, %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ns = load ptr, ptr %i.fy, align 8, !tbaa !128 ; 8 uses
  %.not.i.i247 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i247, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251, label %bb.cx

bb.cx:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 4 uses
  %i.nu = load atomic i64, ptr %i.nt acquire, align 8 ; 2 uses
  %i.nv = icmp eq i64 %i.nu, 4294967297
  %i.nw = trunc i64 %i.nu to i32                  ; 2 uses
  br i1 %i.nv, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.nt, align 8, !tbaa !135
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 12
  store i32 0, ptr %i.nx, align 4, !tbaa !136
  %i.ny = load ptr, ptr %i.ns, align 8, !tbaa !110
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #39, !inline_history !20
  %i.ob = load ptr, ptr %i.ns, align 8, !tbaa !110
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #39, !inline_history !20
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251

bb.cz:                                            ; preds = %bb.cx
  %i.oe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i248 = icmp eq i8 %i.oe, 0
  br i1 %.not.i.i.i248, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.of = add nsw i32 %i.nw, -1
  store i32 %i.of, ptr %i.nt, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249

bb.db:                                            ; preds = %bb.cz
  %i.og = atomicrmw volatile add ptr %i.nt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i250 = phi i32 [ %i.nw, %bb.da ], [ %i.og, %bb.db ]
  %i.oh = icmp eq i32 %.0.i.i.i.i250, 1
  br i1 %i.oh, label %bb.dc, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251, !prof !137

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #39
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251

_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246, %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %.sroa.0409.0 = load ptr, ptr %.sroa.0409.0515, align 8, !tbaa !354 ; 2 uses
  %.not471 = icmp eq ptr %.sroa.0409.0, %7
  br i1 %.not471, label %.thread433.loopexit, label %.lr.ph516

bb.dd:                                            ; preds = %bb.cp, %bb.cl, %bb.ch, %bb.cg
  %.pn151 = phi { ptr, i32 } [ %i.me, %bb.ch ], [ %i.mp, %bb.cl ], [ %i.mz, %bb.cp ], [ %i.md, %bb.cg ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #39
  br label %bb.dn

.thread433.loopexit:                              ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251
  %28 = zext i1 %i.hs to i8
  br label %.thread433

.thread433:                                       ; preds = %.thread433.loopexit, %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit
  %.1143.lcssa = phi i8 [ %.0142517, %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit ], [ %28, %.thread433.loopexit ] ; 4 uses
  %i.oi = load ptr, ptr %4, align 8, !tbaa !354
  %i.oj = icmp eq ptr %i.oi, %4
  %i.ok = load ptr, ptr %7, align 8, !tbaa !354   ; 3 uses
  %.not8.i.i252.jt0 = icmp eq ptr %i.ok, %7       ; 2 uses
  br i1 %i.oj, label %bb.de, label %..si.unfold.false.jt4

..si.unfold.false.jt4:                            ; preds = %.thread433
  br i1 %.not8.i.i252.jt0, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt4, label %.lr.ph.i.i253.preheader

bb.de:                                            ; preds = %.thread433
  br i1 %.not8.i.i252.jt0, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt0, label %.lr.ph.i.i253.preheader

bb.df:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231, %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.ol = load ptr, ptr %7, align 8, !tbaa !354   ; 2 uses
  %.not8.i.i252.jt1 = icmp eq ptr %i.ol, %7
  br i1 %.not8.i.i252.jt1, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt1, label %.lr.ph.i.i253.preheader

.lr.ph.i.i253.preheader:                          ; preds = %..si.unfold.false.jt4, %bb.de, %bb.df
  %i.om = phi ptr [ %i.ok, %..si.unfold.false.jt4 ], [ %i.ok, %bb.de ], [ %i.ol, %bb.df ]
  %.4136654 = phi i32 [ 4, %..si.unfold.false.jt4 ], [ 0, %bb.de ], [ 1, %bb.df ]
  %.2144437651 = phi i8 [ %.1143.lcssa, %..si.unfold.false.jt4 ], [ %.1143.lcssa, %bb.de ], [ %27, %bb.df ] ; 2 uses
  br label %.lr.ph.i.i253

.lr.ph.i.i253:                                    ; preds = %.lr.ph.i.i253.preheader, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i
  %.09.i.i254 = phi ptr [ %i.on, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i ], [ %i.om, %.lr.ph.i.i253.preheader ] ; 3 uses
  %i.on = load ptr, ptr %.09.i.i254, align 8, !tbaa !354 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.09.i.i254, i64 24
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i.i.i255 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i.i.i255, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i253
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 4 uses
  %i.or = load atomic i64, ptr %i.oq acquire, align 8 ; 2 uses
  %i.os = icmp eq i64 %i.or, 4294967297
  %i.ot = trunc i64 %i.or to i32                  ; 2 uses
  br i1 %i.os, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 0, ptr %i.oq, align 8, !tbaa !135
  %i.ou = getelementptr inbounds nuw i8, ptr %i.op, i64 12
  store i32 0, ptr %i.ou, align 4, !tbaa !136
  %i.ov = load ptr, ptr %i.op, align 8, !tbaa !110
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8
  call void %i.ox(ptr noundef nonnull align 8 dereferenceable(16) %i.op) #39, !inline_history !57
  %i.oy = load ptr, ptr %i.op, align 8, !tbaa !110
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8
  call void %i.pa(ptr noundef nonnull align 8 dereferenceable(16) %i.op) #39, !inline_history !57
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i

bb.di:                                            ; preds = %bb.dg
  %i.pb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i256 = icmp eq i8 %i.pb, 0
  br i1 %.not.i.i.i.i.i.i256, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pc = add nsw i32 %i.ot, -1
  store i32 %i.pc, ptr %i.oq, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.di
  %i.pd = atomicrmw volatile add ptr %i.oq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dk, %bb.dj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ot, %bb.dj ], [ %i.pd, %bb.dk ]
  %i.pe = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.pe, label %bb.dl, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i, !prof !137

bb.dl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.op) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i: ; preds = %bb.dl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dh, %.lr.ph.i.i253
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i254, i64 noundef 32) #38
  %.not.i.i257 = icmp eq ptr %i.on, %7
  br i1 %.not.i.i257, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit, label %.lr.ph.i.i253, !llvm.loop !56

_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  switch i32 %.4136654, label %.critedge190 [
    i32 0, label %bb.dm
    i32 4, label %.critedge184.loopexit
  ]

_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt4: ; preds = %..si.unfold.false.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.critedge184.loopexit

_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt0: ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.dm

_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt1: ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.critedge190

bb.dm:                                            ; preds = %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt0, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit
  %.2144437653 = phi i8 [ %.1143.lcssa, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt0 ], [ %.2144437651, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit ] ; 2 uses
  br i1 %i.gd, label %bb.as, label %.critedge184.loopexit, !llvm.loop !1483

bb.dn:                                            ; preds = %bb.dd, %.body
  %.pn151.pn = phi { ptr, i32 } [ %.pn151, %bb.dd ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.loopexit479

.critedge184.loopexit:                            ; preds = %bb.dm, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt4
  %.2144437652 = phi i8 [ %.1143.lcssa, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt4 ], [ %.2144437651, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit ], [ %.2144437653, %bb.dm ]
  %29 = trunc nuw i8 %.2144437652 to i1
  br label %.critedge184

.critedge184:                                     ; preds = %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit.thread428, %.critedge184.loopexit, %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryEPKNS0_6common16IdentifiedObjectERKSt10shared_ptrINS0_2io16AuthorityFactoryEE.exit
  %.4146 = phi i1 [ %29, %.critedge184.loopexit ], [ false, %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryEPKNS0_6common16IdentifiedObjectERKSt10shared_ptrINS0_2io16AuthorityFactoryEE.exit ], [ false, %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit.thread428 ]
  call fastcc void @"_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE4sortIZNKS9_8identifyERKS5_INS7_2io16AuthorityFactoryEEE3$_0EEvT_"(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.d)
  %i.pf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #42 ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !160
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !160
  %i.pj = icmp ne ptr %i.pg, %i.pi
  %or.cond = select i1 %i.pj, i1 true, i1 %.4146
  %.pre552 = load ptr, ptr %4, align 8            ; 5 uses
  br i1 %or.cond, label %bb.fw, label %bb.do

bb.do:                                            ; preds = %.critedge184
  %i.pk = icmp eq ptr %.pre552, %4
  br i1 %i.pk, label %.thread, label %bb.dp

.thread:                                          ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.pl = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.pl, align 8, !tbaa !482
  %i.pm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr null, ptr %i.pm, align 8, !tbaa !328
  %i.pn = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.pl, ptr %i.pn, align 8, !tbaa !325
  %i.po = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.pl, ptr %i.po, align 8, !tbaa !483
  %i.pp = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.pp, align 8, !tbaa !324
  br label %._crit_edge

bb.dp:                                            ; preds = %bb.do
  %i.pq = getelementptr inbounds nuw i8, ptr %.pre552, i64 32
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !492
  %i.ps = icmp slt i32 %i.pr, 50
  br i1 %i.ps, label %.lr.ph521, label %bb.fw

.lr.ph521:                                        ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.pt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  store i32 0, ptr %i.pt, align 8, !tbaa !482
  %i.pu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr null, ptr %i.pu, align 8, !tbaa !328
  %i.pv = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.pt, ptr %i.pv, align 8, !tbaa !325
  %i.pw = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.pt, ptr %i.pw, align 8, !tbaa !483
  %i.px = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.px, align 8, !tbaa !324
  %i.py = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.pz = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.qa = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.dq

._crit_edge:                                      ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %.thread
  %i.qd = phi ptr [ %i.pm, %.thread ], [ %i.pu, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 2 uses
  %i.qe = phi ptr [ %i.pl, %.thread ], [ %i.pt, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  invoke void @_ZNK5osgeo4proj4util10BaseObject16shared_from_thisEv(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.dy unwind label %bb.ee

bb.dq:                                            ; preds = %.lr.ph521, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %.sroa.0402.0520 = phi ptr [ %.pre552, %.lr.ph521 ], [ %i.sd, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.0402.0520, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !258
  %i.qh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.qg) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !350
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !305 ; 2 uses
  %i.qk = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata10Identifier9codeSpaceB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.qj) #42
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj8metadata10Identifier4codeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.qj) #42
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.ql, ptr noundef nonnull align 8 dereferenceable(32) %i.qm)
          to label %bb.dr unwind label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  %.02022.i.i.i = load ptr, ptr %i.pu, align 8, !tbaa !484 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.dr
  %i.qn = load i64, ptr %i.py, align 8, !tbaa !149 ; 4 uses
  %i.qo = load ptr, ptr %12, align 8              ; 2 uses
  %i.qp = load i64, ptr %i.pz, align 8            ; 2 uses
  %i.qq = load ptr, ptr %i.qa, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.backedge, %.lr.ph.i.i.i.preheader
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.02024.i.i.i.be, %.lr.ph.i.i.i.backedge ] ; 11 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 40
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !149 ; 4 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.qs, i64 %i.qn) ; 3 uses
  %i.qt = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.qt, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !150 ; 2 uses
  %i.qw = call i32 @memcmp(ptr noundef %i.qo, ptr noundef %i.qv, i64 noundef %.sroa.speculated.i.i.i.i) #39 ; 2 uses
  %.not.i.i.i.i364 = icmp eq i32 %i.qw, 0
  br i1 %.not.i.i.i.i364, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.qx = sub i64 %i.qn, %i.qs
  %i.qy = icmp slt i64 %i.qx, 0
  br i1 %i.qy, label %.noexc259.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.qz = sub i64 %i.qn, %i.qs
  %i.ra = icmp slt i64 %i.qz, 0
  br i1 %i.ra, label %.noexc259.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.rb = icmp slt i32 %i.qw, 0
  br i1 %i.rb, label %.noexc259.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i
  %i.rc = call i32 @memcmp(ptr noundef %i.qv, ptr noundef %i.qo, i64 noundef %.sroa.speculated.i.i.i.i) #39 ; 2 uses
  %.not.i.i8.i.i = icmp eq i32 %i.rc, 0
  br i1 %.not.i.i8.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.rd = sub i64 %i.qs, %i.qn
  %spec.select7.i.i.i11.i.i = call i64 @llvm.smax.i64(i64 %i.rd, i64 -2147483648)
  %.08.i.i.i12.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i11.i.i, i64 2147483647)
  %.0.i6.i.i13.i.i = trunc nsw i64 %.08.i.i.i12.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i
  %.0.i.i9.i.i = phi i32 [ %i.rc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i ], [ %.0.i6.i.i13.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i ]
  %i.re = icmp slt i32 %.0.i.i9.i.i, 0
  br i1 %i.re, label %.thread446, label %bb.ds

bb.ds:                                            ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 72
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !149 ; 2 uses
  %.sroa.speculated.i.i15.i.i = call i64 @llvm.umin.i64(i64 %i.rg, i64 %i.qp) ; 2 uses
  %i.rh = icmp eq i64 %.sroa.speculated.i.i15.i.i, 0
  br i1 %i.rh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i: ; preds = %bb.ds
  %i.ri = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 64
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !150
  %i.rk = call i32 @memcmp(ptr noundef %i.qq, ptr noundef %i.rj, i64 noundef %.sroa.speculated.i.i15.i.i) #39 ; 2 uses
  %.not.i.i17.i.i = icmp eq i32 %i.rk, 0
  br i1 %.not.i.i17.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i, label %.noexc259

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i, %bb.ds
  %i.rl = sub i64 %i.qp, %i.rg
  %spec.select7.i.i.i20.i.i = call i64 @llvm.smax.i64(i64 %i.rl, i64 -2147483648)
  %.08.i.i.i21.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i20.i.i, i64 2147483647)
  %.0.i6.i.i22.i.i = trunc nsw i64 %.08.i.i.i21.i.i to i32
  br label %.noexc259

.noexc259:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i
  %.0.i.i18.i.i = phi i32 [ %i.rk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i ], [ %.0.i6.i.i22.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i ]
  %.0.i.i18.i.i.fr = freeze i32 %.0.i.i18.i.i
  %i.rm = icmp slt i32 %.0.i.i18.i.i.fr, 0        ; 2 uses
  %spec.select = select i1 %i.rm, i64 16, i64 24
  br label %.noexc259.thread

.noexc259.thread:                                 ; preds = %.noexc259, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.rn = phi i1 [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i ], [ %i.rm, %.noexc259 ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ]
  %i.ro = phi i64 [ 16, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i ], [ %spec.select, %.noexc259 ], [ 16, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i ], [ 16, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ]
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %i.ro
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !484 ; 2 uses
  %.not.i.i.i258 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i258, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.backedge

.lr.ph.i.i.i.backedge:                            ; preds = %.noexc259.thread, %.thread446
  %.02024.i.i.i.be = phi ptr [ %.020.i.i.i, %.noexc259.thread ], [ %.020.i.i.i448, %.thread446 ]
  br label %.lr.ph.i.i.i, !llvm.loop !78

.thread446:                                       ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i
  %.in.i.i.i447 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 24
  %.020.i.i.i448 = load ptr, ptr %.in.i.i.i447, align 8, !tbaa !484 ; 2 uses
  %.not.i.i.i258449 = icmp eq ptr %.020.i.i.i448, null
  br i1 %.not.i.i.i258449, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i.backedge

._crit_edge.i.i.i:                                ; preds = %.noexc259.thread
  br i1 %i.rn, label %._crit_edge.thread.i.i.i, label %._crit_edge.i.i.i.thread

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.dr
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.pt, %bb.dr ] ; 4 uses
  %i.rp = load ptr, ptr %i.pv, align 8, !tbaa !325
  %i.rq = icmp eq ptr %.019.lcssa29.i.i.i, %i.rp
  br i1 %i.rq, label %select.unfold.i.i, label %bb.dt

bb.dt:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.rr = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #42
  br label %._crit_edge.i.i.i.thread

._crit_edge.i.i.i.thread:                         ; preds = %.thread446, %bb.dt, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.dt ], [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %.02024.i.i.i, %.thread446 ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.rr, %bb.dt ], [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %.02024.i.i.i, %.thread446 ]
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 32
  %i.rt = invoke noundef zeroext i1 @_ZNKSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(64) %i.rs, ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %.noexc260 unwind label %bb.dw

.noexc260:                                        ; preds = %._crit_edge.i.i.i.thread
end_hunk_1
