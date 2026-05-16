inline.NumInlined: 640
inline.NumDeleted: 317
begin_hunk_0_@_ZN6Assimp11STLImporter13LoadASCIIFileEP6aiNode:_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
bb.w:                                             ; preds = %bb.y, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %.0.i.i119 = phi ptr [ %i.ch, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit ], [ %i.cl, %bb.y ] ; 4 uses
  %i.ck = load i8, ptr %.0.i.i119, align 1
  switch i8 %i.ck, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123 [
    i8 32, label %bb.x
    i8 9, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %.not.i.i120 = icmp eq ptr %.0.i.i119, %i.h
  br i1 %.not.i.i120, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i119, i64 1
  br label %bb.w, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123:      ; preds = %bb.w, %bb.x
  %.0.lcssa.i.i122 = phi ptr [ %.0.i.i119, %bb.w ], [ %scevgep.i.i118, %bb.x ] ; 5 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123
  %.1 = phi ptr [ %.0.lcssa.i.i122, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123 ], [ %i.cn, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 5 uses
  %i.cm = load i8, ptr %.1, align 1
  switch i8 %i.cm, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %bb.ac
    i8 9, label %bb.ac
    i8 13, label %bb.ac
    i8 10, label %bb.ac
    i8 0, label %bb.ac
    i8 12, label %bb.ac
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.z, !llvm.loop !15

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %._crit_edge, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
  %.sroa.35.1 = phi ptr [ %i.m, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.35.0, %._crit_edge ], [ %.sroa.35.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0328.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0328.0, %._crit_edge ], [ %.sroa.0328.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.38.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.38.0, %._crit_edge ], [ %.sroa.38.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0354.1 = phi ptr [ %i.l, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0354.0, %._crit_edge ], [ %.sroa.0354.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.17.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.17.0, %._crit_edge ], [ %.sroa.17.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0416.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0416.0, %._crit_edge ], [ %.sroa.0416.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.19.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.19.0, %._crit_edge ], [ %.sroa.19.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0427.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0427.0, %._crit_edge ], [ %.sroa.0427.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit267

.thread484:                                       ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit267

.loopexit521:                                     ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit523 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp522:                            ; preds = %bb.q
  %lpad.loopexit.split-lp524 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ab:                                            ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 1144) #21
  br label %.thread

bb.ac:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  %i.cr = ptrtoint ptr %.1 to i64
  %i.cs = ptrtoint ptr %.0.lcssa.i.i122 to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 5 uses
  %.not = icmp eq ptr %.1, %.0.lcssa.i.i122
  br i1 %.not, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = icmp ugt i64 %i.ct, 1023
  br i1 %i.cu, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.cv = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull @.str.11)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.et unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cv) #20
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.q, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.ct, ptr %i.c, align 8
  %i.cy = icmp samesign ugt i64 %i.ct, 15
  br i1 %i.cy, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ai
  %i.cz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %bb.ay ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i
  store ptr %i.cz, ptr %2, align 8
  %i.da = load i64, ptr %i.c, align 8
  store i64 %i.da, ptr %i.q, align 8
  br label %bb.ak

._crit_edge.i.i:                                  ; preds = %bb.ai
  %cond = icmp eq i64 %i.ct, 1
  br i1 %cond, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.db = load i8, ptr %.0.lcssa.i.i122, align 1
  store i8 %i.db, ptr %i.q, align 8
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.dc = phi ptr [ %i.cz, %._crit_edge.i.i.thread ], [ %i.q, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %.0.lcssa.i.i122, i64 %i.ct, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dd = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.dd, ptr %i.r, align 8
  %i.de = load ptr, ptr %2, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 0, ptr %i.df, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.dg = load ptr, ptr %2, align 8               ; 4 uses
  store ptr %i.s, ptr %3, align 8
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #23
          to label %.noexc128 unwind label %.loopexit.split-lp527

.noexc128:                                        ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.di = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dg) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.di, ptr %i.b, align 8
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %.noexc.i127, label %._crit_edge.i.i126

.noexc.i127:                                      ; preds = %bb.an
  %i.dk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc129 unwind label %.loopexit526 ; 2 uses

.noexc129:                                        ; preds = %.noexc.i127
  store ptr %i.dk, ptr %3, align 8
  %i.dl = load i64, ptr %i.b, align 8
  store i64 %i.dl, ptr %i.s, align 8
  br label %._crit_edge.i.i126

._crit_edge.i.i126:                               ; preds = %.noexc129, %bb.an
  %i.dm = phi ptr [ %i.dk, %.noexc129 ], [ %i.s, %bb.an ] ; 2 uses
  switch i64 %i.di, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %bb.aq
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i126
  %i.dn = load i8, ptr %i.dg, align 1
  store i8 %i.dn, ptr %i.dm, align 1
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i126
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull align 1 %i.dg, i64 %i.di, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i126
  %i.do = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.do, ptr %i.t, align 8
  %i.dp = load ptr, ptr %3, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 0, ptr %i.dq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.dr = load i64, ptr %i.t, align 8             ; 5 uses
  %i.ds = icmp ugt i64 %i.dr, 1023
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.ds, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dt = trunc nuw nsw i64 %i.dr to i32
  store i32 %i.dt, ptr %i.bp, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 1 %.pre, i64 %i.dr, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dr
  store i8 0, ptr %i.dv, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.aq, %bb.ar
  %i.dw = icmp eq ptr %.pre, %i.s
  br i1 %i.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dx = icmp ult i64 %i.dr, 16
  call void @llvm.assume(i1 %i.dx)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dy = load i64, ptr %i.s, align 8
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.dz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ea = load ptr, ptr %2, align 8               ; 4 uses
  store ptr %i.u, ptr %4, align 8
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #23
          to label %.noexc132 unwind label %.loopexit.split-lp532

.noexc132:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ea) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.ec, ptr %i.a, align 8
  %i.ed = icmp ugt i64 %i.ec, 15
  br i1 %i.ed, label %.noexc.i131, label %._crit_edge.i.i130

