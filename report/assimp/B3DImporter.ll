Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/B3DImporter?download=true
inline.NumInlined: 1740
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11B3DImporter8ReadBRUSEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

bb.aa:                                            ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bq
  %.0.copyload.i70 = load i32, ptr %i.cg, align 1
  store i64 %i.by, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.ch = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %bb.ab unwind label %bb.ah     ; 11 uses

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.ch, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.ci = load i64, ptr %i.z, align 8             ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.aa, i8 0, i64 1024, i1 false)
  %i.ck = and i64 %i.ci, 4294966272
  %.not.i = icmp eq i64 %i.ck, 0
  %spec.select.i = select i1 %.not.i, i32 %i.cj, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %18, align 4
  %i.cl = load ptr, ptr %15, align 8
  %i.cm = zext i32 %spec.select.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 1 %i.cl, i64 %i.cm, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  store i8 0, ptr %i.cn, align 1
  %i.co = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cp = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull %18, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0)
          to label %bb.ad unwind label %bb.aj     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cq = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull %16, i32 noundef 12, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK10aiVector3tIfEjPKcjj.exit unwind label %bb.aj ; 0 uses

_ZN10aiMaterial11AddPropertyEPK10aiVector3tIfEjPKcjj.exit: ; preds = %bb.ad
  %i.cr = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit unwind label %bb.aj ; 0 uses

_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit:      ; preds = %_ZN10aiMaterial11AddPropertyEPK10aiVector3tIfEjPKcjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  store float %.0.copyload.i54, ptr %19, align 4
  store float %.0.copyload.i54, ptr %i.ab, align 4
  store float %.0.copyload.i54, ptr %i.ac, align 4
  %i.cs = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull %19, i32 noundef 12, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit unwind label %bb.ak ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit: ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ct = fmul float %.0.copyload.i54, 1.280000e+02
  store float %i.ct, ptr %i.b, align 4
  %i.cu = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit82:    ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit
  %i.cv = and i32 %.0.copyload.i70, 16
  %.not35 = icmp eq i32 %i.cv, 0
  br i1 %.not35, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 1, ptr %i.c, align 4
  %i.cw = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.al ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.am

bb.af:                                            ; preds = %bb.j
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ag:                                            ; preds = %bb.x, %bb.t, %bb.p, %bb.l
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.aa
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ai:                                            ; preds = %bb.ab
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #25
  br label %bb.bh

bb.aj:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPK10aiVector3tIfEjPKcjj.exit, %bb.ad, %bb.ac
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ak:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.al:                                            ; preds = %bb.ae
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.body91

bb.am:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit, %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit82
  br i1 %.not123, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.am
  %i.de = load i64, ptr %i.d, align 8             ; 2 uses
  %i.df = add i64 %i.de, 4                        ; 2 uses
  %i.dg = load ptr, ptr %i.h, align 8
  %i.dh = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = icmp ugt i64 %i.df, %i.dk
  br i1 %i.dl, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %.lr.ph.preheader
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.de
  %.0.copyload.i86.peel = load i32, ptr %i.dm, align 1 ; 4 uses
  store i64 %i.df, ptr %i.d, align 8
  %i.dn = icmp slt i32 %.0.copyload.i86.peel, -1
  br i1 %i.dn, label %.loopexit136, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.do = icmp sgt i32 %.0.copyload.i86.peel, -1
  br i1 %i.do, label %bb.ap, label %.thread.peel

