inline.NumInlined: 17819
inline.NumDeleted: 4456
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN5osgeo4proj2io7WKTNode10createFromERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmiRm:bb.a
  %i.dv = phi i64 [ %i.aa, %.lr.ph.i189 ], [ %.val161, %.split ], [ %i.do, %bb.ag ]
  %.0.lcssa.i188 = phi i64 [ %.01.i190, %.lr.ph.i189 ], [ %.0.lcssa.i, %.split ], [ %i.dn, %bb.ag ] ; 6 uses
  %i.dw = icmp eq i64 %.0.lcssa.i188, %i.dv
  br i1 %i.dw, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit193.thread, label %bb.am

_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit193.thread: ; preds = %bb.ah, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit193
  %i.dx = icmp eq i64 %2, 0
  %i.dy = call ptr @__cxa_allocate_exception(i64 40) #41 ; 6 uses
  br i1 %i.dx, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit193.thread
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.dy, ptr noundef nonnull @.str.26)
          to label %.invoke unwind label %bb.aj

.invoke:                                          ; preds = %bb.ai, %bb.ak
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.dy, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.dy, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %.cont unwind label %.loopexit.split-lp266

.cont:                                            ; preds = %.invoke
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dy) #41
  br label %.body

bb.ak:                                            ; preds = %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit193.thread
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.dy, ptr noundef nonnull @.str.27)
          to label %.invoke unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dy) #41
  br label %.body

bb.am:                                            ; preds = %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit193
  %i.eb = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #43
          to label %.noexc198 unwind label %bb.aq ; 6 uses

.noexc198:                                        ; preds = %bb.am
  invoke void @_ZN5osgeo4proj2io7WKTNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS3_EED2Ev.exit unwind label %bb.an, !noalias !156

bb.an:                                            ; preds = %.noexc198
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 8) #44, !noalias !156
  br label %.body

_ZNSt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS3_EED2Ev.exit: ; preds = %.noexc198
  %i.ed = ptrtoint ptr %i.eb to i64
  store i64 %i.ed, ptr %0, align 8, !tbaa !128
  %.not131 = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !14    ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %.0.lcssa.i188
  %.pre321 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !19 ; 2 uses
  br i1 %.not131, label %_ZNSt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS3_EED2Ev.exit._crit_edge, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS3_EED2Ev.exit
  switch i8 %.pre321, label %bb.ar [
    i8 44, label %bb.ap
    i8 93, label %bb.bl
    i8 41, label %bb.bl
    i8 91, label %bb.au
    i8 40, label %bb.au
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ee = add i64 %.0.lcssa.i188, 1
  br label %bb.bl

bb.aq:                                            ; preds = %bb.am
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS3_EED2Ev.exit._crit_edge: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS3_EED2Ev.exit
  switch i8 %.pre321, label %bb.ar [
    i8 91, label %bb.au
    i8 40, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.ao, %_ZNSt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS3_EED2Ev.exit._crit_edge
  %i.eg = call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.eg, ptr noundef nonnull @.str.26)
          to label %.invoke385 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.eg) #41
  br label %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i233

bb.at:                                            ; preds = %.invoke385
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i233

bb.au:                                            ; preds = %bb.ao, %bb.ao, %_ZNSt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS3_EED2Ev.exit._crit_edge, %_ZNSt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS3_EED2Ev.exit._crit_edge
  %i.ej = add i64 %.0.lcssa.i188, 1               ; 3 uses
  %.val157 = load i64, ptr %i.g, align 8          ; 5 uses
  %i.ek = icmp ult i64 %i.ej, %.val157
  br i1 %i.ek, label %.lr.ph.i203, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit207

