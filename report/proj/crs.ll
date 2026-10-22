Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/crs?download=true
inline.NumInlined: 8471
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK5osgeo4proj3crs11CompoundCRS8identifyB5cxx11ERKSt10shared_ptrINS0_2io16AuthorityFactoryEE:bb.a
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 4
  %.not25.not.i = icmp ult i64 %i.di, %i.do
  br i1 %.not25.not.i, label %.lr.ph.i198, label %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit, !llvm.loop !82

.lr.ph.i198:                                      ; preds = %.preheader.i, %bb.w
  %i.dp = phi ptr [ %i.dk, %bb.w ], [ %i.cy, %.preheader.i ]
  %.028.i = phi i64 [ %i.di, %bb.w ], [ 0, %.preheader.i ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.028.i
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !158 ; 2 uses
  %i.ds = load ptr, ptr %i.cv, align 8, !tbaa !259
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.028.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !158 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %spec.select.i = select i1 %i.dv, ptr null, ptr %i.dw
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !110
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = invoke noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(48) %i.dr, ptr noundef %spec.select.i, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %.noexc unwind label %.loopexit.split-lp488.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !489

.noexc:                                           ; preds = %.lr.ph.i198
  br i1 %i.ea, label %bb.w, label %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit

_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit: ; preds = %.noexc, %bb.w, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit, %bb.u, %bb.v, %.preheader.i
  %i.eb = phi i32 [ 25, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit ], [ 100, %.preheader.i ], [ 25, %bb.v ], [ 25, %bb.u ], [ 25, %.noexc ], [ 100, %bb.w ]
  %i.ec = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc199 unwind label %.loopexit.split-lp488.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc199:                                        ; preds = %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !128 ; 2 uses
  %i.eg = load <2 x ptr>, ptr %5, align 16, !tbaa !155
  store <2 x ptr> %i.eg, ptr %i.ed, align 8, !tbaa !155
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.noexc199
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !130
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !130
  br label %.critedge

bb.z:                                             ; preds = %bb.x
  %i.el = atomicrmw volatile add ptr %i.eh, i32 1 acq_rel, align 4 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.z, %bb.y, %.noexc199
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  store i32 %i.eb, ptr %i.em, align 8, !tbaa !492
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %4) #39
  %i.en = load i64, ptr %i.c, align 8, !tbaa !495
  %i.eo = add i64 %i.en, 1                        ; 2 uses
  store i64 %i.eo, ptr %i.c, align 8, !tbaa !495
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !353 ; 2 uses
  %i.eq = load ptr, ptr %4, align 8, !tbaa !354   ; 2 uses
  store ptr %i.eq, ptr %0, align 8, !tbaa !354
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ep, ptr %i.er, align 8, !tbaa !353
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eo, ptr %i.es, align 8, !tbaa !356
  %i.et = icmp eq ptr %i.eq, %4
  br i1 %i.et, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge
  store ptr %0, ptr %i.er, align 8, !tbaa !353
  store ptr %0, ptr %0, align 8, !tbaa !354
  br label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit

bb.ab:                                            ; preds = %.critedge
  store ptr %0, ptr %i.ep, align 8, !tbaa !354
  %i.eu = load ptr, ptr %0, align 8, !tbaa !354
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %0, ptr %i.ev, align 8, !tbaa !353
  store ptr %4, ptr %i.b, align 8, !tbaa !353
  store ptr %4, ptr %4, align 8, !tbaa !354
  store i64 0, ptr %i.c, align 8, !tbaa !356
  br label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit

_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit: ; preds = %bb.aa, %bb.ab
  %i.ew = load ptr, ptr %i.ee, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i200 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i200, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 4 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ex, align 8, !tbaa !135
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !136
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !110
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #39, !inline_history !48
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !110
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #39, !inline_history !48
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i201 = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i.i201, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i202

bb.ag:                                            ; preds = %bb.ae
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i202

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i202: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i203 = phi i32 [ %i.fa, %bb.af ], [ %i.fk, %bb.ag ]
  %i.fl = icmp eq i32 %.0.i.i.i.i.i203, 1
  br i1 %i.fl, label %bb.ah, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit, !prof !137

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i202
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit: ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i202, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %.critedge190

bb.ai:                                            ; preds = %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit.thread
  %i.fm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  %i.fn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #39
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn154 = phi { ptr, i32 } [ %i.fn, %bb.aj ], [ %i.fm, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.al

.loopexit.split-lp488.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i198, %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit
  %lpad.loopexit.split-lp754 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #39
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp488.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ak
  %.pn156.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp754, %.loopexit.split-lp488.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn154, %bb.ak ] ; 3 uses
  %.2108 = extractvalue { ptr, i32 } %.pn156.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.fo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #39
  %i.fp = icmp eq i32 %.2108, %i.fo
  br i1 %i.fp, label %bb.am, label %.loopexit493

bb.am:                                            ; preds = %bb.al
  %.2 = extractvalue { ptr, i32 } %.pn156.pn, 0
  %i.fq = call ptr @__cxa_begin_catch(ptr %.2) #39 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit.thread428 unwind label %.loopexit.split-lp495.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit.thread428: ; preds = %bb.l, %bb.am, %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0416.0525, i64 16 ; 2 uses
  %.not470 = icmp eq ptr %i.fr, %i.ap
  br i1 %.not470, label %.critedge184, label %bb.k

