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
  br i1 %.not471513, label %.thread433, label %.lr.ph516

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

.lr.ph516:                                        ; preds = %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251
  %.sroa.0409.0515 = phi ptr [ %.sroa.0409.0, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251 ], [ %.sroa.0409.0512, %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit ] ; 3 uses
  %.1143514 = phi i8 [ %29, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251 ], [ %.0142517, %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit ]
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
  %26 = zext i1 %i.hr to i8
  %27 = or i8 %.1143514, %26
  %28 = icmp ne i8 %27, 0
  %29 = zext i1 %28 to i8                         ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !110
  %i.hu = icmp eq ptr %i.ht, getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj3crs11CompoundCRSE, i64 104)
  br i1 %i.hu, label %bb.bg, label %.loopexit475

bb.bg:                                            ; preds = %bb.bf
  %i.hv = load ptr, ptr %i.e, align 8, !tbaa !241 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 72
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !241 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !256 ; 2 uses
  %i.ia = load ptr, ptr %i.hv, align 8, !tbaa !259 ; 3 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !256
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !259
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %.not.i213 = icmp eq i64 %i.id, %i.ij
  br i1 %.not.i213, label %.preheader.i214, label %.loopexit475

.preheader.i214:                                  ; preds = %bb.bg
  %.not2527.i215 = icmp eq ptr %i.hz, %i.ia
  br i1 %.not2527.i215, label %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221, label %.lr.ph.i216

bb.bh:                                            ; preds = %.noexc220
  %i.ik = add nuw i64 %.028.i217, 1               ; 2 uses
  %i.il = load ptr, ptr %i.hy, align 8, !tbaa !256
  %i.im = load ptr, ptr %i.hv, align 8, !tbaa !259 ; 2 uses
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = ashr exact i64 %i.ip, 4
  %.not25.not.i219 = icmp ult i64 %i.ik, %i.iq
  br i1 %.not25.not.i219, label %.lr.ph.i216, label %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221, !llvm.loop !82

.lr.ph.i216:                                      ; preds = %.preheader.i214, %bb.bh
  %i.ir = phi ptr [ %i.im, %bb.bh ], [ %i.ia, %.preheader.i214 ]
  %.028.i217 = phi i64 [ %i.ik, %bb.bh ], [ 0, %.preheader.i214 ] ; 3 uses
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %.028.i217
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !158 ; 2 uses
  %i.iu = load ptr, ptr %i.hx, align 8, !tbaa !259
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %.028.i217
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !158 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, null
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %spec.select.i218 = select i1 %i.ix, ptr null, ptr %i.iy
  %i.iz = load ptr, ptr %i.it, align 8, !tbaa !110
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = invoke noundef zeroext i1 %i.jb(ptr noundef nonnull align 8 dereferenceable(48) %i.it, ptr noundef %spec.select.i218, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %.noexc220 unwind label %bb.cg, !inline_history !489

.noexc220:                                        ; preds = %.lr.ph.i216
  br i1 %i.jc, label %bb.bh, label %.loopexit475

_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221: ; preds = %bb.bh, %.preheader.i214
  %i.jd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.hn) #42 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !149 ; 3 uses
  %i.jg = load i64, ptr %i.ag, align 8, !tbaa !149
  %i.jh = icmp eq i64 %i.jf, %i.jg
  br i1 %i.jh, label %bb.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432