bb.ap:                                            ; preds = %bb.ao
  %i.dp = load ptr, ptr %i.ae, align 8
  %i.dq = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = lshr exact i64 %i.dt, 5
  %i.dv = trunc i64 %i.du to i32
  %.not36.peel = icmp slt i32 %.0.copyload.i86.peel, %i.dv
  br i1 %.not36.peel, label %bb.aq, label %.loopexit136

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.dw = zext nneg i32 %.0.copyload.i86.peel to i64
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i64, ptr %i.dy, align 8            ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.af, i8 0, i64 1024, i1 false)
  %i.eb = and i64 %i.dz, 4294966272
  %.not.i97.peel = icmp eq i64 %i.eb, 0
  %spec.select.i98.peel = select i1 %.not.i97.peel, i32 %i.ea, i32 1023 ; 2 uses
  store i32 %spec.select.i98.peel, ptr %22, align 4
  %i.ec = load ptr, ptr %i.dx, align 8
  %i.ed = zext i32 %spec.select.i98.peel to i64   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 1 %i.ec, i64 %i.ed, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ed
  store i8 0, ptr %i.ee, align 1
  %i.ef = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull %22, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 0)
          to label %bb.ar unwind label %bb.be     ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %.thread.peel

.thread.peel:                                     ; preds = %bb.ar, %bb.ao
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %.thread.peel
  %.pre = load i64, ptr %i.d, align 8
  %.pre143 = load ptr, ptr %i.h, align 8
  %.pre144 = load ptr, ptr %i.g, align 8          ; 2 uses
  %i.eg = ptrtoint ptr %.pre143 to i64
  %i.eh = ptrtoint ptr %.pre144 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  br label %.lr.ph

._crit_edge:                                      ; preds = %.thread, %.thread.peel, %bb.am
  %i.ej = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.ek = load ptr, ptr %i.ai, align 8
  %.not.i84 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i84, label %bb.as, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread: ; preds = %._crit_edge
  store i64 %i.co, ptr %i.ej, align 8
  %i.el = load ptr, ptr %i.ah, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.em, ptr %i.ah, align 8
  br label %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit

bb.as:                                            ; preds = %._crit_edge
  %i.en = load ptr, ptr %i.ag, align 8            ; 10 uses
  %i.eo = ptrtoint ptr %i.ej to i64               ; 3 uses
  %i.ep = ptrtoint ptr %i.en to i64               ; 4 uses
  %i.eq = sub i64 %i.eo, %i.ep                    ; 3 uses
  %i.er = icmp eq i64 %i.eq, 9223372036854775800
  br i1 %i.er, label %bb.at, label %_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.as
  %i.es = ashr exact i64 %i.eq, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.et = add nsw i64 %.sroa.speculated.i.i, %i.es ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.es
  %i.ev = call i64 @llvm.umin.i64(i64 %i.et, i64 1152921504606846975)
  %i.ew = select i1 %i.eu, i64 1152921504606846975, i64 %i.ev ; 3 uses
  %.not.i.i = icmp ne i64 %i.ew, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.ex = shl nuw nsw i64 %i.ew, 3
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #27
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq
  store i64 %i.co, ptr %i.ez, align 8
  store ptr null, ptr %17, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.en, %i.ej
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc107
  %i.fa = add i64 %i.eo, -8
  %i.fb = sub i64 %i.fa, %i.ep                    ; 2 uses
  %i.fc = lshr i64 %i.fb, 3
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fb, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader211, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ey, i64 8
  %23 = add i64 %i.eo, -8
  %24 = sub i64 %23, %i.ep
  %i.fe = and i64 %24, -8                         ; 2 uses
  %scevgep205 = getelementptr i8, ptr %scevgep, i64 %i.fe
  %scevgep206 = getelementptr i8, ptr %i.en, i64 8
  %scevgep207 = getelementptr i8, ptr %scevgep206, i64 %i.fe
  %bound0 = icmp ult ptr %i.ey, %scevgep207
  %bound1 = icmp ult ptr %i.en, %scevgep205
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader211, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fd, 4611686018427387900     ; 3 uses
  %i.ff = shl i64 %n.vec, 3                       ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ey, i64 %i.ff  ; 2 uses
  %i.fh = getelementptr i8, ptr %i.en, i64 %i.ff
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ey, i64 %i.fi ; 2 uses
  %next.gep208 = getelementptr i8, ptr %i.en, i64 %i.fi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.fj = getelementptr i8, ptr %next.gep208, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep208, align 8, !alias.scope !63
  %wide.load209 = load <2 x i64>, ptr %i.fj, align 8, !alias.scope !63
  %i.fk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !64, !noalias !65
  store <2 x i64> %wide.load209, ptr %i.fk, align 8, !alias.scope !64, !noalias !65
  %i.fl = getelementptr i8, ptr %next.gep208, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep208, align 8, !alias.scope !63
  store <2 x ptr> splat (ptr null), ptr %i.fl, align 8, !alias.scope !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader211