_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryEPKNS0_6common16IdentifiedObjectERKSt10shared_ptrINS0_2io16AuthorityFactoryEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread4.i, %bb.h
  br i1 %i.al, label %.critedge184, label %.preheader485

.preheader485:                                    ; preds = %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryEPKNS0_6common16IdentifiedObjectERKSt10shared_ptrINS0_2io16AuthorityFactoryEE.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.an

bb.an:                                            ; preds = %.preheader485, %bb.dc
  %i.fy = phi i1 [ false, %.preheader485 ], [ true, %bb.dc ]
  %i.fz = phi i1 [ true, %.preheader485 ], [ false, %bb.dc ]
  %.0142531 = phi i8 [ 0, %.preheader485 ], [ %.2144437677, %bb.dc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.ga = load ptr, ptr %2, align 8, !tbaa !359
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.gb = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #40
          to label %bb.ap unwind label %bb.ao     ; 3 uses

bb.ao:                                            ; preds = %bb.an
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = load ptr, ptr %8, align 8, !tbaa !363   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i4.i, label %.body, label %.body.sink.split

bb.ap:                                            ; preds = %bb.an
  store ptr %i.gb, ptr %8, align 8, !tbaa !363
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  store ptr %i.ge, ptr %i.fs, align 8, !tbaa !364
  store i32 15, ptr %i.gb, align 4, !tbaa !361
  store ptr %i.ge, ptr %i.ft, align 8, !tbaa !370
  invoke void @_ZNK5osgeo4proj2io16AuthorityFactory21createObjectsFromNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS2_10ObjectTypeESaISC_EEbm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list.525") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext %i.fy, i64 noundef 0)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.gf = load ptr, ptr %8, align 8, !tbaa !363   ; 3 uses
  %.not.i.i.i204 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i204, label %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gg = load ptr, ptr %i.fs, align 8, !tbaa !364
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.gf to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gj) #38
  br label %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit

_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %.sroa.0409.0526 = load ptr, ptr %7, align 8, !tbaa !354 ; 2 uses
  %.not471527 = icmp eq ptr %.sroa.0409.0526, %7
  br i1 %.not471527, label %.thread433, label %.lr.ph530.preheader

.lr.ph530.preheader:                              ; preds = %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit
  %26 = trunc nuw i8 %.0142531 to i1
  br label %.lr.ph530