.lr.ph.i203:                                      ; preds = %bb.au, %bb.av
  %.01.i204 = phi i64 [ %i.ep, %bb.av ], [ %i.ej, %bb.au ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.pre, i64 %.01.i204
  %i.em = load i8, ptr %i.el, align 1, !tbaa !19
  %i.en = zext i8 %i.em to i32
  %i.eo = call i32 @isspace(i32 noundef %i.en) #45
  %.not.i205 = icmp eq i32 %i.eo, 0
  br i1 %.not.i205, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit207, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i203
  %i.ep = add i64 %.01.i204, 1                    ; 2 uses
  %exitcond.not.i206 = icmp eq i64 %i.ep, %.val157
  br i1 %exitcond.not.i206, label %.critedge4.thread, label %.lr.ph.i203, !llvm.loop !148

_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit207: ; preds = %.lr.ph.i203, %bb.au
  %.0.lcssa.i202 = phi i64 [ %i.ej, %bb.au ], [ %.01.i204, %.lr.ph.i203 ] ; 3 uses
  %i.eq = icmp ult i64 %.0.lcssa.i202, %.val157
  br i1 %i.eq, label %.lr.ph296, label %.critedge4

.lr.ph296:                                        ; preds = %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit207
  %i.er = add nsw i32 %3, 1
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph296, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220
  %i.es = phi ptr [ %.pre, %.lr.ph296 ], [ %.val154, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220 ] ; 3 uses
  %i.et = phi i64 [ %.val157, %.lr.ph296 ], [ %.val155, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220 ] ; 2 uses
  %.3295 = phi i64 [ %.0.lcssa.i202, %.lr.ph296 ], [ %.4, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220 ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %.3295
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !19
  switch i8 %i.ev, label %bb.ax [
    i8 93, label %.critedge4
    i8 41, label %.critedge4
  ]

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  invoke void @_ZN5osgeo4proj2io7WKTNode10createFromERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmiRm(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.29") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.3295, i32 noundef %i.er, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ay unwind label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.ew = load ptr, ptr %i.eb, align 8, !tbaa !130 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !140 ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 48 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !144
  %.not.i.i.i = icmp eq ptr %i.ey, %i.fa
  br i1 %.not.i.i.i, label %bb.az, label %_ZN5osgeo4proj2io7WKTNode8addChildEON7dropbox6oxygen2nnISt10unique_ptrIS2_St14default_deleteIS2_EEEE.exit.thread

_ZN5osgeo4proj2io7WKTNode8addChildEON7dropbox6oxygen2nnISt10unique_ptrIS2_St14default_deleteIS2_EEEE.exit.thread: ; preds = %bb.ay
  %i.fb = load i64, ptr %9, align 8, !tbaa !128
  store i64 %i.fb, ptr %i.ey, align 8, !tbaa !128
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fc, ptr %i.ex, align 8, !tbaa !140
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit

bb.az:                                            ; preds = %bb.ay
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 32 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !138 ; 10 uses
  %i.ff = ptrtoint ptr %i.ey to i64               ; 3 uses
  %i.fg = ptrtoint ptr %i.fe to i64               ; 4 uses
  %i.fh = sub i64 %i.ff, %i.fg                    ; 3 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775800
  br i1 %i.fi, label %bb.ba, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.692) #42
          to label %.noexc242 unwind label %.loopexit.split-lp

.noexc242:                                        ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.az
  %i.fj = ashr exact i64 %i.fh, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = call i64 @llvm.umin.i64(i64 %i.fk, i64 1152921504606846975)
  %i.fn = select i1 %i.fl, i64 1152921504606846975, i64 %i.fm ; 3 uses
  %.not.i.i241 = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %.not.i.i241)
  %i.fo = shl nuw nsw i64 %i.fn, 3
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #43
          to label %.noexc243 unwind label %.loopexit ; 10 uses

.noexc243:                                        ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fh
  %i.fr = load i64, ptr %9, align 8, !tbaa !128
  store i64 %i.fr, ptr %i.fq, align 8, !tbaa !128
  %.not10.i.i.i.i = icmp eq ptr %i.fe, %i.ey
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc243
  %10 = add i64 %i.ff, -8
  %11 = sub i64 %10, %i.fg                        ; 2 uses
  %i.fs = lshr i64 %11, 3
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader415, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.fp, i64 8
  %i.fu = add i64 %i.ff, -8
  %i.fv = sub i64 %i.fu, %i.fg
  %i.fw = and i64 %i.fv, -8                       ; 2 uses
  %scevgep408 = getelementptr i8, ptr %scevgep, i64 %i.fw
  %scevgep409 = getelementptr i8, ptr %i.fe, i64 8
  %scevgep410 = getelementptr i8, ptr %scevgep409, i64 %i.fw
  %bound0 = icmp ult ptr %i.fp, %scevgep410
  %bound1 = icmp ult ptr %i.fe, %scevgep408
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader415, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ft, 4611686018427387900     ; 3 uses
  %i.fx = shl i64 %n.vec, 3                       ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fp, i64 %i.fx  ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fe, i64 %i.fx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ga = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fp, i64 %i.ga ; 2 uses
  %next.gep411 = getelementptr i8, ptr %i.fe, i64 %i.ga ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.gb = getelementptr i8, ptr %next.gep411, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep411, align 8, !tbaa !128, !alias.scope !164, !noalias !159
  %wide.load412 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !128, !alias.scope !164, !noalias !159
  %i.gc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !128, !alias.scope !167, !noalias !164
  store <2 x i64> %wide.load412, ptr %i.gc, align 8, !tbaa !128, !alias.scope !167, !noalias !164
  %i.gd = getelementptr i8, ptr %next.gep411, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep411, align 8, !tbaa !128, !alias.scope !164, !noalias !159
  store <2 x ptr> splat (ptr null), ptr %i.gd, align 8, !tbaa !128, !alias.scope !164, !noalias !159
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ft, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i.preheader415

.lr.ph.i.i.i.i.preheader415:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.fp, %vector.memcheck ], [ %i.fp, %.lr.ph.i.i.i.i.preheader ], [ %i.fy, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.fe, %vector.memcheck ], [ %i.fe, %.lr.ph.i.i.i.i.preheader ], [ %i.fz, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader415, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader415 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.gg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader415 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.gf = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !128, !alias.scope !162, !noalias !159
  store i64 %i.gf, ptr %.012.i.i.i.i, align 8, !tbaa !128, !alias.scope !159, !noalias !162
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !128, !alias.scope !162, !noalias !159
  %i.gg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gg, %i.ey
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !172

_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc243
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fp, %.noexc243 ], [ %i.fy, %middle.block ], [ %i.gh, %.lr.ph.i.i.i.i ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.fe, null
  br i1 %.not.i23.i, label %_ZN5osgeo4proj2io7WKTNode8addChildEON7dropbox6oxygen2nnISt10unique_ptrIS2_St14default_deleteIS2_EEEE.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i
  %i.gj = load ptr, ptr %i.ez, align 8, !tbaa !144
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = sub i64 %i.gk, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.gl) #44
  br label %_ZN5osgeo4proj2io7WKTNode8addChildEON7dropbox6oxygen2nnISt10unique_ptrIS2_St14default_deleteIS2_EEEE.exit