.lr.ph.i.i.i.i.preheader211:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ey, %vector.memcheck ], [ %i.ey, %.lr.ph.i.i.i.i.preheader ], [ %i.fg, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.en, %vector.memcheck ], [ %i.en, %.lr.ph.i.i.i.i.preheader ], [ %i.fh, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader211, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader211 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader211 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.fn = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !62
  store i64 %i.fn, ptr %.012.i.i.i.i, align 8, !alias.scope !61
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !62
  %i.fo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fo, %i.ej
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !58

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc107
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ey, %.noexc107 ], [ %i.fg, %middle.block ], [ %i.fp, %.lr.ph.i.i.i.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.en, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.fr = load ptr, ptr %i.ai, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = sub i64 %i.fs, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.ft) #25
  br label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

.lr.ph:                                           ; preds = %.lr.ph.peel.next, %.thread
  %i.fu = phi i64 [ %i.fv, %.thread ], [ %.pre, %.lr.ph.peel.next ] ; 2 uses
  %.0119 = phi i32 [ %i.gu, %.thread ], [ 1, %.lr.ph.peel.next ]
  %i.fv = add i64 %i.fu, 4                        ; 3 uses
  %i.fw = icmp ugt i64 %i.fv, %i.ei
  br i1 %i.fw, label %.loopexit, label %bb.ax

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %.loopexit
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %.noexc90
  unreachable

bb.aw:                                            ; preds = %.noexc90
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = load ptr, ptr %1, align 8               ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87: ; preds = %bb.aw
  %i.gb = load i64, ptr %i.fz, align 8
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.body91

bb.ax:                                            ; preds = %.lr.ph
  %i.gd = getelementptr inbounds nuw i8, ptr %.pre144, i64 %i.fu
  %.0.copyload.i86 = load i32, ptr %i.gd, align 1 ; 3 uses
  store i64 %i.fv, ptr %i.d, align 8
  %i.ge = icmp slt i32 %.0.copyload.i86, -1
  br i1 %i.ge, label %.loopexit136, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gf = icmp sgt i32 %.0.copyload.i86, -1
  br i1 %i.gf, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  %i.gg = load ptr, ptr %i.ae, align 8
  %i.gh = load ptr, ptr %i.ad, align 8
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = lshr exact i64 %i.gk, 5
  %i.gm = trunc i64 %i.gl to i32
  %.not36 = icmp slt i32 %.0.copyload.i86, %i.gm
  br i1 %.not36, label %.thread, label %.loopexit136

.loopexit136:                                     ; preds = %bb.ap, %bb.an, %bb.az, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %.loopexit136
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %20) #26
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit, %bb.at, %.loopexit
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %.body91

bb.bc:                                            ; preds = %.loopexit136
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.bd:                                            ; preds = %bb.ba
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %20, align 8              ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.bd
  %i.gs = load i64, ptr %i.gq, align 8
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.gn, %bb.bc ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.go, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %.body91

bb.be:                                            ; preds = %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %.body91

.thread:                                          ; preds = %bb.az, %bb.ay
  %i.gu = add nuw nsw i32 %.0119, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gu, %.0.copyload.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !59

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.au
  store ptr %i.ey, ptr %i.ag, align 8
  store ptr %i.fq, ptr %i.ah, align 8
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ew
  store ptr %i.gv, ptr %i.ai, align 8
  br label %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.gw = load ptr, ptr %15, align 8              ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.aj
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit
  %i.gy = load i64, ptr %i.aj, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11B3DImporter8ReadVRTSEv:bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %2, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.j
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