bb.as:                                            ; preds = %bb.ap
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = load ptr, ptr %8, align 8, !tbaa !363   ; 2 uses
  %.not.i.i.i206 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i206, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.as, %bb.ao
  %.sink699 = phi ptr [ %i.gd, %bb.ao ], [ %i.gl, %bb.as ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.gc, %bb.ao ], [ %i.gk, %bb.as ]
  %i.gm = load ptr, ptr %i.fs, align 8, !tbaa !364
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %.sink699 to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %.sink699, i64 noundef %i.gp) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.as, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.gc, %bb.ao ], [ %i.gk, %bb.as ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.dd

.lr.ph530:                                        ; preds = %.lr.ph530.preheader, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251
  %.sroa.0409.0529 = phi ptr [ %.sroa.0409.0, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251 ], [ %.sroa.0409.0526, %.lr.ph530.preheader ] ; 3 uses
  %.1143528 = phi i1 [ %i.ho, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251 ], [ %26, %.lr.ph530.preheader ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0409.0529, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !367, !noalias !1491 ; 6 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph530
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !110, !noalias !1491
  %i.gu = icmp eq ptr %i.gt, getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5osgeo4proj3crs11CompoundCRSE, i64 16)
  br i1 %i.gu, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph530
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !alias.scope !1491
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread

bb.av:                                            ; preds = %bb.at
  store ptr %i.gr, ptr %9, align 8, !tbaa !258, !alias.scope !1491
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0409.0529, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !128, !noalias !1491 ; 5 uses
  store ptr %i.gw, ptr %i.fu, align 8, !tbaa !128, !alias.scope !1491
  %.not.i.i.i.i209 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i209, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 3 uses
  %i.gy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !1491
  %.not.i.i.i.i.i = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread680

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread680: ; preds = %bb.aw
  %i.gz = load i32, ptr %i.gx, align 4, !tbaa !130, !noalias !1491
  %i.ha = add nsw i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gx, align 4, !tbaa !130, !noalias !1491
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  store ptr %i.gr, ptr %10, align 16, !tbaa !258
  store ptr %i.gw, ptr %i.fv, align 8, !tbaa !128
  br label %bb.ax

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread: ; preds = %bb.au, %bb.av
  %.ph = phi ptr [ %i.gr, %bb.av ], [ null, %bb.au ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  store ptr %.ph, ptr %10, align 16, !tbaa !258
  store ptr null, ptr %i.fv, align 8, !tbaa !128
  br label %bb.ba

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit: ; preds = %bb.aw
  %i.hb = atomicrmw volatile add ptr %i.gx, i32 1 acq_rel, align 4, !noalias !1491 ; 0 uses
  %.pre = load ptr, ptr %9, align 8, !tbaa !258   ; 3 uses
  %.pre571 = load ptr, ptr %i.fu, align 8, !tbaa !128 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  store ptr %.pre, ptr %10, align 16, !tbaa !258
  store ptr %.pre571, ptr %i.fv, align 8, !tbaa !128
  %.not.i.i.i.i210 = icmp eq ptr %.pre571, null
  br i1 %.not.i.i.i.i210, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread680, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit
  %i.hc = phi ptr [ %i.gr, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread680 ], [ %.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit ]
  %i.hd = phi ptr [ %i.gw, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread680 ], [ %.pre571, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 3 uses
  %i.hf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i211 = icmp eq i8 %i.hf, 0
  br i1 %.not.i.i.i.i.i211, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hg = load i32, ptr %i.he, align 4, !tbaa !130
  %i.hh = add nsw i32 %i.hg, 1
  store i32 %i.hh, ptr %i.he, align 4, !tbaa !130
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.hi = atomicrmw volatile add ptr %i.he, i32 1 acq_rel, align 4 ; 0 uses
  %.pre572 = load ptr, ptr %9, align 8, !tbaa !258
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread
  %i.hj = phi ptr [ %.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit ], [ %i.hc, %bb.ay ], [ %.pre572, %bb.az ], [ %.ph, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11CompoundCRSENS3_6common16IdentifiedObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread ] ; 4 uses
  %i.hk = load ptr, ptr %i.d, align 8, !tbaa !150
  %i.hl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.hj) #42
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !150
  %i.hn = call noundef zeroext i1 @_ZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_(ptr noundef %i.hk, ptr noundef %i.hm) #39 ; 2 uses
  %i.ho = or i1 %i.hn, %.1143528                  ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !110
  %i.hr = icmp eq ptr %i.hq, getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj3crs11CompoundCRSE, i64 104)
  br i1 %i.hr, label %bb.bb, label %.loopexit481

bb.bb:                                            ; preds = %bb.ba
  %i.hs = load ptr, ptr %i.e, align 8, !tbaa !241 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 72
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !241 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !256 ; 2 uses
  %i.hx = load ptr, ptr %i.hs, align 8, !tbaa !259 ; 3 uses
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !256
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !259
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %.not.i213 = icmp eq i64 %i.ia, %i.ig
  br i1 %.not.i213, label %.preheader.i214, label %.loopexit481

.preheader.i214:                                  ; preds = %bb.bb
  %.not2527.i215 = icmp eq ptr %i.hw, %i.hx
  br i1 %.not2527.i215, label %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221, label %.lr.ph.i216

bb.bc:                                            ; preds = %.noexc220
  %i.ih = add nuw i64 %.028.i217, 1               ; 2 uses
  %i.ii = load ptr, ptr %i.hv, align 8, !tbaa !256
  %i.ij = load ptr, ptr %i.hs, align 8, !tbaa !259 ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = ashr exact i64 %i.im, 4
  %.not25.not.i219 = icmp ult i64 %i.ih, %i.in
  br i1 %.not25.not.i219, label %.lr.ph.i216, label %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221, !llvm.loop !82

.lr.ph.i216:                                      ; preds = %.preheader.i214, %bb.bc
  %i.io = phi ptr [ %i.ij, %bb.bc ], [ %i.hx, %.preheader.i214 ]
  %.028.i217 = phi i64 [ %i.ih, %bb.bc ], [ 0, %.preheader.i214 ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %.028.i217
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !158 ; 2 uses
  %i.ir = load ptr, ptr %i.hu, align 8, !tbaa !259
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %.028.i217
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !158 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %spec.select.i218 = select i1 %i.iu, ptr null, ptr %i.iv
  %i.iw = load ptr, ptr %i.iq, align 8, !tbaa !110
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = invoke noundef zeroext i1 %i.iy(ptr noundef nonnull align 8 dereferenceable(48) %i.iq, ptr noundef %spec.select.i218, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %.noexc220 unwind label %.loopexit.split-lp477.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !489

.noexc220:                                        ; preds = %.lr.ph.i216
  br i1 %i.iz, label %bb.bc, label %.loopexit481

_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221: ; preds = %bb.bc, %.preheader.i214
  %i.ja = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.hj) #42 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !149 ; 3 uses
  %i.jd = load i64, ptr %i.ag, align 8, !tbaa !149
  %i.je = icmp eq i64 %i.jc, %i.jd
  br i1 %i.je, label %bb.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432

bb.bd:                                            ; preds = %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221
  %i.jf = icmp eq i64 %i.jc, 0
  br i1 %i.jf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.bd
  %i.jg = load ptr, ptr %i.d, align 8, !tbaa !150
  %i.jh = load ptr, ptr %i.ja, align 8, !tbaa !150
  %bcmp.i = call i32 @bcmp(ptr %i.jh, ptr %i.jg, i64 %i.jc)
  %i.ji = icmp eq i32 %bcmp.i, 0
  br i1 %i.ji, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.bd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %27 = zext i1 %i.ho to i8
  %i.jj = load ptr, ptr %4, align 8, !tbaa !354   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.jj, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.jk, %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i ], [ %i.jj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 3 uses
  %i.jk = load ptr, ptr %.09.i.i, align 8, !tbaa !354 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 4 uses
  %i.jo = load atomic i64, ptr %i.jn acquire, align 8 ; 2 uses
  %i.jp = icmp eq i64 %i.jo, 4294967297
  %i.jq = trunc i64 %i.jo to i32                  ; 2 uses
  br i1 %i.jp, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.jn, align 8, !tbaa !135
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  store i32 0, ptr %i.jr, align 4, !tbaa !136
  %i.js = load ptr, ptr %i.jm, align 8, !tbaa !110
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(16) %i.jm) #39, !inline_history !1482
  %i.jv = load ptr, ptr %i.jm, align 8, !tbaa !110
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jm) #39, !inline_history !1482
  br label %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i