bb.bi:                                            ; preds = %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221
  %i.ji = icmp eq i64 %i.jf, 0
  br i1 %i.ji, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.bi
  %i.jj = load ptr, ptr %i.d, align 8, !tbaa !150
  %i.jk = load ptr, ptr %i.jd, align 8, !tbaa !150
  %bcmp.i = call i32 @bcmp(ptr %i.jk, ptr %i.jj, i64 %i.jf)
  %i.jl = icmp eq i32 %bcmp.i, 0
  br i1 %i.jl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.bi, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.jm = load ptr, ptr %4, align 8, !tbaa !354   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.jm, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.jn, %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i ], [ %i.jm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 3 uses
  %i.jn = load ptr, ptr %.09.i.i, align 8, !tbaa !354 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 4 uses
  %i.jr = load atomic i64, ptr %i.jq acquire, align 8 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 4294967297
  %i.jt = trunc i64 %i.jr to i32                  ; 2 uses
  br i1 %i.js, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.jq, align 8, !tbaa !135
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 0, ptr %i.ju, align 4, !tbaa !136
  %i.jv = load ptr, ptr %i.jp, align 8, !tbaa !110
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #39, !inline_history !1482
  %i.jy = load ptr, ptr %i.jp, align 8, !tbaa !110
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #39, !inline_history !1482
  br label %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.jq, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.kd = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.jt, %bb.bm ], [ %i.kd, %bb.bn ]
  %i.ke = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ke, label %bb.bo, label %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i, !prof !137

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #39
  br label %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i

_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i: ; preds = %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bk, %.lr.ph.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 40) #38
  %.not.i.i = icmp eq ptr %i.jn, %4
  br i1 %.not.i.i, label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !83

_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit: ; preds = %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  store ptr %4, ptr %i.b, align 8, !tbaa !353
  store ptr %4, ptr %4, align 8, !tbaa !354
  store i64 0, ptr %i.c, align 8, !tbaa !356
  %i.kf = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc224 unwind label %bb.ch ; 3 uses

.noexc224:                                        ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.fz, align 8, !tbaa !128 ; 2 uses
  %i.ki = load <2 x ptr>, ptr %10, align 16, !tbaa !155
  store <2 x ptr> %i.ki, ptr %i.kg, align 8, !tbaa !155
  %.not.i.i.i.i.i.i.i.i222 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i.i.i.i.i222, label %.critedge186, label %bb.bp

bb.bp:                                            ; preds = %.noexc224
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 3 uses
  %i.kk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i.i.i223 = icmp eq i8 %i.kk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i223, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kl = load i32, ptr %i.kj, align 4, !tbaa !130
  %i.km = add nsw i32 %i.kl, 1
  store i32 %i.km, ptr %i.kj, align 4, !tbaa !130
  br label %.critedge186

bb.br:                                            ; preds = %bb.bp
  %i.kn = atomicrmw volatile add ptr %i.kj, i32 1 acq_rel, align 4 ; 0 uses
  br label %.critedge186

.critedge186:                                     ; preds = %bb.br, %bb.bq, %.noexc224
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  store i32 100, ptr %i.ko, align 8, !tbaa !492
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, ptr noundef nonnull align 8 dereferenceable(24) %4) #39
  %i.kp = load i64, ptr %i.c, align 8, !tbaa !495
  %i.kq = add i64 %i.kp, 1                        ; 2 uses
  store i64 %i.kq, ptr %i.c, align 8, !tbaa !495
  %i.kr = load ptr, ptr %i.b, align 8, !tbaa !353 ; 2 uses
  %i.ks = load ptr, ptr %4, align 8, !tbaa !354   ; 2 uses
  store ptr %i.ks, ptr %0, align 8, !tbaa !354
  store ptr %i.kr, ptr %i.ga, align 8, !tbaa !353
  store i64 %i.kq, ptr %i.gb, align 8, !tbaa !356
  %i.kt = icmp eq ptr %i.ks, %4
  br i1 %i.kt, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.critedge186
  store ptr %0, ptr %i.ga, align 8, !tbaa !353
  store ptr %0, ptr %0, align 8, !tbaa !354
  br label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit226

bb.bt:                                            ; preds = %.critedge186
  store ptr %0, ptr %i.kr, align 8, !tbaa !354
  %i.ku = load ptr, ptr %0, align 8, !tbaa !354
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store ptr %0, ptr %i.kv, align 8, !tbaa !353
  store ptr %4, ptr %i.b, align 8, !tbaa !353
  store ptr %4, ptr %4, align 8, !tbaa !354
  store i64 0, ptr %i.c, align 8, !tbaa !356
  br label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit226