_ZN5osgeo4proj2io7WKTNode8addChildEON7dropbox6oxygen2nnISt10unique_ptrIS2_St14default_deleteIS2_EEEE.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22.i, %bb.bb
  store ptr %i.fp, ptr %i.fd, align 8, !tbaa !138
  store ptr %i.gi, ptr %i.ex, align 8, !tbaa !140
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fn
  store ptr %i.gm, ptr %i.ez, align 8, !tbaa !144
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit: ; preds = %_ZN5osgeo4proj2io7WKTNode8addChildEON7dropbox6oxygen2nnISt10unique_ptrIS2_St14default_deleteIS2_EEEE.exit, %_ZN5osgeo4proj2io7WKTNode8addChildEON7dropbox6oxygen2nnISt10unique_ptrIS2_St14default_deleteIS2_EEEE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.gn = load i64, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %.val154 = load ptr, ptr %1, align 8            ; 5 uses
  %.val155 = load i64, ptr %i.g, align 8          ; 8 uses
  %i.go = icmp ult i64 %i.gn, %.val155
  br i1 %i.go, label %.lr.ph.i210, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit214

.lr.ph.i210:                                      ; preds = %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit, %bb.bc
  %.01.i211 = phi i64 [ %i.gt, %bb.bc ], [ %i.gn, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.val154, i64 %.01.i211
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !19
  %i.gr = zext i8 %i.gq to i32
  %i.gs = call i32 @isspace(i32 noundef %i.gr) #45
  %.not.i212 = icmp eq i32 %i.gs, 0
  br i1 %.not.i212, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit214, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i210
  %i.gt = add i64 %.01.i211, 1                    ; 2 uses
  %exitcond.not.i213 = icmp eq i64 %i.gt, %.val155
  br i1 %exitcond.not.i213, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220.thread, label %.lr.ph.i210, !llvm.loop !148

_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit214: ; preds = %.lr.ph.i210, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit
  %.0.lcssa.i209 = phi i64 [ %i.gn, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit ], [ %.01.i211, %.lr.ph.i210 ] ; 5 uses
  %i.gu = icmp ult i64 %.0.lcssa.i209, %.val155
  br i1 %i.gu, label %bb.bd, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220

bb.bd:                                            ; preds = %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit214
  %i.gv = getelementptr inbounds nuw i8, ptr %.val154, i64 %.0.lcssa.i209
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !19
  %i.gx = icmp eq i8 %i.gw, 44
  br i1 %i.gx, label %bb.be, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220

bb.be:                                            ; preds = %bb.bd
  %i.gy = add nuw i64 %.0.lcssa.i209, 1           ; 3 uses
  %i.gz = icmp ult i64 %i.gy, %.val155
  br i1 %i.gz, label %.lr.ph.i216, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220

.lr.ph.i216:                                      ; preds = %bb.be, %bb.bf
  %.01.i217 = phi i64 [ %i.he, %bb.bf ], [ %i.gy, %bb.be ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.val154, i64 %.01.i217
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !19
  %i.hc = zext i8 %i.hb to i32
  %i.hd = call i32 @isspace(i32 noundef %i.hc) #45
  %.not.i218 = icmp eq i32 %i.hd, 0
  br i1 %.not.i218, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i216
  %i.he = add i64 %.01.i217, 1                    ; 2 uses
  %exitcond.not.i219 = icmp eq i64 %i.he, %.val155
  br i1 %exitcond.not.i219, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220.thread, label %.lr.ph.i216, !llvm.loop !148

bb.bg:                                            ; preds = %bb.ax
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit223

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp:                               ; preds = %bb.ba
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.hg = load ptr, ptr %9, align 8, !tbaa !128   ; 3 uses
  %.not.i.i221 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i221, label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit223, label %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i222

_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i222: ; preds = %bb.bh
  call void @_ZN5osgeo4proj2io7WKTNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hg) #41, !inline_history !173
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef 8) #44, !inline_history !173
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit223