bb.bg:                                            ; preds = %bb.be
  %i.jy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.jy, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jz = add nsw i32 %i.jq, -1
  store i32 %i.jz, ptr %i.jn, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.ka = atomicrmw volatile add ptr %i.jn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.jq, %bb.bh ], [ %i.ka, %bb.bi ]
  %i.kb = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.kb, label %bb.bj, label %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i, !prof !137

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jm) #39
  br label %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i

_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bf, %.lr.ph.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 40) #38
  %.not.i.i = icmp eq ptr %i.jk, %4
  br i1 %.not.i.i, label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !83

_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit: ; preds = %_ZNSt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiED2Ev.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  store ptr %4, ptr %i.b, align 8, !tbaa !353
  store ptr %4, ptr %4, align 8, !tbaa !354
  store i64 0, ptr %i.c, align 8, !tbaa !356
  %i.kc = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc224 unwind label %.loopexit.split-lp477.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc224:                                        ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load ptr, ptr %i.fv, align 8, !tbaa !128 ; 2 uses
  %i.kf = load <2 x ptr>, ptr %10, align 16, !tbaa !155
  store <2 x ptr> %i.kf, ptr %i.kd, align 8, !tbaa !155
  %.not.i.i.i.i.i.i.i.i222 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i.i.i.i.i.i222, label %.critedge186, label %bb.bk

bb.bk:                                            ; preds = %.noexc224
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 3 uses
  %i.kh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i.i.i223 = icmp eq i8 %i.kh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i223, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ki = load i32, ptr %i.kg, align 4, !tbaa !130
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kg, align 4, !tbaa !130
  br label %.critedge186

bb.bm:                                            ; preds = %bb.bk
  %i.kk = atomicrmw volatile add ptr %i.kg, i32 1 acq_rel, align 4 ; 0 uses
  br label %.critedge186

.critedge186:                                     ; preds = %bb.bm, %bb.bl, %.noexc224
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  store i32 100, ptr %i.kl, align 8, !tbaa !492
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.kc, ptr noundef nonnull align 8 dereferenceable(24) %4) #39
  %i.km = load i64, ptr %i.c, align 8, !tbaa !495
  %i.kn = add i64 %i.km, 1                        ; 2 uses
  store i64 %i.kn, ptr %i.c, align 8, !tbaa !495
  %i.ko = load ptr, ptr %i.b, align 8, !tbaa !353 ; 2 uses
  %i.kp = load ptr, ptr %4, align 8, !tbaa !354   ; 2 uses
  store ptr %i.kp, ptr %0, align 8, !tbaa !354
  store ptr %i.ko, ptr %i.fw, align 8, !tbaa !353
  store i64 %i.kn, ptr %i.fx, align 8, !tbaa !356
  %i.kq = icmp eq ptr %i.kp, %4
  br i1 %i.kq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.critedge186
  store ptr %0, ptr %i.fw, align 8, !tbaa !353
  store ptr %0, ptr %0, align 8, !tbaa !354
  br label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit226

bb.bo:                                            ; preds = %.critedge186
  store ptr %0, ptr %i.ko, align 8, !tbaa !354
  %i.kr = load ptr, ptr %0, align 8, !tbaa !354
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store ptr %0, ptr %i.ks, align 8, !tbaa !353
  store ptr %4, ptr %i.b, align 8, !tbaa !353
  store ptr %4, ptr %4, align 8, !tbaa !354
  store i64 0, ptr %i.c, align 8, !tbaa !356
  br label %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit226

_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit226: ; preds = %bb.bn, %bb.bo
  %i.kt = load ptr, ptr %i.fv, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i227 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i227, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit226
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 4 uses
  %i.kv = load atomic i64, ptr %i.ku acquire, align 8 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 4294967297
  %i.kx = trunc i64 %i.kv to i32                  ; 2 uses
  br i1 %i.kw, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.ku, align 8, !tbaa !135
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  store i32 0, ptr %i.ky, align 4, !tbaa !136
  %i.kz = load ptr, ptr %i.kt, align 8, !tbaa !110
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(16) %i.kt) #39, !inline_history !48
  %i.lc = load ptr, ptr %i.kt, align 8, !tbaa !110
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(16) %i.kt) #39, !inline_history !48
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231

bb.br:                                            ; preds = %bb.bp
  %i.lf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i228 = icmp eq i8 %i.lf, 0
  br i1 %.not.i.i.i.i228, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lg = add nsw i32 %i.kx, -1
  store i32 %i.lg, ptr %i.ku, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i229

bb.bt:                                            ; preds = %bb.br
  %i.lh = atomicrmw volatile add ptr %i.ku, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i229

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i229: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i230 = phi i32 [ %i.kx, %bb.bs ], [ %i.lh, %bb.bt ]
  %i.li = icmp eq i32 %.0.i.i.i.i.i230, 1
  br i1 %i.li, label %bb.bu, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231, !prof !137

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i229
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kt) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231: ; preds = %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EEC2EOSE_.exit226, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i229, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.lj = load ptr, ptr %i.fu, align 8, !tbaa !128 ; 8 uses
  %.not.i.i232 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i232, label %bb.cv, label %bb.bv