end_hunk_0
begin_hunk_1_@_ZNK5osgeo4proj3crs11CompoundCRS8identifyB5cxx11ERKSt10shared_ptrINS0_2io16AuthorityFactoryEE:bb.a
bb.cg:                                            ; preds = %.lr.ph.i216
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.ch:                                            ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432: ; preds = %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.me = select i1 %i.hr, i32 90, i32 70         ; 3 uses
  %i.mf = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc236 unwind label %bb.cl ; 4 uses

.noexc236:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.fz, align 8, !tbaa !128 ; 2 uses
  %i.mi = load <2 x ptr>, ptr %10, align 16, !tbaa !155
  store <2 x ptr> %i.mi, ptr %i.mg, align 8, !tbaa !155
  %.not.i.i.i.i.i.i.i.i234 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i.i.i.i.i.i234, label %bb.cq, label %bb.ci

bb.ci:                                            ; preds = %.noexc236
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 8 ; 3 uses
  %i.mk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i.i.i235 = icmp eq i8 %i.mk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i235, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ml = load i32, ptr %i.mj, align 4, !tbaa !130
  %i.mm = add nsw i32 %i.ml, 1
  store i32 %i.mm, ptr %i.mj, align 4, !tbaa !130
  br label %bb.cq

bb.ck:                                            ; preds = %bb.ci
  %i.mn = atomicrmw volatile add ptr %i.mj, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cq

bb.cl:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.loopexit475:                                     ; preds = %.noexc220, %bb.bg, %bb.bf
  %i.mp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc240 unwind label %bb.cp ; 4 uses

.noexc240:                                        ; preds = %.loopexit475
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.fz, align 8, !tbaa !128 ; 2 uses
  %i.ms = load <2 x ptr>, ptr %10, align 16, !tbaa !155
  store <2 x ptr> %i.ms, ptr %i.mq, align 8, !tbaa !155
  %.not.i.i.i.i.i.i.i.i238 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i.i.i.i.i.i238, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %.noexc240
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 3 uses
  %i.mu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i.i.i239 = icmp eq i8 %i.mu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i239, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !130
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.mt, align 4, !tbaa !130
  br label %bb.cq

bb.co:                                            ; preds = %bb.cm
  %i.mx = atomicrmw volatile add ptr %i.mt, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cq

bb.cp:                                            ; preds = %.loopexit475
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.cq:                                            ; preds = %.noexc240, %bb.cn, %bb.co, %.noexc236, %bb.cj, %bb.ck
  %.sink681 = phi ptr [ %i.mf, %.noexc236 ], [ %i.mf, %bb.ck ], [ %i.mf, %bb.cj ], [ %i.mp, %bb.co ], [ %i.mp, %bb.cn ], [ %i.mp, %.noexc240 ] ; 2 uses
  %.sink679 = phi i32 [ %i.me, %.noexc236 ], [ %i.me, %bb.ck ], [ %i.me, %bb.cj ], [ 25, %bb.co ], [ 25, %bb.cn ], [ 25, %.noexc240 ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.sink681, i64 32
  store i32 %.sink679, ptr %i.mz, align 8, !tbaa !492
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %.sink681, ptr noundef nonnull align 8 dereferenceable(24) %4) #39
  %i.na = load i64, ptr %i.c, align 8, !tbaa !495
  %storemerge = add i64 %i.na, 1
  store i64 %storemerge, ptr %i.c, align 8, !tbaa !495
  %i.nb = load ptr, ptr %i.fz, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i242 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i242, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8 ; 4 uses
  %i.nd = load atomic i64, ptr %i.nc acquire, align 8 ; 2 uses
  %i.ne = icmp eq i64 %i.nd, 4294967297
  %i.nf = trunc i64 %i.nd to i32                  ; 2 uses
  br i1 %i.ne, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.nc, align 8, !tbaa !135
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 12
  store i32 0, ptr %i.ng, align 4, !tbaa !136
  %i.nh = load ptr, ptr %i.nb, align 8, !tbaa !110
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(16) %i.nb) #39, !inline_history !48
  %i.nk = load ptr, ptr %i.nb, align 8, !tbaa !110
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  %i.nm = load ptr, ptr %i.nl, align 8
  call void %i.nm(ptr noundef nonnull align 8 dereferenceable(16) %i.nb) #39, !inline_history !48
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246

