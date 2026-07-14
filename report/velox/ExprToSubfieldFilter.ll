inline.NumInlined: 6844
inline.NumDeleted: 2832
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN8facebook5velox4exec26ExprToSubfieldFilterParser10toSubfieldEPKNS0_4core10ITypedExprERNS0_6common8SubfieldE:bb.a
  store i64 %i.cj, ptr %i.ci, align 8, !tbaa !29
  %.not10.i.i.i.i85 = icmp eq ptr %i.bw, %i.bs
  br i1 %.not10.i.i.i.i85, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i97, label %iter.check

iter.check:                                       ; preds = %.noexc101
  %i.ck = add i64 %i.bx, -8
  %i.cl = sub i64 %i.ck, %i.by                    ; 3 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i86.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.ch, i64 8
  %i.co = add i64 %i.bx, -8
  %i.cp = sub i64 %i.co, %i.by
  %i.cq = and i64 %i.cp, -8                       ; 2 uses
  %scevgep262 = getelementptr i8, ptr %scevgep, i64 %i.cq
  %scevgep263 = getelementptr i8, ptr %i.bw, i64 8
  %scevgep264 = getelementptr i8, ptr %scevgep263, i64 %i.cq
  %bound0 = icmp ult ptr %i.ch, %scevgep264
  %bound1 = icmp ult ptr %i.bw, %scevgep262
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i86.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check265 = icmp ult i64 %i.cl, 120
  br i1 %min.iters.check265, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 4611686018427387888     ; 4 uses
  %i.cr = shl i64 %n.vec, 3                       ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ch, i64 %i.cr  ; 2 uses
  %i.ct = getelementptr i8, ptr %i.bw, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ch, i64 %i.cu ; 4 uses
  %next.gep266 = getelementptr i8, ptr %i.bw, i64 %i.cu ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.cv = getelementptr i8, ptr %next.gep266, i64 32
  %i.cw = getelementptr i8, ptr %next.gep266, i64 64
  %i.cx = getelementptr i8, ptr %next.gep266, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep266, align 8, !tbaa !29, !alias.scope !63, !noalias !58
  %wide.load267 = load <4 x i64>, ptr %i.cv, align 8, !tbaa !29, !alias.scope !63, !noalias !58
  %wide.load268 = load <4 x i64>, ptr %i.cw, align 8, !tbaa !29, !alias.scope !63, !noalias !58
  %wide.load269 = load <4 x i64>, ptr %i.cx, align 8, !tbaa !29, !alias.scope !63, !noalias !58
  %i.cy = getelementptr i8, ptr %next.gep, i64 32
  %i.cz = getelementptr i8, ptr %next.gep, i64 64
  %i.da = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !29, !alias.scope !66, !noalias !63
  store <4 x i64> %wide.load267, ptr %i.cy, align 8, !tbaa !29, !alias.scope !66, !noalias !63
  store <4 x i64> %wide.load268, ptr %i.cz, align 8, !tbaa !29, !alias.scope !66, !noalias !63
  store <4 x i64> %wide.load269, ptr %i.da, align 8, !tbaa !29, !alias.scope !66, !noalias !63
  %i.db = getelementptr i8, ptr %next.gep266, i64 32
  %i.dc = getelementptr i8, ptr %next.gep266, i64 64
  %i.dd = getelementptr i8, ptr %next.gep266, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep266, align 8, !tbaa !29, !alias.scope !63, !noalias !58
  store <4 x ptr> splat (ptr null), ptr %i.db, align 8, !tbaa !29, !alias.scope !63, !noalias !58
  store <4 x ptr> splat (ptr null), ptr %i.dc, align 8, !tbaa !29, !alias.scope !63, !noalias !58
  store <4 x ptr> splat (ptr null), ptr %i.dd, align 8, !tbaa !29, !alias.scope !63, !noalias !58
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i97, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i86.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec272 = and i64 %i.cn, 4611686018427387900  ; 3 uses
  %i.df = shl i64 %n.vec272, 3                    ; 2 uses
  %i.dg = getelementptr i8, ptr %i.ch, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.bw, i64 %i.df
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index273 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next277, %vec.epilog.vector.body ] ; 2 uses
  %i.di = shl i64 %index273, 3                    ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.ch, i64 %i.di
  %next.gep275 = getelementptr i8, ptr %i.bw, i64 %i.di ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %wide.load276 = load <4 x i64>, ptr %next.gep275, align 8, !tbaa !29, !alias.scope !63, !noalias !58
  store <4 x i64> %wide.load276, ptr %next.gep274, align 8, !tbaa !29, !alias.scope !66, !noalias !63
  store <4 x ptr> splat (ptr null), ptr %next.gep275, align 8, !tbaa !29, !alias.scope !63, !noalias !58
  %index.next277 = add nuw i64 %index273, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next277, %n.vec272
  br i1 %i.dj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n278 = icmp eq i64 %i.cn, %n.vec272
  br i1 %cmp.n278, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i97, label %.lr.ph.i.i.i.i86.preheader

