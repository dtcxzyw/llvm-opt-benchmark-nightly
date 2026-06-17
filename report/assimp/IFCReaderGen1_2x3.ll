inline.NumInlined: 30568
inline.NumDeleted: 15922
begin_hunk_0_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2300, !noalias !2297
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2300, !noalias !2297
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2297, !noalias !2300
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2297, !noalias !2300
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2300, !noalias !2297
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2297, !noalias !2300
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2305

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %11 = sub i64 %i.bn, %i.bo
  %12 = add i64 %11, -8                           ; 2 uses
  %i.ca = lshr i64 %12, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %12, 24
  %i.cc = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.cc, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec104, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bm, i64 %i.cd
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.cg = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.cg ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.cg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.ch = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2309, !noalias !2306
  %wide.load110 = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !2309, !noalias !2306
  %i.ci = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2306, !noalias !2309
  store <2 x i64> %wide.load110, ptr %i.ci, align 8, !alias.scope !2306, !noalias !2309
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cj, label %middle.block112, label %vector.body105, !llvm.loop !2311

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cb, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2309, !noalias !2306
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2306, !noalias !2309
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2312

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ce, %middle.block112 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cn, ptr %i.bg, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.co, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cp = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  %i.cq = load ptr, ptr %i.l, align 8, !noalias !2313
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.02368 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !2313 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !noalias !2313
  store <2 x ptr> %i.cu, ptr %7, align 16, !alias.scope !2313
  %.not.i.i.i.i40 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE9push_backEOS6_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !noalias !2313
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.cv, align 4, !noalias !2313
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !noalias !2313
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4, !noalias !2313 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x321IfcRepresentationItemEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.da = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.da, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.da, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !412

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dq = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dr = load ptr, ptr %i.m, align 8
  %i.ds = load ptr, ptr %i.l, align 8
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dq, %i.dw
  br i1 %i.dx, label %bb.m, label %._crit_edge, !llvm.loop !2316

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.dz = extractvalue { ptr, i32 } %i.dy, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ea = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #25
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ec = extractvalue { ptr, i32 } %i.dy, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #25 ; 2 uses
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ef = load ptr, ptr %i.ed, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1594, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
end_hunk_0
begin_hunk_1_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcRepresentationEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2320, !noalias !2317
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2320, !noalias !2317
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2317, !noalias !2320
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2317, !noalias !2320
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2322

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2320, !noalias !2317
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2317, !noalias !2320
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2323

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %11 = sub i64 %i.bn, %i.bo
  %12 = add i64 %11, -8                           ; 2 uses
  %i.ca = lshr i64 %12, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %12, 24
  %i.cc = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.cc, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec104, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bm, i64 %i.cd
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.cg = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.cg ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.cg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  %i.ch = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2327, !noalias !2324
  %wide.load110 = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !2327, !noalias !2324
  %i.ci = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2324, !noalias !2327
  store <2 x i64> %wide.load110, ptr %i.ci, align 8, !alias.scope !2324, !noalias !2327
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cj, label %middle.block112, label %vector.body105, !llvm.loop !2329

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cb, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2327, !noalias !2324
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2324, !noalias !2327
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2330

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ce, %middle.block112 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cn, ptr %i.bg, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.co, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cp = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2331)
  %i.cq = load ptr, ptr %i.l, align 8, !noalias !2331
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.02368 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !2331 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !noalias !2331
  store <2 x ptr> %i.cu, ptr %7, align 16, !alias.scope !2331
  %.not.i.i.i.i40 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE9push_backEOS6_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !noalias !2331
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.cv, align 4, !noalias !2331
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !noalias !2331
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4, !noalias !2331 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcRepresentationEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x317IfcRepresentationEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.da = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.da, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.da, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !412

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dq = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dr = load ptr, ptr %i.m, align 8
  %i.ds = load ptr, ptr %i.l, align 8
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dq, %i.dw
  br i1 %i.dx, label %bb.m, label %._crit_edge, !llvm.loop !2334

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.dz = extractvalue { ptr, i32 } %i.dy, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ea = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #25
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ec = extractvalue { ptr, i32 } %i.dy, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #25 ; 2 uses
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ef = load ptr, ptr %i.ed, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1594, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
end_hunk_1
begin_hunk_2_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x324IfcCompositeCurveSegmentEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2338, !noalias !2335
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2338, !noalias !2335
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2335, !noalias !2338
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2335, !noalias !2338
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2340

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2338, !noalias !2335
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2335, !noalias !2338
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2341

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %11 = sub i64 %i.bn, %i.bo
  %12 = add i64 %11, -8                           ; 2 uses
  %i.ca = lshr i64 %12, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %12, 24
  %i.cc = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.cc, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec104, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bm, i64 %i.cd
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.cg = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.cg ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.cg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  %i.ch = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2345, !noalias !2342
  %wide.load110 = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !2345, !noalias !2342
  %i.ci = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2342, !noalias !2345
  store <2 x i64> %wide.load110, ptr %i.ci, align 8, !alias.scope !2342, !noalias !2345
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cj, label %middle.block112, label %vector.body105, !llvm.loop !2347

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cb, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2345, !noalias !2342
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2342, !noalias !2345
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2348

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ce, %middle.block112 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cn, ptr %i.bg, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.co, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cp = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  %i.cq = load ptr, ptr %i.l, align 8, !noalias !2349
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.02368 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !2349 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !noalias !2349
  store <2 x ptr> %i.cu, ptr %7, align 16, !alias.scope !2349
  %.not.i.i.i.i40 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE9push_backEOS6_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !noalias !2349
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.cv, align 4, !noalias !2349
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !noalias !2349
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4, !noalias !2349 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcCompositeCurveSegmentEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x324IfcCompositeCurveSegmentEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.da = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.da, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.da, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !412

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dq = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dr = load ptr, ptr %i.m, align 8
  %i.ds = load ptr, ptr %i.l, align 8
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dq, %i.dw
  br i1 %i.dx, label %bb.m, label %._crit_edge, !llvm.loop !2352

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.dz = extractvalue { ptr, i32 } %i.dy, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ea = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #25
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ec = extractvalue { ptr, i32 } %i.dy, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #25 ; 2 uses
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ef = load ptr, ptr %i.ed, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1594, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
end_hunk_2
begin_hunk_3_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x310IfcProductEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2356, !noalias !2353
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2356, !noalias !2353
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2353, !noalias !2356
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2353, !noalias !2356
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2356, !noalias !2353
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2353, !noalias !2356
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2359

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %11 = sub i64 %i.bn, %i.bo
  %12 = add i64 %11, -8                           ; 2 uses
  %i.ca = lshr i64 %12, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %12, 24
  %i.cc = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.cc, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec104, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bm, i64 %i.cd
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.cg = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.cg ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.cg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  %i.ch = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2363, !noalias !2360
  %wide.load110 = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !2363, !noalias !2360
  %i.ci = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2360, !noalias !2363
  store <2 x i64> %wide.load110, ptr %i.ci, align 8, !alias.scope !2360, !noalias !2363
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cj, label %middle.block112, label %vector.body105, !llvm.loop !2365

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cb, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2363, !noalias !2360
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2360, !noalias !2363
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2366

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ce, %middle.block112 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cn, ptr %i.bg, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.co, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cp = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  %i.cq = load ptr, ptr %i.l, align 8, !noalias !2367
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.02368 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !2367 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !noalias !2367
  store <2 x ptr> %i.cu, ptr %7, align 16, !alias.scope !2367
  %.not.i.i.i.i40 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE9push_backEOS6_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !noalias !2367
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.cv, align 4, !noalias !2367
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !noalias !2367
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4, !noalias !2367 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x310IfcProductEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x310IfcProductEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.da = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.da, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.da, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !412

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dq = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dr = load ptr, ptr %i.m, align 8
  %i.ds = load ptr, ptr %i.l, align 8
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dq, %i.dw
  br i1 %i.dx, label %bb.m, label %._crit_edge, !llvm.loop !2370

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.dz = extractvalue { ptr, i32 } %i.dy, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ea = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #25
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ec = extractvalue { ptr, i32 } %i.dy, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #25 ; 2 uses
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ef = load ptr, ptr %i.ed, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1594, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
end_hunk_3
begin_hunk_4_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x324IfcRepresentationContextEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2378, !noalias !2375
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2378, !noalias !2375
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2375, !noalias !2378
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2375, !noalias !2378
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2378, !noalias !2375
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2375, !noalias !2378
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2381

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %11 = sub i64 %i.bn, %i.bo
  %12 = add i64 %11, -8                           ; 2 uses
  %i.ca = lshr i64 %12, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %12, 24
  %i.cc = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.cc, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec104, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bm, i64 %i.cd
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.cg = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.cg ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.cg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.ch = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2385, !noalias !2382
  %wide.load110 = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !2385, !noalias !2382
  %i.ci = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2382, !noalias !2385
  store <2 x i64> %wide.load110, ptr %i.ci, align 8, !alias.scope !2382, !noalias !2385
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cj, label %middle.block112, label %vector.body105, !llvm.loop !2387

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cb, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2385, !noalias !2382
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2382, !noalias !2385
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2388

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ce, %middle.block112 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cn, ptr %i.bg, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.co, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cp = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  %i.cq = load ptr, ptr %i.l, align 8, !noalias !2389
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.02368 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !2389 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !noalias !2389
  store <2 x ptr> %i.cu, ptr %7, align 16, !alias.scope !2389
  %.not.i.i.i.i40 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE9push_backEOS6_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !noalias !2389
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.cv, align 4, !noalias !2389
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !noalias !2389
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4, !noalias !2389 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x324IfcRepresentationContextEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x324IfcRepresentationContextEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.da = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.da, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.da, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !412

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dq = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dr = load ptr, ptr %i.m, align 8
  %i.ds = load ptr, ptr %i.l, align 8
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dq, %i.dw
  br i1 %i.dx, label %bb.m, label %._crit_edge, !llvm.loop !2392

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.dz = extractvalue { ptr, i32 } %i.dy, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ea = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #25
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ec = extractvalue { ptr, i32 } %i.dy, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #25 ; 2 uses
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ef = load ptr, ptr %i.ed, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1594, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
end_hunk_4
begin_hunk_5_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x39IfcObjectEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2416, !noalias !2413
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2416, !noalias !2413
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2413, !noalias !2416
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2413, !noalias !2416
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2418

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2416, !noalias !2413
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2413, !noalias !2416
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2419

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %11 = sub i64 %i.bn, %i.bo
  %12 = add i64 %11, -8                           ; 2 uses
  %i.ca = lshr i64 %12, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %12, 24
  %i.cc = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.cc, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec104, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bm, i64 %i.cd
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.cg = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.cg ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.cg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  %i.ch = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2423, !noalias !2420
  %wide.load110 = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !2423, !noalias !2420
  %i.ci = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2420, !noalias !2423
  store <2 x i64> %wide.load110, ptr %i.ci, align 8, !alias.scope !2420, !noalias !2423
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cj, label %middle.block112, label %vector.body105, !llvm.loop !2425

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cb, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2423, !noalias !2420
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2420, !noalias !2423
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2426

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ce, %middle.block112 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cn, ptr %i.bg, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.co, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cp = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2427)
  %i.cq = load ptr, ptr %i.l, align 8, !noalias !2427
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.02368 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !2427 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !noalias !2427
  store <2 x ptr> %i.cu, ptr %7, align 16, !alias.scope !2427
  %.not.i.i.i.i40 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE9push_backEOS6_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !noalias !2427
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.cv, align 4, !noalias !2427
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !noalias !2427
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4, !noalias !2427 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x39IfcObjectEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x39IfcObjectEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.da = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.da, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.da, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !412

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dq = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dr = load ptr, ptr %i.m, align 8
  %i.ds = load ptr, ptr %i.l, align 8
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dq, %i.dw
  br i1 %i.dx, label %bb.m, label %._crit_edge, !llvm.loop !2430

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.dz = extractvalue { ptr, i32 } %i.dy, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ea = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #25
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ec = extractvalue { ptr, i32 } %i.dy, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #25 ; 2 uses
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ef = load ptr, ptr %i.ed, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1594, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
end_hunk_5
begin_hunk_6_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2434, !noalias !2431
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2434, !noalias !2431
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2431, !noalias !2434
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2431, !noalias !2434
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2434, !noalias !2431
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2431, !noalias !2434
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2437

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %11 = sub i64 %i.bn, %i.bo
  %12 = add i64 %11, -8                           ; 2 uses
  %i.ca = lshr i64 %12, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %12, 24
  %i.cc = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.cc, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec104, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bm, i64 %i.cd
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.cg = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.cg ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.cg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  %i.ch = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2441, !noalias !2438
  %wide.load110 = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !2441, !noalias !2438
  %i.ci = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2438, !noalias !2441
  store <2 x i64> %wide.load110, ptr %i.ci, align 8, !alias.scope !2438, !noalias !2441
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cj, label %middle.block112, label %vector.body105, !llvm.loop !2443

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cb, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2441, !noalias !2438
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2438, !noalias !2441
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2444

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ce, %middle.block112 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cn, ptr %i.bg, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.co, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cp = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2445)
  %i.cq = load ptr, ptr %i.l, align 8, !noalias !2445
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.02368 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !2445 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !noalias !2445
  store <2 x ptr> %i.cu, ptr %7, align 16, !alias.scope !2445
  %.not.i.i.i.i40 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE9push_backEOS6_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !noalias !2445
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.cv, align 4, !noalias !2445
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !noalias !2445
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4, !noalias !2445 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcObjectDefinitionEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.da = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.da, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.da, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !412

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dq = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dr = load ptr, ptr %i.m, align 8
  %i.ds = load ptr, ptr %i.l, align 8
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dq, %i.dw
  br i1 %i.dx, label %bb.m, label %._crit_edge, !llvm.loop !2448

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.dz = extractvalue { ptr, i32 } %i.dy, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ea = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #25
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ec = extractvalue { ptr, i32 } %i.dy, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #25 ; 2 uses
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ef = load ptr, ptr %i.ed, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1594, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
end_hunk_6
begin_hunk_7_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEELm2ELm0EEclERNS0_6ListOfIS6_Lm2ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp ult i64 %i.r, 17
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8             ; 2 uses
  %.pre70 = load ptr, ptr %i.l, align 8           ; 2 uses
  %.pre73 = ptrtoint ptr %.pre to i64
  %.pre74 = ptrtoint ptr %.pre70 to i64
  %.pre76 = sub i64 %.pre73, %.pre74
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi77 = phi i64 [ %.pre76, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  %i.u = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ]
  %i.v = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ]
  %i.w = ashr exact i64 %.pre-phi77, 4            ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %.pre-phi77, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %i.aw = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep99, align 8, !alias.scope !2452, !noalias !2449
  %wide.load100 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2452, !noalias !2449
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2449, !noalias !2452
  store <2 x i64> %wide.load100, ptr %i.ax, align 8, !alias.scope !2449, !noalias !2452
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2454

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader122