bb.bv:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 4 uses
  %i.ll = load atomic i64, ptr %i.lk acquire, align 8 ; 2 uses
  %i.lm = icmp eq i64 %i.ll, 4294967297
  %i.ln = trunc i64 %i.ll to i32                  ; 2 uses
  br i1 %i.lm, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.lk, align 8, !tbaa !135
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  store i32 0, ptr %i.lo, align 4, !tbaa !136
  %i.lp = load ptr, ptr %i.lj, align 8, !tbaa !110
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #39, !inline_history !20
  %i.ls = load ptr, ptr %i.lj, align 8, !tbaa !110
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #39, !inline_history !20
  br label %bb.cv

bb.bx:                                            ; preds = %bb.bv
  %i.lv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i233 = icmp eq i8 %i.lv, 0
  br i1 %.not.i.i.i233, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lw = add nsw i32 %i.ln, -1
  store i32 %i.lw, ptr %i.lk, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.lx = atomicrmw volatile add ptr %i.lk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i = phi i32 [ %i.ln, %bb.by ], [ %i.lx, %bb.bz ]
  %i.ly = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ly, label %bb.ca, label %bb.cv, !prof !137

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #39
  br label %bb.cv

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432: ; preds = %_ZNK5osgeo4proj3crs11CompoundCRS15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit221, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.lz = select i1 %i.hn, i32 90, i32 70         ; 3 uses
  %i.ma = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc236 unwind label %.loopexit.split-lp477.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc236:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = load ptr, ptr %i.fv, align 8, !tbaa !128 ; 2 uses
  %i.md = load <2 x ptr>, ptr %10, align 16, !tbaa !155
  store <2 x ptr> %i.md, ptr %i.mb, align 8, !tbaa !155
  %.not.i.i.i.i.i.i.i.i234 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i.i.i.i.i234, label %bb.ch, label %bb.cb

bb.cb:                                            ; preds = %.noexc236
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 3 uses
  %i.mf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i.i.i235 = icmp eq i8 %i.mf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i235, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mg = load i32, ptr %i.me, align 4, !tbaa !130
  %i.mh = add nsw i32 %i.mg, 1
  store i32 %i.mh, ptr %i.me, align 4, !tbaa !130
  br label %bb.ch

bb.cd:                                            ; preds = %bb.cb
  %i.mi = atomicrmw volatile add ptr %i.me, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ch

.loopexit481:                                     ; preds = %.noexc220, %bb.bb, %bb.ba
  %i.mj = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc240 unwind label %.loopexit.split-lp477.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc240:                                        ; preds = %.loopexit481
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load ptr, ptr %i.fv, align 8, !tbaa !128 ; 2 uses
  %i.mm = load <2 x ptr>, ptr %10, align 16, !tbaa !155
  store <2 x ptr> %i.mm, ptr %i.mk, align 8, !tbaa !155
  %.not.i.i.i.i.i.i.i.i238 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i.i.i.i.i.i.i238, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %.noexc240
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 8 ; 3 uses
  %i.mo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i.i.i239 = icmp eq i8 %i.mo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i239, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mp = load i32, ptr %i.mn, align 4, !tbaa !130
  %i.mq = add nsw i32 %i.mp, 1
  store i32 %i.mq, ptr %i.mn, align 4, !tbaa !130
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.mr = atomicrmw volatile add ptr %i.mn, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ch

.loopexit.split-lp477.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i216, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread432, %.loopexit481, %_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE5clearEv.exit
  %lpad.loopexit.split-lp746 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #39
  br label %bb.dd

bb.ch:                                            ; preds = %.noexc240, %bb.cf, %bb.cg, %.noexc236, %bb.cc, %bb.cd
  %.sink704.a = phi ptr [ %i.ma, %.noexc236 ], [ %i.ma, %bb.cd ], [ %i.ma, %bb.cc ], [ %i.mj, %bb.cg ], [ %i.mj, %bb.cf ], [ %i.mj, %.noexc240 ] ; 2 uses
  %.sink702 = phi i32 [ %i.lz, %.noexc236 ], [ %i.lz, %bb.cd ], [ %i.lz, %bb.cc ], [ 25, %bb.cg ], [ 25, %bb.cf ], [ 25, %.noexc240 ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.sink704.a, i64 32
  store i32 %.sink702, ptr %i.ms, align 8, !tbaa !492
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %.sink704.a, ptr noundef nonnull align 8 dereferenceable(24) %4) #39
  %i.mt = load i64, ptr %i.c, align 8, !tbaa !495
  %storemerge = add i64 %i.mt, 1
  store i64 %storemerge, ptr %i.c, align 8, !tbaa !495
  %i.mu = load ptr, ptr %i.fv, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i242 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i242, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 4 uses
  %i.mw = load atomic i64, ptr %i.mv acquire, align 8 ; 2 uses
  %i.mx = icmp eq i64 %i.mw, 4294967297
  %i.my = trunc i64 %i.mw to i32                  ; 2 uses
  br i1 %i.mx, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.mv, align 8, !tbaa !135
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mu, i64 12
  store i32 0, ptr %i.mz, align 4, !tbaa !136
  %i.na = load ptr, ptr %i.mu, align 8, !tbaa !110
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dereferenceable(16) %i.mu) #39, !inline_history !48
  %i.nd = load ptr, ptr %i.mu, align 8, !tbaa !110
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(16) %i.mu) #39, !inline_history !48
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246

bb.ck:                                            ; preds = %bb.ci
  %i.ng = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i243 = icmp eq i8 %i.ng, 0
  br i1 %.not.i.i.i.i243, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nh = add nsw i32 %i.my, -1
  store i32 %i.nh, ptr %i.mv, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244