.lr.ph.i.i.i.i86.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i87.ph = phi ptr [ %i.ch, %iter.check ], [ %i.ch, %vector.memcheck ], [ %i.cs, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  %.0911.i.i.i.i88.ph = phi ptr [ %i.bw, %iter.check ], [ %i.bw, %vector.memcheck ], [ %i.ct, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i86

.lr.ph.i.i.i.i86:                                 ; preds = %.lr.ph.i.i.i.i86.preheader, %.lr.ph.i.i.i.i86
  %.012.i.i.i.i87 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i86 ], [ %.012.i.i.i.i87.ph, %.lr.ph.i.i.i.i86.preheader ] ; 2 uses
  %.0911.i.i.i.i88 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i86 ], [ %.0911.i.i.i.i88.ph, %.lr.ph.i.i.i.i86.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.dk = load i64, ptr %.0911.i.i.i.i88, align 8, !tbaa !29, !alias.scope !61, !noalias !58
  store i64 %i.dk, ptr %.012.i.i.i.i87, align 8, !tbaa !29, !alias.scope !58, !noalias !61
  store ptr null, ptr %.0911.i.i.i.i88, align 8, !tbaa !29, !alias.scope !61, !noalias !58
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i88, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i87, i64 8 ; 2 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.dl, %i.bs
  br i1 %.not.i.i.i.i89, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i97, label %.lr.ph.i.i.i.i86, !llvm.loop !70

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i97: ; preds = %.lr.ph.i.i.i.i86, %middle.block, %vec.epilog.middle.block, %.noexc101
  %.0.lcssa.i.i.i.i91 = phi ptr [ %i.ch, %.noexc101 ], [ %i.dg, %vec.epilog.middle.block ], [ %i.cs, %middle.block ], [ %i.dm, %.lr.ph.i.i.i.i86 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i91, i64 8 ; 2 uses
  %.not.i23.i99 = icmp eq ptr %i.bw, null
  br i1 %.not.i23.i99, label %.noexc62, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i97
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bz) #39
  br label %.noexc62

.noexc62:                                         ; preds = %bb.v, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i97
  store ptr %i.ch, ptr %2, align 8, !tbaa !31
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !25
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.do, ptr %i.b, align 8, !tbaa !28
  br label %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit66

bb.w:                                             ; preds = %bb.p
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body58

_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit74.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i82
  %lpad.loopexit127 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit74

_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit74.loopexit.split-lp: ; preds = %bb.u
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit74

_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit74: ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit74.loopexit.split-lp, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit74.loopexit
  %lpad.phi129 = phi { ptr, i32 } [ %lpad.loopexit127, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit74.loopexit ], [ %lpad.loopexit.split-lp128, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit74.loopexit.split-lp ]
  %i.dq = load ptr, ptr %i.bq, align 8, !tbaa !14
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.bq) #37, !inline_history !49
  call void @_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11NestedFieldESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #37
  br label %.body58