_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit223: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i222, %bb.bh, %bb.bg
  %.pn = phi { ptr, i32 } [ %i.hf, %bb.bg ], [ %lpad.phi, %bb.bh ], [ %lpad.phi, %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i222 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i233

_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220.thread: ; preds = %bb.bc, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %.critedge4.thread

_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220: ; preds = %.lr.ph.i216, %bb.be, %bb.bd, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit214
  %.4 = phi i64 [ %i.gy, %bb.be ], [ %.0.lcssa.i209, %bb.bd ], [ %.0.lcssa.i209, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit214 ], [ %.01.i217, %.lr.ph.i216 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %i.hh = icmp ult i64 %.4, %.val155
  br i1 %i.hh, label %bb.aw, label %.critedge4, !llvm.loop !174

.critedge4:                                       ; preds = %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220, %bb.aw, %bb.aw, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit207
  %i.hi = phi ptr [ %.pre, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit207 ], [ %i.es, %bb.aw ], [ %.val154, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220 ], [ %i.es, %bb.aw ]
  %.3.lcssa = phi i64 [ %.0.lcssa.i202, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit207 ], [ %.3295, %bb.aw ], [ %.4, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220 ], [ %.3295, %bb.aw ] ; 3 uses
  %.lcssa272 = phi i64 [ %.val157, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit207 ], [ %i.et, %bb.aw ], [ %.val155, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220 ], [ %i.et, %bb.aw ]
  %i.hj = icmp eq i64 %.3.lcssa, %.lcssa272
  br i1 %i.hj, label %.critedge4.thread, label %bb.bi

bb.bi:                                            ; preds = %.critedge4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.3.lcssa
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !19
  switch i8 %i.hl, label %.critedge4.thread [
    i8 93, label %bb.bk
    i8 41, label %bb.bk
  ]

.critedge4.thread:                                ; preds = %bb.av, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit220.thread, %bb.bi, %.critedge4
  %i.hm = call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.hm, ptr noundef nonnull @.str.28)
          to label %.invoke385 unwind label %bb.bj
end_hunk_0
begin_hunk_1_@_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEED2Ev:bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN5osgeo4proj2ioL22ThrowNotEnoughChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  invoke void @_ZN5osgeo4proj8internal6concatEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5osgeo4proj4util9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.a, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.g unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !19
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br i1 %.0, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br i1 %.0, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #41
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn8 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io9WKTParser7Private15buildPropertiesERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEEbb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 10 uses
  %5 = alloca %"class.std::shared_ptr.118", align 8 ; 12 uses
  %6 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %7 = alloca %"class.std::shared_ptr.118", align 8 ; 8 uses
  %8 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %9 = alloca %"class.std::shared_ptr.118", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::unique_ptr.89", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.dropbox::oxygen::nn.97", align 8 ; 14 uses
  %14 = alloca %"class.std::shared_ptr.69", align 8 ; 7 uses
  %15 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %16 = alloca %"class.dropbox::oxygen::nn.88", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 39 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 9 uses
  %22 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 16 ; 7 uses
  %23 = alloca %"class.dropbox::oxygen::nn.88", align 16 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.dropbox::oxygen::nn.121", align 8 ; 7 uses
  %26 = alloca %"class.dropbox::oxygen::nn.125", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 16 ; 7 uses
  %32 = alloca %"class.dropbox::oxygen::nn.88", align 16 ; 7 uses
  %33 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.dropbox::oxygen::nn.97", align 8 ; 10 uses
  %36 = alloca %"class.std::shared_ptr.134", align 8 ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %38 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %39 = alloca %"class.dropbox::oxygen::nn.137", align 8 ; 7 uses
  %40 = alloca %"class.std::shared_ptr.134", align 8 ; 8 uses
  %41 = alloca %"class.dropbox::oxygen::nn.137", align 8 ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !233
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !234
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.j, 8184
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16ParsingExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull @.str.35)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #41
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.n = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #43, !noalias !235 ; 4 uses
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_ZSt11make_uniqueIN5osgeo4proj4util11PropertyMapEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.f, !noalias !235