bb.cm:                                            ; preds = %bb.ck
  %i.ni = atomicrmw volatile add ptr %i.mv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i245 = phi i32 [ %i.my, %bb.cl ], [ %i.ni, %bb.cm ]
  %i.nj = icmp eq i32 %.0.i.i.i.i.i245, 1
  br i1 %i.nj, label %bb.cn, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246, !prof !137

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mu) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246: ; preds = %bb.ch, %bb.cj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i244, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.nk = load ptr, ptr %i.fu, align 8, !tbaa !128 ; 8 uses
  %.not.i.i247 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i247, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251, label %bb.co

bb.co:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 4 uses
  %i.nm = load atomic i64, ptr %i.nl acquire, align 8 ; 2 uses
  %i.nn = icmp eq i64 %i.nm, 4294967297
  %i.no = trunc i64 %i.nm to i32                  ; 2 uses
  br i1 %i.nn, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 0, ptr %i.nl, align 8, !tbaa !135
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 12
  store i32 0, ptr %i.np, align 4, !tbaa !136
  %i.nq = load ptr, ptr %i.nk, align 8, !tbaa !110
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(16) %i.nk) #39, !inline_history !20
  %i.nt = load ptr, ptr %i.nk, align 8, !tbaa !110
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.nv = load ptr, ptr %i.nu, align 8
  call void %i.nv(ptr noundef nonnull align 8 dereferenceable(16) %i.nk) #39, !inline_history !20
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251

bb.cq:                                            ; preds = %bb.co
  %i.nw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i248 = icmp eq i8 %i.nw, 0
  br i1 %.not.i.i.i248, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nx = add nsw i32 %i.no, -1
  store i32 %i.nx, ptr %i.nl, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249

bb.cs:                                            ; preds = %bb.cq
  %i.ny = atomicrmw volatile add ptr %i.nl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i.i250 = phi i32 [ %i.no, %bb.cr ], [ %i.ny, %bb.cs ]
  %i.nz = icmp eq i32 %.0.i.i.i.i250, 1
  br i1 %i.nz, label %bb.ct, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251, !prof !137

bb.ct:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nk) #39
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251

_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit246, %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i249, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %.sroa.0409.0 = load ptr, ptr %.sroa.0409.0529, align 8, !tbaa !354 ; 2 uses
  %.not471 = icmp eq ptr %.sroa.0409.0, %7
  br i1 %.not471, label %.thread433.loopexit, label %.lr.ph530

.thread433.loopexit:                              ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit251
  %28 = zext i1 %i.ho to i8
  br label %.thread433

.thread433:                                       ; preds = %.thread433.loopexit, %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit
  %.1143.lcssa = phi i8 [ %.0142531, %_ZNSt6vectorIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESaIS4_EED2Ev.exit ], [ %28, %.thread433.loopexit ] ; 4 uses
  %i.oa = load ptr, ptr %4, align 8, !tbaa !354
  %i.ob = icmp eq ptr %i.oa, %4
  %i.oc = load ptr, ptr %7, align 8, !tbaa !354   ; 3 uses
  %.not8.i.i252.jt0 = icmp eq ptr %i.oc, %7       ; 2 uses
  br i1 %i.ob, label %bb.cu, label %..si.unfold.false.jt4

..si.unfold.false.jt4:                            ; preds = %.thread433
  br i1 %.not8.i.i252.jt0, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt4, label %.lr.ph.i.i253.preheader

bb.cu:                                            ; preds = %.thread433
  br i1 %.not8.i.i252.jt0, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt0, label %.lr.ph.i.i253.preheader

bb.cv:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev.exit231, %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.od = load ptr, ptr %7, align 8, !tbaa !354   ; 2 uses
  %.not8.i.i252.jt1 = icmp eq ptr %i.od, %7
  br i1 %.not8.i.i252.jt1, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt1, label %.lr.ph.i.i253.preheader

.lr.ph.i.i253.preheader:                          ; preds = %..si.unfold.false.jt4, %bb.cu, %bb.cv
  %i.oe = phi ptr [ %i.oc, %..si.unfold.false.jt4 ], [ %i.oc, %bb.cu ], [ %i.od, %bb.cv ]
  %.4136678 = phi i32 [ 4, %..si.unfold.false.jt4 ], [ 0, %bb.cu ], [ 1, %bb.cv ]
  %.2144437675 = phi i8 [ %.1143.lcssa, %..si.unfold.false.jt4 ], [ %.1143.lcssa, %bb.cu ], [ %27, %bb.cv ] ; 2 uses
  br label %.lr.ph.i.i253