bb.ct:                                            ; preds = %bb.cr
  %i.nn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i243 = icmp eq i8 %i.nn, 0
  br i1 %.not.i.i.i.i243, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.no = add nsw i32 %i.nf, -1
  store i32 %i.no, ptr %i.nc, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244

bb.cv:                                            ; preds = %bb.ct
  %i.np = atomicrmw volatile add ptr %i.nc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i.i245 = phi i32 [ %i.nf, %bb.cu ], [ %i.np, %bb.cv ]
  %i.nq = icmp eq i32 %.0.i.i.i.i.i245, 1
  br i1 %i.nq, label %bb.cw, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246, !prof !137

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nb) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246: ; preds = %bb.cq, %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.nr = load ptr, ptr %i.fy, align 8, !tbaa !128 ; 8 uses
  %.not.i.i247 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i247, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251, label %bb.cx

bb.cx:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8 ; 4 uses
  %i.nt = load atomic i64, ptr %i.ns acquire, align 8 ; 2 uses
  %i.nu = icmp eq i64 %i.nt, 4294967297
  %i.nv = trunc i64 %i.nt to i32                  ; 2 uses
  br i1 %i.nu, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.ns, align 8, !tbaa !135
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nr, i64 12
  store i32 0, ptr %i.nw, align 4, !tbaa !136
  %i.nx = load ptr, ptr %i.nr, align 8, !tbaa !110
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8
  call void %i.nz(ptr noundef nonnull align 8 dereferenceable(16) %i.nr) #39, !inline_history !20
  %i.oa = load ptr, ptr %i.nr, align 8, !tbaa !110
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8
  call void %i.oc(ptr noundef nonnull align 8 dereferenceable(16) %i.nr) #39, !inline_history !20
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251

bb.cz:                                            ; preds = %bb.cx
  %i.od = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i248 = icmp eq i8 %i.od, 0
  br i1 %.not.i.i.i248, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.oe = add nsw i32 %i.nv, -1
  store i32 %i.oe, ptr %i.ns, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249

bb.db:                                            ; preds = %bb.cz
  %i.of = atomicrmw volatile add ptr %i.ns, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i250 = phi i32 [ %i.nv, %bb.da ], [ %i.of, %bb.db ]
  %i.og = icmp eq i32 %.0.i.i.i.i250, 1
  br i1 %i.og, label %bb.dc, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251, !prof !137

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nr) #39
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251

_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246, %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %.sroa.0409.0 = load ptr, ptr %.sroa.0409.0515, align 8, !tbaa !354 ; 2 uses
  %.not471 = icmp eq ptr %.sroa.0409.0, %7
  br i1 %.not471, label %.thread433, label %.lr.ph516