.lr.ph.i.i.i.i.preheader122:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader122, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2452, !noalias !2449
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2449, !noalias !2452
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2455

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.u, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.v, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %11 = sub i64 %i.bn, %i.bo
  %12 = add i64 %11, -8                           ; 2 uses
  %i.ca = lshr i64 %12, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %12, 24
  %i.cc = sub i64 %i.bz, %i.bo
  %diff.check103 = icmp ult i64 %i.cc, 32
  %or.cond120 = or i1 %min.iters.check105, %diff.check103
  br i1 %or.cond120, label %.lr.ph.i.i.i.i.i.i.preheader121, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec108 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec108, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bm, i64 %i.cd
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next115, %vector.body109 ] ; 2 uses
  %i.cg = shl i64 %index110, 3                    ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bx, i64 %i.cg ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.bm, i64 %i.cg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  %i.ch = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load113 = load <2 x i64>, ptr %next.gep112, align 8, !alias.scope !2459, !noalias !2456
  %wide.load114 = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !2459, !noalias !2456
  %i.ci = getelementptr i8, ptr %next.gep111, i64 16
  store <2 x i64> %wide.load113, ptr %next.gep111, align 8, !alias.scope !2456, !noalias !2459
  store <2 x i64> %wide.load114, ptr %i.ci, align 8, !alias.scope !2456, !noalias !2459
  %index.next115 = add nuw i64 %index110, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.cj, label %middle.block116, label %vector.body109, !llvm.loop !2461