.lr.ph.i.i253:                                    ; preds = %.lr.ph.i.i253.preheader, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i
  %.09.i.i254 = phi ptr [ %i.of, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i ], [ %i.oe, %.lr.ph.i.i253.preheader ] ; 3 uses
  %i.of = load ptr, ptr %.09.i.i254, align 8, !tbaa !354 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.09.i.i254, i64 24
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i.i.i255 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i.i.i255, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i.i253
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 4 uses
  %i.oj = load atomic i64, ptr %i.oi acquire, align 8 ; 2 uses
  %i.ok = icmp eq i64 %i.oj, 4294967297
  %i.ol = trunc i64 %i.oj to i32                  ; 2 uses
  br i1 %i.ok, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.oi, align 8, !tbaa !135
  %i.om = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  store i32 0, ptr %i.om, align 4, !tbaa !136
  %i.on = load ptr, ptr %i.oh, align 8, !tbaa !110
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(16) %i.oh) #39, !inline_history !57
  %i.oq = load ptr, ptr %i.oh, align 8, !tbaa !110
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(16) %i.oh) #39, !inline_history !57
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.ot = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i256 = icmp eq i8 %i.ot, 0
  br i1 %.not.i.i.i.i.i.i256, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ou = add nsw i32 %i.ol, -1
  store i32 %i.ou, ptr %i.oi, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.ov = atomicrmw volatile add ptr %i.oi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ol, %bb.cz ], [ %i.ov, %bb.da ]
  %i.ow = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ow, label %bb.db, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i, !prof !137

bb.db:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oh) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i: ; preds = %bb.db, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cx, %.lr.ph.i.i253
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i254, i64 noundef 32) #38
  %.not.i.i257 = icmp eq ptr %i.of, %7
  br i1 %.not.i.i257, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit, label %.lr.ph.i.i253, !llvm.loop !56

_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  switch i32 %.4136678, label %.critedge190 [
    i32 0, label %bb.dc
    i32 4, label %.critedge184.loopexit
  ]

_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt4: ; preds = %..si.unfold.false.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.critedge184.loopexit

_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt0: ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.dc

_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt1: ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.critedge190

bb.dc:                                            ; preds = %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt0, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit
  %.2144437677 = phi i8 [ %.1143.lcssa, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt0 ], [ %.2144437675, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit ] ; 2 uses
  br i1 %i.fz, label %bb.an, label %.critedge184.loopexit, !llvm.loop !1483

bb.dd:                                            ; preds = %.loopexit.split-lp477.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn151.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp746, %.loopexit.split-lp477.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.loopexit493

.critedge184.loopexit:                            ; preds = %bb.dc, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt4
  %.2144437676 = phi i8 [ %.1143.lcssa, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit.jt4 ], [ %.2144437675, %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common16IdentifiedObjectEEEESaISA_EED2Ev.exit ], [ %.2144437677, %bb.dc ]
  %29 = trunc nuw i8 %.2144437676 to i1
  br label %.critedge184

.critedge184:                                     ; preds = %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit.thread428, %.critedge184.loopexit, %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryEPKNS0_6common16IdentifiedObjectERKSt10shared_ptrINS0_2io16AuthorityFactoryEE.exit
  %.4146 = phi i1 [ %29, %.critedge184.loopexit ], [ false, %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryEPKNS0_6common16IdentifiedObjectERKSt10shared_ptrINS0_2io16AuthorityFactoryEE.exit ], [ false, %_ZN5osgeo4proj3crsL35hasCodeCompatibleOfAuthorityFactoryERKN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata10IdentifierEEEERKS5_INS0_2io16AuthorityFactoryEE.exit.thread428 ]
  call fastcc void @"_ZNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEEiESaISC_EE4sortIZNKS9_8identifyERKS5_INS7_2io16AuthorityFactoryEEE3$_0EEvT_"(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.d)
  %i.ox = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #42 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !160
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !160
  %i.pb = icmp ne ptr %i.oy, %i.pa
  %or.cond = select i1 %i.pb, i1 true, i1 %.4146
  %.pre576 = load ptr, ptr %4, align 8            ; 5 uses
  br i1 %or.cond, label %bb.fi, label %bb.de

bb.de:                                            ; preds = %.critedge184
  %i.pc = icmp eq ptr %.pre576, %4
  br i1 %i.pc, label %.thread, label %bb.df

.thread:                                          ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.pd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.pd, align 8, !tbaa !482
  %i.pe = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr null, ptr %i.pe, align 8, !tbaa !328
  %i.pf = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.pd, ptr %i.pf, align 8, !tbaa !325
  %i.pg = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.pd, ptr %i.pg, align 8, !tbaa !483
  %i.ph = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.ph, align 8, !tbaa !324
  br label %._crit_edge

bb.df:                                            ; preds = %bb.de
  %i.pi = getelementptr inbounds nuw i8, ptr %.pre576, i64 32
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !492
  %i.pk = icmp slt i32 %i.pj, 50
  br i1 %i.pk, label %.lr.ph535, label %bb.fi

.lr.ph535:                                        ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.pl = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  store i32 0, ptr %i.pl, align 8, !tbaa !482
  %i.pm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr null, ptr %i.pm, align 8, !tbaa !328
  %i.pn = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.pl, ptr %i.pn, align 8, !tbaa !325
  %i.po = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.pl, ptr %i.po, align 8, !tbaa !483
  %i.pp = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.pp, align 8, !tbaa !324
  %i.pq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ps = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.dg