bb.dd:                                            ; preds = %bb.cp, %bb.cl, %bb.ch, %bb.cg
  %.pn151 = phi { ptr, i32 } [ %i.md, %bb.ch ], [ %i.mo, %bb.cl ], [ %i.my, %bb.cp ], [ %i.mc, %bb.cg ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #39
  br label %bb.dn

.thread433:                                       ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251, %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit
  %.1143.lcssa = phi i8 [ %.0142517, %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit ], [ %29, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251 ] ; 4 uses
  %i.oh = load ptr, ptr %4, align 8, !tbaa !354
  %i.oi = icmp eq ptr %i.oh, %4
  %i.oj = load ptr, ptr %7, align 8, !tbaa !354   ; 3 uses
  %.not8.i.i252.jt0 = icmp eq ptr %i.oj, %7       ; 2 uses
  br i1 %i.oi, label %bb.de, label %..si.unfold.false.jt4

..si.unfold.false.jt4:                            ; preds = %.thread433
  br i1 %.not8.i.i252.jt0, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt4, label %.lr.ph.i.i253.preheader

bb.de:                                            ; preds = %.thread433
  br i1 %.not8.i.i252.jt0, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt0, label %.lr.ph.i.i253.preheader

bb.df:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231, %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.ok = load ptr, ptr %7, align 8, !tbaa !354   ; 2 uses
  %.not8.i.i252.jt1 = icmp eq ptr %i.ok, %7
  br i1 %.not8.i.i252.jt1, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt1, label %.lr.ph.i.i253.preheader

.lr.ph.i.i253.preheader:                          ; preds = %..si.unfold.false.jt4, %bb.de, %bb.df
  %i.ol = phi ptr [ %i.oj, %..si.unfold.false.jt4 ], [ %i.oj, %bb.de ], [ %i.ok, %bb.df ]
  %.4136654 = phi i32 [ 4, %..si.unfold.false.jt4 ], [ 0, %bb.de ], [ 1, %bb.df ]
  %.2144437651 = phi i8 [ %.1143.lcssa, %..si.unfold.false.jt4 ], [ %.1143.lcssa, %bb.de ], [ %29, %bb.df ] ; 2 uses
  br label %.lr.ph.i.i253

.lr.ph.i.i253:                                    ; preds = %.lr.ph.i.i253.preheader, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i
  %.09.i.i254 = phi ptr [ %i.om, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i ], [ %i.ol, %.lr.ph.i.i253.preheader ] ; 3 uses
  %i.om = load ptr, ptr %.09.i.i254, align 8, !tbaa !354 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.09.i.i254, i64 24
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i.i.i255 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i.i.i.i255, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i253
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 4 uses
  %i.oq = load atomic i64, ptr %i.op acquire, align 8 ; 2 uses
  %i.or = icmp eq i64 %i.oq, 4294967297
  %i.os = trunc i64 %i.oq to i32                  ; 2 uses
  br i1 %i.or, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 0, ptr %i.op, align 8, !tbaa !135
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 12
  store i32 0, ptr %i.ot, align 4, !tbaa !136
  %i.ou = load ptr, ptr %i.oo, align 8, !tbaa !110
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(16) %i.oo) #39, !inline_history !57
  %i.ox = load ptr, ptr %i.oo, align 8, !tbaa !110
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(16) %i.oo) #39, !inline_history !57
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i

bb.di:                                            ; preds = %bb.dg
  %i.pa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i256 = icmp eq i8 %i.pa, 0
  br i1 %.not.i.i.i.i.i.i256, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pb = add nsw i32 %i.os, -1
  store i32 %i.pb, ptr %i.op, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.di
  %i.pc = atomicrmw volatile add ptr %i.op, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dk, %bb.dj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.os, %bb.dj ], [ %i.pc, %bb.dk ]
  %i.pd = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.pd, label %bb.dl, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i, !prof !137

bb.dl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oo) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i: ; preds = %bb.dl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dh, %.lr.ph.i.i253
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i254, i64 noundef 32) #38
  %.not.i.i257 = icmp eq ptr %i.om, %7
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
  %30 = trunc nuw i8 %.2144437652 to i1
  br label %.critedge184

.critedge184:                                     ; preds = %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit.thread428, %.critedge184.loopexit, %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryEPKNS0_6common16IdentifiedObjectERKSt10shared_ptrINS0_2io16AuthorityFactoryEE.exit
  %.4146 = phi i1 [ %30, %.critedge184.loopexit ], [ false, %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryEPKNS0_6common16IdentifiedObjectERKSt10shared_ptrINS0_2io16AuthorityFactoryEE.exit ], [ false, %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit.thread428 ]
  call fastcc void @"_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE4sortIZNKS9_8identifyERKS5_INS7_2io16AuthorityFactoryEEE3$_0EEvT_"(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.d)
  %i.pe = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #42 ; 2 uses
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !160
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !160
  %i.pi = icmp ne ptr %i.pf, %i.ph
  %or.cond = select i1 %i.pi, i1 true, i1 %.4146
  %.pre552 = load ptr, ptr %4, align 8            ; 5 uses
  br i1 %or.cond, label %bb.fw, label %bb.do