middle.block116:                                  ; preds = %vector.body109
  %cmp.n117 = icmp eq i64 %i.cb, %n.vec108
  br i1 %cmp.n117, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader121

.lr.ph.i.i.i.i.i.i.preheader121:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block116
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block116 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block116 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader121, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2459, !noalias !2456
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2456, !noalias !2459
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2462

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block116, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ce, %middle.block116 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cn, ptr %i.bg, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.co, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cp = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  %i.cq = load ptr, ptr %i.l, align 8, !noalias !2463
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.02368 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !2463 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !noalias !2463
  store <2 x ptr> %i.cu, ptr %7, align 16, !alias.scope !2463
  %.not.i.i.i.i40 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !noalias !2463
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.cv, align 4, !noalias !2463
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !noalias !2463
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4, !noalias !2463 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.da = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.da, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.da, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !412

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dq = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dr = load ptr, ptr %i.m, align 8
  %i.ds = load ptr, ptr %i.l, align 8
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dq, %i.dw
  br i1 %i.dx, label %bb.m, label %._crit_edge, !llvm.loop !2466

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.dz = extractvalue { ptr, i32 } %i.dy, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ea = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #25
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ec = extractvalue { ptr, i32 } %i.dy, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #25 ; 2 uses
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ef = load ptr, ptr %i.ed, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1594, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
end_hunk_7
begin_hunk_8_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x37IfcFaceEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2470, !noalias !2467
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2470, !noalias !2467
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2467, !noalias !2470
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2467, !noalias !2470
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2472

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2470, !noalias !2467
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2467, !noalias !2470
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2473

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %11 = sub i64 %i.bn, %i.bo
  %12 = add i64 %11, -8                           ; 2 uses
  %i.ca = lshr i64 %12, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %12, 24
  %i.cc = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.cc, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec104, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bm, i64 %i.cd
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.cg = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.cg ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.cg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  %i.ch = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2477, !noalias !2474
  %wide.load110 = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !2477, !noalias !2474
  %i.ci = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2474, !noalias !2477
  store <2 x i64> %wide.load110, ptr %i.ci, align 8, !alias.scope !2474, !noalias !2477
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cj, label %middle.block112, label %vector.body105, !llvm.loop !2479

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cb, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2477, !noalias !2474
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2474, !noalias !2477
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2480

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ce, %middle.block112 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cn, ptr %i.bg, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.co, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cp = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2481)
  %i.cq = load ptr, ptr %i.l, align 8, !noalias !2481
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.02368 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !2481 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !noalias !2481
  store <2 x ptr> %i.cu, ptr %7, align 16, !alias.scope !2481
  %.not.i.i.i.i40 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE9push_backEOS6_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !noalias !2481
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.cv, align 4, !noalias !2481
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !noalias !2481
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4, !noalias !2481 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x37IfcFaceEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x37IfcFaceEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.da = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.da, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.da, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !412

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dq = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dr = load ptr, ptr %i.m, align 8
  %i.ds = load ptr, ptr %i.l, align 8
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dq, %i.dw
  br i1 %i.dx, label %bb.m, label %._crit_edge, !llvm.loop !2484

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.dz = extractvalue { ptr, i32 } %i.dy, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ea = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #25
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ec = extractvalue { ptr, i32 } %i.dy, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #25 ; 2 uses
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ef = load ptr, ptr %i.ed, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1594, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
end_hunk_8
begin_hunk_9_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #25
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.1593)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70 = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1595) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !2497, !noalias !2494
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2497, !noalias !2494
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2494, !noalias !2497
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !2494, !noalias !2497
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2499

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !2497, !noalias !2494
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !2494, !noalias !2497
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2500

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71 = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1596) #28
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %11 = sub i64 %i.bn, %i.bo
  %12 = add i64 %11, -8                           ; 2 uses
  %i.ca = lshr i64 %12, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %12, 24
  %i.cc = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.cc, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec104, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bm, i64 %i.cd
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.cg = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bx, i64 %i.cg ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.cg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %i.ch = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !2504, !noalias !2501
  %wide.load110 = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !2504, !noalias !2501
  %i.ci = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x i64> %wide.load109, ptr %next.gep107, align 8, !alias.scope !2501, !noalias !2504
  store <2 x i64> %wide.load110, ptr %i.ci, align 8, !alias.scope !2501, !noalias !2504
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cj, label %middle.block112, label %vector.body105, !llvm.loop !2506

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cb, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !2504, !noalias !2501
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !2501, !noalias !2504
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2507

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ce, %middle.block112 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cn, ptr %i.bg, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.co, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cp = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  %i.cq = load ptr, ptr %i.l, align 8, !noalias !2508
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.02368 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !2508 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !noalias !2508
  store <2 x ptr> %i.cu, ptr %7, align 16, !alias.scope !2508
  %.not.i.i.i.i40 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE9push_backEOS6_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !noalias !2508
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.cv, align 4, !noalias !2508
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !noalias !2508
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4, !noalias !2508 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.da = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.da, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.da, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !411
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !412

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dq = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dr = load ptr, ptr %i.m, align 8
  %i.ds = load ptr, ptr %i.l, align 8
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dq, %i.dw
  br i1 %i.dx, label %bb.m, label %._crit_edge, !llvm.loop !2511

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.dz = extractvalue { ptr, i32 } %i.dy, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ea = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #25
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ec = extractvalue { ptr, i32 } %i.dy, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #25 ; 2 uses
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ef = load ptr, ptr %i.ed, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1594, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
end_hunk_9