.noexc.i131:                                      ; preds = %bb.at
  %i.ee = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc133 unwind label %.loopexit531 ; 2 uses

.noexc133:                                        ; preds = %.noexc.i131
  store ptr %i.ee, ptr %4, align 8
  %i.ef = load i64, ptr %i.a, align 8
  store i64 %i.ef, ptr %i.u, align 8
  br label %._crit_edge.i.i130

._crit_edge.i.i130:                               ; preds = %.noexc133, %bb.at
  %i.eg = phi ptr [ %i.ee, %.noexc133 ], [ %i.u, %bb.at ] ; 2 uses
  switch i64 %i.ec, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %._crit_edge.i.i130
  %i.eh = load i8, ptr %i.ea, align 1
  store i8 %i.eh, ptr %i.eg, align 1
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eg, ptr nonnull align 1 %i.ea, i64 %i.ec, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i.i130
  %i.ei = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ei, ptr %i.v, align 8
  %i.ej = load ptr, ptr %4, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei
  store i8 0, ptr %i.ek, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.el = load i64, ptr %i.v, align 8             ; 5 uses
  %i.em = icmp ugt i64 %i.el, 1023
  %.pre1725 = load ptr, ptr %4, align 8           ; 3 uses
  br i1 %i.em, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.en = getelementptr inbounds nuw i8, ptr %i.as, i64 236
  %i.eo = trunc nuw nsw i64 %i.el to i32
  store i32 %i.eo, ptr %i.en, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.as, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ep, ptr align 1 %.pre1725, i64 %i.el, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.el
  store i8 0, ptr %i.eq, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135: ; preds = %bb.aw, %bb.ax
  %i.er = icmp eq ptr %.pre1725, %i.u
  br i1 %i.er, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135
  %i.es = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.es)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135
  %i.et = load i64, ptr %i.u, align 8
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %.pre1725, i64 noundef %i.eu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ev = load ptr, ptr %2, align 8               ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.q
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.ex = load i64, ptr %i.q, align 8
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.preheader

bb.ay:                                            ; preds = %.noexc.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

.loopexit526:                                     ; preds = %.noexc.i127
  %lpad.loopexit528 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp527:                            ; preds = %bb.am
  %lpad.loopexit.split-lp529 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp527, %.loopexit526
  %lpad.phi530 = phi { ptr, i32 } [ %lpad.loopexit528, %.loopexit526 ], [ %lpad.loopexit.split-lp529, %.loopexit.split-lp527 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.bb

.loopexit531:                                     ; preds = %.noexc.i131
  %lpad.loopexit533 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp532:                            ; preds = %bb.as
  %lpad.loopexit.split-lp534 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp532, %.loopexit531
  %lpad.phi535 = phi { ptr, i32 } [ %lpad.loopexit533, %.loopexit531 ], [ %lpad.loopexit.split-lp534, %.loopexit.split-lp532 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn = phi { ptr, i32 } [ %lpad.phi535, %bb.ba ], [ %lpad.phi530, %bb.az ] ; 2 uses
  %i.fa = load ptr, ptr %2, align 8               ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.q
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.bb
  %i.fc = load i64, ptr %i.q, align 8
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.ez, %bb.ay ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.thread

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149: ; preds = %bb.ac
  %i.fe = load ptr, ptr %i.w, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.x, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.x, ptr noundef nonnull align 1 dereferenceable(11) @.str.12, i64 11, i1 false)
  store i64 11, ptr %i.y, align 8
  store i8 0, ptr %i.ab, align 1
  store i32 11, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.fh, ptr noundef nonnull align 1 dereferenceable(11) %i.fi, i64 11, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 15
  store i8 0, ptr %i.fj, align 1
  %.pre1726 = load ptr, ptr %5, align 8           ; 2 uses
  %i.fk = icmp eq ptr %.pre1726, %i.x
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149
  %i.fl = load i64, ptr %i.x, align 8
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %.pre1726, i64 noundef %i.fm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
end_hunk_0