.body58:                                          ; preds = %bb.w, %bb.q, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit74
  %.pn = phi { ptr, i32 } [ %lpad.phi129, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit74 ], [ %i.dp, %bb.w ], [ %i.br, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.ag

bb.x:                                             ; preds = %bb.l
  %i.dt = tail call ptr @__dynamic_cast(ptr nonnull %.025, ptr nonnull @_ZTIN8facebook5velox4core10ITypedExprE, ptr nonnull @_ZTIN8facebook5velox4core14InputTypedExprE, i64 0) #37
  %.fr = freeze ptr %i.dt
  %i.du = icmp eq ptr %.fr, null
  br i1 %i.du, label %.thread123, label %.loopexit

_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit66: ; preds = %.noexc62, %bb.s
  %i.dv = phi ptr [ %i.bv, %bb.s ], [ %i.dn, %.noexc62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit66, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11NestedFieldESt14default_deleteIS4_EED2Ev.exit
  %i.dw = phi ptr [ %i.dv, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EED2Ev.exit66 ], [ %i.bf, %_ZNSt10unique_ptrIN8facebook5velox6common8Subfield11NestedFieldESt14default_deleteIS4_EED2Ev.exit ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.025, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !71 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.025, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !71 ; 2 uses
  %i.eb = icmp eq ptr %i.dy, %i.ea
  br i1 %i.eb, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.dy to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %.not49 = icmp eq i64 %i.ee, 16
  br i1 %.not49, label %bb.aa, label %.thread123

bb.aa:                                            ; preds = %bb.z
  %i.ef = load ptr, ptr %i.dy, align 8, !tbaa !73 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %.thread123, label %bb.b, !llvm.loop !76

.loopexit:                                        ; preds = %bb.y, %bb.x
  %i.eh = phi ptr [ %i.c, %bb.x ], [ %i.dw, %bb.y ] ; 6 uses
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = load ptr, ptr %2, align 8, !tbaa !77    ; 10 uses
  %i.ek = ptrtoint ptr %i.ej to i64               ; 3 uses
  %i.el = icmp ne ptr %i.ej, %i.eh
  %.sroa.0.010.i.i = getelementptr inbounds i8, ptr %i.eh, i64 -8 ; 5 uses
  %.not11.i.i = icmp ult ptr %i.ej, %.sroa.0.010.i.i
  %or.cond.i.i = select i1 %i.el, i1 %.not11.i.i, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEEEvT_SG_.exit

.lr.ph.i.i.preheader:                             ; preds = %.loopexit
  %6 = ptrtoint ptr %i.eh to i64
  %i.em = add i64 %6, -16
  %7 = ptrtoint ptr %i.ej to i64                  ; 2 uses
  %i.en = add i64 %7, 8
  %umax331 = tail call i64 @llvm.umax.i64(i64 %i.em, i64 %i.en)
  %8 = sub i64 %umax331, %7                       ; 2 uses
  %i.eo = icmp ne i64 %8, 8
  %umin332 = zext i1 %i.eo to i64                 ; 2 uses
  %9 = sub i64 %8, %umin332
  %10 = add i64 %9, -8
  %i.ep = lshr i64 %10, 4
  %i.eq = add nuw nsw i64 %i.ep, %umin332         ; 2 uses
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check333 = icmp samesign ult i64 %i.eq, 31
  br i1 %min.iters.check333, label %.lr.ph.i.i.preheader352, label %vector.memcheck325

vector.memcheck325:                               ; preds = %.lr.ph.i.i.preheader
  %i.es = add i64 %i.ei, -16
  %i.et = add i64 %i.ek, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.es, i64 %i.et)
  %i.eu = add i64 %umax, -8                       ; 2 uses
  %i.ev = icmp ne i64 %i.eu, %i.ek
  %umin = zext i1 %i.ev to i64                    ; 2 uses
  %i.ew = add i64 %i.ek, %umin
  %i.ex = sub i64 %i.eu, %i.ew
  %i.ey = lshr i64 %i.ex, 4
  %i.ez = add nuw nsw i64 %i.ey, %umin
  %i.fa = shl nuw i64 %i.ez, 3                    ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ej, i64 %i.fa
  %scevgep326 = getelementptr i8, ptr %i.fb, i64 8
  %i.fc = sub nuw nsw i64 -8, %i.fa
  %scevgep327 = getelementptr i8, ptr %i.eh, i64 %i.fc
  %bound0328 = icmp ult ptr %i.ej, %i.eh
  %bound1329 = icmp ult ptr %scevgep327, %scevgep326
  %found.conflict330 = and i1 %bound0328, %bound1329
  br i1 %found.conflict330, label %.lr.ph.i.i.preheader352, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck325
  %n.vec336 = and i64 %i.er, 4611686018427387896  ; 4 uses
  %i.fd = mul i64 %n.vec336, -8
  %i.fe = getelementptr i8, ptr %.sroa.0.010.i.i, i64 %i.fd
  %i.ff = shl i64 %n.vec336, 3
  %i.fg = getelementptr i8, ptr %i.ej, i64 %i.ff
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph334
  %index338 = phi i64 [ 0, %vector.ph334 ], [ %index.next348, %vector.body337 ] ; 3 uses
  %i.fh = mul i64 %index338, -8
  %next.gep339 = getelementptr i8, ptr %.sroa.0.010.i.i, i64 %i.fh ; 2 uses
  %i.fi = shl i64 %index338, 3
  %next.gep340 = getelementptr i8, ptr %i.ej, i64 %i.fi ; 3 uses
  %i.fj = getelementptr i8, ptr %next.gep340, i64 32 ; 2 uses
  %wide.load341.a = load <4 x ptr>, ptr %next.gep340, align 8, !tbaa !29, !alias.scope !78, !noalias !81
  %wide.load342.a = load <4 x ptr>, ptr %i.fj, align 8, !tbaa !29, !alias.scope !78, !noalias !81
  %i.fk = getelementptr i8, ptr %next.gep339, i64 -24 ; 2 uses
  %i.fl = getelementptr i8, ptr %next.gep339, i64 -56 ; 2 uses
  %wide.load343 = load <4 x ptr>, ptr %i.fk, align 8, !tbaa !29, !alias.scope !81
  %wide.load344 = load <4 x ptr>, ptr %i.fl, align 8, !tbaa !29, !alias.scope !81
  %reverse = shufflevector <4 x ptr> %wide.load343, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse345.a = shufflevector <4 x ptr> %wide.load344, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x ptr> %reverse, ptr %next.gep340, align 8, !tbaa !29, !alias.scope !78, !noalias !81
  store <4 x ptr> %reverse345.a, ptr %i.fj, align 8, !tbaa !29, !alias.scope !78, !noalias !81
  %reverse346 = shufflevector <4 x ptr> %wide.load341.a, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse347 = shufflevector <4 x ptr> %wide.load342.a, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x ptr> %reverse346, ptr %i.fk, align 8, !tbaa !29, !alias.scope !81
  store <4 x ptr> %reverse347, ptr %i.fl, align 8, !tbaa !29, !alias.scope !81
  %index.next348 = add nuw i64 %index338, 8       ; 2 uses
  %i.fm = icmp eq i64 %index.next348, %n.vec336
  br i1 %i.fm, label %middle.block349, label %vector.body337, !llvm.loop !83

middle.block349:                                  ; preds = %vector.body337
  %cmp.n350 = icmp eq i64 %i.er, %n.vec336
  br i1 %cmp.n350, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEEEvT_SG_.exit, label %.lr.ph.i.i.preheader352

.lr.ph.i.i.preheader352:                          ; preds = %vector.memcheck325, %.lr.ph.i.i.preheader, %middle.block349
  %.sroa.0.013.i.i.ph = phi ptr [ %.sroa.0.010.i.i, %vector.memcheck325 ], [ %.sroa.0.010.i.i, %.lr.ph.i.i.preheader ], [ %i.fe, %middle.block349 ]
  %.sroa.07.012.i.i.ph = phi ptr [ %i.ej, %vector.memcheck325 ], [ %i.ej, %.lr.ph.i.i.preheader ], [ %i.fg, %middle.block349 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader352, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.013.i.i.ph, %.lr.ph.i.i.preheader352 ] ; 3 uses
  %.sroa.07.012.i.i = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %.sroa.07.012.i.i.ph, %.lr.ph.i.i.preheader352 ] ; 3 uses
  %i.fn = load ptr, ptr %.sroa.07.012.i.i, align 8, !tbaa !29
  %i.fo = load ptr, ptr %.sroa.0.013.i.i, align 8, !tbaa !29
  store ptr %i.fo, ptr %.sroa.07.012.i.i, align 8, !tbaa !29
  store ptr %i.fn, ptr %.sroa.0.013.i.i, align 8, !tbaa !29
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -8 ; 2 uses
  %.not.i.i75 = icmp ult ptr %i.fp, %.sroa.0.0.i.i
  br i1 %.not.i.i75, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEEEvT_SG_.exit, !llvm.loop !84

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEEEvT_SG_.exit: ; preds = %.lr.ph.i.i, %middle.block349, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZN8facebook5velox6common8SubfieldC1EOSt6vectorISt10unique_ptrINS2_11PathElementESt14default_deleteIS5_EESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEEEvT_SG_.exit
  %i.fq = load ptr, ptr %1, align 8, !tbaa !31    ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !25 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !28
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fw = load <2 x ptr>, ptr %5, align 16, !tbaa !77
  store <2 x ptr> %i.fw, ptr %1, align 8, !tbaa !77
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 16, !tbaa !28
  store ptr %i.fy, ptr %i.ft, align 8, !tbaa !28
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.fq, %i.fs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ab, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.gd, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.fq, %bb.ab ] ; 2 uses
  %i.fz = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !14
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.fz) #37, !inline_history !85
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gd, %i.fs
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !86

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i, %bb.ab
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN8facebook5velox6common8SubfieldaSEOS2_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %i.ge = ptrtoint ptr %i.fu to i64
  %i.gf = ptrtoint ptr %i.fq to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.gg) #39
  br label %_ZN8facebook5velox6common8SubfieldaSEOS2_.exit