_ZN6Assimp11B3DImporter7ReadIntEv.exit51:         ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit46
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.u
  %.0.copyload.i47 = load i32, ptr %i.am, align 1 ; 3 uses
  store i64 %i.ae, ptr %i.b, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i32 %.0.copyload.i47, ptr %i.an, align 8
  %or.cond = icmp ugt i32 %.0.copyload.i42, 4
  %i.ao = icmp ugt i32 %.0.copyload.i47, 4
  %or.cond41 = or i1 %or.cond, %i.ao
  br i1 %or.cond41, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %8, align 8               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.au = load i64, ptr %i.as, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.n ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aq, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

bb.p:                                             ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit51
  %i.aw = and i32 %.0.copyload.i, 1
  %.not = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not, i32 12, i32 24
  %i.ay = shl i32 %.0.copyload.i, 3
  %i.az = and i32 %i.ay, 16
  %i.ba = add nuw nsw i32 %i.ax, %i.az
  %i.bb = shl nuw nsw i32 %.0.copyload.i42, 2
  %i.bc = mul nuw nsw i32 %i.bb, %.0.copyload.i47
  %i.bd = add nuw nsw i32 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = sub i64 %i.bh, %i.ae                    ; 2 uses
  %i.bj = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bk = udiv i64 %i.bi, %i.bj                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 56                ; 5 uses
  %i.bt = trunc i64 %i.bs to i32
  %sext = shl i64 %i.bs, 32
  %i.bu = ashr exact i64 %sext, 32
  %i.bv = add nsw i64 %i.bu, %i.bk                ; 4 uses
  %i.bw = icmp ugt i64 %i.bv, %i.bs
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bx = sub nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %i.bx)
  br label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit

bb.r:                                             ; preds = %bb.p
  %i.by = icmp ult i64 %i.bv, %i.bs
  br i1 %i.by, label %bb.s, label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %i.bv ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, %i.bz
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp11B3DImporter6VertexES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp11B3DImporter6VertexES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.s
  store ptr %i.bz, ptr %i.bm, align 8
  br label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit: ; preds = %bb.q, %bb.r, %bb.s, %_ZSt8_DestroyIPN6Assimp11B3DImporter6VertexES2_EvT_S4_RSaIT0_E.exit.i.i
  %.not66 = icmp ult i64 %i.bi, %i.bj
  br i1 %.not66, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.t

._crit_edge65:                                    ; preds = %._crit_edge62, %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit
  ret void

bb.t:                                             ; preds = %.lr.ph64, %._crit_edge62
  %.03263 = phi i32 [ 0, %.lr.ph64 ], [ %i.cs, %._crit_edge62 ] ; 2 uses
  %i.cc = add i32 %.03263, %i.bt
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.bl, align 8
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %i.ce, i64 %i.cd ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, i8 0, i64 20, i1 false)
  %i.ch = tail call { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) ; 2 uses
  %.fca.0.extract8 = extractvalue { <2 x float>, float } %i.ch, 0
  %.fca.1.extract9 = extractvalue { <2 x float>, float } %i.ch, 1
  store <2 x float> %.fca.0.extract8, ptr %i.cf, align 4
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store float %.fca.1.extract9, ptr %.sroa.413.0..sroa_idx, align 4
  %i.ci = load i32, ptr %i.t, align 8             ; 2 uses
  %i.cj = and i32 %i.ci, 1
  %.not36 = icmp eq i32 %i.cj, 0
  br i1 %.not36, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ck, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.ck, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store <2 x float> %.fca.0.extract, ptr %i.cl, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  store float %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 4
  %.pre = load i32, ptr %i.t, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cm = phi i32 [ %.pre, %bb.u ], [ %i.ci, %bb.t ]
  %i.cn = and i32 %i.cm, 2
  %.not37 = icmp eq i32 %i.cn, 0
  br i1 %.not37, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = tail call { <2 x float>, <2 x float> } @_ZN6Assimp11B3DImporter8ReadQuatEv(ptr noundef nonnull align 8 dereferenceable(312) %0) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cp = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.4.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  br label %bb.y