common.resume:                                    ; preds = %bb.d, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.m, %bb.d ], [ %.pn121.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ], [ %i.bp, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 8) #44, !noalias !235
  br label %common.resume

_ZSt11make_uniqueIN5osgeo4proj4util11PropertyMapEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.e
  store ptr %i.n, ptr %10, align 8, !tbaa !238, !alias.scope !235
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !233  ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.p, %i.r
  %i.s = ptrtoint ptr %i.n to i64                 ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %_ZSt11make_uniqueIN5osgeo4proj4util11PropertyMapEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store i64 %i.s, ptr %i.p, align 8, !tbaa !238
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.e, align 8, !tbaa !233
  br label %_ZNSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS3_EED2Ev.exit

bb.g:                                             ; preds = %_ZSt11make_uniqueIN5osgeo4proj4util11PropertyMapEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !234  ; 10 uses
  %i.v = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.692) #42
          to label %.noexc331 unwind label %bb.k

.noexc331:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i329 = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i329)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #43
          to label %.noexc332 unwind label %bb.k  ; 10 uses

.noexc332:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i64 %i.s, ptr %i.ag, align 8, !tbaa !238
  %.not10.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc332
  %43 = add i64 %i.v, -8
  %44 = sub i64 %43, %i.w                         ; 2 uses
  %i.ah = lshr i64 %44, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %44, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader536, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aj = add i64 %i.v, -8
  %i.ak = sub i64 %i.aj, %i.w
  %i.al = and i64 %i.ak, -8
  %i.am = add i64 %i.al, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.am
  %scevgep527 = getelementptr i8, ptr %i.u, i64 %i.am
  %bound0 = icmp ult ptr %i.af, %scevgep527
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader536, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an  ; 2 uses
  %i.ap = getelementptr i8, ptr %i.u, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.aq ; 2 uses
  %next.gep528 = getelementptr i8, ptr %i.u, i64 %i.aq ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.ar = getelementptr i8, ptr %next.gep528, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep528, align 8, !tbaa !238, !alias.scope !246, !noalias !241
  %wide.load529 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !238, !alias.scope !246, !noalias !241
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !238, !alias.scope !249, !noalias !246
  store <2 x i64> %wide.load529, ptr %i.as, align 8, !tbaa !238, !alias.scope !249, !noalias !246
  %i.at = getelementptr i8, ptr %next.gep528, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep528, align 8, !tbaa !238, !alias.scope !246, !noalias !241
  store <2 x ptr> splat (ptr null), ptr %i.at, align 8, !tbaa !238, !alias.scope !246, !noalias !241
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader536