_ZN8facebook5velox6common8SubfieldaSEOS2_.exit:   ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, %bb.ac
  %i.gh = load ptr, ptr %5, align 16, !tbaa !31   ; 3 uses
  %i.gi = load ptr, ptr %i.fv, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.gh, %i.gi
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN8facebook5velox6common8SubfieldaSEOS2_.exit, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gn, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i ], [ %i.gh, %_ZN8facebook5velox6common8SubfieldaSEOS2_.exit ] ; 2 uses
  %i.gj = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !14
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.gj) #37, !inline_history !87
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gn, %i.gi
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !86

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 16, !tbaa !31
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, %_ZN8facebook5velox6common8SubfieldaSEOS2_.exit
  %i.go = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.gh, %_ZN8facebook5velox6common8SubfieldaSEOS2_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i1.i.i, label %_ZN8facebook5velox6common8SubfieldD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i
  %i.gp = load ptr, ptr %i.fx, align 16, !tbaa !28
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gs) #39
  br label %_ZN8facebook5velox6common8SubfieldD2Ev.exit

_ZN8facebook5velox6common8SubfieldD2Ev.exit:      ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.thread123

bb.ae:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEEEvT_SG_.exit
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.ag

.thread123:                                       ; preds = %bb.b, %bb.n, %bb.z, %bb.aa, %bb.x, %_ZN8facebook5velox6common8SubfieldD2Ev.exit
  %cond2126 = phi i1 [ true, %_ZN8facebook5velox6common8SubfieldD2Ev.exit ], [ false, %bb.x ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.n ], [ false, %bb.b ]
  %i.gu = load ptr, ptr %2, align 8, !tbaa !31    ; 3 uses
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gu, %i.gv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread123, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ha, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i ], [ %i.gu, %.thread123 ] ; 2 uses
  %i.gw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i.i76 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i.i.i76, label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox6common8Subfield11PathElementEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !14
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.gw) #37, !inline_history !88
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EEEvPT_.exit.i.i.i
end_hunk_0