bb.do:                                            ; preds = %.critedge184
  %i.pj = icmp eq ptr %.pre552, %4
  br i1 %i.pj, label %.thread, label %bb.dp

.thread:                                          ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.pk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.pk, align 8, !tbaa !482
  %i.pl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr null, ptr %i.pl, align 8, !tbaa !328
  %i.pm = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.pk, ptr %i.pm, align 8, !tbaa !325
  %i.pn = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.pk, ptr %i.pn, align 8, !tbaa !483
  %i.po = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.po, align 8, !tbaa !324
  br label %._crit_edge

bb.dp:                                            ; preds = %bb.do
  %i.pp = getelementptr inbounds nuw i8, ptr %.pre552, i64 32
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !492
  %i.pr = icmp slt i32 %i.pq, 50
  br i1 %i.pr, label %.lr.ph521, label %bb.fw

.lr.ph521:                                        ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.ps = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  store i32 0, ptr %i.ps, align 8, !tbaa !482
  %i.pt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr null, ptr %i.pt, align 8, !tbaa !328
  %i.pu = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.ps, ptr %i.pu, align 8, !tbaa !325
  %i.pv = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.ps, ptr %i.pv, align 8, !tbaa !483
  %i.pw = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.pw, align 8, !tbaa !324
  %i.px = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.pz = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.dq

._crit_edge:                                      ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %.thread
  %i.qc = phi ptr [ %i.pl, %.thread ], [ %i.pt, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 2 uses
  %i.qd = phi ptr [ %i.pk, %.thread ], [ %i.ps, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  invoke void @_ZNK5osgeo4proj4util10BaseObject16shared_from_thisEv(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.dy unwind label %bb.ee

bb.dq:                                            ; preds = %.lr.ph521, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %.sroa.0402.0520 = phi ptr [ %.pre552, %.lr.ph521 ], [ %i.sc, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.0402.0520, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !258
  %i.qg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.qf) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !350
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !305 ; 2 uses
  %i.qj = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata10Identifier9codeSpaceB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.qi) #42
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj8metadata10Identifier4codeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.qi) #42
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.qk, ptr noundef nonnull align 8 dereferenceable(32) %i.ql)
          to label %bb.dr unwind label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  %.02022.i.i.i = load ptr, ptr %i.pt, align 8, !tbaa !484 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.dr
  %i.qm = load i64, ptr %i.px, align 8, !tbaa !149 ; 4 uses
  %i.qn = load ptr, ptr %12, align 8              ; 2 uses
  %i.qo = load i64, ptr %i.py, align 8            ; 2 uses
  %i.qp = load ptr, ptr %i.pz, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.backedge, %.lr.ph.i.i.i.preheader
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.02024.i.i.i.be, %.lr.ph.i.i.i.backedge ] ; 11 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 40
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !149 ; 4 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.qr, i64 %i.qm) ; 3 uses
  %i.qs = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.qs, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.qt = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !150 ; 2 uses
  %i.qv = call i32 @memcmp(ptr noundef %i.qn, ptr noundef %i.qu, i64 noundef %.sroa.speculated.i.i.i.i) #39 ; 2 uses
  %.not.i.i.i.i364 = icmp eq i32 %i.qv, 0
  br i1 %.not.i.i.i.i364, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.qw = sub i64 %i.qm, %i.qr
  %i.qx = icmp slt i64 %i.qw, 0
  br i1 %i.qx, label %.noexc259.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.qy = sub i64 %i.qm, %i.qr
  %i.qz = icmp slt i64 %i.qy, 0
  br i1 %i.qz, label %.noexc259.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ra = icmp slt i32 %i.qv, 0
  br i1 %i.ra, label %.noexc259.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i
  %i.rb = call i32 @memcmp(ptr noundef %i.qu, ptr noundef %i.qn, i64 noundef %.sroa.speculated.i.i.i.i) #39 ; 2 uses
  %.not.i.i8.i.i = icmp eq i32 %i.rb, 0
  br i1 %.not.i.i8.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.rc = sub i64 %i.qr, %i.qm
  %spec.select7.i.i.i11.i.i = call i64 @llvm.smax.i64(i64 %i.rc, i64 -2147483648)
  %.08.i.i.i12.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i11.i.i, i64 2147483647)
  %.0.i6.i.i13.i.i = trunc nsw i64 %.08.i.i.i12.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i
  %.0.i.i9.i.i = phi i32 [ %i.rb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i ], [ %.0.i6.i.i13.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i ]
  %i.rd = icmp slt i32 %.0.i.i9.i.i, 0
  br i1 %i.rd, label %.thread446, label %bb.ds