.lr.ph.i.i.i.i.preheader536:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader536, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader536 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader536 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.av = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !238, !alias.scope !244, !noalias !241
  store i64 %i.av, ptr %.012.i.i.i.i, align 8, !tbaa !238, !alias.scope !241, !noalias !244
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !238, !alias.scope !244, !noalias !241
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i330 = icmp eq ptr %i.aw, %i.p
  br i1 %.not.i.i.i.i330, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !252

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc332
  %.0.lcssa.i.i.i.i = phi ptr [ %i.af, %.noexc332 ], [ %i.ao, %middle.block ], [ %i.ax, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.u, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.x) #44
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.i
  store ptr %i.af, ptr %i.d, align 8, !tbaa !234
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !233
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.az, ptr %i.q, align 8, !tbaa !240
  br label %_ZNSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread
  %i.ba = phi ptr [ %i.p, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread ], [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !238 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.bc, ptr %11, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !17
  store i8 0, ptr %i.bc, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.be, ptr %12, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !17
  store i8 0, ptr %i.be, align 8, !tbaa !19
  %i.bg = load ptr, ptr %1, align 8, !tbaa !128
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !130 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  invoke void @_ZN5osgeo4proj4util17ArrayOfBaseObject6createEv(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.97") align 8 %13)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS3_EED2Ev.exit
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !132 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 5 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !132 ; 2 uses
  %.not362373 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not362373, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %bb.am, %bb.j
  br i1 %3, label %bb.an, label %bb.ea

bb.k:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.h
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %common.resume

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS3_EED2Ev.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.iw

bb.m:                                             ; preds = %.lr.ph, %bb.am
  %.sroa.0340.0374 = phi ptr [ %i.bj, %.lr.ph ], [ %i.ds, %bb.am ] ; 3 uses
  %i.br = load ptr, ptr %.sroa.0340.0374, align 8, !tbaa !128
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !130 ; 2 uses
  %i.bt = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants2IDB5cxx11E) #41
  br i1 %i.bt, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants9AUTHORITYB5cxx11E) #41
  br i1 %i.bu, label %bb.o, label %bb.am

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private7buildIdERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEESE_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %14, ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0340.0374, i1 noundef zeroext true, i1 noundef zeroext %2)
          to label %bb.p unwind label %bb.ac