._crit_edge62:                                    ; preds = %bb.ac, %bb.x
  %i.cs = add i32 %.03263, 1                      ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp samesign ugt i64 %i.bk, %i.ct
  br i1 %i.cu, label %bb.t, label %._crit_edge65, !llvm.loop !67

bb.y:                                             ; preds = %.lr.ph61, %bb.ac
  %i.cv = phi i32 [ %i.cp, %.lr.ph61 ], [ %i.fo, %bb.ac ]
  %.02959 = phi i32 [ 0, %.lr.ph61 ], [ %i.fp, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.cw = load i32, ptr %i.an, align 8            ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y
  %i.cy = load ptr, ptr %i.f, align 8
  %i.cz = load ptr, ptr %i.e, align 8             ; 5 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 4 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 12 uses
  %wide.trip.count = zext nneg i32 %i.cw to i64   ; 4 uses
  %i.dd = zext i64 %i.dc to i128
  %i.de = add nuw nsw i128 %i.dd, 1
  %i.df = add i64 %.promoted, 4
  %i.dg = zext i64 %i.df to i128                  ; 2 uses
  %i.dh = tail call i128 @llvm.umax.i128(i128 %i.de, i128 %i.dg)
  %i.di = add nuw nsw i128 %i.dh, 3
  %i.dj = sub nsw i128 %i.di, %i.dg
  %i.dk = lshr i128 %i.dj, 2
  %i.dl = add nsw i64 %wide.trip.count, -1
  %i.dm = zext i64 %i.dl to i128
  %i.dn = tail call i128 @llvm.umin.i128(i128 %i.dk, i128 %i.dm)
  %i.do = trunc nuw i128 %i.dn to i64
  %i.dp = add i64 %i.do, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dp, 61
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.es, ptr %i.b, align 8, !alias.scope !74, !noalias !75
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %vector.scevcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %vector.scevcheck ], [ %.promoted, %.lr.ph ], [ %i.el, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.dq = zext i64 %i.dc to i128
  %i.dr = add nuw nsw i128 %i.dq, 1
  %i.ds = add i64 %.promoted, 4
  %i.dt = zext i64 %i.ds to i128                  ; 2 uses
  %umax = tail call i128 @llvm.umax.i128(i128 %i.dr, i128 %i.dt)
  %i.du = add nuw nsw i128 %umax, 3
  %i.dv = sub nsw i128 %i.du, %i.dt
  %i.dw = lshr i128 %i.dv, 2
  %i.dx = add nsw i64 %wide.trip.count, -1
  %i.dy = zext i64 %i.dx to i128
  %umin = tail call i128 @llvm.umin.i128(i128 %i.dw, i128 %i.dy)
  %i.dz = trunc nuw i128 %umin to i64             ; 2 uses
  %mul.result = shl i64 %i.dz, 2
  %mul.overflow = icmp ugt i64 %i.dz, 4611686018427387903
  %i.ea = sub i64 -5, %.promoted
  %i.eb = icmp ult i64 %i.ea, %mul.result
  %i.ec = or i1 %i.eb, %mul.overflow
  br i1 %i.ec, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.cz, i64 %.promoted
  %scevgep92 = getelementptr i8, ptr %i.cz, i64 4
  %10 = zext i64 %i.dc to i128
  %11 = add nuw nsw i128 %10, 1
  %12 = add i64 %.promoted, 4
  %13 = zext i64 %12 to i128                      ; 2 uses
  %umax93 = tail call i128 @llvm.umax.i128(i128 %11, i128 %13)
  %14 = add nuw nsw i128 %umax93, 3
  %15 = sub nsw i128 %14, %13
  %i.ed = lshr i128 %15, 2
  %16 = add nsw i64 %wide.trip.count, -1
  %17 = zext i64 %16 to i128
  %umin94 = tail call i128 @llvm.umin.i128(i128 %i.ed, i128 %17)
  %i.ee = trunc nuw i128 %umin94 to i64
  %i.ef = shl i64 %i.ee, 2
  %i.eg = getelementptr i8, ptr %scevgep92, i64 %.promoted
  %scevgep95 = getelementptr i8, ptr %i.eg, i64 %i.ef
  %bound0 = icmp ult ptr %i.b, %scevgep95
  %bound1 = icmp ult ptr %scevgep, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.eh = and i64 %i.dp, 3                        ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  %i.ej = select i1 %i.ei, i64 4, i64 %i.eh
  %n.vec = sub i64 %i.dp, %i.ej                   ; 3 uses
  %i.ek = shl i64 %n.vec, 2
  %i.el = add i64 %.promoted, %i.ek
  %i.em = add i64 %.promoted, 4
  %i.en = getelementptr i8, ptr %i.cz, i64 %.promoted
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eo = phi i64 [ %i.em, %vector.ph ], [ %i.ev, %vector.body ] ; 2 uses
  %i.ep = shl i64 %index, 2
  %i.eq = getelementptr i8, ptr %i.en, i64 %i.ep  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %wide.load = load <2 x float>, ptr %i.eq, align 1, !alias.scope !75
  %wide.load96 = load <2 x float>, ptr %i.er, align 1, !alias.scope !75
  %i.es = add i64 %i.eo, 12
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store <2 x float> %wide.load, ptr %i.et, align 16
  store <2 x float> %wide.load96, ptr %i.eu, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ev = add i64 %i.eo, 16
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !71

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %.pre68 = load float, ptr %i.ca, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %i.ex = phi float [ %.pre68, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.y ]
  %.not38 = icmp eq i32 %.02959, 0
  br i1 %.not38, label %bb.ab, label %bb.ac

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ey = phi i64 [ %i.ez, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ez = add i64 %i.ey, 4                        ; 3 uses
  %i.fa = icmp ugt i64 %i.ez, %i.dc
  br i1 %i.fa, label %._crit_edge.i.i, label %_ZN6Assimp11B3DImporter9ReadFloatEv.exit

._crit_edge.i.i:                                  ; preds = %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.fb, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.fb, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.fd, align 1
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %1, align 8               ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.fb
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %bb.aa
  %i.fh = load i64, ptr %i.fb, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %common.resume

_ZN6Assimp11B3DImporter9ReadFloatEv.exit:         ; preds = %scalar.ph
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ey
  %.0.copyload.i52 = load float, ptr %i.fj, align 1
  store i64 %i.ez, ptr %i.b, align 8
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %.0.copyload.i52, ptr %i.fk, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !72

bb.ab:                                            ; preds = %._crit_edge
  %i.fl = fsub float 1.000000e+00, %i.ex
  %i.fm = load float, ptr %i.a, align 16
  %i.fn = load float, ptr %i.cb, align 8
  store float %i.fm, ptr %i.cr, align 4
  store float %i.fl, ptr %.sroa.4.0..sroa_idx56, align 4
  store float %i.fn, ptr %.sroa.5.0..sroa_idx, align 4
  %.pre69 = load i32, ptr %i.ad, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  %i.fo = phi i32 [ %.pre69, %bb.ab ], [ %i.cv, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.fp = add nuw nsw i32 %.02959, 1              ; 2 uses
  %i.fq = icmp slt i32 %i.fp, %i.fo
  br i1 %i.fq, label %bb.y, label %._crit_edge62, !llvm.loop !73
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11B3DImporter8ReadTRISEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::unique_ptr.54", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %_ZN6Assimp11B3DImporter7ReadIntEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %8, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn48.pn.pn.pn.pn, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

_ZN6Assimp11B3DImporter7ReadIntEv.exit:           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.r, align 1    ; 4 uses
  store i64 %i.c, ptr %i.a, align 8
  %i.s = icmp eq i32 %.0.copyload.i, -1
  br i1 %i.s, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit
  %i.t = icmp slt i32 %.0.copyload.i, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  %.not = icmp slt i32 %.0.copyload.i, %i.ac
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
end_hunk_1