bb.ds:                                            ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i
  %i.re = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 72
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !149 ; 2 uses
  %.sroa.speculated.i.i15.i.i = call i64 @llvm.umin.i64(i64 %i.rf, i64 %i.qo) ; 2 uses
  %i.rg = icmp eq i64 %.sroa.speculated.i.i15.i.i, 0
  br i1 %i.rg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i: ; preds = %bb.ds
  %i.rh = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 64
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !150
  %i.rj = call i32 @memcmp(ptr noundef %i.qp, ptr noundef %i.ri, i64 noundef %.sroa.speculated.i.i15.i.i) #39 ; 2 uses
  %.not.i.i17.i.i = icmp eq i32 %i.rj, 0
  br i1 %.not.i.i17.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i, label %.noexc259

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i, %bb.ds
  %i.rk = sub i64 %i.qo, %i.rf
  %spec.select7.i.i.i20.i.i = call i64 @llvm.smax.i64(i64 %i.rk, i64 -2147483648)
  %.08.i.i.i21.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i20.i.i, i64 2147483647)
  %.0.i6.i.i22.i.i = trunc nsw i64 %.08.i.i.i21.i.i to i32
  br label %.noexc259

.noexc259:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i
  %.0.i.i18.i.i = phi i32 [ %i.rj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i ], [ %.0.i6.i.i22.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i ]
  %.0.i.i18.i.i.fr = freeze i32 %.0.i.i18.i.i
  %i.rl = icmp slt i32 %.0.i.i18.i.i.fr, 0        ; 2 uses
  %spec.select = select i1 %i.rl, i64 16, i64 24
  br label %.noexc259.thread

.noexc259.thread:                                 ; preds = %.noexc259, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.rm = phi i1 [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i ], [ %i.rl, %.noexc259 ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ]
  %i.rn = phi i64 [ 16, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i ], [ %spec.select, %.noexc259 ], [ 16, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i ], [ 16, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ]
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %i.rn
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
  br i1 %i.rm, label %._crit_edge.thread.i.i.i, label %._crit_edge.i.i.i.thread

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.dr
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.ps, %bb.dr ] ; 4 uses
  %i.ro = load ptr, ptr %i.pu, align 8, !tbaa !325
  %i.rp = icmp eq ptr %.019.lcssa29.i.i.i, %i.ro
  br i1 %i.rp, label %select.unfold.i.i, label %bb.dt

bb.dt:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.rq = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #42
  br label %._crit_edge.i.i.i.thread

._crit_edge.i.i.i.thread:                         ; preds = %.thread446, %bb.dt, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.dt ], [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %.02024.i.i.i, %.thread446 ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.rq, %bb.dt ], [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %.02024.i.i.i, %.thread446 ]
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 32
  %i.rs = invoke noundef zeroext i1 @_ZNKSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(64) %i.rr, ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %.noexc260 unwind label %bb.dw

.noexc260:                                        ; preds = %._crit_edge.i.i.i.thread
end_hunk_1