bb.p:                                             ; preds = %bb.o
  %i.bv = load ptr, ptr %14, align 8, !tbaa !253  ; 4 uses
  %.not368 = icmp eq ptr %i.bv, null
  %.pre387 = load ptr, ptr %i.bn, align 8, !tbaa !65 ; 5 uses
  br i1 %.not368, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %13, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  store ptr %i.bv, ptr %16, align 8, !tbaa !253
  store ptr %.pre387, ptr %i.bm, align 8, !tbaa !65
  %.not.i.i.i.i = icmp eq ptr %.pre387, null
  br i1 %.not.i.i.i.i, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata10IdentifierEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre387, i64 8 ; 3 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread505

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread505: ; preds = %bb.r
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !70
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !70
  br label %bb.s

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.r
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4 ; 0 uses
  %.pr344.pre = load ptr, ptr %i.bm, align 8, !tbaa !65 ; 2 uses
  %.pre = load ptr, ptr %16, align 8, !tbaa !253  ; 2 uses
  %.not.i.i.i.i.i127 = icmp eq ptr %.pr344.pre, null
  br i1 %.not.i.i.i.i.i127, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata10IdentifierEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread505, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %.pr344508 = phi ptr [ %.pre387, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread505 ], [ %.pr344.pre, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ] ; 3 uses
  %i.cc = phi ptr [ %i.bv, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread505 ], [ %.pre, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.pr344508, i64 8 ; 3 uses
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !70
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !70
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata10IdentifierEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

bb.u:                                             ; preds = %bb.s
  %i.ch = atomicrmw volatile add ptr %i.cd, i32 1 acq_rel, align 4 ; 0 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb:bb.a
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.de, %bb.r ], [ %i.dh, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.020.i.i.i.i.i64, align 8, !tbaa !18
  %i.di = add i32 %.sroa.516.023.i.i.i.i.i, 1
  %i.dj = icmp eq i32 %.sroa.516.023.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i68 = select i1 %i.dj, i64 8, i64 0
  %spec.select.i.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i68
  %spec.select19.i.i.i.i.i70 = select i1 %i.dj, i32 0, i32 %i.di
  %i.dk = add i32 %.sroa.59.021.i.i.i.i.i63, 1
  %i.dl = icmp eq i32 %.sroa.59.021.i.i.i.i.i63, 63 ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i71 = select i1 %i.dl, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i.i.i.i64, i64 %.sroa.07.1.idx.i.i.i.i.i71 ; 2 uses
  %.sroa.59.1.i.i.i.i.i73 = select i1 %i.dl, i32 0, i32 %i.dk ; 2 uses
  %i.dm = add nsw i64 %.024.i.i.i.i.i62, -1
  %i.dn = icmp sgt i64 %.024.i.i.i.i.i62, 1
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !2535

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.07.0.lcssa.i.i.i.i.i58 = phi ptr [ %.sroa.083.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.59.0.lcssa.i.i.i.i.i59 = phi i32 [ %.sroa.684.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i73, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i74 = icmp eq ptr %i.au, null
  br i1 %.not.i74, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.do = ashr exact i64 %i.aw, 3
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dp
  tail call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.aw) #44
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.dr = lshr i64 %i.bf, 6
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dr
  store ptr %i.ds, ptr %i.c, align 8, !tbaa !97
  store ptr %i.bi, ptr %0, align 8
  %.sroa.588.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.588.0..sroa_idx89, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i58, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i59, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.692) #42
  unreachable

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !64
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !64
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !70
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !70
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit: ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2539)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !64, !alias.scope !2539, !noalias !2536
  store ptr null, ptr %i.z, align 8, !tbaa !65, !alias.scope !2539, !noalias !2536
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !64, !alias.scope !2536, !noalias !2539
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !311, !alias.scope !2539, !noalias !2536
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i, !llvm.loop !2541

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit: ; preds = %.lr.ph.i.i.i, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2545)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !64, !alias.scope !2545, !noalias !2542
  store ptr null, ptr %i.ae, align 8, !tbaa !65, !alias.scope !2545, !noalias !2542
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !64, !alias.scope !2542, !noalias !2545
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !311, !alias.scope !2545, !noalias !2542
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2541

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !105
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #44
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !56
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !55
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !105
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !138    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.692) #42
  unreachable

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !128
  store i64 %i.r, ptr %i.q, align 8, !tbaa !128
  store ptr null, ptr %2, align 8, !tbaa !128
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.m, -8
  %4 = sub i64 %3, %i.e                           ; 2 uses
  %i.s = lshr i64 %4, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = add i64 %i.m, -8
  %i.v = sub i64 %i.u, %i.e
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2550)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !128, !alias.scope !2552, !noalias !2547
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !128, !alias.scope !2552, !noalias !2547
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !128, !alias.scope !2555, !noalias !2552
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !128, !alias.scope !2555, !noalias !2552
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !128, !alias.scope !2552, !noalias !2547
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !128, !alias.scope !2552, !noalias !2547
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !2557

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2550)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !128, !alias.scope !2550, !noalias !2547
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !128, !alias.scope !2547, !noalias !2550
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !128, !alias.scope !2550, !noalias !2547
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i, !llvm.loop !2558

_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %5 = add i64 %i.d, -8
  %6 = sub i64 %5, %i.m                           ; 2 uses
  %i.ak = lshr i64 %6, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %6, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !128, !alias.scope !2564, !noalias !2559
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !128, !alias.scope !2564, !noalias !2559
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !128, !alias.scope !2567, !noalias !2564
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !128, !alias.scope !2567, !noalias !2564
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !128, !alias.scope !2564, !noalias !2559
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !128, !alias.scope !2564, !noalias !2559
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !2569

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.al, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !128, !alias.scope !2562, !noalias !2559
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !128, !alias.scope !2559, !noalias !2562
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !128, !alias.scope !2562, !noalias !2559
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2570

_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !144
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #44
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !138
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !140
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !144
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj2io9WKTParser7PrivateD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !238 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj4util11PropertyMapEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5osgeo4proj4util11PropertyMapEEclEPS3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 8) #44
  br label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj4util11PropertyMapEEclEPS3_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2571

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !234
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #44
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.o, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !68
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41, !inline_history !625
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41, !inline_history !625
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i1 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !65 ; 8 uses
  %.not.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i2, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.af, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !68
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !8
end_hunk_2