._crit_edge:                                      ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %.thread
  %i.pv = phi ptr [ %i.pe, %.thread ], [ %i.pm, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 2 uses
  %i.pw = phi ptr [ %i.pd, %.thread ], [ %i.pl, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  invoke void @_ZNK5osgeo4proj4util10BaseObject16shared_from_thisEv(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.do unwind label %bb.du

.loopexit.split-lp495.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.d
  %lpad.loopexit.split-lp758 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit493

bb.dg:                                            ; preds = %.lr.ph535, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %.sroa.0402.0534 = phi ptr [ %.pre576, %.lr.ph535 ], [ %i.rv, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0402.0534, i64 16
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !258
  %i.pz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.py) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !350
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !305 ; 2 uses
  %i.qc = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata10Identifier9codeSpaceB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.qb) #42
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj8metadata10Identifier4codeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.qb) #42
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.qd, ptr noundef nonnull align 8 dereferenceable(32) %i.qe)
          to label %bb.dh unwind label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  %.02022.i.i.i = load ptr, ptr %i.pm, align 8, !tbaa !484 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.dh
  %i.qf = load i64, ptr %i.pq, align 8, !tbaa !149 ; 4 uses
  %i.qg = load ptr, ptr %12, align 8              ; 2 uses
  %i.qh = load i64, ptr %i.pr, align 8            ; 2 uses
  %i.qi = load ptr, ptr %i.ps, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.backedge, %.lr.ph.i.i.i.preheader
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.02024.i.i.i.be, %.lr.ph.i.i.i.backedge ] ; 11 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 40
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !149 ; 4 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.qk, i64 %i.qf) ; 3 uses
  %i.ql = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ql, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !150 ; 2 uses
  %i.qo = call i32 @memcmp(ptr noundef %i.qg, ptr noundef %i.qn, i64 noundef %.sroa.speculated.i.i.i.i) #39 ; 2 uses
  %.not.i.i.i.i364 = icmp eq i32 %i.qo, 0
  br i1 %.not.i.i.i.i364, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.qp = sub i64 %i.qf, %i.qk
  %i.qq = icmp slt i64 %i.qp, 0
  br i1 %i.qq, label %.noexc259.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.qr = sub i64 %i.qf, %i.qk
  %i.qs = icmp slt i64 %i.qr, 0
  br i1 %i.qs, label %.noexc259.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.qt = icmp slt i32 %i.qo, 0
  br i1 %i.qt, label %.noexc259.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i
  %i.qu = call i32 @memcmp(ptr noundef %i.qn, ptr noundef %i.qg, i64 noundef %.sroa.speculated.i.i.i.i) #39 ; 2 uses
  %.not.i.i8.i.i = icmp eq i32 %i.qu, 0
  br i1 %.not.i.i8.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.qv = sub i64 %i.qk, %i.qf
  %spec.select7.i.i.i11.i.i = call i64 @llvm.smax.i64(i64 %i.qv, i64 -2147483648)
  %.08.i.i.i12.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i11.i.i, i64 2147483647)
  %.0.i6.i.i13.i.i = trunc nsw i64 %.08.i.i.i12.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i
  %.0.i.i9.i.i = phi i32 [ %i.qu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i ], [ %.0.i6.i.i13.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i ]
  %i.qw = icmp slt i32 %.0.i.i9.i.i, 0
  br i1 %i.qw, label %.thread446, label %bb.di

bb.di:                                            ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i
  %i.qx = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 72
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !149 ; 2 uses
  %.sroa.speculated.i.i15.i.i = call i64 @llvm.umin.i64(i64 %i.qy, i64 %i.qh) ; 2 uses
  %i.qz = icmp eq i64 %.sroa.speculated.i.i15.i.i, 0
  br i1 %i.qz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i: ; preds = %bb.di
  %i.ra = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 64
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !150
  %i.rc = call i32 @memcmp(ptr noundef %i.qi, ptr noundef %i.rb, i64 noundef %.sroa.speculated.i.i15.i.i) #39 ; 2 uses
  %.not.i.i17.i.i = icmp eq i32 %i.rc, 0
  br i1 %.not.i.i17.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i, label %.noexc259

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i, %bb.di
  %i.rd = sub i64 %i.qh, %i.qy
  %spec.select7.i.i.i20.i.i = call i64 @llvm.smax.i64(i64 %i.rd, i64 -2147483648)
  %.08.i.i.i21.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i20.i.i, i64 2147483647)
  %.0.i6.i.i22.i.i = trunc nsw i64 %.08.i.i.i21.i.i to i32
  br label %.noexc259

.noexc259:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i
  %.0.i.i18.i.i = phi i32 [ %i.rc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16.i.i ], [ %.0.i6.i.i22.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i19.i.i ]
  %.0.i.i18.i.i.fr = freeze i32 %.0.i.i18.i.i
  %i.re = icmp slt i32 %.0.i.i18.i.i.fr, 0        ; 2 uses
  %spec.select = select i1 %i.re, i64 16, i64 24
  br label %.noexc259.thread

.noexc259.thread:                                 ; preds = %.noexc259, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.rf = phi i1 [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i ], [ %i.re, %.noexc259 ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ]
  %i.rg = phi i64 [ 16, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25.i.i ], [ %spec.select, %.noexc259 ], [ 16, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i ], [ 16, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ]
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %i.rg
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
  br i1 %i.rf, label %._crit_edge.thread.i.i.i, label %._crit_edge.i.i.i.thread

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.dh
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.pl, %bb.dh ] ; 4 uses
  %i.rh = load ptr, ptr %i.pn, align 8, !tbaa !325
  %i.ri = icmp eq ptr %.019.lcssa29.i.i.i, %i.rh
  br i1 %i.ri, label %select.unfold.i.i, label %bb.dj

bb.dj:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.rj = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #42
  br label %._crit_edge.i.i.i.thread

._crit_edge.i.i.i.thread:                         ; preds = %.thread446, %bb.dj, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.dj ], [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %.02024.i.i.i, %.thread446 ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.rj, %bb.dj ], [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %.02024.i.i.i, %.thread446 ]
end_hunk_0
