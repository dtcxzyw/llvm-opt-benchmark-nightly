inline.NumInlined: 6734
inline.NumDeleted: 3043
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !20
  %i.ae = add nuw i64 %.08, 2                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ae
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !20
  %i.ai = add nuw i64 %.08, 3                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ai
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !20
  %i.am = add nuw i64 %.08, 4                     ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !237
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15InitializeChildER11ArrowSchemaRNS_23DuckDBArrowSchemaHolderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((24, 32), (56, 72)) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.a, align 8, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN6duckdbL24ReleaseDuckDBArrowSchemaEP11ArrowSchema, ptr %i.b, align 8, !tbaa !242
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.c, align 8, !tbaa !243
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18, !noalias !244 ; 13 uses
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #35, !noalias !247 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.g, i1 false), !noalias !247
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load ptr, ptr %2, align 8, !tbaa !15, !noalias !244 ; 8 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i64 %i.f, 32
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.f, 28
  %n.vec = and i64 %i.f, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !tbaa !20, !noalias !244
  %wide.load23 = load <16 x i8>, ptr %i.n, align 1, !tbaa !20, !noalias !244
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <16 x i8> %wide.load, ptr %i.o, align 1, !tbaa !20, !noalias !244
  store <16 x i8> %wide.load23, ptr %i.p, align 1, !tbaa !20, !noalias !244
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.f, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %index26
  %wide.load27 = load <4 x i8>, ptr %i.r, align 1, !tbaa !20, !noalias !244
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %index26
  store <4 x i8> %wide.load27, ptr %i.s, align 1, !tbaa !20, !noalias !244
  %index.next28 = add nuw i64 %index26, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next28, %n.vec25
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !251

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %i.f, %n.vec25
  br i1 %cmp.n29, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.08.i.prol = phi i64 [ %i.x, %vec.epilog.scalar.ph.prol ], [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.08.i.prol
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20, !noalias !244
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %.08.i.prol
  store i8 %i.v, ptr %i.w, align 1, !tbaa !20, !noalias !244
  %i.x = add nuw i64 %.08.i.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !252

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %i.y = sub i64 %.08.i.ph, %i.f
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.08.i = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.08.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %.08.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20, !noalias !244
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %.08.i
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !20, !noalias !244
  %i.ad = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20, !noalias !244
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ad
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !20, !noalias !244
  %i.ah = add nuw i64 %.08.i, 2                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !20, !noalias !244
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ah
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !20, !noalias !244
  %i.al = add nuw i64 %.08.i, 3                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !20, !noalias !244
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.al
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !20, !noalias !244
  %i.ap = add nuw i64 %.08.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ap, %i.f
  br i1 %exitcond.not.i.3, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph, !llvm.loop !253

_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.aq, align 1, !tbaa !20, !noalias !244
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !254 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !257
  %.not.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.av = ptrtoint ptr %i.h to i64
  store i64 %i.av, ptr %i.as, align 8, !tbaa !231
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !258 ; 10 uses
  %i.ay = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit16

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.bc = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #35
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit16 ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  %i.bk = ptrtoint ptr %i.h to i64
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.as
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.bl = sub i64 %i.ay, %i.az
  %i.bm = add i64 %i.bl, -8                       ; 2 uses
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.bm, 152
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.i.i.preheader47, label %vector.memcheck30

vector.memcheck30:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bp = add i64 %i.ay, -8
  %i.bq = sub i64 %i.bp, %i.az
  %i.br = and i64 %i.bq, -8
  %i.bs = add i64 %i.br, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bi, i64 %i.bs
  %scevgep31 = getelementptr i8, ptr %i.ax, i64 %i.bs
  %bound0 = icmp ult ptr %i.bi, %scevgep31
  %bound1 = icmp ult ptr %i.ax, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader47, label %vector.ph33

vector.ph33:                                      ; preds = %vector.memcheck30
  %n.vec35 = and i64 %i.bo, 4611686018427387900   ; 3 uses
  %i.bt = shl i64 %n.vec35, 3                     ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bi, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ax, i64 %i.bt
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph33
  %index37 = phi i64 [ 0, %vector.ph33 ], [ %index.next41, %vector.body36 ] ; 2 uses
  %i.bw = shl i64 %index37, 3                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bw ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.ax, i64 %i.bw ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.bx = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load39 = load <2 x i64>, ptr %next.gep38, align 8, !tbaa !231, !alias.scope !264, !noalias !259
  %wide.load40 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !231, !alias.scope !264, !noalias !259
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load39, ptr %next.gep, align 8, !tbaa !231, !alias.scope !267, !noalias !264
  store <2 x i64> %wide.load40, ptr %i.by, align 8, !tbaa !231, !alias.scope !267, !noalias !264
  %i.bz = getelementptr i8, ptr %next.gep38, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep38, align 8, !tbaa !231, !alias.scope !264, !noalias !259
  store <2 x ptr> splat (ptr null), ptr %i.bz, align 8, !tbaa !231, !alias.scope !264, !noalias !259
  %index.next41 = add nuw i64 %index37, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next41, %n.vec35
  br i1 %i.ca, label %middle.block42, label %vector.body36, !llvm.loop !269

middle.block42:                                   ; preds = %vector.body36
  %cmp.n43 = icmp eq i64 %i.bo, %n.vec35
  br i1 %cmp.n43, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.i.i.preheader47:                 ; preds = %vector.memcheck30, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block42
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bi, %vector.memcheck30 ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bu, %middle.block42 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck30 ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bv, %middle.block42 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader47, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader47 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader47 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.cb = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !262, !noalias !259
  store i64 %i.cb, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !259, !noalias !262
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !262, !noalias !259
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cc, %i.as
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !270

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block42, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.noexc12 ], [ %i.bu, %middle.block42 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ax) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bi, ptr %i.d, align 8, !tbaa !258
  store ptr %i.ce, ptr %i.ar, align 8, !tbaa !254
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.cf, ptr %i.at, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.cg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !231
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !271
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ck, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  ret void

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit16: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.d
  %i.cl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #37
  resume { ptr, i32 } %i.cl
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6duckdbL24ReleaseDuckDBArrowSchemaEP11ArrowSchema(ptr nofree noundef captures(address_is_null) %0) #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !242
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238  ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !238
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb23DuckDBArrowSchemaHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.d) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #37
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !273  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE3getILb1EEERS5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.117, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}
end_hunk_0
begin_hunk_1_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ar, i64 noundef %i.at)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.aq
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !15, !alias.scope !328 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.au
  br i1 %i.bh, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.bg) #37
  br label %common.resume

common.resume:                                    ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688, %bb.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667, %bb.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i692, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.avz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i692 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.avt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688 ], [ %.pn289, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ %.pn283.pn.pn, %bb.db ], [ %i.wf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460 ], [ %.pn269.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540 ], [ %.pn261.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664 ], [ %.pn249726, %bb.hx ], [ %i.atc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667 ], [ %.pn291.pn729, %bb.ip ], [ %i.avz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694 ], [ %i.atc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665 ], [ %i.bf, %bb.as ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bj = load i64, ptr %i.av, align 8, !tbaa !18, !noalias !331 ; 13 uses
  %i.bk = add i64 %i.bj, 1                        ; 2 uses
  %i.bl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #35
          to label %.noexc unwind label %bb.ay    ; 13 uses

.noexc:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bl, i8 0, i64 %i.bk, i1 false), !noalias !334
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %.loopexit, label %iter.check1248

iter.check1248:                                   ; preds = %.noexc
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = load ptr, ptr %5, align 8, !tbaa !15, !noalias !331 ; 8 uses
  %min.iters.check1234 = icmp ult i64 %i.bj, 4
  %i.bo = ptrtoaddr ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.bm
  %diff.check1232 = icmp ugt i64 %i.bp, -32
  %or.cond = select i1 %min.iters.check1234, i1 true, i1 %diff.check1232
  br i1 %or.cond, label %vec.epilog.scalar.ph1249.preheader, label %vector.main.loop.iter.check1235

vector.main.loop.iter.check1235:                  ; preds = %iter.check1248
  %min.iters.check1236 = icmp ult i64 %i.bj, 32
  br i1 %min.iters.check1236, label %vec.epilog.ph1252, label %vector.ph1237

vector.ph1237:                                    ; preds = %vector.main.loop.iter.check1235
  %n.mod.vf1238 = and i64 %i.bj, 28
  %n.vec1239 = and i64 %i.bj, -32                 ; 4 uses
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1237
  %index1241 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1244, %vector.body1240 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index1241 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load1242 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !20, !noalias !331
  %wide.load1243 = load <16 x i8>, ptr %i.br, align 1, !tbaa !20, !noalias !331
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index1241 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <16 x i8> %wide.load1242, ptr %i.bs, align 1, !tbaa !20, !noalias !331
  store <16 x i8> %wide.load1243, ptr %i.bt, align 1, !tbaa !20, !noalias !331
  %index.next1244 = add nuw i64 %index1241, 32    ; 2 uses
  %i.bu = icmp eq i64 %index.next1244, %n.vec1239
  br i1 %i.bu, label %middle.block1245, label %vector.body1240, !llvm.loop !337

middle.block1245:                                 ; preds = %vector.body1240
  %cmp.n1246 = icmp eq i64 %i.bj, %n.vec1239
  br i1 %cmp.n1246, label %.loopexit, label %vec.epilog.iter.check1250

vec.epilog.iter.check1250:                        ; preds = %middle.block1245
  %min.epilog.iters.check1251 = icmp eq i64 %n.mod.vf1238, 0
  br i1 %min.epilog.iters.check1251, label %vec.epilog.scalar.ph1249.preheader, label %vec.epilog.ph1252, !prof !233

vec.epilog.ph1252:                                ; preds = %vector.main.loop.iter.check1235, %vec.epilog.iter.check1250
  %vec.epilog.resume.val1247 = phi i64 [ %n.vec1239, %vec.epilog.iter.check1250 ], [ 0, %vector.main.loop.iter.check1235 ]
  %n.vec1254 = and i64 %i.bj, -4                  ; 3 uses
  br label %vec.epilog.vector.body1255

vec.epilog.vector.body1255:                       ; preds = %vec.epilog.vector.body1255, %vec.epilog.ph1252
  %index1256 = phi i64 [ %vec.epilog.resume.val1247, %vec.epilog.ph1252 ], [ %index.next1258, %vec.epilog.vector.body1255 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index1256
  %wide.load1257 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !20, !noalias !331
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index1256
  store <4 x i8> %wide.load1257, ptr %i.bw, align 1, !tbaa !20, !noalias !331
  %index.next1258 = add nuw i64 %index1256, 4     ; 2 uses
  %i.bx = icmp eq i64 %index.next1258, %n.vec1254
  br i1 %i.bx, label %vec.epilog.middle.block1259, label %vec.epilog.vector.body1255, !llvm.loop !338

vec.epilog.middle.block1259:                      ; preds = %vec.epilog.vector.body1255
  %cmp.n1260 = icmp eq i64 %i.bj, %n.vec1254
  br i1 %cmp.n1260, label %.loopexit, label %vec.epilog.scalar.ph1249.preheader

vec.epilog.scalar.ph1249.preheader:               ; preds = %iter.check1248, %vec.epilog.iter.check1250, %vec.epilog.middle.block1259
  %.08.i.ph = phi i64 [ 0, %iter.check1248 ], [ %n.vec1239, %vec.epilog.iter.check1250 ], [ %n.vec1254, %vec.epilog.middle.block1259 ] ; 3 uses
  %xtraiter1330 = and i64 %i.bj, 3                ; 2 uses
  %lcmp.mod1331.not = icmp eq i64 %xtraiter1330, 0
  br i1 %lcmp.mod1331.not, label %vec.epilog.scalar.ph1249.prol.loopexit, label %vec.epilog.scalar.ph1249.prol

vec.epilog.scalar.ph1249.prol:                    ; preds = %vec.epilog.scalar.ph1249.preheader, %vec.epilog.scalar.ph1249.prol
  %.08.i.prol = phi i64 [ %i.cb, %vec.epilog.scalar.ph1249.prol ], [ %.08.i.ph, %vec.epilog.scalar.ph1249.preheader ] ; 3 uses
  %prol.iter1332 = phi i64 [ %prol.iter1332.next, %vec.epilog.scalar.ph1249.prol ], [ 0, %vec.epilog.scalar.ph1249.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.08.i.prol
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !20, !noalias !331
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.08.i.prol
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !20, !noalias !331
  %i.cb = add nuw i64 %.08.i.prol, 1              ; 2 uses
  %prol.iter1332.next = add i64 %prol.iter1332, 1 ; 2 uses
  %prol.iter1332.cmp.not = icmp eq i64 %prol.iter1332.next, %xtraiter1330
  br i1 %prol.iter1332.cmp.not, label %vec.epilog.scalar.ph1249.prol.loopexit, label %vec.epilog.scalar.ph1249.prol, !llvm.loop !339

vec.epilog.scalar.ph1249.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1249.prol, %vec.epilog.scalar.ph1249.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %vec.epilog.scalar.ph1249.preheader ], [ %i.cb, %vec.epilog.scalar.ph1249.prol ]
  %i.cc = sub i64 %.08.i.ph, %i.bj
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %.loopexit, label %vec.epilog.scalar.ph1249

vec.epilog.scalar.ph1249:                         ; preds = %vec.epilog.scalar.ph1249.prol.loopexit, %vec.epilog.scalar.ph1249
  %.08.i = phi i64 [ %i.ct, %vec.epilog.scalar.ph1249 ], [ %.08.i.unr, %vec.epilog.scalar.ph1249.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.08.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !20, !noalias !331
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.08.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !20, !noalias !331
  %i.ch = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !20, !noalias !331
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !20, !noalias !331
  %i.cl = add nuw i64 %.08.i, 2                   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !20, !noalias !331
  %i.co = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !20, !noalias !331
  %i.cp = add nuw i64 %.08.i, 3                   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !20, !noalias !331
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !20, !noalias !331
  %i.ct = add nuw i64 %.08.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ct, %i.bj
  br i1 %exitcond.not.i.3, label %.loopexit, label %vec.epilog.scalar.ph1249, !llvm.loop !340

.loopexit:                                        ; preds = %vec.epilog.scalar.ph1249.prol.loopexit, %vec.epilog.scalar.ph1249, %middle.block1245, %vec.epilog.middle.block1259, %.noexc
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.cu, align 1, !tbaa !20, !noalias !331
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !254 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !257
  %.not.i.i = icmp eq ptr %i.cw, %i.cy
  br i1 %.not.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.cz = ptrtoint ptr %i.bl to i64
  store i64 %i.cz, ptr %i.cw, align 8, !tbaa !231
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.da, ptr %i.cv, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.au:                                            ; preds = %.loopexit
  %i.db = load ptr, ptr %i.bi, align 8, !tbaa !258 ; 10 uses
  %i.dc = ptrtoint ptr %i.cw to i64               ; 3 uses
  %i.dd = ptrtoint ptr %i.db to i64               ; 3 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.av, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc295 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit300

.noexc295:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.dg = ashr exact i64 %i.de, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = call i64 @llvm.umin.i64(i64 %i.dh, i64 1152921504606846975)
  %i.dk = select i1 %i.di, i64 1152921504606846975, i64 %i.dj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #35
          to label %.noexc296 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit300 ; 10 uses

.noexc296:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.de
  %i.do = ptrtoint ptr %i.bl to i64
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.db, %i.cw
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc296
  %i.dp = sub i64 %i.dc, %i.dd
  %i.dq = add i64 %i.dp, -8                       ; 2 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check1269 = icmp ult i64 %i.dq, 152
  br i1 %min.iters.check1269, label %.lr.ph.i.i.i.i.i.i.i.preheader1293, label %vector.memcheck1262

vector.memcheck1262:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dt = add i64 %i.dc, -8
  %i.du = sub i64 %i.dt, %i.dd
  %i.dv = and i64 %i.du, -8
  %i.dw = add i64 %i.dv, 8                        ; 2 uses
  %scevgep1263 = getelementptr i8, ptr %i.dm, i64 %i.dw
  %scevgep1264 = getelementptr i8, ptr %i.db, i64 %i.dw
  %bound01265 = icmp ult ptr %i.dm, %scevgep1264
  %bound11266 = icmp ult ptr %i.db, %scevgep1263
  %found.conflict1267 = and i1 %bound01265, %bound11266
  br i1 %found.conflict1267, label %.lr.ph.i.i.i.i.i.i.i.preheader1293, label %vector.ph1270

vector.ph1270:                                    ; preds = %vector.memcheck1262
  %n.vec1272 = and i64 %i.ds, 4611686018427387900 ; 3 uses
  %i.dx = shl i64 %n.vec1272, 3                   ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dm, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %i.db, i64 %i.dx
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %vector.ph1270
  %index1274 = phi i64 [ 0, %vector.ph1270 ], [ %index.next1279, %vector.body1273 ] ; 2 uses
  %i.ea = shl i64 %index1274, 3                   ; 2 uses
  %next.gep1275 = getelementptr i8, ptr %i.dm, i64 %i.ea ; 2 uses
  %next.gep1276 = getelementptr i8, ptr %i.db, i64 %i.ea ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.eb = getelementptr i8, ptr %next.gep1276, i64 16
  %wide.load1277 = load <2 x i64>, ptr %next.gep1276, align 8, !tbaa !231, !alias.scope !346, !noalias !341
  %wide.load1278 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !231, !alias.scope !346, !noalias !341
  %i.ec = getelementptr i8, ptr %next.gep1275, i64 16
  store <2 x i64> %wide.load1277, ptr %next.gep1275, align 8, !tbaa !231, !alias.scope !349, !noalias !346
  store <2 x i64> %wide.load1278, ptr %i.ec, align 8, !tbaa !231, !alias.scope !349, !noalias !346
  %i.ed = getelementptr i8, ptr %next.gep1276, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1276, align 8, !tbaa !231, !alias.scope !346, !noalias !341
  store <2 x ptr> splat (ptr null), ptr %i.ed, align 8, !tbaa !231, !alias.scope !346, !noalias !341
  %index.next1279 = add nuw i64 %index1274, 4     ; 2 uses
  %i.ee = icmp eq i64 %index.next1279, %n.vec1272
  br i1 %i.ee, label %middle.block1280, label %vector.body1273, !llvm.loop !351

middle.block1280:                                 ; preds = %vector.body1273
  %cmp.n1281 = icmp eq i64 %i.ds, %n.vec1272
  br i1 %cmp.n1281, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1293

.lr.ph.i.i.i.i.i.i.i.preheader1293:               ; preds = %vector.memcheck1262, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block1280
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dm, %vector.memcheck1262 ], [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dy, %middle.block1280 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.db, %vector.memcheck1262 ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dz, %middle.block1280 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1293, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1293 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1293 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.ef = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !344, !noalias !341
  store i64 %i.ef, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !341, !noalias !344
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !344, !noalias !341
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eg, %i.cw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !352

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block1280, %.noexc296
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dm, %.noexc296 ], [ %i.dy, %middle.block1280 ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.db) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.dm, ptr %i.bi, align 8, !tbaa !258
  store ptr %i.ei, ptr %i.cv, align 8, !tbaa !254
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk
  store ptr %i.ej, ptr %i.cx, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.at, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !231
  store ptr %i.el, ptr %1, align 8, !tbaa !274
  %i.em = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.au
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ax
  call void @_ZdlPv(ptr noundef %i.em) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.iq

bb.ay:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit300: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.av
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #37
  br label %bb.ba

bb.az:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit300, %bb.az
  %.pn289 = phi { ptr, i32 } [ %i.eq, %bb.az ], [ %i.ep, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit300 ], [ %i.eo, %bb.ay ]
  %i.er = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.au
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %bb.ba
  call void @_ZdlPv(ptr noundef %i.er) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %common.resume

bb.bb:                                            ; preds = %bb.e
  store ptr @.str.23, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.bc:                                            ; preds = %bb.e
  store ptr @.str.24, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.bd:                                            ; preds = %bb.e
  store ptr @.str.25, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.be:                                            ; preds = %bb.e
  store ptr @.str.26, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.bf:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.eu = load i8, ptr %i.et, align 4, !tbaa !323
  %i.ev = icmp ult i8 %i.eu, 15
  br i1 %i.ev, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !105
  switch i8 %i.ex, label %bb.bj [
    i8 5, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
    i8 7, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
    i8 9, label %bb.bh
    i8 -52, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.bi:                                            ; preds = %bb.bg
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.bj:                                            ; preds = %bb.bg
  %i.ey = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.bk unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @__cxa_throw(ptr nonnull %i.ey, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ir unwind label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread: ; preds = %bb.bj
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0246 = phi i1 [ false, %bb.bl ], [ true, %bb.bk ] ; 2 uses
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fb = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

end_hunk_1
begin_hunk_2_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  %i.oc = icmp eq ptr %i.ob, %i.go
  br i1 %i.oc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387
  call void @_ZdlPv(ptr noundef %i.ob) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388
  %i.od = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.fl
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390
  call void @_ZdlPv(ptr noundef %i.od) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !18, !noalias !377 ; 13 uses
  %i.oi = add i64 %i.oh, 1                        ; 2 uses
  %i.oj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oi) #35
          to label %.noexc398 unwind label %bb.cy ; 13 uses

.noexc398:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.oj, i8 0, i64 %i.oi, i1 false), !noalias !380
  %.not.i394 = icmp eq i64 %i.oh, 0
  br i1 %.not.i394, label %.loopexit743, label %iter.check1195

iter.check1195:                                   ; preds = %.noexc398
  %i.ok = ptrtoaddr ptr %i.oj to i64
  %i.ol = load ptr, ptr %8, align 8, !tbaa !15, !noalias !377 ; 8 uses
  %min.iters.check1181 = icmp ult i64 %i.oh, 4
  %i.om = ptrtoaddr ptr %i.ol to i64
  %i.on = sub i64 %i.om, %i.ok
  %diff.check1179 = icmp ugt i64 %i.on, -32
  %or.cond1286 = select i1 %min.iters.check1181, i1 true, i1 %diff.check1179
  br i1 %or.cond1286, label %vec.epilog.scalar.ph1196.preheader, label %vector.main.loop.iter.check1182

vector.main.loop.iter.check1182:                  ; preds = %iter.check1195
  %min.iters.check1183 = icmp ult i64 %i.oh, 32
  br i1 %min.iters.check1183, label %vec.epilog.ph1199, label %vector.ph1184

vector.ph1184:                                    ; preds = %vector.main.loop.iter.check1182
  %n.mod.vf1185 = and i64 %i.oh, 28
  %n.vec1186 = and i64 %i.oh, -32                 ; 4 uses
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1184
  %index1188 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1191, %vector.body1187 ] ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 %index1188 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %wide.load1189 = load <16 x i8>, ptr %i.oo, align 1, !tbaa !20, !noalias !377
  %wide.load1190 = load <16 x i8>, ptr %i.op, align 1, !tbaa !20, !noalias !377
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oj, i64 %index1188 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  store <16 x i8> %wide.load1189, ptr %i.oq, align 1, !tbaa !20, !noalias !377
  store <16 x i8> %wide.load1190, ptr %i.or, align 1, !tbaa !20, !noalias !377
  %index.next1191 = add nuw i64 %index1188, 32    ; 2 uses
  %i.os = icmp eq i64 %index.next1191, %n.vec1186
  br i1 %i.os, label %middle.block1192, label %vector.body1187, !llvm.loop !383

middle.block1192:                                 ; preds = %vector.body1187
  %cmp.n1193 = icmp eq i64 %i.oh, %n.vec1186
  br i1 %cmp.n1193, label %.loopexit743, label %vec.epilog.iter.check1197

vec.epilog.iter.check1197:                        ; preds = %middle.block1192
  %min.epilog.iters.check1198 = icmp eq i64 %n.mod.vf1185, 0
  br i1 %min.epilog.iters.check1198, label %vec.epilog.scalar.ph1196.preheader, label %vec.epilog.ph1199, !prof !233

vec.epilog.ph1199:                                ; preds = %vector.main.loop.iter.check1182, %vec.epilog.iter.check1197
  %vec.epilog.resume.val1194 = phi i64 [ %n.vec1186, %vec.epilog.iter.check1197 ], [ 0, %vector.main.loop.iter.check1182 ]
  %n.vec1201 = and i64 %i.oh, -4                  ; 3 uses
  br label %vec.epilog.vector.body1202

vec.epilog.vector.body1202:                       ; preds = %vec.epilog.vector.body1202, %vec.epilog.ph1199
  %index1203 = phi i64 [ %vec.epilog.resume.val1194, %vec.epilog.ph1199 ], [ %index.next1205, %vec.epilog.vector.body1202 ] ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ol, i64 %index1203
  %wide.load1204 = load <4 x i8>, ptr %i.ot, align 1, !tbaa !20, !noalias !377
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oj, i64 %index1203
  store <4 x i8> %wide.load1204, ptr %i.ou, align 1, !tbaa !20, !noalias !377
  %index.next1205 = add nuw i64 %index1203, 4     ; 2 uses
  %i.ov = icmp eq i64 %index.next1205, %n.vec1201
  br i1 %i.ov, label %vec.epilog.middle.block1206, label %vec.epilog.vector.body1202, !llvm.loop !384

vec.epilog.middle.block1206:                      ; preds = %vec.epilog.vector.body1202
  %cmp.n1207 = icmp eq i64 %i.oh, %n.vec1201
  br i1 %cmp.n1207, label %.loopexit743, label %vec.epilog.scalar.ph1196.preheader

vec.epilog.scalar.ph1196.preheader:               ; preds = %iter.check1195, %vec.epilog.iter.check1197, %vec.epilog.middle.block1206
  %.08.i396.ph = phi i64 [ 0, %iter.check1195 ], [ %n.vec1186, %vec.epilog.iter.check1197 ], [ %n.vec1201, %vec.epilog.middle.block1206 ] ; 3 uses
  %xtraiter1327 = and i64 %i.oh, 3                ; 2 uses
  %lcmp.mod1328.not = icmp eq i64 %xtraiter1327, 0
  br i1 %lcmp.mod1328.not, label %vec.epilog.scalar.ph1196.prol.loopexit, label %vec.epilog.scalar.ph1196.prol

vec.epilog.scalar.ph1196.prol:                    ; preds = %vec.epilog.scalar.ph1196.preheader, %vec.epilog.scalar.ph1196.prol
  %.08.i396.prol = phi i64 [ %i.oz, %vec.epilog.scalar.ph1196.prol ], [ %.08.i396.ph, %vec.epilog.scalar.ph1196.preheader ] ; 3 uses
  %prol.iter1329 = phi i64 [ %prol.iter1329.next, %vec.epilog.scalar.ph1196.prol ], [ 0, %vec.epilog.scalar.ph1196.preheader ]
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ol, i64 %.08.i396.prol
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !20, !noalias !377
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.08.i396.prol
  store i8 %i.ox, ptr %i.oy, align 1, !tbaa !20, !noalias !377
  %i.oz = add nuw i64 %.08.i396.prol, 1           ; 2 uses
  %prol.iter1329.next = add i64 %prol.iter1329, 1 ; 2 uses
  %prol.iter1329.cmp.not = icmp eq i64 %prol.iter1329.next, %xtraiter1327
  br i1 %prol.iter1329.cmp.not, label %vec.epilog.scalar.ph1196.prol.loopexit, label %vec.epilog.scalar.ph1196.prol, !llvm.loop !385

vec.epilog.scalar.ph1196.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1196.prol, %vec.epilog.scalar.ph1196.preheader
  %.08.i396.unr = phi i64 [ %.08.i396.ph, %vec.epilog.scalar.ph1196.preheader ], [ %i.oz, %vec.epilog.scalar.ph1196.prol ]
  %i.pa = sub i64 %.08.i396.ph, %i.oh
  %i.pb = icmp ugt i64 %i.pa, -4
  br i1 %i.pb, label %.loopexit743, label %vec.epilog.scalar.ph1196

vec.epilog.scalar.ph1196:                         ; preds = %vec.epilog.scalar.ph1196.prol.loopexit, %vec.epilog.scalar.ph1196
  %.08.i396 = phi i64 [ %i.pr, %vec.epilog.scalar.ph1196 ], [ %.08.i396.unr, %vec.epilog.scalar.ph1196.prol.loopexit ] ; 6 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ol, i64 %.08.i396
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !20, !noalias !377
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.08.i396
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !20, !noalias !377
  %i.pf = add nuw i64 %.08.i396, 1                ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !20, !noalias !377
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.pf
  store i8 %i.ph, ptr %i.pi, align 1, !tbaa !20, !noalias !377
  %i.pj = add nuw i64 %.08.i396, 2                ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !20, !noalias !377
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.pj
  store i8 %i.pl, ptr %i.pm, align 1, !tbaa !20, !noalias !377
  %i.pn = add nuw i64 %.08.i396, 3                ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !20, !noalias !377
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.pn
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !20, !noalias !377
  %i.pr = add nuw i64 %.08.i396, 4                ; 2 uses
  %exitcond.not.i397.3 = icmp eq i64 %i.pr, %i.oh
  br i1 %exitcond.not.i397.3, label %.loopexit743, label %vec.epilog.scalar.ph1196, !llvm.loop !386

.loopexit743:                                     ; preds = %vec.epilog.scalar.ph1196.prol.loopexit, %vec.epilog.scalar.ph1196, %middle.block1192, %vec.epilog.middle.block1206, %.noexc398
  %i.ps = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.oh
  store i8 0, ptr %i.ps, align 1, !tbaa !20, !noalias !377
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !254 ; 6 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !257
  %.not.i.i400 = icmp eq ptr %i.pu, %i.pw
  br i1 %.not.i.i400, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.loopexit743
  %i.px = ptrtoint ptr %i.oj to i64
  store i64 %i.px, ptr %i.pu, align 8, !tbaa !231
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  store ptr %i.py, ptr %i.pt, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit418

bb.cp:                                            ; preds = %.loopexit743
  %i.pz = load ptr, ptr %i.of, align 8, !tbaa !258 ; 10 uses
  %i.qa = ptrtoint ptr %i.pu to i64               ; 3 uses
  %i.qb = ptrtoint ptr %i.pz to i64               ; 3 uses
  %i.qc = sub i64 %i.qa, %i.qb                    ; 3 uses
  %i.qd = icmp eq i64 %i.qc, 9223372036854775800
  br i1 %i.qd, label %bb.cq, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i401

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc413 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit445

.noexc413:                                        ; preds = %bb.cq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i401: ; preds = %bb.cp
  %i.qe = ashr exact i64 %i.qc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i402 = call i64 @llvm.umax.i64(i64 %i.qe, i64 1)
  %i.qf = add nsw i64 %.sroa.speculated.i.i.i.i402, %i.qe ; 2 uses
  %i.qg = icmp ult i64 %i.qf, %i.qe
  %i.qh = call i64 @llvm.umin.i64(i64 %i.qf, i64 1152921504606846975)
  %i.qi = select i1 %i.qg, i64 1152921504606846975, i64 %i.qh ; 3 uses
  %.not.i.i.i.i403 = icmp ne i64 %i.qi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i403)
  %i.qj = shl nuw nsw i64 %i.qi, 3
  %i.qk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qj) #35
          to label %.noexc414 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit445 ; 10 uses

.noexc414:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i401
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qc
  %i.qm = ptrtoint ptr %i.oj to i64
  store i64 %i.qm, ptr %i.ql, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i404 = icmp eq ptr %i.pz, %i.pu
  br i1 %.not10.i.i.i.i.i.i.i404, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i409, label %.lr.ph.i.i.i.i.i.i.i405.preheader

.lr.ph.i.i.i.i.i.i.i405.preheader:                ; preds = %.noexc414
  %i.qn = sub i64 %i.qa, %i.qb
  %i.qo = add i64 %i.qn, -8                       ; 2 uses
  %i.qp = lshr i64 %i.qo, 3
  %i.qq = add nuw nsw i64 %i.qp, 1                ; 2 uses
  %min.iters.check1216 = icmp ult i64 %i.qo, 152
  br i1 %min.iters.check1216, label %.lr.ph.i.i.i.i.i.i.i405.preheader1294, label %vector.memcheck1209

vector.memcheck1209:                              ; preds = %.lr.ph.i.i.i.i.i.i.i405.preheader
  %i.qr = add i64 %i.qa, -8
  %i.qs = sub i64 %i.qr, %i.qb
  %i.qt = and i64 %i.qs, -8
  %i.qu = add i64 %i.qt, 8                        ; 2 uses
  %scevgep1210 = getelementptr i8, ptr %i.qk, i64 %i.qu
  %scevgep1211 = getelementptr i8, ptr %i.pz, i64 %i.qu
  %bound01212 = icmp ult ptr %i.qk, %scevgep1211
  %bound11213 = icmp ult ptr %i.pz, %scevgep1210
  %found.conflict1214 = and i1 %bound01212, %bound11213
  br i1 %found.conflict1214, label %.lr.ph.i.i.i.i.i.i.i405.preheader1294, label %vector.ph1217

vector.ph1217:                                    ; preds = %vector.memcheck1209
  %n.vec1219 = and i64 %i.qq, 4611686018427387900 ; 3 uses
  %i.qv = shl i64 %n.vec1219, 3                   ; 2 uses
  %i.qw = getelementptr i8, ptr %i.qk, i64 %i.qv  ; 2 uses
  %i.qx = getelementptr i8, ptr %i.pz, i64 %i.qv
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1217
  %index1221 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1226, %vector.body1220 ] ; 2 uses
  %i.qy = shl i64 %index1221, 3                   ; 2 uses
  %next.gep1222 = getelementptr i8, ptr %i.qk, i64 %i.qy ; 2 uses
  %next.gep1223 = getelementptr i8, ptr %i.pz, i64 %i.qy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.qz = getelementptr i8, ptr %next.gep1223, i64 16
  %wide.load1224 = load <2 x i64>, ptr %next.gep1223, align 8, !tbaa !231, !alias.scope !392, !noalias !387
  %wide.load1225 = load <2 x i64>, ptr %i.qz, align 8, !tbaa !231, !alias.scope !392, !noalias !387
  %i.ra = getelementptr i8, ptr %next.gep1222, i64 16
  store <2 x i64> %wide.load1224, ptr %next.gep1222, align 8, !tbaa !231, !alias.scope !395, !noalias !392
  store <2 x i64> %wide.load1225, ptr %i.ra, align 8, !tbaa !231, !alias.scope !395, !noalias !392
  %i.rb = getelementptr i8, ptr %next.gep1223, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1223, align 8, !tbaa !231, !alias.scope !392, !noalias !387
  store <2 x ptr> splat (ptr null), ptr %i.rb, align 8, !tbaa !231, !alias.scope !392, !noalias !387
  %index.next1226 = add nuw i64 %index1221, 4     ; 2 uses
  %i.rc = icmp eq i64 %index.next1226, %n.vec1219
  br i1 %i.rc, label %middle.block1227, label %vector.body1220, !llvm.loop !397

middle.block1227:                                 ; preds = %vector.body1220
  %cmp.n1228 = icmp eq i64 %i.qq, %n.vec1219
  br i1 %cmp.n1228, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i409, label %.lr.ph.i.i.i.i.i.i.i405.preheader1294

.lr.ph.i.i.i.i.i.i.i405.preheader1294:            ; preds = %vector.memcheck1209, %.lr.ph.i.i.i.i.i.i.i405.preheader, %middle.block1227
  %.012.i.i.i.i.i.i.i406.ph = phi ptr [ %i.qk, %vector.memcheck1209 ], [ %i.qk, %.lr.ph.i.i.i.i.i.i.i405.preheader ], [ %i.qw, %middle.block1227 ]
  %.0911.i.i.i.i.i.i.i407.ph = phi ptr [ %i.pz, %vector.memcheck1209 ], [ %i.pz, %.lr.ph.i.i.i.i.i.i.i405.preheader ], [ %i.qx, %middle.block1227 ]
  br label %.lr.ph.i.i.i.i.i.i.i405

.lr.ph.i.i.i.i.i.i.i405:                          ; preds = %.lr.ph.i.i.i.i.i.i.i405.preheader1294, %.lr.ph.i.i.i.i.i.i.i405
  %.012.i.i.i.i.i.i.i406 = phi ptr [ %i.rf, %.lr.ph.i.i.i.i.i.i.i405 ], [ %.012.i.i.i.i.i.i.i406.ph, %.lr.ph.i.i.i.i.i.i.i405.preheader1294 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i407 = phi ptr [ %i.re, %.lr.ph.i.i.i.i.i.i.i405 ], [ %.0911.i.i.i.i.i.i.i407.ph, %.lr.ph.i.i.i.i.i.i.i405.preheader1294 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.rd = load i64, ptr %.0911.i.i.i.i.i.i.i407, align 8, !tbaa !231, !alias.scope !390, !noalias !387
  store i64 %i.rd, ptr %.012.i.i.i.i.i.i.i406, align 8, !tbaa !231, !alias.scope !387, !noalias !390
  store ptr null, ptr %.0911.i.i.i.i.i.i.i407, align 8, !tbaa !231, !alias.scope !390, !noalias !387
  %i.re = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i407, i64 8 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i406, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i408 = icmp eq ptr %i.re, %i.pu
  br i1 %.not.i.i.i.i.i.i.i408, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i409, label %.lr.ph.i.i.i.i.i.i.i405, !llvm.loop !398

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i409: ; preds = %.lr.ph.i.i.i.i.i.i.i405, %middle.block1227, %.noexc414
  %.0.lcssa.i.i.i.i.i.i.i410 = phi ptr [ %i.qk, %.noexc414 ], [ %i.qw, %middle.block1227 ], [ %i.rf, %.lr.ph.i.i.i.i.i.i.i405 ]
  %i.rg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i410, i64 8
  %.not.i23.i.i.i411 = icmp eq ptr %i.pz, null
  br i1 %.not.i23.i.i.i411, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i412, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i409
  call void @_ZdlPv(ptr noundef nonnull %i.pz) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i412

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i412: ; preds = %bb.cr, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i409
  store ptr %i.qk, ptr %i.of, align 8, !tbaa !258
  store ptr %i.rg, ptr %i.pt, align 8, !tbaa !254
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.qi
  store ptr %i.rh, ptr %i.pv, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit418

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit418: ; preds = %bb.co, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i412
  %i.ri = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.of)
          to label %bb.cs unwind label %bb.cz

bb.cs:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit418
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !231
  store ptr %i.rj, ptr %1, align 8, !tbaa !274
  %i.rk = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %bb.cs
  call void @_ZdlPv(ptr noundef %i.rk) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.iq

bb.ct:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.bu
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.cd, %.critedge.i
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i334, %bb.cf
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i358, %bb.cm, %.critedge.i364
  %i.rr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rs = load ptr, ptr %15, align 8, !tbaa !15   ; 2 uses
  %i.rt = icmp eq ptr %i.rs, %i.le
  br i1 %i.rt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422: ; preds = %bb.cx
  call void @_ZdlPv(ptr noundef %i.rs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %i.ru = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.ks
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424
  call void @_ZdlPv(ptr noundef %i.ru) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425, %bb.cw
  %.pn276 = phi { ptr, i32 } [ %i.rq, %bb.cw ], [ %i.rr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425 ], [ %i.rr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424 ] ; 2 uses
  %i.rw = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ry = icmp eq ptr %i.rw, %i.rx
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427
  call void @_ZdlPv(ptr noundef %i.rw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428, %bb.cv
  %.pn276.pn = phi { ptr, i32 } [ %i.rp, %bb.cv ], [ %.pn276, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428 ], [ %.pn276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427 ] ; 2 uses
  %i.rz = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.hu
  br i1 %i.sa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430
  call void @_ZdlPv(ptr noundef %i.rz) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.sb = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.hd
  br i1 %i.sc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433
  call void @_ZdlPv(ptr noundef %i.sb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434, %bb.cu
  %.pn276.pn.pn = phi { ptr, i32 } [ %i.ro, %bb.cu ], [ %.pn276.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434 ], [ %.pn276.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433 ] ; 2 uses
  %i.sd = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.se = icmp eq ptr %i.sd, %i.go
  br i1 %i.se, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  call void @_ZdlPv(ptr noundef %i.sd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437, %bb.ct
  %.pn276.pn.pn.pn = phi { ptr, i32 } [ %i.rn, %bb.ct ], [ %.pn276.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437 ], [ %.pn276.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436 ]
  %i.sf = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.fl
  br i1 %i.sg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  call void @_ZdlPv(ptr noundef %i.sf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
end_hunk_2
begin_hunk_3_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  store i64 %i.yi, ptr %i.ya, align 8, !tbaa !20, !alias.scope !406
  %.phi.trans.insert.i470 = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %.pre.i471 = load i64, ptr %.phi.trans.insert.i470, align 8, !tbaa !18
  br label %bb.ep

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469, %bb.eo
  %i.yj = phi i64 [ %i.yf, %bb.eo ], [ %.pre.i471, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469 ]
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yl = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.yj, ptr %i.yl, align 8, !tbaa !18, !alias.scope !406
  store ptr %i.yc, ptr %i.xz, align 8, !tbaa !15
  store i64 0, ptr %i.yk, align 8, !tbaa !18
  store i8 0, ptr %i.yc, align 8, !tbaa !20
  %i.ym = load ptr, ptr %18, align 8, !tbaa !15   ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.wv
  br i1 %i.yn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %bb.ep
  call void @_ZdlPv(ptr noundef %i.ym) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.yp = load i64, ptr %i.yl, align 8, !tbaa !18, !noalias !409 ; 13 uses
  %i.yq = add i64 %i.yp, 1                        ; 2 uses
  %i.yr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yq) #35
          to label %.noexc482 unwind label %bb.fk ; 13 uses

.noexc482:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yr, i8 0, i64 %i.yq, i1 false), !noalias !412
  %.not.i478 = icmp eq i64 %i.yp, 0
  br i1 %.not.i478, label %.loopexit744, label %iter.check1142

iter.check1142:                                   ; preds = %.noexc482
  %i.ys = ptrtoaddr ptr %i.yr to i64
  %i.yt = load ptr, ptr %17, align 8, !tbaa !15, !noalias !409 ; 8 uses
  %min.iters.check1128 = icmp ult i64 %i.yp, 4
  %i.yu = ptrtoaddr ptr %i.yt to i64
  %i.yv = sub i64 %i.yu, %i.ys
  %diff.check1126 = icmp ugt i64 %i.yv, -32
  %or.cond1288 = select i1 %min.iters.check1128, i1 true, i1 %diff.check1126
  br i1 %or.cond1288, label %vec.epilog.scalar.ph1143.preheader, label %vector.main.loop.iter.check1129

vector.main.loop.iter.check1129:                  ; preds = %iter.check1142
  %min.iters.check1130 = icmp ult i64 %i.yp, 32
  br i1 %min.iters.check1130, label %vec.epilog.ph1146, label %vector.ph1131

vector.ph1131:                                    ; preds = %vector.main.loop.iter.check1129
  %n.mod.vf1132 = and i64 %i.yp, 28
  %n.vec1133 = and i64 %i.yp, -32                 ; 4 uses
  br label %vector.body1134

vector.body1134:                                  ; preds = %vector.body1134, %vector.ph1131
  %index1135 = phi i64 [ 0, %vector.ph1131 ], [ %index.next1138, %vector.body1134 ] ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yt, i64 %index1135 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %wide.load1136 = load <16 x i8>, ptr %i.yw, align 1, !tbaa !20, !noalias !409
  %wide.load1137 = load <16 x i8>, ptr %i.yx, align 1, !tbaa !20, !noalias !409
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yr, i64 %index1135 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  store <16 x i8> %wide.load1136, ptr %i.yy, align 1, !tbaa !20, !noalias !409
  store <16 x i8> %wide.load1137, ptr %i.yz, align 1, !tbaa !20, !noalias !409
  %index.next1138 = add nuw i64 %index1135, 32    ; 2 uses
  %i.za = icmp eq i64 %index.next1138, %n.vec1133
  br i1 %i.za, label %middle.block1139, label %vector.body1134, !llvm.loop !415

middle.block1139:                                 ; preds = %vector.body1134
  %cmp.n1140 = icmp eq i64 %i.yp, %n.vec1133
  br i1 %cmp.n1140, label %.loopexit744, label %vec.epilog.iter.check1144

vec.epilog.iter.check1144:                        ; preds = %middle.block1139
  %min.epilog.iters.check1145 = icmp eq i64 %n.mod.vf1132, 0
  br i1 %min.epilog.iters.check1145, label %vec.epilog.scalar.ph1143.preheader, label %vec.epilog.ph1146, !prof !233

vec.epilog.ph1146:                                ; preds = %vector.main.loop.iter.check1129, %vec.epilog.iter.check1144
  %vec.epilog.resume.val1141 = phi i64 [ %n.vec1133, %vec.epilog.iter.check1144 ], [ 0, %vector.main.loop.iter.check1129 ]
  %n.vec1148 = and i64 %i.yp, -4                  ; 3 uses
  br label %vec.epilog.vector.body1149

vec.epilog.vector.body1149:                       ; preds = %vec.epilog.vector.body1149, %vec.epilog.ph1146
  %index1150 = phi i64 [ %vec.epilog.resume.val1141, %vec.epilog.ph1146 ], [ %index.next1152, %vec.epilog.vector.body1149 ] ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yt, i64 %index1150
  %wide.load1151 = load <4 x i8>, ptr %i.zb, align 1, !tbaa !20, !noalias !409
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yr, i64 %index1150
  store <4 x i8> %wide.load1151, ptr %i.zc, align 1, !tbaa !20, !noalias !409
  %index.next1152 = add nuw i64 %index1150, 4     ; 2 uses
  %i.zd = icmp eq i64 %index.next1152, %n.vec1148
  br i1 %i.zd, label %vec.epilog.middle.block1153, label %vec.epilog.vector.body1149, !llvm.loop !416

vec.epilog.middle.block1153:                      ; preds = %vec.epilog.vector.body1149
  %cmp.n1154 = icmp eq i64 %i.yp, %n.vec1148
  br i1 %cmp.n1154, label %.loopexit744, label %vec.epilog.scalar.ph1143.preheader

vec.epilog.scalar.ph1143.preheader:               ; preds = %iter.check1142, %vec.epilog.iter.check1144, %vec.epilog.middle.block1153
  %.08.i480.ph = phi i64 [ 0, %iter.check1142 ], [ %n.vec1133, %vec.epilog.iter.check1144 ], [ %n.vec1148, %vec.epilog.middle.block1153 ] ; 3 uses
  %xtraiter1324 = and i64 %i.yp, 3                ; 2 uses
  %lcmp.mod1325.not = icmp eq i64 %xtraiter1324, 0
  br i1 %lcmp.mod1325.not, label %vec.epilog.scalar.ph1143.prol.loopexit, label %vec.epilog.scalar.ph1143.prol

vec.epilog.scalar.ph1143.prol:                    ; preds = %vec.epilog.scalar.ph1143.preheader, %vec.epilog.scalar.ph1143.prol
  %.08.i480.prol = phi i64 [ %i.zh, %vec.epilog.scalar.ph1143.prol ], [ %.08.i480.ph, %vec.epilog.scalar.ph1143.preheader ] ; 3 uses
  %prol.iter1326 = phi i64 [ %prol.iter1326.next, %vec.epilog.scalar.ph1143.prol ], [ 0, %vec.epilog.scalar.ph1143.preheader ]
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yt, i64 %.08.i480.prol
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !20, !noalias !409
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yr, i64 %.08.i480.prol
  store i8 %i.zf, ptr %i.zg, align 1, !tbaa !20, !noalias !409
  %i.zh = add nuw i64 %.08.i480.prol, 1           ; 2 uses
  %prol.iter1326.next = add i64 %prol.iter1326, 1 ; 2 uses
  %prol.iter1326.cmp.not = icmp eq i64 %prol.iter1326.next, %xtraiter1324
  br i1 %prol.iter1326.cmp.not, label %vec.epilog.scalar.ph1143.prol.loopexit, label %vec.epilog.scalar.ph1143.prol, !llvm.loop !417

vec.epilog.scalar.ph1143.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1143.prol, %vec.epilog.scalar.ph1143.preheader
  %.08.i480.unr = phi i64 [ %.08.i480.ph, %vec.epilog.scalar.ph1143.preheader ], [ %i.zh, %vec.epilog.scalar.ph1143.prol ]
  %i.zi = sub i64 %.08.i480.ph, %i.yp
  %i.zj = icmp ugt i64 %i.zi, -4
  br i1 %i.zj, label %.loopexit744, label %vec.epilog.scalar.ph1143

vec.epilog.scalar.ph1143:                         ; preds = %vec.epilog.scalar.ph1143.prol.loopexit, %vec.epilog.scalar.ph1143
  %.08.i480 = phi i64 [ %i.zz, %vec.epilog.scalar.ph1143 ], [ %.08.i480.unr, %vec.epilog.scalar.ph1143.prol.loopexit ] ; 6 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yt, i64 %.08.i480
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !20, !noalias !409
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yr, i64 %.08.i480
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !20, !noalias !409
  %i.zn = add nuw i64 %.08.i480, 1                ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.zn
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !20, !noalias !409
  %i.zq = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.zn
  store i8 %i.zp, ptr %i.zq, align 1, !tbaa !20, !noalias !409
  %i.zr = add nuw i64 %.08.i480, 2                ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !20, !noalias !409
  %i.zu = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.zr
  store i8 %i.zt, ptr %i.zu, align 1, !tbaa !20, !noalias !409
  %i.zv = add nuw i64 %.08.i480, 3                ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.zv
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !20, !noalias !409
  %i.zy = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.zv
  store i8 %i.zx, ptr %i.zy, align 1, !tbaa !20, !noalias !409
  %i.zz = add nuw i64 %.08.i480, 4                ; 2 uses
  %exitcond.not.i481.3 = icmp eq i64 %i.zz, %i.yp
  br i1 %exitcond.not.i481.3, label %.loopexit744, label %vec.epilog.scalar.ph1143, !llvm.loop !418

.loopexit744:                                     ; preds = %vec.epilog.scalar.ph1143.prol.loopexit, %vec.epilog.scalar.ph1143, %middle.block1139, %vec.epilog.middle.block1153, %.noexc482
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.yp
  store i8 0, ptr %i.aaa, align 1, !tbaa !20, !noalias !409
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !254 ; 6 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !257
  %.not.i.i484 = icmp eq ptr %i.aac, %i.aae
  br i1 %.not.i.i484, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %.loopexit744
  %i.aaf = ptrtoint ptr %i.yr to i64
  store i64 %i.aaf, ptr %i.aac, align 8, !tbaa !231
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  store ptr %i.aag, ptr %i.aab, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit502

bb.er:                                            ; preds = %.loopexit744
  %i.aah = load ptr, ptr %i.yo, align 8, !tbaa !258 ; 10 uses
  %i.aai = ptrtoint ptr %i.aac to i64             ; 3 uses
  %i.aaj = ptrtoint ptr %i.aah to i64             ; 3 uses
  %i.aak = sub i64 %i.aai, %i.aaj                 ; 3 uses
  %i.aal = icmp eq i64 %i.aak, 9223372036854775800
  br i1 %i.aal, label %bb.es, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i485

bb.es:                                            ; preds = %bb.er
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc497 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit534

.noexc497:                                        ; preds = %bb.es
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i485: ; preds = %bb.er
  %i.aam = ashr exact i64 %i.aak, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i486 = call i64 @llvm.umax.i64(i64 %i.aam, i64 1)
  %i.aan = add nsw i64 %.sroa.speculated.i.i.i.i486, %i.aam ; 2 uses
  %i.aao = icmp ult i64 %i.aan, %i.aam
  %i.aap = call i64 @llvm.umin.i64(i64 %i.aan, i64 1152921504606846975)
  %i.aaq = select i1 %i.aao, i64 1152921504606846975, i64 %i.aap ; 3 uses
  %.not.i.i.i.i487 = icmp ne i64 %i.aaq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i487)
  %i.aar = shl nuw nsw i64 %i.aaq, 3
  %i.aas = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aar) #35
          to label %.noexc498 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit534 ; 10 uses

.noexc498:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i485
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.aak
  %i.aau = ptrtoint ptr %i.yr to i64
  store i64 %i.aau, ptr %i.aat, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i488 = icmp eq ptr %i.aah, %i.aac
  br i1 %.not10.i.i.i.i.i.i.i488, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493, label %.lr.ph.i.i.i.i.i.i.i489.preheader

.lr.ph.i.i.i.i.i.i.i489.preheader:                ; preds = %.noexc498
  %i.aav = sub i64 %i.aai, %i.aaj
  %i.aaw = add i64 %i.aav, -8                     ; 2 uses
  %i.aax = lshr i64 %i.aaw, 3
  %i.aay = add nuw nsw i64 %i.aax, 1              ; 2 uses
  %min.iters.check1163 = icmp ult i64 %i.aaw, 152
  br i1 %min.iters.check1163, label %.lr.ph.i.i.i.i.i.i.i489.preheader1296, label %vector.memcheck1156

vector.memcheck1156:                              ; preds = %.lr.ph.i.i.i.i.i.i.i489.preheader
  %i.aaz = add i64 %i.aai, -8
  %i.aba = sub i64 %i.aaz, %i.aaj
  %i.abb = and i64 %i.aba, -8
  %i.abc = add i64 %i.abb, 8                      ; 2 uses
  %scevgep1157 = getelementptr i8, ptr %i.aas, i64 %i.abc
  %scevgep1158 = getelementptr i8, ptr %i.aah, i64 %i.abc
  %bound01159 = icmp ult ptr %i.aas, %scevgep1158
  %bound11160 = icmp ult ptr %i.aah, %scevgep1157
  %found.conflict1161 = and i1 %bound01159, %bound11160
  br i1 %found.conflict1161, label %.lr.ph.i.i.i.i.i.i.i489.preheader1296, label %vector.ph1164

vector.ph1164:                                    ; preds = %vector.memcheck1156
  %n.vec1166 = and i64 %i.aay, 4611686018427387900 ; 3 uses
  %i.abd = shl i64 %n.vec1166, 3                  ; 2 uses
  %i.abe = getelementptr i8, ptr %i.aas, i64 %i.abd ; 2 uses
  %i.abf = getelementptr i8, ptr %i.aah, i64 %i.abd
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1164
  %index1168 = phi i64 [ 0, %vector.ph1164 ], [ %index.next1173, %vector.body1167 ] ; 2 uses
  %i.abg = shl i64 %index1168, 3                  ; 2 uses
  %next.gep1169 = getelementptr i8, ptr %i.aas, i64 %i.abg ; 2 uses
  %next.gep1170 = getelementptr i8, ptr %i.aah, i64 %i.abg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.abh = getelementptr i8, ptr %next.gep1170, i64 16
  %wide.load1171 = load <2 x i64>, ptr %next.gep1170, align 8, !tbaa !231, !alias.scope !424, !noalias !419
  %wide.load1172 = load <2 x i64>, ptr %i.abh, align 8, !tbaa !231, !alias.scope !424, !noalias !419
  %i.abi = getelementptr i8, ptr %next.gep1169, i64 16
  store <2 x i64> %wide.load1171, ptr %next.gep1169, align 8, !tbaa !231, !alias.scope !427, !noalias !424
  store <2 x i64> %wide.load1172, ptr %i.abi, align 8, !tbaa !231, !alias.scope !427, !noalias !424
  %i.abj = getelementptr i8, ptr %next.gep1170, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1170, align 8, !tbaa !231, !alias.scope !424, !noalias !419
  store <2 x ptr> splat (ptr null), ptr %i.abj, align 8, !tbaa !231, !alias.scope !424, !noalias !419
  %index.next1173 = add nuw i64 %index1168, 4     ; 2 uses
  %i.abk = icmp eq i64 %index.next1173, %n.vec1166
  br i1 %i.abk, label %middle.block1174, label %vector.body1167, !llvm.loop !429

middle.block1174:                                 ; preds = %vector.body1167
  %cmp.n1175 = icmp eq i64 %i.aay, %n.vec1166
  br i1 %cmp.n1175, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493, label %.lr.ph.i.i.i.i.i.i.i489.preheader1296

.lr.ph.i.i.i.i.i.i.i489.preheader1296:            ; preds = %vector.memcheck1156, %.lr.ph.i.i.i.i.i.i.i489.preheader, %middle.block1174
  %.012.i.i.i.i.i.i.i490.ph = phi ptr [ %i.aas, %vector.memcheck1156 ], [ %i.aas, %.lr.ph.i.i.i.i.i.i.i489.preheader ], [ %i.abe, %middle.block1174 ]
  %.0911.i.i.i.i.i.i.i491.ph = phi ptr [ %i.aah, %vector.memcheck1156 ], [ %i.aah, %.lr.ph.i.i.i.i.i.i.i489.preheader ], [ %i.abf, %middle.block1174 ]
  br label %.lr.ph.i.i.i.i.i.i.i489

.lr.ph.i.i.i.i.i.i.i489:                          ; preds = %.lr.ph.i.i.i.i.i.i.i489.preheader1296, %.lr.ph.i.i.i.i.i.i.i489
  %.012.i.i.i.i.i.i.i490 = phi ptr [ %i.abn, %.lr.ph.i.i.i.i.i.i.i489 ], [ %.012.i.i.i.i.i.i.i490.ph, %.lr.ph.i.i.i.i.i.i.i489.preheader1296 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i491 = phi ptr [ %i.abm, %.lr.ph.i.i.i.i.i.i.i489 ], [ %.0911.i.i.i.i.i.i.i491.ph, %.lr.ph.i.i.i.i.i.i.i489.preheader1296 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.abl = load i64, ptr %.0911.i.i.i.i.i.i.i491, align 8, !tbaa !231, !alias.scope !422, !noalias !419
  store i64 %i.abl, ptr %.012.i.i.i.i.i.i.i490, align 8, !tbaa !231, !alias.scope !419, !noalias !422
  store ptr null, ptr %.0911.i.i.i.i.i.i.i491, align 8, !tbaa !231, !alias.scope !422, !noalias !419
  %i.abm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i491, i64 8 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i490, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i492 = icmp eq ptr %i.abm, %i.aac
  br i1 %.not.i.i.i.i.i.i.i492, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493, label %.lr.ph.i.i.i.i.i.i.i489, !llvm.loop !430

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493: ; preds = %.lr.ph.i.i.i.i.i.i.i489, %middle.block1174, %.noexc498
  %.0.lcssa.i.i.i.i.i.i.i494 = phi ptr [ %i.aas, %.noexc498 ], [ %i.abe, %middle.block1174 ], [ %i.abn, %.lr.ph.i.i.i.i.i.i.i489 ]
  %i.abo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i494, i64 8
  %.not.i23.i.i.i495 = icmp eq ptr %i.aah, null
  br i1 %.not.i23.i.i.i495, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493
  call void @_ZdlPv(ptr noundef nonnull %i.aah) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496: ; preds = %bb.et, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493
  store ptr %i.aas, ptr %i.yo, align 8, !tbaa !258
  store ptr %i.abo, ptr %i.aab, align 8, !tbaa !254
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.aas, i64 %i.aaq
  store ptr %i.abp, ptr %i.aad, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit502

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit502: ; preds = %bb.eq, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496
  %i.abq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yo)
          to label %bb.eu unwind label %bb.fl

bb.eu:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit502
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !231
  store ptr %i.abr, ptr %1, align 8, !tbaa !274
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 1, ptr %i.abs, align 8, !tbaa !279
  %i.abt = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.ev unwind label %bb.fl     ; 2 uses

bb.ev:                                            ; preds = %bb.eu
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abv, i8 0, i64 24, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.abt, ptr noundef nonnull align 8 dereferenceable(24) %i.abu) #34
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !280
  %i.aby = add i64 %i.abx, 1
  store i64 %i.aby, ptr %i.abw, align 8, !tbaa !280
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !286 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 16 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aca, i64 24 ; 2 uses
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !287 ; 3 uses
  %i.ace = load ptr, ptr %i.acb, align 8, !tbaa !289 ; 3 uses
  %i.acf = ptrtoint ptr %i.acd to i64
  %i.acg = ptrtoint ptr %i.ace to i64
  %i.ach = sub i64 %i.acf, %i.acg
  %i.aci = sdiv exact i64 %i.ach, 72              ; 2 uses
  %i.acj = icmp eq ptr %i.acd, %i.ace
  br i1 %i.acj, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.ack = sub nuw nsw i64 1, %i.aci
  invoke void @_ZNSt6vectorI11ArrowSchemaSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.acb, i64 noundef %i.ack)
          to label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit507 unwind label %bb.fl

bb.ex:                                            ; preds = %bb.ev
  %i.acl = icmp ugt i64 %i.aci, 1
  br i1 %i.acl, label %bb.ey, label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit507

bb.ey:                                            ; preds = %bb.ex
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ace, i64 72 ; 2 uses
  %.not.i.i504 = icmp eq ptr %i.acd, %i.acm
  br i1 %.not.i.i504, label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit507, label %_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i505

_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i505: ; preds = %bb.ey
  store ptr %i.acm, ptr %i.acc, align 8, !tbaa !287
  br label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit507

_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit507: ; preds = %_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i505, %bb.ey, %bb.ex, %bb.ew
  %i.acn = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.ez unwind label %bb.fl     ; 2 uses

bb.ez:                                            ; preds = %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit507
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acp, i8 0, i64 24, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.acn, ptr noundef nonnull align 8 dereferenceable(24) %i.aco) #34
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !290
  %i.acs = add i64 %i.acr, 1
  store i64 %i.acs, ptr %i.acq, align 8, !tbaa !290
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !286 ; 3 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 16 ; 2 uses
  %i.acw = load ptr, ptr %i.abz, align 8, !tbaa !286
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 16
  %i.acy = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb6vectorI11ArrowSchemaLb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.acx, i64 noundef 0)
          to label %bb.fa unwind label %bb.fm     ; 2 uses

bb.fa:                                            ; preds = %bb.ez
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acu, i64 24 ; 3 uses
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !293 ; 4 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acu, i64 32 ; 2 uses
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !400
  %.not.i.i509 = icmp eq ptr %i.ada, %i.adc
  br i1 %.not.i.i509, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store ptr %i.acy, ptr %i.ada, align 8, !tbaa !297
  %i.add = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  store ptr %i.add, ptr %i.acz, align 8, !tbaa !293
  br label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE9push_backEOS1_.exit518

bb.fc:                                            ; preds = %bb.fa
  %i.ade = load ptr, ptr %i.acv, align 8, !tbaa !295 ; 4 uses
  %i.adf = ptrtoint ptr %i.ada to i64
  %i.adg = ptrtoint ptr %i.ade to i64
  %i.adh = sub i64 %i.adf, %i.adg                 ; 5 uses
  %i.adi = icmp eq i64 %i.adh, 9223372036854775800
  br i1 %i.adi, label %bb.fd, label %_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i510

bb.fd:                                            ; preds = %bb.fc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc516 unwind label %bb.fm

.noexc516:                                        ; preds = %bb.fd
  unreachable

_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i510: ; preds = %bb.fc
  %i.adj = ashr exact i64 %i.adh, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i511 = call i64 @llvm.umax.i64(i64 %i.adj, i64 1)
  %i.adk = add nsw i64 %.sroa.speculated.i.i.i.i511, %i.adj ; 2 uses
  %i.adl = icmp ult i64 %i.adk, %i.adj
  %i.adm = call i64 @llvm.umin.i64(i64 %i.adk, i64 1152921504606846975)
  %i.adn = select i1 %i.adl, i64 1152921504606846975, i64 %i.adm ; 3 uses
  %.not.i.i.i.i512 = icmp ne i64 %i.adn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i512)
  %i.ado = shl nuw nsw i64 %i.adn, 3
  %i.adp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ado) #35
          to label %.noexc517 unwind label %bb.fm ; 4 uses

.noexc517:                                        ; preds = %_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i510
  %i.adq = getelementptr inbounds i8, ptr %i.adp, i64 %i.adh ; 2 uses
  store ptr %i.acy, ptr %i.adq, align 8, !tbaa !297
  %i.adr = icmp sgt i64 %i.adh, 0
  br i1 %i.adr, label %bb.fe, label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i513
end_hunk_3
begin_hunk_4_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  store ptr %i.api, ptr %i.apg, align 8, !tbaa !15
  store i64 0, ptr %i.apq, align 8, !tbaa !18
  store i8 0, ptr %i.api, align 8, !tbaa !20
  %i.apr = load i64, ptr %i.ain, align 8, !tbaa !18 ; 2 uses
  %i.aps = load i64, ptr %i.aev, align 8, !tbaa !18
  %i.apt = sub i64 4611686018427387903, %i.aps
  %i.apu = icmp ult i64 %i.apt, %i.apr
  br i1 %i.apu, label %bb.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i616

bb.hb:                                            ; preds = %bb.ha
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #36
          to label %.noexc617 unwind label %.loopexit.split-lp752

.noexc617:                                        ; preds = %bb.hb
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i616: ; preds = %bb.ha
  %i.apv = load ptr, ptr %23, align 8, !tbaa !15
  %i.apw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %i.apv, i64 noundef %i.apr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit751 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i616
  %i.apx = load ptr, ptr %23, align 8, !tbaa !15  ; 2 uses
  %i.apy = icmp eq ptr %i.apx, %i.aim
  br i1 %i.apy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.apx) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619
  %i.apz = load ptr, ptr %24, align 8, !tbaa !15  ; 2 uses
  %i.aqa = icmp eq ptr %i.apz, %i.aik
  br i1 %i.aqa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621
  call void @_ZdlPv(ptr noundef %i.apz) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  %i.aqb = add nuw i64 %.0213812, 1               ; 2 uses
  %i.aqc = load ptr, ptr %i.aex, align 8, !tbaa !275
  %i.aqd = load ptr, ptr %21, align 8, !tbaa !278
  %i.aqe = ptrtoint ptr %i.aqc to i64
  %i.aqf = ptrtoint ptr %i.aqd to i64
  %i.aqg = sub i64 %i.aqe, %i.aqf
  %i.aqh = sdiv exact i64 %i.aqg, 56
  %i.aqi = icmp ult i64 %i.aqb, %i.aqh
  br i1 %i.aqi, label %._crit_edge.i.i562, label %._crit_edge813, !llvm.loop !470

bb.hc:                                            ; preds = %._crit_edge.i.i562
  %i.aqj = landingpad { ptr, i32 }
          cleanup
  %i.aqk = load ptr, ptr %22, align 8, !tbaa !15  ; 2 uses
  %i.aql = icmp eq ptr %i.aqk, %i.aif
  br i1 %i.aql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625: ; preds = %bb.hc
  call void @_ZdlPv(ptr noundef %i.aqk) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627: ; preds = %bb.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %bb.ho

bb.hd:                                            ; preds = %bb.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568
  %i.aqm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i576
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630.loopexit.split-lp: ; preds = %bb.gk
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630.loopexit.split-lp, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.akn) #37
  br label %bb.ho

bb.he:                                            ; preds = %bb.gn, %bb.gm, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit593
  %i.aqn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.hf:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i597
  %i.aqo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636

.loopexit747:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i608
  %lpad.loopexit748 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633

.loopexit.split-lp:                               ; preds = %bb.gy
  %lpad.loopexit.split-lp749 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633

.loopexit751:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i616
  %lpad.loopexit753 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

.loopexit.split-lp752:                            ; preds = %bb.hb
  %lpad.loopexit.split-lp754 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.hg:                                            ; preds = %.loopexit.split-lp752, %.loopexit751
  %lpad.phi755 = phi { ptr, i32 } [ %lpad.loopexit753, %.loopexit751 ], [ %lpad.loopexit.split-lp754, %.loopexit.split-lp752 ] ; 2 uses
  %i.aqp = load ptr, ptr %23, align 8, !tbaa !15  ; 2 uses
  %i.aqq = icmp eq ptr %i.aqp, %i.aim
  br i1 %i.aqq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631: ; preds = %bb.hg
  call void @_ZdlPv(ptr noundef %i.aqp) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633: ; preds = %bb.hg, %.loopexit747, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631
  %.pn257 = phi { ptr, i32 } [ %lpad.phi755, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631 ], [ %lpad.loopexit.split-lp749, %.loopexit.split-lp ], [ %lpad.loopexit748, %.loopexit747 ], [ %lpad.phi755, %bb.hg ] ; 2 uses
  %i.aqr = load ptr, ptr %24, align 8, !tbaa !15  ; 2 uses
  %i.aqs = icmp eq ptr %i.aqr, %i.aik
  br i1 %i.aqs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633
  call void @_ZdlPv(ptr noundef %i.aqr) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634, %bb.hf
  %.pn257.pn = phi { ptr, i32 } [ %i.aqo, %bb.hf ], [ %.pn257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634 ], [ %.pn257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  br label %bb.ho

.loopexit745:                                     ; preds = %vec.epilog.scalar.ph1090.prol.loopexit, %vec.epilog.scalar.ph1090, %middle.block1086, %vec.epilog.middle.block1100, %.noexc560
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aiv, i64 %i.ait
  store i8 0, ptr %i.aqt, align 1, !tbaa !20, !noalias !432
  %i.aqu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !254 ; 6 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !257
  %.not.i.i637 = icmp eq ptr %i.aqv, %i.aqx
  br i1 %.not.i.i637, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %.loopexit745
  %i.aqy = ptrtoint ptr %i.aiv to i64
  store i64 %i.aqy, ptr %i.aqv, align 8, !tbaa !231
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  store ptr %i.aqz, ptr %i.aqu, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit655

bb.hi:                                            ; preds = %.loopexit745
  %i.ara = load ptr, ptr %i.ais, align 8, !tbaa !258 ; 10 uses
  %i.arb = ptrtoint ptr %i.aqv to i64             ; 3 uses
  %i.arc = ptrtoint ptr %i.ara to i64             ; 3 uses
  %i.ard = sub i64 %i.arb, %i.arc                 ; 3 uses
  %i.are = icmp eq i64 %i.ard, 9223372036854775800
  br i1 %i.are, label %bb.hj, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i638

bb.hj:                                            ; preds = %bb.hi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc650 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit661

.noexc650:                                        ; preds = %bb.hj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i638: ; preds = %bb.hi
  %i.arf = ashr exact i64 %i.ard, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i639 = call i64 @llvm.umax.i64(i64 %i.arf, i64 1)
  %i.arg = add nsw i64 %.sroa.speculated.i.i.i.i639, %i.arf ; 2 uses
  %i.arh = icmp ult i64 %i.arg, %i.arf
  %i.ari = call i64 @llvm.umin.i64(i64 %i.arg, i64 1152921504606846975)
  %i.arj = select i1 %i.arh, i64 1152921504606846975, i64 %i.ari ; 3 uses
  %.not.i.i.i.i640 = icmp ne i64 %i.arj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i640)
  %i.ark = shl nuw nsw i64 %i.arj, 3
  %i.arl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ark) #35
          to label %.noexc651 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit661 ; 10 uses

.noexc651:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i638
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 %i.ard
  %i.arn = ptrtoint ptr %i.aiv to i64
  store i64 %i.arn, ptr %i.arm, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i641 = icmp eq ptr %i.ara, %i.aqv
  br i1 %.not10.i.i.i.i.i.i.i641, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i646, label %.lr.ph.i.i.i.i.i.i.i642.preheader

.lr.ph.i.i.i.i.i.i.i642.preheader:                ; preds = %.noexc651
  %i.aro = sub i64 %i.arb, %i.arc
  %i.arp = add i64 %i.aro, -8                     ; 2 uses
  %i.arq = lshr i64 %i.arp, 3
  %i.arr = add nuw nsw i64 %i.arq, 1              ; 2 uses
  %min.iters.check1110 = icmp ult i64 %i.arp, 152
  br i1 %min.iters.check1110, label %.lr.ph.i.i.i.i.i.i.i642.preheader1303, label %vector.memcheck1103

vector.memcheck1103:                              ; preds = %.lr.ph.i.i.i.i.i.i.i642.preheader
  %i.ars = add i64 %i.arb, -8
  %i.art = sub i64 %i.ars, %i.arc
  %i.aru = and i64 %i.art, -8
  %i.arv = add i64 %i.aru, 8                      ; 2 uses
  %scevgep1104 = getelementptr i8, ptr %i.arl, i64 %i.arv
  %scevgep1105 = getelementptr i8, ptr %i.ara, i64 %i.arv
  %bound01106 = icmp ult ptr %i.arl, %scevgep1105
  %bound11107 = icmp ult ptr %i.ara, %scevgep1104
  %found.conflict1108 = and i1 %bound01106, %bound11107
  br i1 %found.conflict1108, label %.lr.ph.i.i.i.i.i.i.i642.preheader1303, label %vector.ph1111

vector.ph1111:                                    ; preds = %vector.memcheck1103
  %n.vec1113 = and i64 %i.arr, 4611686018427387900 ; 3 uses
  %i.arw = shl i64 %n.vec1113, 3                  ; 2 uses
  %i.arx = getelementptr i8, ptr %i.arl, i64 %i.arw ; 2 uses
  %i.ary = getelementptr i8, ptr %i.ara, i64 %i.arw
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %vector.ph1111
  %index1115 = phi i64 [ 0, %vector.ph1111 ], [ %index.next1120, %vector.body1114 ] ; 2 uses
  %i.arz = shl i64 %index1115, 3                  ; 2 uses
  %next.gep1116 = getelementptr i8, ptr %i.arl, i64 %i.arz ; 2 uses
  %next.gep1117 = getelementptr i8, ptr %i.ara, i64 %i.arz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.asa = getelementptr i8, ptr %next.gep1117, i64 16
  %wide.load1118 = load <2 x i64>, ptr %next.gep1117, align 8, !tbaa !231, !alias.scope !476, !noalias !471
  %wide.load1119 = load <2 x i64>, ptr %i.asa, align 8, !tbaa !231, !alias.scope !476, !noalias !471
  %i.asb = getelementptr i8, ptr %next.gep1116, i64 16
  store <2 x i64> %wide.load1118, ptr %next.gep1116, align 8, !tbaa !231, !alias.scope !479, !noalias !476
  store <2 x i64> %wide.load1119, ptr %i.asb, align 8, !tbaa !231, !alias.scope !479, !noalias !476
  %i.asc = getelementptr i8, ptr %next.gep1117, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1117, align 8, !tbaa !231, !alias.scope !476, !noalias !471
  store <2 x ptr> splat (ptr null), ptr %i.asc, align 8, !tbaa !231, !alias.scope !476, !noalias !471
  %index.next1120 = add nuw i64 %index1115, 4     ; 2 uses
  %i.asd = icmp eq i64 %index.next1120, %n.vec1113
  br i1 %i.asd, label %middle.block1121, label %vector.body1114, !llvm.loop !481

middle.block1121:                                 ; preds = %vector.body1114
  %cmp.n1122 = icmp eq i64 %i.arr, %n.vec1113
  br i1 %cmp.n1122, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i646, label %.lr.ph.i.i.i.i.i.i.i642.preheader1303

.lr.ph.i.i.i.i.i.i.i642.preheader1303:            ; preds = %vector.memcheck1103, %.lr.ph.i.i.i.i.i.i.i642.preheader, %middle.block1121
  %.012.i.i.i.i.i.i.i643.ph = phi ptr [ %i.arl, %vector.memcheck1103 ], [ %i.arl, %.lr.ph.i.i.i.i.i.i.i642.preheader ], [ %i.arx, %middle.block1121 ]
  %.0911.i.i.i.i.i.i.i644.ph = phi ptr [ %i.ara, %vector.memcheck1103 ], [ %i.ara, %.lr.ph.i.i.i.i.i.i.i642.preheader ], [ %i.ary, %middle.block1121 ]
  br label %.lr.ph.i.i.i.i.i.i.i642

.lr.ph.i.i.i.i.i.i.i642:                          ; preds = %.lr.ph.i.i.i.i.i.i.i642.preheader1303, %.lr.ph.i.i.i.i.i.i.i642
  %.012.i.i.i.i.i.i.i643 = phi ptr [ %i.asg, %.lr.ph.i.i.i.i.i.i.i642 ], [ %.012.i.i.i.i.i.i.i643.ph, %.lr.ph.i.i.i.i.i.i.i642.preheader1303 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i644 = phi ptr [ %i.asf, %.lr.ph.i.i.i.i.i.i.i642 ], [ %.0911.i.i.i.i.i.i.i644.ph, %.lr.ph.i.i.i.i.i.i.i642.preheader1303 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.ase = load i64, ptr %.0911.i.i.i.i.i.i.i644, align 8, !tbaa !231, !alias.scope !474, !noalias !471
  store i64 %i.ase, ptr %.012.i.i.i.i.i.i.i643, align 8, !tbaa !231, !alias.scope !471, !noalias !474
  store ptr null, ptr %.0911.i.i.i.i.i.i.i644, align 8, !tbaa !231, !alias.scope !474, !noalias !471
  %i.asf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i644, i64 8 ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i643, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i645 = icmp eq ptr %i.asf, %i.aqv
  br i1 %.not.i.i.i.i.i.i.i645, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i646, label %.lr.ph.i.i.i.i.i.i.i642, !llvm.loop !482

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i646: ; preds = %.lr.ph.i.i.i.i.i.i.i642, %middle.block1121, %.noexc651
  %.0.lcssa.i.i.i.i.i.i.i647 = phi ptr [ %i.arl, %.noexc651 ], [ %i.arx, %middle.block1121 ], [ %i.asg, %.lr.ph.i.i.i.i.i.i.i642 ]
  %i.ash = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i647, i64 8
  %.not.i23.i.i.i648 = icmp eq ptr %i.ara, null
  br i1 %.not.i23.i.i.i648, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i649, label %bb.hk

bb.hk:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i646
  call void @_ZdlPv(ptr noundef nonnull %i.ara) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i649

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i649: ; preds = %bb.hk, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i646
  store ptr %i.arl, ptr %i.ais, align 8, !tbaa !258
  store ptr %i.ash, ptr %i.aqu, align 8, !tbaa !254
  %i.asi = getelementptr inbounds nuw [8 x i8], ptr %i.arl, i64 %i.arj
  store ptr %i.asi, ptr %i.aqw, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit655

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit655: ; preds = %bb.hh, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i649
  %i.asj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ais)
          to label %bb.hl unwind label %bb.ga

bb.hl:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit655
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !231
  store ptr %i.ask, ptr %1, align 8, !tbaa !274
  %i.asl = load ptr, ptr %21, align 8, !tbaa !278 ; 3 uses
  %i.asm = load ptr, ptr %i.aex, align 8, !tbaa !275 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.asl, %i.asm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.hl, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.asr, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i ], [ %i.asl, %bb.hl ] ; 4 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.asn) #34
  %i.aso = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.asq = icmp eq ptr %i.aso, %i.asp
  br i1 %i.asq, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.aso) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.asr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.asr, %i.asm
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !483

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %21, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %bb.hl
  %i.ass = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.asl, %bb.hl ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ass, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, label %bb.hm

bb.hm:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ass) #37
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  %i.ast = load ptr, ptr %20, align 8, !tbaa !15  ; 2 uses
  %i.asu = icmp eq ptr %i.ast, %i.aeu
  br i1 %i.asu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ast) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %bb.iq

bb.hn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit
  %i.asv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit661: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i638, %bb.hj
  %i.asw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.aiv) #37
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit661, %bb.hd, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627, %bb.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, %bb.gd, %bb.ga
  %.pn261 = phi { ptr, i32 } [ %i.aib, %bb.gd ], [ %i.aqm, %bb.hd ], [ %i.ahm, %bb.ga ], [ %.pn257.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636 ], [ %i.aqn, %bb.he ], [ %i.aqj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627 ], [ %lpad.phi, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630 ], [ %i.asw, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit661 ], [ %i.asv, %bb.hn ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.fz
  %.pn261.pn = phi { ptr, i32 } [ %.pn261, %bb.ho ], [ %i.ahl, %bb.fz ]
  %i.asx = load ptr, ptr %20, align 8, !tbaa !15  ; 2 uses
  %i.asy = icmp eq ptr %i.asx, %i.aeu
  br i1 %i.asy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662: ; preds = %bb.hp
  call void @_ZdlPv(ptr noundef %i.asx) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664: ; preds = %bb.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %common.resume

bb.hq:                                            ; preds = %bb.e
  %i.asz = tail call noundef zeroext i8 @_ZN6duckdb8EnumType15GetPhysicalTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %2)
  switch i8 %i.asz, label %bb.ht [
    i8 2, label %bb.hy
    i8 4, label %bb.hr
    i8 6, label %bb.hs
  ]

bb.hr:                                            ; preds = %bb.hq
  br label %bb.hy

bb.hs:                                            ; preds = %bb.hq
  br label %bb.hy

bb.ht:                                            ; preds = %bb.hq
  %i.ata = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.hu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667.thread

bb.hu:                                            ; preds = %bb.ht
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ata, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.hv unwind label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  invoke void @__cxa_throw(ptr nonnull %i.ata, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ir unwind label %bb.hw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667.thread: ; preds = %bb.ht
  %i.atb = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_ZN6duckdb18ArrowTypeExtension19PopulateArrowSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKS0_:bb.a
          to label %.noexc unwind label %.thread166 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i47
  store ptr %i.ag, ptr %6, align 8, !tbaa !15, !alias.scope !499
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !499
  store i64 %i.ah, ptr %i.ac, align 8, !tbaa !20, !alias.scope !499
  br label %._crit_edge.i.i.i46

._crit_edge.i.i.i46:                              ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = phi ptr [ %i.ag, %.noexc ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.ae, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i46
  %i.aj = load i8, ptr %i.ad, align 1, !tbaa !20
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ad, i64 %i.ae, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i46
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !499 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !18, !alias.scope !499
  %i.am = load ptr, ptr %6, align 8, !tbaa !15, !alias.scope !499
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34, !noalias !499
  %i.ao = load ptr, ptr %6, align 8, !tbaa !15    ; 9 uses
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !18 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %.not176179 = icmp samesign eq i64 %i.ap, 0
  br i1 %.not176179, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.ar = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 4
  %i.as = sub i64 %i.ar, %i.y
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check226 = icmp ult i64 %i.ap, 32
  br i1 %min.iters.check226, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ap, 28
  %n.vec = and i64 %i.ap, -32                     ; 5 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %index ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load227 = load <16 x i8>, ptr %i.au, align 1, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !20
  store <16 x i8> %wide.load227, ptr %i.aw, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !502

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec229 = and i64 %i.ap, -4                   ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ao, i64 %n.vec229
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index230 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ] ; 3 uses
  %next.gep231 = getelementptr i8, ptr %i.ao, i64 %index230
  %wide.load232 = load <4 x i8>, ptr %next.gep231, align 1, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 %index230
  store <4 x i8> %wide.load232, ptr %i.az, align 1, !tbaa !20
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next233, %n.vec229
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !503

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n234 = icmp eq i64 %i.ap, %n.vec229
  br i1 %cmp.n234, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.033181.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec229, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.0151.0180.ph = phi ptr [ %i.ao, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 3 uses
  %i.bb = add i64 %i.ap, %i.ar                    ; 2 uses
  %.sroa.0151.0180.ph279 = ptrtoaddr ptr %.sroa.0151.0180.ph to i64 ; 2 uses
  %i.bc = sub i64 %i.bb, %.sroa.0151.0180.ph279
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.033181.prol = phi i64 [ %i.be, %.lr.ph.prol ], [ %.033181.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0151.0180.prol = phi ptr [ %i.bg, %.lr.ph.prol ], [ %.sroa.0151.0180.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bd = load i8, ptr %.sroa.0151.0180.prol, align 1, !tbaa !20
  %i.be = add nuw i64 %.033181.prol, 1            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.033181.prol
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0151.0180.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !504

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.033181.unr = phi i64 [ %.033181.ph, %.lr.ph.preheader ], [ %i.be, %.lr.ph.prol ]
  %.sroa.0151.0180.unr = phi ptr [ %.sroa.0151.0180.ph, %.lr.ph.preheader ], [ %i.bg, %.lr.ph.prol ]
  %i.bh = sub i64 %.sroa.0151.0180.ph279, %i.bb
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.i
  %i.bj = icmp eq ptr %i.ao, %i.ac
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50: ; preds = %._crit_edge
  %i.bk = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.bk)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ap
  store i8 0, ptr %i.bl, align 1, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !254 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !257
  %.not.i = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.br = ptrtoint ptr %i.x to i64
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !231
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !254
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !258 ; 10 uses
  %i.bu = ptrtoint ptr %i.bo to i64               ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc52 unwind label %.thread172

.noexc52:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #35
          to label %.noexc53 unwind label %.thread172 ; 10 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  %i.cg = ptrtoint ptr %i.x to i64
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.bo
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc53
  %i.ch = sub i64 %i.bu, %i.bv
  %i.ci = add i64 %i.ch, -8                       ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check239 = icmp ult i64 %i.ci, 152
  br i1 %min.iters.check239, label %.lr.ph.i.i.i.i.i.i.preheader277, label %vector.memcheck237

vector.memcheck237:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.cl = add i64 %i.bu, -8
  %i.cm = sub i64 %i.cl, %i.bv
  %i.cn = and i64 %i.cm, -8
  %i.co = add i64 %i.cn, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ce, i64 %i.co
  %scevgep238 = getelementptr i8, ptr %i.bt, i64 %i.co
  %bound0 = icmp ult ptr %i.ce, %scevgep238
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader277, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck237
  %n.vec242 = and i64 %i.ck, 4611686018427387900  ; 3 uses
  %i.cp = shl i64 %n.vec242, 3                    ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bt, i64 %i.cp
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph240
  %index244 = phi i64 [ 0, %vector.ph240 ], [ %index.next249, %vector.body243 ] ; 2 uses
  %i.cs = shl i64 %index244, 3                    ; 2 uses
  %next.gep245 = getelementptr i8, ptr %i.ce, i64 %i.cs ; 2 uses
  %next.gep246 = getelementptr i8, ptr %i.bt, i64 %i.cs ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.ct = getelementptr i8, ptr %next.gep246, i64 16
  %wide.load247 = load <2 x i64>, ptr %next.gep246, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  %wide.load248 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  %i.cu = getelementptr i8, ptr %next.gep245, i64 16
  store <2 x i64> %wide.load247, ptr %next.gep245, align 8, !tbaa !231, !alias.scope !513, !noalias !510
  store <2 x i64> %wide.load248, ptr %i.cu, align 8, !tbaa !231, !alias.scope !513, !noalias !510
  %i.cv = getelementptr i8, ptr %next.gep246, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep246, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  store <2 x ptr> splat (ptr null), ptr %i.cv, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  %index.next249 = add nuw i64 %index244, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next249, %n.vec242
  br i1 %i.cw, label %middle.block250, label %vector.body243, !llvm.loop !515

middle.block250:                                  ; preds = %vector.body243
  %cmp.n251 = icmp eq i64 %i.ck, %n.vec242
  br i1 %cmp.n251, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader277

.lr.ph.i.i.i.i.i.i.preheader277:                  ; preds = %vector.memcheck237, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block250
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ce, %vector.memcheck237 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block250 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bt, %vector.memcheck237 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cr, %middle.block250 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader277, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader277 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader277 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.cx = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !508, !noalias !505
  store i64 %i.cx, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !505, !noalias !508
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !508, !noalias !505
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.bo
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !516

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block250, %.noexc53
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ce, %.noexc53 ], [ %i.cq, %middle.block250 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ce, ptr %i.bm, align 8, !tbaa !258
  store ptr %i.da, ptr %i.bn, align 8, !tbaa !254
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.db, ptr %i.bp, align 8, !tbaa !257
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.n:                                             ; preds = %_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.i
  br i1 %i.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55: ; preds = %bb.n
  %i.df = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.df)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.dd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit147

.thread166:                                       ; preds = %.noexc.i.i47
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i146

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.033181 = phi i64 [ %i.dt, %.lr.ph ], [ %.033181.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.sroa.0151.0180 = phi ptr [ %i.dw, %.lr.ph ], [ %.sroa.0151.0180.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.dh = load i8, ptr %.sroa.0151.0180, align 1, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %i.x, i64 %.033181
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !20
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0151.0180, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.x, i64 %.033181
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store i8 %i.dk, ptr %i.dm, align 1, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0151.0180, i64 2
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %i.x, i64 %.033181
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  store i8 %i.do, ptr %i.dq, align 1, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0151.0180, i64 3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !20
  %i.dt = add nuw i64 %.033181, 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.x, i64 %.033181
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 3
  store i8 %i.ds, ptr %i.dv, align 1, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0151.0180, i64 4 ; 2 uses
  %.not176.3 = icmp eq ptr %i.dw, %i.aq
  br i1 %.not176.3, label %._crit_edge, label %.lr.ph, !llvm.loop !517

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.j
  %i.dx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !231
  store ptr %i.dy, ptr %1, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZN6duckdb19ArrowSchemaMetadataC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !18
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.ec, ptr %9, align 8, !tbaa !12, !alias.scope !518
  %i.ed = load ptr, ptr %i.g, align 8, !tbaa !15, !noalias !518 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !18, !noalias !518 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34, !noalias !518
  store i64 %i.ef, ptr %i.c, align 8, !tbaa !19, !noalias !518
  %i.eg = icmp ugt i64 %i.ef, 15
  br i1 %i.eg, label %.noexc.i.i58, label %._crit_edge.i.i.i57

.noexc.i.i58:                                     ; preds = %bb.p
  %i.eh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc59 unwind label %bb.x   ; 2 uses

.noexc59:                                         ; preds = %.noexc.i.i58
  store ptr %i.eh, ptr %9, align 8, !tbaa !15, !alias.scope !518
  %i.ei = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !518
  store i64 %i.ei, ptr %i.ec, align 8, !tbaa !20, !alias.scope !518
  br label %._crit_edge.i.i.i57

._crit_edge.i.i.i57:                              ; preds = %.noexc59, %bb.p
  %i.ej = phi ptr [ %i.eh, %.noexc59 ], [ %i.ec, %bb.p ] ; 2 uses
  switch i64 %i.ef, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i57
  %i.ek = load i8, ptr %i.ed, align 1, !tbaa !20
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !20
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %i.ed, i64 %i.ef, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i57
  %i.el = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !518 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.el, ptr %i.em, align 8, !tbaa !18, !alias.scope !518
  %i.en = load ptr, ptr %9, align 8, !tbaa !15, !alias.scope !518
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el
  store i8 0, ptr %i.eo, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34, !noalias !518
  invoke void @_ZN6duckdb19ArrowSchemaMetadata18ArrowCanonicalTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ArrowSchemaMetadata") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i unwind label %bb.u

end_hunk_5
begin_hunk_6_@_ZN6duckdb18ArrowTypeExtension19PopulateArrowSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKS0_:bb.a
  br i1 %i.hs, label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit91, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i88
  call void @_ZdlPv(ptr noundef %i.hq) #37
  br label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit91

_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit91:       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i88, %bb.ai
  %i.ht = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.gj
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit91
  call void @_ZdlPv(ptr noundef %i.ht) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.hv = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.fv
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  call void @_ZdlPv(ptr noundef %i.hv) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.am

bb.aj:                                            ; preds = %.noexc.i.i68
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.ak:                                            ; preds = %.noexc.i.i71
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.al:                                            ; preds = %bb.af
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.gj
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.ia) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.hy, %bb.ak ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.hz, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.ic = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.fv
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  call void @_ZdlPv(ptr noundef %i.ic) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %i.hx, %bb.aj ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.aw

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !525, !noalias !536 ; 3 uses
  %.not43.i = icmp eq ptr %i.ig, null
  br i1 %.not43.i, label %._crit_edge51.critedge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ih = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.is) #35
          to label %.noexc105 unwind label %bb.au ; 4 uses

.noexc105:                                        ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ih, i8 0, i64 %i.is, i1 false), !noalias !539
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !542, !noalias !536
  %i.ik = trunc i64 %i.ij to i32
  store i32 %i.ik, ptr %i.ih, align 1, !noalias !536
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  br label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %bb.am, %.lr.ph.i
  %.045.i = phi i64 [ %i.is, %.lr.ph.i ], [ 4, %bb.am ]
  %.sroa.039.044.i = phi ptr [ %i.it, %.lr.ph.i ], [ %i.ig, %bb.am ] ; 3 uses
  %i.im = add i64 %.045.i, 8
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 16
  %i.io = load i64, ptr %i.in, align 8, !tbaa !18, !noalias !536
  %i.ip = add i64 %i.im, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 48
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !18, !noalias !536
  %i.is = add i64 %i.ip, %i.ir                    ; 3 uses
  %i.it = load ptr, ptr %.sroa.039.044.i, align 8, !tbaa !53, !noalias !536 ; 2 uses
  %.not.i104 = icmp eq ptr %i.it, null
  br i1 %.not.i104, label %._crit_edge.i, label %.lr.ph.i

._crit_edge51.critedge.i:                         ; preds = %bb.am
  %i.iu = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #35
          to label %.noexc106 unwind label %bb.au ; 2 uses

.noexc106:                                        ; preds = %._crit_edge51.critedge.i
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !542, !noalias !536
  %i.ix = trunc i64 %i.iw to i32
  store i32 %i.ix, ptr %i.iu, align 1, !noalias !536
  br label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit

.lr.ph50.i:                                       ; preds = %.lr.ph50.i, %.noexc105
  %.03348.i = phi ptr [ %i.jp, %.lr.ph50.i ], [ %i.il, %.noexc105 ] ; 2 uses
  %.sroa.035.047.i = phi ptr [ %i.jq, %.lr.ph50.i ], [ %i.ig, %.noexc105 ] ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 16 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !18, !noalias !536 ; 2 uses
  %i.jb = trunc i64 %i.ja to i32
  store i32 %i.jb, ptr %.03348.i, align 1, !noalias !536
  %i.jc = getelementptr inbounds nuw i8, ptr %.03348.i, i64 4 ; 2 uses
  %i.jd = load ptr, ptr %i.iy, align 8, !tbaa !15, !noalias !536
  %i.je = load i64, ptr %i.iz, align 8, !tbaa !18, !noalias !536
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jc, ptr align 1 %i.jd, i64 %i.je, i1 false), !noalias !536
  %sext.i = shl i64 %i.ja, 32
  %i.jf = ashr exact i64 %sext.i, 32
  %i.jg = getelementptr inbounds i8, ptr %i.jc, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 40
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 48 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !18, !noalias !536 ; 2 uses
  %i.jk = trunc i64 %i.jj to i32
  store i32 %i.jk, ptr %i.jg, align 1, !noalias !536
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 2 uses
  %i.jm = load ptr, ptr %i.jh, align 8, !tbaa !15, !noalias !536
  %i.jn = load i64, ptr %i.ji, align 8, !tbaa !18, !noalias !536
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jl, ptr align 1 %i.jm, i64 %i.jn, i1 false), !noalias !536
  %sext34.i = shl i64 %i.jj, 32
  %i.jo = ashr exact i64 %sext34.i, 32
  %i.jp = getelementptr inbounds i8, ptr %i.jl, i64 %i.jo
  %i.jq = load ptr, ptr %.sroa.035.047.i, align 8, !tbaa !53, !noalias !536 ; 2 uses
  %.not42.i = icmp eq ptr %i.jq, null
  br i1 %.not42.i, label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit, label %.lr.ph50.i

_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit: ; preds = %.lr.ph50.i, %.noexc106
  %.sroa.0.0 = phi ptr [ %i.iu, %.noexc106 ], [ %i.ih, %.lr.ph50.i ] ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !254 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !257
  %.not.i107 = icmp eq ptr %i.js, %i.ju
  br i1 %.not.i107, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.jv = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.jv, ptr %i.js, align 8, !tbaa !231
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store ptr %i.jw, ptr %i.jr, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.ao:                                            ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.jx = load ptr, ptr %i.ie, align 8, !tbaa !258 ; 10 uses
  %i.jy = ptrtoint ptr %i.js to i64               ; 3 uses
  %i.jz = ptrtoint ptr %i.jx to i64               ; 3 uses
  %i.ka = sub i64 %i.jy, %i.jz                    ; 3 uses
  %i.kb = icmp eq i64 %i.ka, 9223372036854775800
  br i1 %i.kb, label %bb.ap, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i108

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc120 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit144

.noexc120:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i108: ; preds = %bb.ao
  %i.kc = ashr exact i64 %i.ka, 3                 ; 3 uses
  %.sroa.speculated.i.i.i109 = call i64 @llvm.umax.i64(i64 %i.kc, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i.i109, %i.kc ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kc
  %i.kf = call i64 @llvm.umin.i64(i64 %i.kd, i64 1152921504606846975)
  %i.kg = select i1 %i.ke, i64 1152921504606846975, i64 %i.kf ; 3 uses
  %.not.i.i.i110 = icmp ne i64 %i.kg, 0
  call void @llvm.assume(i1 %.not.i.i.i110)
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #35
          to label %.noexc121 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit144 ; 10 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i108
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ka
  %i.kk = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.kk, ptr %i.kj, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i111 = icmp eq ptr %i.jx, %i.js
  br i1 %.not10.i.i.i.i.i.i111, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i116, label %.lr.ph.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i112.preheader:                  ; preds = %.noexc121
  %i.kl = sub i64 %i.jy, %i.jz
  %i.km = add i64 %i.kl, -8                       ; 2 uses
  %i.kn = lshr i64 %i.km, 3
  %i.ko = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %min.iters.check260 = icmp ult i64 %i.km, 152
  br i1 %min.iters.check260, label %.lr.ph.i.i.i.i.i.i112.preheader275, label %vector.memcheck253

vector.memcheck253:                               ; preds = %.lr.ph.i.i.i.i.i.i112.preheader
  %i.kp = add i64 %i.jy, -8
  %i.kq = sub i64 %i.kp, %i.jz
  %i.kr = and i64 %i.kq, -8
  %i.ks = add i64 %i.kr, 8                        ; 2 uses
  %scevgep254 = getelementptr i8, ptr %i.ki, i64 %i.ks
  %scevgep255 = getelementptr i8, ptr %i.jx, i64 %i.ks
  %bound0256 = icmp ult ptr %i.ki, %scevgep255
  %bound1257 = icmp ult ptr %i.jx, %scevgep254
  %found.conflict258 = and i1 %bound0256, %bound1257
  br i1 %found.conflict258, label %.lr.ph.i.i.i.i.i.i112.preheader275, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck253
  %n.vec263 = and i64 %i.ko, 4611686018427387900  ; 3 uses
  %i.kt = shl i64 %n.vec263, 3                    ; 2 uses
  %i.ku = getelementptr i8, ptr %i.ki, i64 %i.kt  ; 2 uses
  %i.kv = getelementptr i8, ptr %i.jx, i64 %i.kt
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph261
  %index265 = phi i64 [ 0, %vector.ph261 ], [ %index.next270, %vector.body264 ] ; 2 uses
  %i.kw = shl i64 %index265, 3                    ; 2 uses
  %next.gep266 = getelementptr i8, ptr %i.ki, i64 %i.kw ; 2 uses
  %next.gep267 = getelementptr i8, ptr %i.jx, i64 %i.kw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.kx = getelementptr i8, ptr %next.gep267, i64 16
  %wide.load268 = load <2 x i64>, ptr %next.gep267, align 8, !tbaa !231, !alias.scope !548, !noalias !543
  %wide.load269 = load <2 x i64>, ptr %i.kx, align 8, !tbaa !231, !alias.scope !548, !noalias !543
  %i.ky = getelementptr i8, ptr %next.gep266, i64 16
  store <2 x i64> %wide.load268, ptr %next.gep266, align 8, !tbaa !231, !alias.scope !551, !noalias !548
  store <2 x i64> %wide.load269, ptr %i.ky, align 8, !tbaa !231, !alias.scope !551, !noalias !548
  %i.kz = getelementptr i8, ptr %next.gep267, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep267, align 8, !tbaa !231, !alias.scope !548, !noalias !543
  store <2 x ptr> splat (ptr null), ptr %i.kz, align 8, !tbaa !231, !alias.scope !548, !noalias !543
  %index.next270 = add nuw i64 %index265, 4       ; 2 uses
  %i.la = icmp eq i64 %index.next270, %n.vec263
  br i1 %i.la, label %middle.block271, label %vector.body264, !llvm.loop !553

middle.block271:                                  ; preds = %vector.body264
  %cmp.n272 = icmp eq i64 %i.ko, %n.vec263
  br i1 %cmp.n272, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i116, label %.lr.ph.i.i.i.i.i.i112.preheader275

.lr.ph.i.i.i.i.i.i112.preheader275:               ; preds = %vector.memcheck253, %.lr.ph.i.i.i.i.i.i112.preheader, %middle.block271
  %.012.i.i.i.i.i.i113.ph = phi ptr [ %i.ki, %vector.memcheck253 ], [ %i.ki, %.lr.ph.i.i.i.i.i.i112.preheader ], [ %i.ku, %middle.block271 ]
  %.0911.i.i.i.i.i.i114.ph = phi ptr [ %i.jx, %vector.memcheck253 ], [ %i.jx, %.lr.ph.i.i.i.i.i.i112.preheader ], [ %i.kv, %middle.block271 ]
  br label %.lr.ph.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i112:                            ; preds = %.lr.ph.i.i.i.i.i.i112.preheader275, %.lr.ph.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i113 = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i112.preheader275 ] ; 2 uses
  %.0911.i.i.i.i.i.i114 = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i.i112 ], [ %.0911.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i112.preheader275 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.lb = load i64, ptr %.0911.i.i.i.i.i.i114, align 8, !tbaa !231, !alias.scope !546, !noalias !543
  store i64 %i.lb, ptr %.012.i.i.i.i.i.i113, align 8, !tbaa !231, !alias.scope !543, !noalias !546
  store ptr null, ptr %.0911.i.i.i.i.i.i114, align 8, !tbaa !231, !alias.scope !546, !noalias !543
  %i.lc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i114, i64 8 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i113, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i115 = icmp eq ptr %i.lc, %i.js
  br i1 %.not.i.i.i.i.i.i115, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i116, label %.lr.ph.i.i.i.i.i.i112, !llvm.loop !554

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i116: ; preds = %.lr.ph.i.i.i.i.i.i112, %middle.block271, %.noexc121
  %.0.lcssa.i.i.i.i.i.i117 = phi ptr [ %i.ki, %.noexc121 ], [ %i.ku, %middle.block271 ], [ %i.ld, %.lr.ph.i.i.i.i.i.i112 ]
  %i.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i117, i64 8
  %.not.i23.i.i118 = icmp eq ptr %i.jx, null
  br i1 %.not.i23.i.i118, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i119, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i116
  call void @_ZdlPv(ptr noundef nonnull %i.jx) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i119

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i119: ; preds = %bb.aq, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i116
  store ptr %i.ki, ptr %i.ie, align 8, !tbaa !258
  store ptr %i.le, ptr %i.jr, align 8, !tbaa !254
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kg
  store ptr %i.lf, ptr %i.jt, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.an, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i119
  %i.lg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ie)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !231
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !272
  %i.lj = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !521 ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i124, label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i126, label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i125

_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i125: ; preds = %bb.ar
  call void @_ZN6duckdb11ComplexJSOND2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.lk) #34, !inline_history !524
  call void @_ZdlPv(ptr noundef nonnull %i.lk) #37, !inline_history !524
  br label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i126

_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i126: ; preds = %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i125, %bb.ar
  %i.ll = load ptr, ptr %i.if, align 8, !tbaa !525 ; 2 uses
  %.not5.i.i.i.i.i127 = icmp eq ptr %i.ll, null
  br i1 %.not5.i.i.i.i.i127, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i135, label %.lr.ph.i.i.i.i.i128

.lr.ph.i.i.i.i.i128:                              ; preds = %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i126, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i133
  %.06.i.i.i.i.i129 = phi ptr [ %i.lm, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i133 ], [ %i.ll, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i126 ] ; 6 uses
  %i.lm = load ptr, ptr %.06.i.i.i.i.i129, align 8, !tbaa !53 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i129, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i129, i64 40
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !15 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i129, i64 56
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i130: ; preds = %.lr.ph.i.i.i.i.i128
  call void @_ZdlPv(ptr noundef %i.lp) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i131: ; preds = %.lr.ph.i.i.i.i.i128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i130
  %i.ls = load ptr, ptr %i.ln, align 8, !tbaa !15 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i129, i64 24
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i131
  call void @_ZdlPv(ptr noundef %i.ls) #37
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i133

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i132
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i129) #37
  %.not.i.i.i.i.i134 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i.i.i134, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i135, label %.lr.ph.i.i.i.i.i128, !llvm.loop !527

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i135: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i133, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i126
  %i.lv = load ptr, ptr %7, align 8, !tbaa !528
  %i.lw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !529
  %i.ly = shl i64 %i.lx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.lv, i8 0, i64 %i.ly, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 0, i64 16, i1 false)
  %i.lz = load ptr, ptr %7, align 8, !tbaa !528   ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit141, label %bb.as

bb.as:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i135
  call void @_ZdlPv(ptr noundef %i.lz) #37
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit141

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit141: ; preds = %bb.as, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit141, %bb.b
  ret void

bb.au:                                            ; preds = %._crit_edge51.critedge.i, %._crit_edge.i
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit144: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i108, %bb.ap
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #37
  br label %bb.aw

bb.av:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit144, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.pn41 = phi { ptr, i32 } [ %i.me, %bb.av ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.md, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit144 ], [ %i.mc, %bb.au ]
  call void @_ZN6duckdb19ArrowSchemaMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #34
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.aw
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %bb.aw ], [ %i.fp, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit147

.thread172:                                       ; preds = %bb.l, %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i146

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i146: ; preds = %.thread172, %.thread166
  %.pn41.pn.pn171 = phi { ptr, i32 } [ %i.dg, %.thread166 ], [ %lpad.thr_comm, %.thread172 ]
  call void @_ZdaPv(ptr noundef nonnull %i.x) #37
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit147

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit147: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i146, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn41.pn, %.thread ], [ %.pn41.pn.pn171, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i146 ]
  resume { ptr, i32 } %.pn41.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18ArrowTypeExtensionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
end_hunk_6
begin_hunk_7_@_ZN6duckdb13ArrowGeometry14PopulateSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKNS_18ArrowTypeExtensionE:.noexc.i
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.cc, ptr %11, align 8, !tbaa !12
  store i16 32123, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 2, ptr %i.cd, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 18
  store i8 0, ptr %i.ce, align 2, !tbaa !20
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc99 unwind label %bb.y

.noexc99:                                         ; preds = %.noexc93
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN6duckdb19ArrowSchemaMetadata9AddOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit101 unwind label %bb.y

_ZN6duckdb19ArrowSchemaMetadata9AddOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit101: ; preds = %.noexc99
  %i.cg = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.cc
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZN6duckdb19ArrowSchemaMetadata9AddOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit101
  call void @_ZdlPv(ptr noundef %i.cg) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZN6duckdb19ArrowSchemaMetadata9AddOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.ci = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bw
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  call void @_ZdlPv(ptr noundef %i.ci) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.z

bb.x:                                             ; preds = %.noexc.i92
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.y:                                             ; preds = %.noexc99, %.noexc93
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cc
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.cm) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.co = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bw
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  call void @_ZdlPv(ptr noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.x
  %.pn35.pn = phi { ptr, i32 } [ %i.ck, %bb.x ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.aj

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !525, !noalias !778 ; 3 uses
  %.not43.i = icmp eq ptr %i.cs, null
  br i1 %.not43.i, label %._crit_edge51.critedge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ct = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #35
          to label %.noexc115 unwind label %bb.ah ; 4 uses

.noexc115:                                        ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ct, i8 0, i64 %i.de, i1 false), !noalias !781
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !542, !noalias !778
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.ct, align 1, !noalias !778
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  br label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.i
  %.045.i = phi i64 [ %i.de, %.lr.ph.i ], [ 4, %bb.z ]
  %.sroa.039.044.i = phi ptr [ %i.df, %.lr.ph.i ], [ %i.cs, %bb.z ] ; 3 uses
  %i.cy = add i64 %.045.i, 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !18, !noalias !778
  %i.db = add i64 %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 48
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !18, !noalias !778
  %i.de = add i64 %i.db, %i.dd                    ; 3 uses
  %i.df = load ptr, ptr %.sroa.039.044.i, align 8, !tbaa !53, !noalias !778 ; 2 uses
  %.not.i114 = icmp eq ptr %i.df, null
  br i1 %.not.i114, label %._crit_edge.i, label %.lr.ph.i

._crit_edge51.critedge.i:                         ; preds = %bb.z
  %i.dg = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #35
          to label %.noexc116 unwind label %bb.ah ; 2 uses

.noexc116:                                        ; preds = %._crit_edge51.critedge.i
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !542, !noalias !778
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %i.dg, align 1, !noalias !778
  br label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit

.lr.ph50.i:                                       ; preds = %.lr.ph50.i, %.noexc115
  %.03348.i = phi ptr [ %i.eb, %.lr.ph50.i ], [ %i.cx, %.noexc115 ] ; 2 uses
  %.sroa.035.047.i = phi ptr [ %i.ec, %.lr.ph50.i ], [ %i.cs, %.noexc115 ] ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !18, !noalias !778 ; 2 uses
  %i.dn = trunc i64 %i.dm to i32
  store i32 %i.dn, ptr %.03348.i, align 1, !noalias !778
  %i.do = getelementptr inbounds nuw i8, ptr %.03348.i, i64 4 ; 2 uses
  %i.dp = load ptr, ptr %i.dk, align 8, !tbaa !15, !noalias !778
  %i.dq = load i64, ptr %i.dl, align 8, !tbaa !18, !noalias !778
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %i.dp, i64 %i.dq, i1 false), !noalias !778
  %sext.i = shl i64 %i.dm, 32
  %i.dr = ashr exact i64 %sext.i, 32
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 48 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !18, !noalias !778 ; 2 uses
  %i.dw = trunc i64 %i.dv to i32
  store i32 %i.dw, ptr %i.ds, align 1, !noalias !778
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !15, !noalias !778
  %i.dz = load i64, ptr %i.du, align 8, !tbaa !18, !noalias !778
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr align 1 %i.dy, i64 %i.dz, i1 false), !noalias !778
  %sext34.i = shl i64 %i.dv, 32
  %i.ea = ashr exact i64 %sext34.i, 32
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 %i.ea
  %i.ec = load ptr, ptr %.sroa.035.047.i, align 8, !tbaa !53, !noalias !778 ; 2 uses
  %.not42.i = icmp eq ptr %i.ec, null
  br i1 %.not42.i, label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit, label %.lr.ph50.i

_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit: ; preds = %.lr.ph50.i, %.noexc116
  %.sroa.0.0 = phi ptr [ %i.dg, %.noexc116 ], [ %i.ct, %.lr.ph50.i ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !254 ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !257
  %.not.i117 = icmp eq ptr %i.ee, %i.eg
  br i1 %.not.i117, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.eh = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.eh, ptr %i.ee, align 8, !tbaa !231
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ei, ptr %i.ed, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.ab:                                            ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.ej = load ptr, ptr %i.cq, align 8, !tbaa !258 ; 10 uses
  %i.ek = ptrtoint ptr %i.ee to i64               ; 3 uses
  %i.el = ptrtoint ptr %i.ej to i64               ; 3 uses
  %i.em = sub i64 %i.ek, %i.el                    ; 3 uses
  %i.en = icmp eq i64 %i.em, 9223372036854775800
  br i1 %i.en, label %bb.ac, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc118 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit123

.noexc118:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.eo = ashr exact i64 %i.em, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eo, i64 1)
  %i.ep = add nsw i64 %.sroa.speculated.i.i.i, %i.eo ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.eo
  %i.er = call i64 @llvm.umin.i64(i64 %i.ep, i64 1152921504606846975)
  %i.es = select i1 %i.eq, i64 1152921504606846975, i64 %i.er ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.es, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.et = shl nuw nsw i64 %i.es, 3
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #35
          to label %.noexc119 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit123 ; 10 uses

.noexc119:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.em
  %i.ew = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.ew, ptr %i.ev, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ej, %i.ee
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc119
  %i.ex = sub i64 %i.ek, %i.el
  %i.ey = add i64 %i.ex, -8                       ; 2 uses
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = add nuw nsw i64 %i.ez, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ey, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.fb = add i64 %i.ek, -8
  %i.fc = sub i64 %i.fb, %i.el
  %i.fd = and i64 %i.fc, -8
  %i.fe = add i64 %i.fd, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.eu, i64 %i.fe
  %scevgep170 = getelementptr i8, ptr %i.ej, i64 %i.fe
  %bound0 = icmp ult ptr %i.eu, %scevgep170
  %bound1 = icmp ult ptr %i.ej, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fa, 4611686018427387900     ; 3 uses
  %i.ff = shl i64 %n.vec, 3                       ; 2 uses
  %i.fg = getelementptr i8, ptr %i.eu, i64 %i.ff  ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ej, i64 %i.ff
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eu, i64 %i.fi ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.ej, i64 %i.fi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.fj = getelementptr i8, ptr %next.gep171, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep171, align 8, !tbaa !231, !alias.scope !789, !noalias !784
  %wide.load172 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !231, !alias.scope !789, !noalias !784
  %i.fk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !792, !noalias !789
  store <2 x i64> %wide.load172, ptr %i.fk, align 8, !tbaa !231, !alias.scope !792, !noalias !789
  %i.fl = getelementptr i8, ptr %next.gep171, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep171, align 8, !tbaa !231, !alias.scope !789, !noalias !784
  store <2 x ptr> splat (ptr null), ptr %i.fl, align 8, !tbaa !231, !alias.scope !789, !noalias !784
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !794

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader174

.lr.ph.i.i.i.i.i.i.preheader174:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.eu, %vector.memcheck ], [ %i.eu, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fg, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ej, %vector.memcheck ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader174, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader174 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader174 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.fn = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !787, !noalias !784
  store i64 %i.fn, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !784, !noalias !787
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !787, !noalias !784
  %i.fo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fo, %i.ee
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !795

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc119
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.eu, %.noexc119 ], [ %i.fg, %middle.block ], [ %i.fp, %.lr.ph.i.i.i.i.i.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ej) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.eu, ptr %i.cq, align 8, !tbaa !258
  store ptr %i.fq, ptr %i.ed, align 8, !tbaa !254
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.es
  store ptr %i.fr, ptr %i.ef, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.aa, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %bb.ae unwind label %bb.t

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !231
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  invoke void @_ZN6duckdb13ClientContext19GetClientPropertiesEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ClientProperties") align 8 %12, ptr noundef nonnull align 8 dereferenceable(512) %3)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !324
  %i.fx = icmp eq i8 %i.fw, 1
  %.str.32..str.33 = select i1 %i.fx, ptr @.str.32, ptr @.str.33
  store ptr %.str.32..str.33, ptr %1, align 8, !tbaa !274
  %i.fy = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZN6duckdb16ClientPropertiesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.fy) #37
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit

_ZN6duckdb16ClientPropertiesD2Ev.exit:            ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !521 ; 3 uses
  %.not.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb16ClientPropertiesD2Ev.exit
  call void @_ZN6duckdb11ComplexJSOND2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.gc) #34, !inline_history !524
  call void @_ZdlPv(ptr noundef nonnull %i.gc) #37, !inline_history !524
  br label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i, %_ZN6duckdb16ClientPropertiesD2Ev.exit
  %i.gd = load ptr, ptr %i.cr, align 8, !tbaa !525 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ge, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.gd, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i ] ; 6 uses
  %i.ge = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !15 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.gh) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.gk = load ptr, ptr %i.gf, align 8, !tbaa !15 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.gk) #37
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #37
  %.not.i.i.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !527

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i
  %i.gn = load ptr, ptr %5, align 8, !tbaa !528
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !529
  %i.gq = shl i64 %i.gp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gn, i8 0, i64 %i.gq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  %i.gr = load ptr, ptr %5, align 8, !tbaa !528   ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.gr) #37
  br label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit

_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit:         ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.ah:                                            ; preds = %._crit_edge51.critedge.i, %._crit_edge.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit123: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.ac
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #37
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit123, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.t
  %.pn43 = phi { ptr, i32 } [ %i.gw, %bb.ai ], [ %i.bo, %bb.t ], [ %.pn35.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn38.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.gv, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit123 ], [ %i.gu, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.ak

bb.ak:                                            ; preds = %bb.j, %bb.n, %bb.aj, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.al, %bb.j ], [ %.pn43, %bb.aj ], [ %i.aq, %bb.n ], [ %i.am, %bb.k ]
  call void @_ZN6duckdb19ArrowSchemaMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
end_hunk_7
begin_hunk_8_@_ZN6duckdb9ArrowJson14PopulateSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKNS_18ArrowTypeExtensionE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !830 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !18, !alias.scope !830
  %i.n = load ptr, ptr %6, align 8, !tbaa !15, !alias.scope !830
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !830
  invoke void @_ZN6duckdb19ArrowSchemaMetadata18ArrowCanonicalTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ArrowSchemaMetadata") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %6, align 8, !tbaa !15     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.p) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.s) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.w) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.aa) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.ad = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  call void @_ZdlPv(ptr noundef %i.ad) #37
  br label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !525, !noalias !833 ; 3 uses
  %.not43.i = icmp eq ptr %i.ai, null
  br i1 %.not43.i, label %._crit_edge51.critedge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.aj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.au) #35
          to label %.noexc19 unwind label %bb.n   ; 4 uses

.noexc19:                                         ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 0, i64 %i.au, i1 false), !noalias !836
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !542, !noalias !833
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %i.aj, align 1, !noalias !833
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  br label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, %.lr.ph.i
  %.045.i = phi i64 [ %i.au, %.lr.ph.i ], [ 4, %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit ]
  %.sroa.039.044.i = phi ptr [ %i.av, %.lr.ph.i ], [ %i.ai, %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit ] ; 3 uses
  %i.ao = add i64 %.045.i, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !18, !noalias !833
  %i.ar = add i64 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !833
  %i.au = add i64 %i.ar, %i.at                    ; 3 uses
  %i.av = load ptr, ptr %.sroa.039.044.i, align 8, !tbaa !53, !noalias !833 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge51.critedge.i:                         ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit
  %i.aw = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #35
          to label %.noexc20 unwind label %bb.n   ; 2 uses

.noexc20:                                         ; preds = %._crit_edge51.critedge.i
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !542, !noalias !833
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.aw, align 1, !noalias !833
  br label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit

.lr.ph50.i:                                       ; preds = %.lr.ph50.i, %.noexc19
  %.03348.i = phi ptr [ %i.br, %.lr.ph50.i ], [ %i.an, %.noexc19 ] ; 2 uses
  %.sroa.035.047.i = phi ptr [ %i.bs, %.lr.ph50.i ], [ %i.ai, %.noexc19 ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !18, !noalias !833 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  store i32 %i.bd, ptr %.03348.i, align 1, !noalias !833
  %i.be = getelementptr inbounds nuw i8, ptr %.03348.i, i64 4 ; 2 uses
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !15, !noalias !833
  %i.bg = load i64, ptr %i.bb, align 8, !tbaa !18, !noalias !833
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %i.bf, i64 %i.bg, i1 false), !noalias !833
  %sext.i = shl i64 %i.bc, 32
  %i.bh = ashr exact i64 %sext.i, 32
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 48 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !18, !noalias !833 ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  store i32 %i.bm, ptr %i.bi, align 1, !noalias !833
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !15, !noalias !833
  %i.bp = load i64, ptr %i.bk, align 8, !tbaa !18, !noalias !833
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %i.bo, i64 %i.bp, i1 false), !noalias !833
  %sext34.i = shl i64 %i.bl, 32
  %i.bq = ashr exact i64 %sext34.i, 32
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq
  %i.bs = load ptr, ptr %.sroa.035.047.i, align 8, !tbaa !53, !noalias !833 ; 2 uses
  %.not42.i = icmp eq ptr %i.bs, null
  br i1 %.not42.i, label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit, label %.lr.ph50.i

_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit: ; preds = %.lr.ph50.i, %.noexc20
  %.sroa.0.0 = phi ptr [ %i.aw, %.noexc20 ], [ %i.aj, %.lr.ph50.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !254 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !257
  %.not.i21 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not.i21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.bx = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !231
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.g:                                             ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !258 ; 10 uses
  %i.ca = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc22 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit30

.noexc22:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #35
          to label %.noexc23 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit30 ; 10 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  %i.cm = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.cm, ptr %i.cl, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.bu
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc23
  %i.cn = sub i64 %i.ca, %i.cb
  %i.co = add i64 %i.cn, -8                       ; 2 uses
  %i.cp = lshr i64 %i.co, 3
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.co, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.cr = add i64 %i.ca, -8
  %i.cs = sub i64 %i.cr, %i.cb
  %i.ct = and i64 %i.cs, -8
  %i.cu = add i64 %i.ct, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ck, i64 %i.cu
  %scevgep56 = getelementptr i8, ptr %i.bz, i64 %i.cu
  %bound0 = icmp ult ptr %i.ck, %scevgep56
  %bound1 = icmp ult ptr %i.bz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cq, 4611686018427387900     ; 3 uses
  %i.cv = shl i64 %n.vec, 3                       ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ck, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.bz, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.cy ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.bz, i64 %i.cy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.cz = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep57, align 8, !tbaa !231, !alias.scope !844, !noalias !839
  %wide.load58 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !231, !alias.scope !844, !noalias !839
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !847, !noalias !844
  store <2 x i64> %wide.load58, ptr %i.da, align 8, !tbaa !231, !alias.scope !847, !noalias !844
  %i.db = getelementptr i8, ptr %next.gep57, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep57, align 8, !tbaa !231, !alias.scope !844, !noalias !839
  store <2 x ptr> splat (ptr null), ptr %i.db, align 8, !tbaa !231, !alias.scope !844, !noalias !839
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !849

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader60

.lr.ph.i.i.i.i.i.i.preheader60:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader60, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader60 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader60 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.dd = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !842, !noalias !839
  store i64 %i.dd, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !839, !noalias !842
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !842, !noalias !839
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.de, %i.bu
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !850

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc23
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ck, %.noexc23 ], [ %i.cw, %middle.block ], [ %i.df, %.lr.ph.i.i.i.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ck, ptr %i.ag, align 8, !tbaa !258
  store ptr %i.dg, ptr %i.bt, align 8, !tbaa !254
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.dh, ptr %i.bv, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !231
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZN6duckdb13ClientContext19GetClientPropertiesEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ClientProperties") align 8 %8, ptr noundef nonnull align 8 dereferenceable(512) %3)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 34
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !322, !range !43, !noundef !44
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dp = load i8, ptr %i.do, align 8
  %i.dq = icmp eq i8 %i.dp, 1
  %.str.17..str.18 = select i1 %i.dq, ptr @.str.17, ptr @.str.18
  %.str.17.sink = select i1 %i.dn, ptr @.str.16, ptr %.str.17..str.18
  store ptr %.str.17.sink, ptr %1, align 8, !tbaa !274
  %i.dr = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZN6duckdb16ClientPropertiesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

bb.l:                                             ; preds = %.noexc.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.m:                                             ; preds = %bb.d
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.c
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.dw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.l
  %.pn = phi { ptr, i32 } [ %i.du, %bb.l ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.dv, %bb.m ]
  call void @_ZN6duckdb22ArrowExtensionMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.s

bb.n:                                             ; preds = %._crit_edge51.critedge.i, %._crit_edge.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit30: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.h
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #37
  br label %bb.r

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.j
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.dr) #37
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit

_ZN6duckdb16ClientPropertiesD2Ev.exit:            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !521 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb16ClientPropertiesD2Ev.exit
  call void @_ZN6duckdb11ComplexJSOND2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.ed) #34, !inline_history !524
  call void @_ZdlPv(ptr noundef nonnull %i.ed) #37, !inline_history !524
  br label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i, %_ZN6duckdb16ClientPropertiesD2Ev.exit
  %i.ee = load ptr, ptr %i.ah, align 8, !tbaa !525 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ef, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.ee, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i ] ; 6 uses
  %i.ef = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !15 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ei) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.el = load ptr, ptr %i.eg, align 8, !tbaa !15 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.el) #37
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #37
  %.not.i.i.i.i.i = icmp eq ptr %i.ef, null
end_hunk_8
begin_hunk_9_@_ZN6duckdb8ArrowBit14PopulateSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKNS_18ArrowTypeExtensionE:bb.a
  call void @_ZdlPv(ptr noundef %i.ap) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.as = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  call void @_ZdlPv(ptr noundef %i.as) #37
  br label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.av = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.e
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.av) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  call void @_ZdlPv(ptr noundef %i.ay) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31
  call void @_ZdlPv(ptr noundef %i.bb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33
  call void @_ZdlPv(ptr noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34
  %i.bi = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35
  call void @_ZdlPv(ptr noundef %i.bi) #37
  br label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !525, !noalias !875 ; 3 uses
  %.not43.i = icmp eq ptr %i.bn, null
  br i1 %.not43.i, label %._crit_edge51.critedge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.bo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bz) #35
          to label %.noexc42 unwind label %bb.u   ; 4 uses

.noexc42:                                         ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bo, i8 0, i64 %i.bz, i1 false), !noalias !878
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !542, !noalias !875
  %i.br = trunc i64 %i.bq to i32
  store i32 %i.br, ptr %i.bo, align 1, !noalias !875
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  br label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41, %.lr.ph.i
  %.045.i = phi i64 [ %i.bz, %.lr.ph.i ], [ 4, %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41 ]
  %.sroa.039.044.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %i.bn, %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41 ] ; 3 uses
  %i.bt = add i64 %.045.i, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !18, !noalias !875
  %i.bw = add i64 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 48
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !18, !noalias !875
  %i.bz = add i64 %i.bw, %i.by                    ; 3 uses
  %i.ca = load ptr, ptr %.sroa.039.044.i, align 8, !tbaa !53, !noalias !875 ; 2 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge51.critedge.i:                         ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41
  %i.cb = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #35
          to label %.noexc43 unwind label %bb.u   ; 2 uses

.noexc43:                                         ; preds = %._crit_edge51.critedge.i
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !542, !noalias !875
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.cb, align 1, !noalias !875
  br label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit

.lr.ph50.i:                                       ; preds = %.lr.ph50.i, %.noexc42
  %.03348.i = phi ptr [ %i.cw, %.lr.ph50.i ], [ %i.bs, %.noexc42 ] ; 2 uses
  %.sroa.035.047.i = phi ptr [ %i.cx, %.lr.ph50.i ], [ %i.bn, %.noexc42 ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !18, !noalias !875 ; 2 uses
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %.03348.i, align 1, !noalias !875
  %i.cj = getelementptr inbounds nuw i8, ptr %.03348.i, i64 4 ; 2 uses
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !15, !noalias !875
  %i.cl = load i64, ptr %i.cg, align 8, !tbaa !18, !noalias !875
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr align 1 %i.ck, i64 %i.cl, i1 false), !noalias !875
  %sext.i = shl i64 %i.ch, 32
  %i.cm = ashr exact i64 %sext.i, 32
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 48 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !18, !noalias !875 ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  store i32 %i.cr, ptr %i.cn, align 1, !noalias !875
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !15, !noalias !875
  %i.cu = load i64, ptr %i.cp, align 8, !tbaa !18, !noalias !875
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr align 1 %i.ct, i64 %i.cu, i1 false), !noalias !875
  %sext34.i = shl i64 %i.cq, 32
  %i.cv = ashr exact i64 %sext34.i, 32
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv
  %i.cx = load ptr, ptr %.sroa.035.047.i, align 8, !tbaa !53, !noalias !875 ; 2 uses
  %.not42.i = icmp eq ptr %i.cx, null
  br i1 %.not42.i, label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit, label %.lr.ph50.i

_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit: ; preds = %.lr.ph50.i, %.noexc43
  %.sroa.0.0 = phi ptr [ %i.cb, %.noexc43 ], [ %i.bo, %.lr.ph50.i ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !254 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !257
  %.not.i44 = icmp eq ptr %i.cz, %i.db
  br i1 %.not.i44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.dc = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.dc, ptr %i.cz, align 8, !tbaa !231
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dd, ptr %i.cy, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.j:                                             ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.de = load ptr, ptr %i.bl, align 8, !tbaa !258 ; 10 uses
  %i.df = ptrtoint ptr %i.cz to i64               ; 3 uses
  %i.dg = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775800
  br i1 %i.di, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc45 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit59

.noexc45:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.dj = ashr exact i64 %i.dh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 1152921504606846975)
  %i.dn = select i1 %i.dl, i64 1152921504606846975, i64 %i.dm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #35
          to label %.noexc46 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit59 ; 10 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  %i.dr = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.de, %i.cz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc46
  %i.ds = sub i64 %i.df, %i.dg
  %i.dt = add i64 %i.ds, -8                       ; 2 uses
  %i.du = lshr i64 %i.dt, 3
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dt, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader92, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.dw = add i64 %i.df, -8
  %i.dx = sub i64 %i.dw, %i.dg
  %i.dy = and i64 %i.dx, -8
  %i.dz = add i64 %i.dy, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dp, i64 %i.dz
  %scevgep88 = getelementptr i8, ptr %i.de, i64 %i.dz
  %bound0 = icmp ult ptr %i.dp, %scevgep88
  %bound1 = icmp ult ptr %i.de, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader92, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dv, 4611686018427387900     ; 3 uses
  %i.ea = shl i64 %n.vec, 3                       ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dp, i64 %i.ea  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.de, i64 %i.ea
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.ed ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.de, i64 %i.ed ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.ee = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep89, align 8, !tbaa !231, !alias.scope !886, !noalias !881
  %wide.load90 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !231, !alias.scope !886, !noalias !881
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !889, !noalias !886
  store <2 x i64> %wide.load90, ptr %i.ef, align 8, !tbaa !231, !alias.scope !889, !noalias !886
  %i.eg = getelementptr i8, ptr %next.gep89, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep89, align 8, !tbaa !231, !alias.scope !886, !noalias !881
  store <2 x ptr> splat (ptr null), ptr %i.eg, align 8, !tbaa !231, !alias.scope !886, !noalias !881
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !891

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader92

.lr.ph.i.i.i.i.i.i.preheader92:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.dp, %vector.memcheck ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.eb, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader92, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader92 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader92 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.ei = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !884, !noalias !881
  store i64 %i.ei, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !881, !noalias !884
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !884, !noalias !881
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ej, %i.cz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !892

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc46
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dp, %.noexc46 ], [ %i.eb, %middle.block ], [ %i.ek, %.lr.ph.i.i.i.i.i.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.de) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.dp, ptr %i.bl, align 8, !tbaa !258
  store ptr %i.el, ptr %i.cy, align 8, !tbaa !254
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.em, ptr %i.da, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !231
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  invoke void @_ZN6duckdb13ClientContext19GetClientPropertiesEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ClientProperties") align 8 %10, ptr noundef nonnull align 8 dereferenceable(512) %3)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !324
  %i.es = icmp eq i8 %i.er, 1
  %.str.32..str.33 = select i1 %i.es, ptr @.str.32, ptr @.str.33
  store ptr %.str.32..str.33, ptr %1, align 8, !tbaa !274
  %i.et = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZN6duckdb16ClientPropertiesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.et) #37
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit

_ZN6duckdb16ClientPropertiesD2Ev.exit:            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !521 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb16ClientPropertiesD2Ev.exit
  call void @_ZN6duckdb11ComplexJSOND2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.ex) #34, !inline_history !524
  call void @_ZdlPv(ptr noundef nonnull %i.ex) #37, !inline_history !524
  br label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i, %_ZN6duckdb16ClientPropertiesD2Ev.exit
  %i.ey = load ptr, ptr %i.bm, align 8, !tbaa !525 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ez, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.ey, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i ] ; 6 uses
  %i.ez = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !15 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.fc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !15 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ff) #37
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #37
  %.not.i.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !527

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i
  %i.fi = load ptr, ptr %5, align 8, !tbaa !528
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !529
  %i.fl = shl i64 %i.fk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fi, i8 0, i64 %i.fl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.fm = load ptr, ptr %5, align 8, !tbaa !528   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.fm) #37
  br label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit

_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit:         ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.p:                                             ; preds = %.noexc.i.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.q:                                             ; preds = %bb.d
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %.noexc.i.i25
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.s:                                             ; preds = %bb.g
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.s
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.ft) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.r
end_hunk_9
begin_hunk_10_@_ZN6duckdb11ArrowBignum14PopulateSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKNS_18ArrowTypeExtensionE:bb.a
  call void @_ZdlPv(ptr noundef %i.ap) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.as = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  call void @_ZdlPv(ptr noundef %i.as) #37
  br label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.av = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.e
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.av) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  call void @_ZdlPv(ptr noundef %i.ay) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31
  call void @_ZdlPv(ptr noundef %i.bb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33
  call void @_ZdlPv(ptr noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34
  %i.bi = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35
  call void @_ZdlPv(ptr noundef %i.bi) #37
  br label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !525, !noalias !911 ; 3 uses
  %.not43.i = icmp eq ptr %i.bn, null
  br i1 %.not43.i, label %._crit_edge51.critedge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.bo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bz) #35
          to label %.noexc42 unwind label %bb.u   ; 4 uses

.noexc42:                                         ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bo, i8 0, i64 %i.bz, i1 false), !noalias !914
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !542, !noalias !911
  %i.br = trunc i64 %i.bq to i32
  store i32 %i.br, ptr %i.bo, align 1, !noalias !911
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  br label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41, %.lr.ph.i
  %.045.i = phi i64 [ %i.bz, %.lr.ph.i ], [ 4, %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41 ]
  %.sroa.039.044.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %i.bn, %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41 ] ; 3 uses
  %i.bt = add i64 %.045.i, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !18, !noalias !911
  %i.bw = add i64 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 48
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !18, !noalias !911
  %i.bz = add i64 %i.bw, %i.by                    ; 3 uses
  %i.ca = load ptr, ptr %.sroa.039.044.i, align 8, !tbaa !53, !noalias !911 ; 2 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge51.critedge.i:                         ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41
  %i.cb = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #35
          to label %.noexc43 unwind label %bb.u   ; 2 uses

.noexc43:                                         ; preds = %._crit_edge51.critedge.i
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !542, !noalias !911
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.cb, align 1, !noalias !911
  br label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit

.lr.ph50.i:                                       ; preds = %.lr.ph50.i, %.noexc42
  %.03348.i = phi ptr [ %i.cw, %.lr.ph50.i ], [ %i.bs, %.noexc42 ] ; 2 uses
  %.sroa.035.047.i = phi ptr [ %i.cx, %.lr.ph50.i ], [ %i.bn, %.noexc42 ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !18, !noalias !911 ; 2 uses
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %.03348.i, align 1, !noalias !911
  %i.cj = getelementptr inbounds nuw i8, ptr %.03348.i, i64 4 ; 2 uses
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !15, !noalias !911
  %i.cl = load i64, ptr %i.cg, align 8, !tbaa !18, !noalias !911
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr align 1 %i.ck, i64 %i.cl, i1 false), !noalias !911
  %sext.i = shl i64 %i.ch, 32
  %i.cm = ashr exact i64 %sext.i, 32
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 48 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !18, !noalias !911 ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  store i32 %i.cr, ptr %i.cn, align 1, !noalias !911
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !15, !noalias !911
  %i.cu = load i64, ptr %i.cp, align 8, !tbaa !18, !noalias !911
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr align 1 %i.ct, i64 %i.cu, i1 false), !noalias !911
  %sext34.i = shl i64 %i.cq, 32
  %i.cv = ashr exact i64 %sext34.i, 32
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv
  %i.cx = load ptr, ptr %.sroa.035.047.i, align 8, !tbaa !53, !noalias !911 ; 2 uses
  %.not42.i = icmp eq ptr %i.cx, null
  br i1 %.not42.i, label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit, label %.lr.ph50.i

_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit: ; preds = %.lr.ph50.i, %.noexc43
  %.sroa.0.0 = phi ptr [ %i.cb, %.noexc43 ], [ %i.bo, %.lr.ph50.i ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !254 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !257
  %.not.i44 = icmp eq ptr %i.cz, %i.db
  br i1 %.not.i44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.dc = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.dc, ptr %i.cz, align 8, !tbaa !231
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dd, ptr %i.cy, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.j:                                             ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.de = load ptr, ptr %i.bl, align 8, !tbaa !258 ; 10 uses
  %i.df = ptrtoint ptr %i.cz to i64               ; 3 uses
  %i.dg = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775800
  br i1 %i.di, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc45 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit59

.noexc45:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.dj = ashr exact i64 %i.dh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 1152921504606846975)
  %i.dn = select i1 %i.dl, i64 1152921504606846975, i64 %i.dm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #35
          to label %.noexc46 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit59 ; 10 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  %i.dr = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.de, %i.cz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc46
  %i.ds = sub i64 %i.df, %i.dg
  %i.dt = add i64 %i.ds, -8                       ; 2 uses
  %i.du = lshr i64 %i.dt, 3
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dt, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader92, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.dw = add i64 %i.df, -8
  %i.dx = sub i64 %i.dw, %i.dg
  %i.dy = and i64 %i.dx, -8
  %i.dz = add i64 %i.dy, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dp, i64 %i.dz
  %scevgep88 = getelementptr i8, ptr %i.de, i64 %i.dz
  %bound0 = icmp ult ptr %i.dp, %scevgep88
  %bound1 = icmp ult ptr %i.de, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader92, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dv, 4611686018427387900     ; 3 uses
  %i.ea = shl i64 %n.vec, 3                       ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dp, i64 %i.ea  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.de, i64 %i.ea
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.ed ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.de, i64 %i.ed ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.ee = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep89, align 8, !tbaa !231, !alias.scope !922, !noalias !917
  %wide.load90 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !231, !alias.scope !922, !noalias !917
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !925, !noalias !922
  store <2 x i64> %wide.load90, ptr %i.ef, align 8, !tbaa !231, !alias.scope !925, !noalias !922
  %i.eg = getelementptr i8, ptr %next.gep89, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep89, align 8, !tbaa !231, !alias.scope !922, !noalias !917
  store <2 x ptr> splat (ptr null), ptr %i.eg, align 8, !tbaa !231, !alias.scope !922, !noalias !917
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !927

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader92

.lr.ph.i.i.i.i.i.i.preheader92:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.dp, %vector.memcheck ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.eb, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader92, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader92 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader92 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.ei = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !920, !noalias !917
  store i64 %i.ei, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !917, !noalias !920
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !920, !noalias !917
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ej, %i.cz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !928

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc46
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dp, %.noexc46 ], [ %i.eb, %middle.block ], [ %i.ek, %.lr.ph.i.i.i.i.i.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.de) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.dp, ptr %i.bl, align 8, !tbaa !258
  store ptr %i.el, ptr %i.cy, align 8, !tbaa !254
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.em, ptr %i.da, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !231
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  invoke void @_ZN6duckdb13ClientContext19GetClientPropertiesEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ClientProperties") align 8 %10, ptr noundef nonnull align 8 dereferenceable(512) %3)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !324
  %i.es = icmp eq i8 %i.er, 1
  %.str.32..str.33 = select i1 %i.es, ptr @.str.32, ptr @.str.33
  store ptr %.str.32..str.33, ptr %1, align 8, !tbaa !274
  %i.et = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZN6duckdb16ClientPropertiesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.et) #37
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit

_ZN6duckdb16ClientPropertiesD2Ev.exit:            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !521 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb16ClientPropertiesD2Ev.exit
  call void @_ZN6duckdb11ComplexJSOND2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.ex) #34, !inline_history !524
  call void @_ZdlPv(ptr noundef nonnull %i.ex) #37, !inline_history !524
  br label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i, %_ZN6duckdb16ClientPropertiesD2Ev.exit
  %i.ey = load ptr, ptr %i.bm, align 8, !tbaa !525 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ez, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.ey, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i ] ; 6 uses
  %i.ez = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !15 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.fc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !15 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ff) #37
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #37
  %.not.i.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !527

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i
  %i.fi = load ptr, ptr %5, align 8, !tbaa !528
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !529
  %i.fl = shl i64 %i.fk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fi, i8 0, i64 %i.fl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.fm = load ptr, ptr %5, align 8, !tbaa !528   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.fm) #37
  br label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit

_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit:         ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.p:                                             ; preds = %.noexc.i.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.q:                                             ; preds = %bb.d
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %.noexc.i.i25
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.s:                                             ; preds = %bb.g
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.s
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.ft) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.r
end_hunk_10
begin_hunk_11_@_ZN6duckdb23enable_shared_from_thisINS_5EventEE16shared_from_thisEv:bb.a
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.f, !llvm.loop !1220

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.f, %_ZN6duckdb8weak_ptrINS_5EventELb1EEC2ERKS2_.exit
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.q, align 8, !tbaa !76
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #36
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  unreachable

bb.h:                                             ; preds = %bb.g
  store ptr %i.a, ptr %0, align 8, !tbaa !947
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i2 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.u = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.u, %bb.j ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.k, label %_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34, !inline_history !1221
  br label %_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit

_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit:     ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit7, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i4 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5

bb.o:                                             ; preds = %bb.m
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i6 = phi i32 [ %i.ac, %bb.n ], [ %i.ae, %bb.o ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i6, 1
  br i1 %i.af, label %bb.p, label %_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit7

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34, !inline_history !1221
  br label %_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit7

_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit7:    ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5, %bb.p
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_4TaskELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !75
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1222
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1222
  br label %_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !79

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb29BatchCollectionChunkScanStateD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1087 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1090   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1203
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !1223
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !1087
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #36
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #35 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !1223
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.z = sub i64 %i.d, %i.e
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.d, -8
  %i.ae = sub i64 %i.ad, %i.e
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ag
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ag
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.c, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !1091, !alias.scope !1230, !noalias !1225
  %wide.load18 = load <2 x i64>, ptr %i.al, align 8, !tbaa !1091, !alias.scope !1230, !noalias !1225
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1091, !alias.scope !1233, !noalias !1230
  store <2 x i64> %wide.load18, ptr %i.am, align 8, !tbaa !1091, !alias.scope !1233, !noalias !1230
  %i.an = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !1091, !alias.scope !1230, !noalias !1225
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !1091, !alias.scope !1230, !noalias !1225
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1228, !noalias !1225
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1225, !noalias !1228
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1228, !noalias !1225
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1236

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #37
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !1090
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.as, ptr %i.a, align 8, !tbaa !1087
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.at, ptr %i.j, align 8, !tbaa !1203
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.au = icmp ult i64 %1, %i.g
  br i1 %i.au, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.av
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.av, %bb.g ] ; 2 uses
  %i.aw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.aw) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.aw) #37
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.av, ptr %i.a, align 8, !tbaa !1087
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb16ArrowQueryResult12SetArrowDataENS_6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(424) initializes((408, 416)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1090 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1087 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !1204
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !1204
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1203
  store ptr %i.h, ptr %i.e, align 8, !tbaa !1203
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.i) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #37
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #37
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.b
  ret void
}

declare void @_ZN6duckdb5Event8SetTasksENS_6vectorINS_10shared_ptrINS_4TaskELb1EEELb1ESaIS4_EEE(ptr noundef nonnull align 8 dereferenceable(113), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1192   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1188 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_4TaskELb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_4TaskELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_4TaskELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_4TaskELb1EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !75
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #34, !inline_history !1237
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #34, !inline_history !1237
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_4TaskELb1EEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e
end_hunk_11
begin_hunk_12_@_ZN6duckdb9make_uniqINS_13ArrowAppenderEJRKNS_6vectorINS_11LogicalTypeELb1ESaIS3_EEERmRNS_16ClientPropertiesESt13unordered_mapImKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEESt4hashImESt8equal_toImESaISt4pairIKmSF_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
bb.r:                                             ; preds = %.noexc.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit12

bb.s:                                             ; preds = %_ZNSt13unordered_mapImKN6duckdb10shared_ptrINS0_22ArrowTypeExtensionDataELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEEC2EOSD_.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt10_HashtableImSt4pairIKmKN6duckdb10shared_ptrINS2_22ArrowTypeExtensionDataELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #34
  %i.bw = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.d
  br i1 %i.bx, label %_ZN6duckdb16ClientPropertiesD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.bw) #37
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit12

_ZN6duckdb16ClientPropertiesD2Ev.exit12:          ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10 ], [ %i.bv, %bb.s ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %_ZN6duckdb16ClientPropertiesD2Ev.exit12
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN6duckdb16ClientPropertiesD2Ev.exit12 ], [ %i.bt, %bb.q ]
  call void @_ZdlPv(ptr noundef nonnull %i.b) #37
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1360   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !79

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.98, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb24ArrowCollectorLocalState11FinishArrayEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.661", align 8 ; 10 uses
  %2 = alloca %struct.ArrowArray, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35, !noalias !1366 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !1207, !noalias !1366
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.b, align 8, !tbaa !1212, !noalias !1366
  store ptr %i.a, ptr %1, align 8, !tbaa !1091, !alias.scope !1366
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.d = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.g = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb13ArrowAppender8FinalizeEv(ptr dead_on_unwind nonnull writable sret(%struct.ArrowArray) align 8 %2, ptr noundef nonnull align 8 dereferenceable(104) %i.g)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false), !tbaa.struct !201
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !1360 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !1360
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb13ArrowAppenderEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb13ArrowAppenderEEclEPS1_.exit.i.i.i: ; preds = %bb.e
  call void @_ZN6duckdb13ArrowAppenderD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.i) #34
  call void @_ZdlPv(ptr noundef nonnull %i.i) #37
  br label %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE5resetEPS1_.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN6duckdb13ArrowAppenderEEclEPS1_.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1087 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1203
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.f, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  %i.o = load i64, ptr %1, align 8, !tbaa !1091
  store i64 %i.o, ptr %i.l, align 8, !tbaa !1091
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.k, align 8, !tbaa !1087
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1369
  %i.s = add i64 %i.r, %i.f
  store i64 %i.s, ptr %i.q, align 8, !tbaa !1369
  br label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !1090 ; 10 uses
  %i.u = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #35
          to label %.noexc5 unwind label %bb.i    ; 10 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  %i.ag = load i64, ptr %1, align 8, !tbaa !1091
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !1091
  store ptr null, ptr %1, align 8, !tbaa !1091
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.l
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc5
  %i.ah = sub i64 %i.u, %i.v
  %i.ai = add i64 %i.ah, -8                       ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader18, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.al = add i64 %i.u, -8
  %i.am = sub i64 %i.al, %i.v
  %i.an = and i64 %i.am, -8
  %i.ao = add i64 %i.an, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.ao
  %scevgep14 = getelementptr i8, ptr %i.t, i64 %i.ao
  %bound0 = icmp ult ptr %i.ae, %scevgep14
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.t, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.as ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.t, i64 %i.as ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.at = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !1091, !alias.scope !1392, !noalias !1387
  %wide.load16 = load <2 x i64>, ptr %i.at, align 8, !tbaa !1091, !alias.scope !1392, !noalias !1387
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1091, !alias.scope !1395, !noalias !1392
  store <2 x i64> %wide.load16, ptr %i.au, align 8, !tbaa !1091, !alias.scope !1395, !noalias !1392
  %i.av = getelementptr i8, ptr %next.gep15, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !1091, !alias.scope !1392, !noalias !1387
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !1091, !alias.scope !1392, !noalias !1387
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader18

.lr.ph.i.i.i.i.i.i.i.preheader18:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader18, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader18 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1390, !noalias !1387
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1387, !noalias !1390
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1390, !noalias !1387
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1398

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.noexc5 ], [ %i.aq, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.t) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.h
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !1090
  store ptr %i.ba, ptr %i.k, align 8, !tbaa !1087
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.bb, ptr %i.m, align 8, !tbaa !1203
  %.pr = load ptr, ptr %1, align 8, !tbaa !1091   ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1369
  %i.be = add i64 %i.bd, %i.f
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !1369
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr) #34
  call void @_ZdlPv(ptr noundef nonnull %.pr) #37
  br label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

bb.i:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.g, %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.i ], [ %i.bg, %bb.j ]
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1091  ; 3 uses
  %.not.i6 = icmp eq ptr %i.bh, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit8, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i7

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i7: ; preds = %bb.k
  call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bh) #34
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #37
  br label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit8: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb22PhysicalArrowCollector7CombineERNS_16ExecutionContextERNS_24OperatorSinkCombineInputE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !1399, !nonnull !44, !align !1011 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1401, !nonnull !44, !align !1011 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1204
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1204
  %i.i = icmp eq ptr %i.f, %i.h
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !1360
  %.not25 = icmp eq ptr %i.j, null                ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not25, label %bb.i, label %.thread

bb.c:                                             ; preds = %bb.a
  br i1 %.not25, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  tail call void @_ZN6duckdb24ArrowCollectorLocalState11FinishArrayEv(ptr noundef nonnull align 8 dereferenceable(88) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  %i.l = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.l) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1204
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !1204
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !1204
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !1204 ; 2 uses
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  invoke void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEEvSD_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.v, ptr %i.p, ptr %i.q)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !1090 ; 3 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !1087 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.w, %bb.g ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.y) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #37
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.w, ptr %i.g, align 8, !tbaa !1087
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit: ; preds = %bb.g, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 80
end_hunk_12
begin_hunk_13_@_ZN6duckdb16ArrowVarcharDataINS_8string_tENS_21ArrowVarcharConverterEiE15AppendTemplatedILb1EEEvRNS_15ArrowAppendDataERNS_6VectorEmmm:bb.a
  store ptr %.sroa.2.0.copyload, ptr %i.bo, align 8
  %i.en = trunc i64 %.sroa.0.0.copyload to i32
  %i.eo = icmp ult i32 %i.en, 13
  %i.ep = select i1 %i.eo, ptr %i.bp, ptr %.sroa.2.0.copyload
  %i.eq = and i64 %.sroa.0.0.copyload, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.ep, i64 %i.eq, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %.165 = phi i32 [ %i.ef, %bb.ak ], [ %.06489, %bb.ag ]
  %i.er = add i64 %.06688, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.er, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.ae, !llvm.loop !1608

bb.am:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.m, %bb.o, %bb.q, %bb.am, %bb.p, %bb.n, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.bc, %bb.m ], [ %i.bd, %bb.n ], [ %i.be, %bb.o ], [ %i.bf, %bb.p ], [ %i.bg, %bb.q ], [ %i.es, %bb.am ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataIhE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 10 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %2) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.c, %i.e
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @realloc(ptr noundef nonnull %i.f, i64 noundef %i.c) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.c) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !151
  store i64 %i.c, ptr %i.d, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 25)
  %i.i = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.m, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !75
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #34, !inline_history !78
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #34, !inline_history !78
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.j ], [ %i.z, %bb.k ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.l, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !79

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ab = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb8EnumType20GetValuesInsertOrderERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ad = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb13ArrowEnumDataIhE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %i.ab, ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 noundef %i.ad)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !80 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !83
  %.not.i.i13 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i13, label %bb.q, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.p
  %i.aj = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !80
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !84 ; 10 uses
  %i.am = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i.i14 = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i.i14)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #35
          to label %.noexc15 unwind label %bb.w   ; 10 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  %i.ay = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ag
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc15
  %i.az = sub i64 %i.am, %i.an
  %i.ba = add i64 %i.az, -8                       ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bd = add i64 %i.am, -8
  %i.be = sub i64 %i.bd, %i.an
  %i.bf = and i64 %i.be, -8
  %i.bg = add i64 %i.bf, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.bg
  %scevgep23 = getelementptr i8, ptr %i.al, i64 %i.bg
  %bound0 = icmp ult ptr %i.aw, %scevgep23
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.aw, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.al, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %i.bk ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.al, i64 %i.bk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.bl = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !71, !alias.scope !1614, !noalias !1609
  %wide.load25 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !71, !alias.scope !1614, !noalias !1609
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1617, !noalias !1614
  store <2 x i64> %wide.load25, ptr %i.bm, align 8, !tbaa !71, !alias.scope !1617, !noalias !1614
  %i.bn = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !71, !alias.scope !1614, !noalias !1609
  store <2 x ptr> splat (ptr null), ptr %i.bn, align 8, !tbaa !71, !alias.scope !1614, !noalias !1609
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1619

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader27

.lr.ph.i.i.i.i.i.i.i.preheader27:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader27, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.bp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1612, !noalias !1609
  store i64 %i.bp, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1609, !noalias !1612
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1612, !noalias !1609
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.ag
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1620

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.noexc15 ], [ %i.bi, %middle.block ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.al) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.s
  store ptr %i.aw, ptr %i.ae, align 8, !tbaa !84
  store ptr %i.bs, ptr %i.af, align 8, !tbaa !80
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !83
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i16 = icmp eq ptr %.pr, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %.pr) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.t:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bu, %bb.t ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.x

bb.w:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.r, %bb.o, %bb.n, %bb.m, %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn11 = phi { ptr, i32 } [ %i.bw, %bb.w ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataIhE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2, ptr %i.a, align 8, !tbaa !199
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.h, ptr %i.i, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 25)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !tbaa !71
  store i64 %i.l, ptr %4, align 8, !tbaa !71
  store ptr null, ptr %i.k, align 8, !tbaa !71
  %i.m = invoke noundef ptr @_ZN6duckdb13ArrowAppender13FinalizeChildERKNS_11LogicalTypeENS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS5_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false), !tbaa.struct !201
  %i.n = load ptr, ptr %4, align 8, !tbaa !71     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %bb.c
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.n) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %i.n) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext) unnamed_addr #3

declare noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataIhE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 5 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 2) ; 4 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0) ; 9 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !194
  %i.f = add i64 %2, 7
  %i.g = add i64 %i.f, %i.e
end_hunk_13
begin_hunk_14_@_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataItE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 10 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 1
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !151
  store i64 %i.d, ptr %i.e, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 25)
  %i.j = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.n, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !75
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34, !inline_history !78
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34, !inline_history !78
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.j ], [ %i.aa, %bb.k ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.l, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !79

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ac = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ad = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb8EnumType20GetValuesInsertOrderERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ae = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb13ArrowEnumDataItE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i64 noundef %i.ae)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !80 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83
  %.not.i.i13 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i13, label %bb.q, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.p
  %i.ak = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !80
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !84 ; 10 uses
  %i.an = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i14 = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i.i14)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #35
          to label %.noexc15 unwind label %bb.w   ; 10 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  %i.az = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc15
  %i.ba = sub i64 %i.an, %i.ao
  %i.bb = add i64 %i.ba, -8                       ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.be = add i64 %i.an, -8
  %i.bf = sub i64 %i.be, %i.ao
  %i.bg = and i64 %i.bf, -8
  %i.bh = add i64 %i.bg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.bh
  %scevgep23 = getelementptr i8, ptr %i.am, i64 %i.bh
  %bound0 = icmp ult ptr %i.ax, %scevgep23
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.am, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.am, i64 %i.bl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.bm = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !71, !alias.scope !1631, !noalias !1626
  %wide.load25 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !71, !alias.scope !1631, !noalias !1626
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1634, !noalias !1631
  store <2 x i64> %wide.load25, ptr %i.bn, align 8, !tbaa !71, !alias.scope !1634, !noalias !1631
  %i.bo = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !71, !alias.scope !1631, !noalias !1626
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !71, !alias.scope !1631, !noalias !1626
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1636

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader27

.lr.ph.i.i.i.i.i.i.i.preheader27:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader27, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.bq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1629, !noalias !1626
  store i64 %i.bq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1626, !noalias !1629
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1629, !noalias !1626
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.ah
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1637

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.noexc15 ], [ %i.bj, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.am) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.s
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !84
  store ptr %i.bt, ptr %i.ag, align 8, !tbaa !80
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bu, ptr %i.ai, align 8, !tbaa !83
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i16 = icmp eq ptr %.pr, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %.pr) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.t:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %i.bv, %bb.t ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.x

bb.w:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.r, %bb.o, %bb.n, %bb.m, %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn11 = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataItE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2, ptr %i.a, align 8, !tbaa !199
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.h, ptr %i.i, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 25)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !tbaa !71
  store i64 %i.l, ptr %4, align 8, !tbaa !71
  store ptr null, ptr %i.k, align 8, !tbaa !71
  %i.m = invoke noundef ptr @_ZN6duckdb13ArrowAppender13FinalizeChildERKNS_11LogicalTypeENS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS5_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false), !tbaa.struct !201
  %i.n = load ptr, ptr %4, align 8, !tbaa !71     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %bb.c
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.n) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %i.n) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataItE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 5 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 2) ; 4 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0) ; 9 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !194
  %i.f = add i64 %2, 7
  %i.g = add i64 %i.f, %i.e
  %i.h = lshr i64 %i.g, 3                         ; 6 uses
  %i.i = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.h) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !149
end_hunk_14
begin_hunk_15_@_ZN6duckdb13ArrowEnumDataItE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm:bb.a
_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i41: ; preds = %bb.m, %bb.l
  %storemerge.i.i.i42 = phi ptr [ %i.bt, %bb.m ], [ %i.bs, %bb.l ] ; 2 uses
  store ptr %storemerge.i.i.i42, ptr %i.c, align 8, !tbaa !151
  store i64 %i.bq, ptr %i.bb, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer6resizeEm.exit43

_ZN6duckdb11ArrowBuffer6resizeEm.exit43:          ; preds = %bb.j, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i41
  %i.bu = phi ptr [ %.pre, %bb.j ], [ %storemerge.i.i.i42, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i41 ]
  store i64 %i.bl, ptr %i.bc, align 8, !tbaa !1501
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bk
  %.sroa.0.0.copyload = load i64, ptr %i.bi, align 8 ; 3 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.copyload, ptr %3, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.bd, align 8
  %i.bw = trunc i64 %.sroa.0.0.copyload to i32
  %i.bx = icmp ult i32 %i.bw, 13
  %i.by = select i1 %i.bx, ptr %i.be, ptr %.sroa.2.0.copyload
  %i.bz = and i64 %.sroa.0.0.copyload, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.by, i64 %i.bz, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ca = add nuw i64 %.03644, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !1639
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataIjE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 10 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 2
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !151
  store i64 %i.d, ptr %i.e, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 25)
  %i.j = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.n, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !75
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34, !inline_history !78
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34, !inline_history !78
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.j ], [ %i.aa, %bb.k ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.l, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !79

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ac = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ad = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb8EnumType20GetValuesInsertOrderERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ae = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb13ArrowEnumDataIjE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i64 noundef %i.ae)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !80 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83
  %.not.i.i13 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i13, label %bb.q, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.p
  %i.ak = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !80
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !84 ; 10 uses
  %i.an = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i14 = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i.i14)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #35
          to label %.noexc15 unwind label %bb.w   ; 10 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  %i.az = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc15
  %i.ba = sub i64 %i.an, %i.ao
  %i.bb = add i64 %i.ba, -8                       ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.be = add i64 %i.an, -8
  %i.bf = sub i64 %i.be, %i.ao
  %i.bg = and i64 %i.bf, -8
  %i.bh = add i64 %i.bg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.bh
  %scevgep23 = getelementptr i8, ptr %i.am, i64 %i.bh
  %bound0 = icmp ult ptr %i.ax, %scevgep23
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.am, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.am, i64 %i.bl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  %i.bm = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !71, !alias.scope !1645, !noalias !1640
  %wide.load25 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !71, !alias.scope !1645, !noalias !1640
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1648, !noalias !1645
  store <2 x i64> %wide.load25, ptr %i.bn, align 8, !tbaa !71, !alias.scope !1648, !noalias !1645
  %i.bo = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !71, !alias.scope !1645, !noalias !1640
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !71, !alias.scope !1645, !noalias !1640
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1650

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader27

.lr.ph.i.i.i.i.i.i.i.preheader27:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader27, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  %i.bq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1643, !noalias !1640
  store i64 %i.bq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1640, !noalias !1643
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1643, !noalias !1640
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.ah
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1651

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.noexc15 ], [ %i.bj, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.am) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.s
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !84
  store ptr %i.bt, ptr %i.ag, align 8, !tbaa !80
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bu, ptr %i.ai, align 8, !tbaa !83
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i16 = icmp eq ptr %.pr, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %.pr) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.t:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %i.bv, %bb.t ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.x

bb.w:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.r, %bb.o, %bb.n, %bb.m, %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn11 = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataIjE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2, ptr %i.a, align 8, !tbaa !199
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.h, ptr %i.i, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 25)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !tbaa !71
  store i64 %i.l, ptr %4, align 8, !tbaa !71
  store ptr null, ptr %i.k, align 8, !tbaa !71
  %i.m = invoke noundef ptr @_ZN6duckdb13ArrowAppender13FinalizeChildERKNS_11LogicalTypeENS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS5_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false), !tbaa.struct !201
  %i.n = load ptr, ptr %4, align 8, !tbaa !71     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %bb.c
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.n) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %i.n) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataIjE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 5 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 2) ; 4 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0) ; 9 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !194
  %i.f = add i64 %2, 7
  %i.g = add i64 %i.f, %i.e
  %i.h = lshr i64 %i.g, 3                         ; 6 uses
  %i.i = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.h) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !149
end_hunk_15
begin_hunk_16_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10interval_tEEEvv:bb.a

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb14ArrowUnionData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #3

declare void @_ZN6duckdb14ArrowUnionData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef, i64 noundef) #3

declare void @_ZN6duckdb14ArrowUnionData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) #3

declare void @_ZN6duckdb15ArrowStructData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #3

declare void @_ZN6duckdb15ArrowStructData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef, i64 noundef) #3

declare void @_ZN6duckdb15ArrowStructData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) #3

declare void @_ZN6duckdb22ArrowFixedSizeListData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #3

declare void @_ZN6duckdb22ArrowFixedSizeListData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef, i64 noundef) #3

declare void @_ZN6duckdb22ArrowFixedSizeListData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17ArrowListViewDataIlE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 3 uses
  %i.d = shl i64 %2, 3                            ; 2 uses
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.e) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.e) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.c, align 8, !tbaa !151
  store i64 %i.e, ptr %i.f, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 2) ; 3 uses
  %i.l = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !149
  %.not.i12 = icmp ugt i64 %i.l, %i.n
  br i1 %.not.i12, label %bb.e, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit16

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !151  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.o, null
  br i1 %.not.i.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.l) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14

bb.g:                                             ; preds = %bb.e
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.l) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14: ; preds = %bb.g, %bb.f
  %storemerge.i.i15 = phi ptr [ %i.q, %bb.g ], [ %i.p, %bb.f ]
  store ptr %storemerge.i.i15, ptr %i.k, align 8, !tbaa !151
  store i64 %i.l, ptr %i.m, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit16

_ZN6duckdb11ArrowBuffer7reserveEm.exit16:         ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !75
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #34, !inline_history !78
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #34, !inline_history !78
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.n, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !79

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !80 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83
  %.not.i.i17 = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i17, label %bb.o, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ao = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !80
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !84 ; 10 uses
  %i.ar = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i.i18 = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i.i18)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #35
          to label %.noexc19 unwind label %bb.s   ; 10 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  %i.bd = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.al
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc19
  %i.be = sub i64 %i.ar, %i.as
  %i.bf = add i64 %i.be, -8                       ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bf, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bi = add i64 %i.ar, -8
  %i.bj = sub i64 %i.bi, %i.as
  %i.bk = and i64 %i.bj, -8
  %i.bl = add i64 %i.bk, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.bl
  %scevgep29 = getelementptr i8, ptr %i.aq, i64 %i.bl
  %bound0 = icmp ult ptr %i.bb, %scevgep29
  %bound1 = icmp ult ptr %i.aq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bb, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.aq, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bp ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.aq, i64 %i.bp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  %i.bq = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !71, !alias.scope !1660, !noalias !1655
  %wide.load31 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !71, !alias.scope !1660, !noalias !1655
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1663, !noalias !1660
  store <2 x i64> %wide.load31, ptr %i.br, align 8, !tbaa !71, !alias.scope !1663, !noalias !1660
  %i.bs = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep30, align 8, !tbaa !71, !alias.scope !1660, !noalias !1655
  store <2 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !71, !alias.scope !1660, !noalias !1655
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !1665

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.preheader33:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  %i.bu = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1658, !noalias !1655
  store i64 %i.bu, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1655, !noalias !1658
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1658, !noalias !1655
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.al
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1666

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.noexc19 ], [ %i.bn, %middle.block ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.q
  store ptr %i.bb, ptr %i.aj, align 8, !tbaa !84
  store ptr %i.bx, ptr %i.ak, align 8, !tbaa !80
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.by, ptr %i.am, align 8, !tbaa !83
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i20 = icmp eq ptr %.pr, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %.pr) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.r:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit16
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.s ], [ %i.bz, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17ArrowListViewDataIlE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::vector.977", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.ah

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17ArrowListViewDataIlE18AppendListMetadataERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.d unwind label %bb.ah

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.a = load ptr, ptr %6, align 8, !tbaa !1667
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %7, align 8, !tbaa !1503
  %i.c = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.e unwind label %bb.ai      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1669
  %i.f = load ptr, ptr %6, align 8, !tbaa !1667
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.aj

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, i64 noundef 2048)
          to label %bb.g unwind label %bb.ak

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #34
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.j)
          to label %bb.h unwind label %bb.al

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.i unwind label %bb.al

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.j unwind label %bb.al

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !140
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.k unwind label %bb.al

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.l unwind label %bb.al

bb.l:                                             ; preds = %bb.k
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(328) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.j)
          to label %bb.m unwind label %bb.al

bb.m:                                             ; preds = %bb.l
  %i.s = sub i64 %3, %2
  %i.t = load i64, ptr %0, align 8, !tbaa !194
  %i.u = add i64 %i.s, %i.t
  store i64 %i.u, ptr %0, align 8, !tbaa !194
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_16
begin_hunk_17_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17ArrowListViewDataIiE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 3 uses
  %i.d = shl i64 %2, 2                            ; 2 uses
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.e) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.e) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.c, align 8, !tbaa !151
  store i64 %i.e, ptr %i.f, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 2) ; 3 uses
  %i.l = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !149
  %.not.i12 = icmp ugt i64 %i.l, %i.n
  br i1 %.not.i12, label %bb.e, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit16

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !151  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.o, null
  br i1 %.not.i.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.l) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14

bb.g:                                             ; preds = %bb.e
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.l) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14: ; preds = %bb.g, %bb.f
  %storemerge.i.i15 = phi ptr [ %i.q, %bb.g ], [ %i.p, %bb.f ]
  store ptr %storemerge.i.i15, ptr %i.k, align 8, !tbaa !151
  store i64 %i.l, ptr %i.m, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit16

_ZN6duckdb11ArrowBuffer7reserveEm.exit16:         ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !75
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #34, !inline_history !78
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #34, !inline_history !78
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.n, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !79

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !80 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83
  %.not.i.i17 = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i17, label %bb.o, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ao = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !80
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !84 ; 10 uses
  %i.ar = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i.i18 = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i.i18)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #35
          to label %.noexc19 unwind label %bb.s   ; 10 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  %i.bd = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.al
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc19
  %i.be = sub i64 %i.ar, %i.as
  %i.bf = add i64 %i.be, -8                       ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bf, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bi = add i64 %i.ar, -8
  %i.bj = sub i64 %i.bi, %i.as
  %i.bk = and i64 %i.bj, -8
  %i.bl = add i64 %i.bk, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.bl
  %scevgep29 = getelementptr i8, ptr %i.aq, i64 %i.bl
  %bound0 = icmp ult ptr %i.bb, %scevgep29
  %bound1 = icmp ult ptr %i.aq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bb, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.aq, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bp ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.aq, i64 %i.bp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %i.bq = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !71, !alias.scope !1681, !noalias !1676
  %wide.load31 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !71, !alias.scope !1681, !noalias !1676
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1684, !noalias !1681
  store <2 x i64> %wide.load31, ptr %i.br, align 8, !tbaa !71, !alias.scope !1684, !noalias !1681
  %i.bs = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep30, align 8, !tbaa !71, !alias.scope !1681, !noalias !1676
  store <2 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !71, !alias.scope !1681, !noalias !1676
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !1686

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.preheader33:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %i.bu = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1679, !noalias !1676
  store i64 %i.bu, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1676, !noalias !1679
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1679, !noalias !1676
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.al
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1687

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.noexc19 ], [ %i.bn, %middle.block ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.q
  store ptr %i.bb, ptr %i.aj, align 8, !tbaa !84
  store ptr %i.bx, ptr %i.ak, align 8, !tbaa !80
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.by, ptr %i.am, align 8, !tbaa !83
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i20 = icmp eq ptr %.pr, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %.pr) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.r:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit16
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.s ], [ %i.bz, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17ArrowListViewDataIiE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::vector.977", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.ah

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17ArrowListViewDataIiE18AppendListMetadataERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.d unwind label %bb.ah

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.a = load ptr, ptr %6, align 8, !tbaa !1667
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %7, align 8, !tbaa !1503
  %i.c = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.e unwind label %bb.ai      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1669
  %i.f = load ptr, ptr %6, align 8, !tbaa !1667
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.aj

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, i64 noundef 2048)
          to label %bb.g unwind label %bb.ak

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #34
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.j)
          to label %bb.h unwind label %bb.al

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.i unwind label %bb.al

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.j unwind label %bb.al

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !140
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.k unwind label %bb.al

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.l unwind label %bb.al

bb.l:                                             ; preds = %bb.k
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(328) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.j)
          to label %bb.m unwind label %bb.al

bb.m:                                             ; preds = %bb.l
  %i.s = sub i64 %3, %2
  %i.t = load i64, ptr %0, align 8, !tbaa !194
  %i.u = add i64 %i.s, %i.t
  store i64 %i.u, ptr %0, align 8, !tbaa !194
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_17
begin_hunk_18_@_ZN6duckdb9Exception25ConstructMessageRecursiveIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !18
  store ptr %i.k, ptr %i.h, align 8, !tbaa !15
  store i64 0, ptr %i.s, align 8, !tbaa !18
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !561
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !561
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !15 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = icmp eq ptr %.pre9, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #37
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #37
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowListDataIlE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 3 uses
  %i.d = shl i64 %2, 3
  %i.e = add i64 %i.d, 8
  %i.f = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.e) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.f) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.f) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.c, align 8, !tbaa !151
  store i64 %i.f, ptr %i.g, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !75
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34, !inline_history !78
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34, !inline_history !78
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !79

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !83
  %.not.i.i10 = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i.i10, label %bb.l, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ai = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !80
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !84 ; 10 uses
  %i.al = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #35
          to label %.noexc12 unwind label %bb.p   ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  %i.ax = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.af
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.ay = sub i64 %i.al, %i.am
  %i.az = add i64 %i.ay, -8                       ; 2 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bc = add i64 %i.al, -8
  %i.bd = sub i64 %i.bc, %i.am
  %i.be = and i64 %i.bd, -8
  %i.bf = add i64 %i.be, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.bf
  %scevgep20 = getelementptr i8, ptr %i.ak, i64 %i.bf
  %bound0 = icmp ult ptr %i.av, %scevgep20
  %bound1 = icmp ult ptr %i.ak, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.av, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ak, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bj ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.ak, i64 %i.bj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.bk = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 8, !tbaa !71, !alias.scope !1704, !noalias !1699
  %wide.load22 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !71, !alias.scope !1704, !noalias !1699
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1707, !noalias !1704
  store <2 x i64> %wide.load22, ptr %i.bl, align 8, !tbaa !71, !alias.scope !1707, !noalias !1704
  %i.bm = getelementptr i8, ptr %next.gep21, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !71, !alias.scope !1704, !noalias !1699
  store <2 x ptr> splat (ptr null), ptr %i.bm, align 8, !tbaa !71, !alias.scope !1704, !noalias !1699
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1709

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader24

.lr.ph.i.i.i.i.i.i.i.preheader24:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader24, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader24 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader24 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1702, !noalias !1699
  store i64 %i.bo, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1699, !noalias !1702
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1702, !noalias !1699
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.af
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1710

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.av, %.noexc12 ], [ %i.bh, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ak) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.n
  store ptr %i.av, ptr %i.ad, align 8, !tbaa !84
  store ptr %i.br, ptr %i.ae, align 8, !tbaa !80
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bs, ptr %i.ag, align 8, !tbaa !83
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %.pr) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.o:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.p ], [ %i.bt, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowListDataIlE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::vector.977", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.ah

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb13ArrowListDataIlE13AppendOffsetsERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.d unwind label %bb.ah

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.a = load ptr, ptr %6, align 8, !tbaa !1667
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %7, align 8, !tbaa !1503
  %i.c = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.e unwind label %bb.ai      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1669
  %i.f = load ptr, ptr %6, align 8, !tbaa !1667
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.aj

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, i64 noundef 2048)
          to label %bb.g unwind label %bb.ak

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #34
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.j)
          to label %bb.h unwind label %bb.al

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.i unwind label %bb.al

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.j unwind label %bb.al

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !140
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.k unwind label %bb.al

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.l unwind label %bb.al

bb.l:                                             ; preds = %bb.k
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(328) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.j)
          to label %bb.m unwind label %bb.al

bb.m:                                             ; preds = %bb.l
  %i.s = sub i64 %3, %2
  %i.t = load i64, ptr %0, align 8, !tbaa !194
  %i.u = add i64 %i.s, %i.t
  store i64 %i.u, ptr %0, align 8, !tbaa !194
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_18
begin_hunk_19_@_ZN6duckdb13ArrowListDataIlE13AppendOffsetsERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE:bb.a
  %i.bg = ashr exact i64 %i.be, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 2305843009213693951)
  %i.bk = select i1 %i.bi, i64 2305843009213693951, i64 %i.bj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #35 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i32 %i.az, ptr %i.bn, align 4, !tbaa !3
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.m, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.m, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #37
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bm, ptr %4, align 8, !tbaa !1667
  store ptr %i.bp, ptr %i.y, align 8, !tbaa !1669
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bk ; 2 uses
  store ptr %i.bq, ptr %i.z, align 8, !tbaa !1672
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.br = phi ptr [ %i.av, %bb.j ], [ %i.bq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.bs = phi ptr [ %i.ba, %bb.j ], [ %i.bp, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.bt = add nuw i64 %.045, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.as
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1711

.loopexit:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.i
  %.1 = phi i64 [ %.03947, %bb.i ], [ %i.at, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.at, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %i.bu = add nuw i64 %.04046, 1                  ; 2 uses
  %exitcond50.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond50.not, label %._crit_edge, label %bb.g, !llvm.loop !1712
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowListDataIiE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 3 uses
  %i.d = shl i64 %2, 2
  %i.e = add i64 %i.d, 4
  %i.f = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.e) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.f) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.f) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.c, align 8, !tbaa !151
  store i64 %i.f, ptr %i.g, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !75
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34, !inline_history !78
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34, !inline_history !78
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !79

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !83
  %.not.i.i10 = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i.i10, label %bb.l, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ai = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !80
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !84 ; 10 uses
  %i.al = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #35
          to label %.noexc12 unwind label %bb.p   ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  %i.ax = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.af
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.ay = sub i64 %i.al, %i.am
  %i.az = add i64 %i.ay, -8                       ; 2 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bc = add i64 %i.al, -8
  %i.bd = sub i64 %i.bc, %i.am
  %i.be = and i64 %i.bd, -8
  %i.bf = add i64 %i.be, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.bf
  %scevgep20 = getelementptr i8, ptr %i.ak, i64 %i.bf
  %bound0 = icmp ult ptr %i.av, %scevgep20
  %bound1 = icmp ult ptr %i.ak, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.av, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ak, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bj ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.ak, i64 %i.bj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  %i.bk = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 8, !tbaa !71, !alias.scope !1718, !noalias !1713
  %wide.load22 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !71, !alias.scope !1718, !noalias !1713
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1721, !noalias !1718
  store <2 x i64> %wide.load22, ptr %i.bl, align 8, !tbaa !71, !alias.scope !1721, !noalias !1718
  %i.bm = getelementptr i8, ptr %next.gep21, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !71, !alias.scope !1718, !noalias !1713
  store <2 x ptr> splat (ptr null), ptr %i.bm, align 8, !tbaa !71, !alias.scope !1718, !noalias !1713
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1723

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader24

.lr.ph.i.i.i.i.i.i.i.preheader24:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader24, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader24 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader24 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1716, !noalias !1713
  store i64 %i.bo, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1713, !noalias !1716
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1716, !noalias !1713
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.af
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1724

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.av, %.noexc12 ], [ %i.bh, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ak) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.n
  store ptr %i.av, ptr %i.ad, align 8, !tbaa !84
  store ptr %i.br, ptr %i.ae, align 8, !tbaa !80
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bs, ptr %i.ag, align 8, !tbaa !83
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %.pr) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.o:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.p ], [ %i.bt, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowListDataIiE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::vector.977", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.ah

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb13ArrowListDataIiE13AppendOffsetsERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.d unwind label %bb.ah

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.a = load ptr, ptr %6, align 8, !tbaa !1667
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %7, align 8, !tbaa !1503
  %i.c = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.e unwind label %bb.ai      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1669
  %i.f = load ptr, ptr %6, align 8, !tbaa !1667
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.aj

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, i64 noundef 2048)
          to label %bb.g unwind label %bb.ak

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #34
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.j)
          to label %bb.h unwind label %bb.al

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.i unwind label %bb.al

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.j unwind label %bb.al

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !140
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.k unwind label %bb.al

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.l unwind label %bb.al

bb.l:                                             ; preds = %bb.k
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(328) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.j)
          to label %bb.m unwind label %bb.al

bb.m:                                             ; preds = %bb.l
  %i.s = sub i64 %3, %2
  %i.t = load i64, ptr %0, align 8, !tbaa !194
  %i.u = add i64 %i.s, %i.t
  store i64 %i.u, ptr %0, align 8, !tbaa !194
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_19
begin_hunk_20_@_ZN6duckdb13ArrowListDataIiE13AppendOffsetsERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE:bb.a
  br i1 %.not.i.i46, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  store ptr %i.bm, ptr %i.z, align 8, !tbaa !1669
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.r:                                             ; preds = %.lr.ph
  %i.bn = load ptr, ptr %4, align 8, !tbaa !1667  ; 4 uses
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 5 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775804
  br i1 %i.br, label %bb.s, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.bs = ashr exact i64 %i.bq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 2305843009213693951)
  %i.bw = select i1 %i.bu, i64 2305843009213693951, i64 %i.bv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bx = shl nuw nsw i64 %i.bw, 2
  %i.by = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #35 ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bq ; 2 uses
  store i32 %i.bl, ptr %i.bz, align 4, !tbaa !3
  %i.ca = icmp sgt i64 %i.bq, 0
  br i1 %i.ca, label %bb.t, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.t:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.by, ptr align 4 %i.bn, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.t, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bn) #37
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.by, ptr %4, align 8, !tbaa !1667
  store ptr %i.cb, ptr %i.z, align 8, !tbaa !1669
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bw ; 2 uses
  store ptr %i.cc, ptr %i.aa, align 8, !tbaa !1672
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.q, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.cd = phi ptr [ %i.bh, %bb.q ], [ %i.cc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.ce = phi ptr [ %i.bm, %bb.q ], [ %i.cb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.cf = add nuw i64 %.053, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %i.au
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1725

.loopexit:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %bb.p, %bb.i
  %i.cg = phi i32 [ %i.ab, %bb.i ], [ %i.bf, %bb.p ], [ %i.bf, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %i.ch = add nuw i64 %.04354, 1                  ; 2 uses
  %exitcond57.not = icmp eq i64 %i.ch, %3
  br i1 %exitcond57.not, label %._crit_edge, label %bb.g, !llvm.loop !1726

bb.v:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ArrowMapDataIiE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 11 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 10 uses
  %5 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %6 = alloca %"class.duckdb::unique_ptr", align 8 ; 10 uses
  %7 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 2
  %i.d = add i64 %i.c, 4
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.e) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.e) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !151
  store i64 %i.e, ptr %i.f, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb7MapType7KeyTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb7MapType9ValueTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.n = tail call noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #35, !noalias !1727 ; 3 uses
  invoke void @_ZN6duckdb15ArrowAppendDataC2ERKNS_16ClientPropertiesE(ptr noundef nonnull align 8 dereferenceable(328) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_ZN6duckdb9make_uniqINS_15ArrowAppendDataEJRNS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.e, !noalias !1727

common.resume:                                    ; preds = %bb.al, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %.pn19, %bb.al ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #37, !noalias !1727
  br label %common.resume

_ZN6duckdb9make_uniqINS_15ArrowAppendDataEJRNS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  store ptr %i.n, ptr %3, align 8, !tbaa !71, !alias.scope !1727
  %i.p = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.ae      ; 3 uses

bb.f:                                             ; preds = %_ZN6duckdb9make_uniqINS_15ArrowAppendDataEJRNS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.g unwind label %bb.af

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83
  %.not.i.i21 = icmp eq ptr %i.s, %i.u
  br i1 %.not.i.i21, label %bb.h, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.g
  %i.v = load i64, ptr %4, align 8, !tbaa !71
  store i64 %i.v, ptr %i.s, align 8, !tbaa !71
  store ptr null, ptr %4, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.w, ptr %i.r, align 8, !tbaa !80
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !84   ; 10 uses
  %i.y = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.i, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #35
          to label %.noexc22 unwind label %bb.ag  ; 10 uses

.noexc22:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  %i.ak = load i64, ptr %4, align 8, !tbaa !71
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !71
  store ptr null, ptr %4, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc22
  %i.al = sub i64 %i.y, %i.z
  %i.am = add i64 %i.al, -8                       ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader148, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ap = add i64 %i.y, -8
  %i.aq = sub i64 %i.ap, %i.z
  %i.ar = and i64 %i.aq, -8
  %i.as = add i64 %i.ar, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.as
  %scevgep97 = getelementptr i8, ptr %i.x, i64 %i.as
  %bound0 = icmp ult ptr %i.ai, %scevgep97
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader148, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.ai, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.x, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.aw ; 2 uses
  %next.gep98 = getelementptr i8, ptr %i.x, i64 %i.aw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %i.ax = getelementptr i8, ptr %next.gep98, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep98, align 8, !tbaa !71, !alias.scope !1735, !noalias !1730
  %wide.load99 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !71, !alias.scope !1735, !noalias !1730
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1738, !noalias !1735
  store <2 x i64> %wide.load99, ptr %i.ay, align 8, !tbaa !71, !alias.scope !1738, !noalias !1735
  %i.az = getelementptr i8, ptr %next.gep98, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep98, align 8, !tbaa !71, !alias.scope !1735, !noalias !1730
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !71, !alias.scope !1735, !noalias !1730
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1740

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader148

.lr.ph.i.i.i.i.i.i.i.preheader148:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader148, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader148 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader148 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1733, !noalias !1730
  store i64 %i.bb, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1730, !noalias !1733
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1733, !noalias !1730
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1741

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc22
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.noexc22 ], [ %i.au, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.j
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !84
  store ptr %i.be, ptr %i.r, align 8, !tbaa !80
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bf, ptr %i.t, align 8, !tbaa !83
  %.pr = load ptr, ptr %4, align 8, !tbaa !71     ; 3 uses
  %.not.i23 = icmp eq ptr %.pr, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %.pr) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bi, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !75
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !76
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #34, !inline_history !78
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !76
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #34, !inline_history !78
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i24 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.bl, %bb.n ], [ %i.bv, %bb.o ]
  %i.bw = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bw, label %bb.p, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !79

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.bx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.q unwind label %bb.ae      ; 3 uses

bb.q:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.r unwind label %bb.ai

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 64 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !80 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 72 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !83
  %.not.i.i25 = icmp eq ptr %i.ca, %i.cc
  br i1 %.not.i.i25, label %bb.s, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40.thread: ; preds = %bb.r
  %i.cd = load i64, ptr %6, align 8, !tbaa !71
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !71
  store ptr null, ptr %6, align 8, !tbaa !71
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !80
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit43

bb.s:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !84 ; 10 uses
  %i.cg = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.ch = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775800
  br i1 %i.cj, label %bb.t, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i26

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc38 unwind label %bb.aj

.noexc38:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i26: ; preds = %bb.s
  %i.ck = ashr exact i64 %i.ci, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i27 = call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i.i27, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 1152921504606846975)
  %i.co = select i1 %i.cm, i64 1152921504606846975, i64 %i.cn ; 3 uses
  %.not.i.i.i.i28 = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %.not.i.i.i.i28)
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #35
          to label %.noexc39 unwind label %bb.aj  ; 10 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i26
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci
  %i.cs = load i64, ptr %6, align 8, !tbaa !71
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !71
  store ptr null, ptr %6, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i29 = icmp eq ptr %i.cf, %i.ca
  br i1 %.not10.i.i.i.i.i.i.i29, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i34, label %.lr.ph.i.i.i.i.i.i.i30.preheader

.lr.ph.i.i.i.i.i.i.i30.preheader:                 ; preds = %.noexc39
  %i.ct = sub i64 %i.cg, %i.ch
  %i.cu = add i64 %i.ct, -8                       ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check108 = icmp ult i64 %i.cu, 152
  br i1 %min.iters.check108, label %.lr.ph.i.i.i.i.i.i.i30.preheader146, label %vector.memcheck101

vector.memcheck101:                               ; preds = %.lr.ph.i.i.i.i.i.i.i30.preheader
  %i.cx = add i64 %i.cg, -8
  %i.cy = sub i64 %i.cx, %i.ch
  %i.cz = and i64 %i.cy, -8
  %i.da = add i64 %i.cz, 8                        ; 2 uses
  %scevgep102 = getelementptr i8, ptr %i.cq, i64 %i.da
  %scevgep103 = getelementptr i8, ptr %i.cf, i64 %i.da
  %bound0104 = icmp ult ptr %i.cq, %scevgep103
  %bound1105 = icmp ult ptr %i.cf, %scevgep102
  %found.conflict106 = and i1 %bound0104, %bound1105
  br i1 %found.conflict106, label %.lr.ph.i.i.i.i.i.i.i30.preheader146, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck101
  %n.vec111 = and i64 %i.cw, 4611686018427387900  ; 3 uses
  %i.db = shl i64 %n.vec111, 3                    ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cq, i64 %i.db  ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cf, i64 %i.db
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph109
  %index113 = phi i64 [ 0, %vector.ph109 ], [ %index.next118, %vector.body112 ] ; 2 uses
  %i.de = shl i64 %index113, 3                    ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.cq, i64 %i.de ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.cf, i64 %i.de ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %i.df = getelementptr i8, ptr %next.gep115, i64 16
  %wide.load116 = load <2 x i64>, ptr %next.gep115, align 8, !tbaa !71, !alias.scope !1747, !noalias !1742
  %wide.load117 = load <2 x i64>, ptr %i.df, align 8, !tbaa !71, !alias.scope !1747, !noalias !1742
  %i.dg = getelementptr i8, ptr %next.gep114, i64 16
  store <2 x i64> %wide.load116, ptr %next.gep114, align 8, !tbaa !71, !alias.scope !1750, !noalias !1747
  store <2 x i64> %wide.load117, ptr %i.dg, align 8, !tbaa !71, !alias.scope !1750, !noalias !1747
  %i.dh = getelementptr i8, ptr %next.gep115, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep115, align 8, !tbaa !71, !alias.scope !1747, !noalias !1742
  store <2 x ptr> splat (ptr null), ptr %i.dh, align 8, !tbaa !71, !alias.scope !1747, !noalias !1742
  %index.next118 = add nuw i64 %index113, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next118, %n.vec111
  br i1 %i.di, label %middle.block119, label %vector.body112, !llvm.loop !1752

middle.block119:                                  ; preds = %vector.body112
  %cmp.n120 = icmp eq i64 %i.cw, %n.vec111
  br i1 %cmp.n120, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i34, label %.lr.ph.i.i.i.i.i.i.i30.preheader146

.lr.ph.i.i.i.i.i.i.i30.preheader146:              ; preds = %vector.memcheck101, %.lr.ph.i.i.i.i.i.i.i30.preheader, %middle.block119
  %.012.i.i.i.i.i.i.i31.ph = phi ptr [ %i.cq, %vector.memcheck101 ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i30.preheader ], [ %i.dc, %middle.block119 ]
  %.0911.i.i.i.i.i.i.i32.ph = phi ptr [ %i.cf, %vector.memcheck101 ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i30.preheader ], [ %i.dd, %middle.block119 ]
  br label %.lr.ph.i.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i.i30:                           ; preds = %.lr.ph.i.i.i.i.i.i.i30.preheader146, %.lr.ph.i.i.i.i.i.i.i30
  %.012.i.i.i.i.i.i.i31 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i.i30 ], [ %.012.i.i.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i.i.i30.preheader146 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i32 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i30 ], [ %.0911.i.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i.i30.preheader146 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %i.dj = load i64, ptr %.0911.i.i.i.i.i.i.i32, align 8, !tbaa !71, !alias.scope !1745, !noalias !1742
  store i64 %i.dj, ptr %.012.i.i.i.i.i.i.i31, align 8, !tbaa !71, !alias.scope !1742, !noalias !1745
  store ptr null, ptr %.0911.i.i.i.i.i.i.i32, align 8, !tbaa !71, !alias.scope !1745, !noalias !1742
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i32, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.dk, %i.ca
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i34, label %.lr.ph.i.i.i.i.i.i.i30, !llvm.loop !1753

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i34: ; preds = %.lr.ph.i.i.i.i.i.i.i30, %middle.block119, %.noexc39
  %.0.lcssa.i.i.i.i.i.i.i35 = phi ptr [ %i.cq, %.noexc39 ], [ %i.dc, %middle.block119 ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i30 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i35, i64 8
  %.not.i23.i.i.i36 = icmp eq ptr %i.cf, null
  br i1 %.not.i23.i.i.i36, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i34
  call void @_ZdlPv(ptr noundef nonnull %i.cf) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i34, %bb.u
  store ptr %i.cq, ptr %i.by, align 8, !tbaa !84
  store ptr %i.dm, ptr %i.bz, align 8, !tbaa !80
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.dn, ptr %i.cb, align 8, !tbaa !83
  %.pr69 = load ptr, ptr %6, align 8, !tbaa !71   ; 3 uses
  %.not.i41 = icmp eq ptr %.pr69, null
  br i1 %.not.i41, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit43, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i42

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i42: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr69) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %.pr69) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit43

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit43: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i42
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i44 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i44, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48, label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit43
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 4 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 4294967297
  %i.dt = trunc i64 %i.dr to i32                  ; 2 uses
  br i1 %i.ds, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dq, align 8, !tbaa !73
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 0, ptr %i.du, align 4, !tbaa !75
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !76
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #34, !inline_history !78
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !76
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #34, !inline_history !78
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48

bb.x:                                             ; preds = %bb.v
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i45 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i.i45, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = add nsw i32 %i.dt, -1
  store i32 %i.ec, ptr %i.dq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46

bb.z:                                             ; preds = %bb.x
  %i.ed = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i47 = phi i32 [ %i.dt, %bb.y ], [ %i.ed, %bb.z ]
  %i.ee = icmp eq i32 %.0.i.i.i.i.i47, 1
  br i1 %i.ee, label %bb.aa, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48, !prof !79

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48: ; preds = %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit43, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !80 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !83
  %.not.i.i49 = icmp eq ptr %i.eh, %i.ej
  br i1 %.not.i.i49, label %bb.ab, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64.thread: ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48
  %i.ek = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ek, ptr %i.eh, align 8, !tbaa !71
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.el, ptr %i.eg, align 8, !tbaa !80
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit67

bb.ab:                                            ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !84 ; 10 uses
  %i.en = ptrtoint ptr %i.eh to i64               ; 3 uses
  %i.eo = ptrtoint ptr %i.em to i64               ; 3 uses
  %i.ep = sub i64 %i.en, %i.eo                    ; 3 uses
  %i.eq = icmp eq i64 %i.ep, 9223372036854775800
  br i1 %i.eq, label %bb.ac, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i50

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc62 unwind label %bb.ae

.noexc62:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i50: ; preds = %bb.ab
  %i.er = ashr exact i64 %i.ep, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i51 = call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = add nsw i64 %.sroa.speculated.i.i.i.i51, %i.er ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.er
  %i.eu = call i64 @llvm.umin.i64(i64 %i.es, i64 1152921504606846975)
  %i.ev = select i1 %i.et, i64 1152921504606846975, i64 %i.eu ; 3 uses
  %.not.i.i.i.i52 = icmp ne i64 %i.ev, 0
  call void @llvm.assume(i1 %.not.i.i.i.i52)
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %i.ex = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #35
          to label %.noexc63 unwind label %bb.ae  ; 10 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i50
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ep
  %i.ez = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i53 = icmp eq ptr %i.em, %i.eh
  br i1 %.not10.i.i.i.i.i.i.i53, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i58, label %.lr.ph.i.i.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i.i.i54.preheader:                 ; preds = %.noexc63
  %i.fa = sub i64 %i.en, %i.eo
  %i.fb = add i64 %i.fa, -8                       ; 2 uses
  %i.fc = lshr i64 %i.fb, 3
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check130 = icmp ult i64 %i.fb, 152
  br i1 %min.iters.check130, label %.lr.ph.i.i.i.i.i.i.i54.preheader145, label %vector.memcheck123

vector.memcheck123:                               ; preds = %.lr.ph.i.i.i.i.i.i.i54.preheader
  %i.fe = add i64 %i.en, -8
  %i.ff = sub i64 %i.fe, %i.eo
  %i.fg = and i64 %i.ff, -8
  %i.fh = add i64 %i.fg, 8                        ; 2 uses
  %scevgep124 = getelementptr i8, ptr %i.ex, i64 %i.fh
  %scevgep125 = getelementptr i8, ptr %i.em, i64 %i.fh
  %bound0126 = icmp ult ptr %i.ex, %scevgep125
  %bound1127 = icmp ult ptr %i.em, %scevgep124
  %found.conflict128 = and i1 %bound0126, %bound1127
  br i1 %found.conflict128, label %.lr.ph.i.i.i.i.i.i.i54.preheader145, label %vector.ph131

vector.ph131:                                     ; preds = %vector.memcheck123
  %n.vec133 = and i64 %i.fd, 4611686018427387900  ; 3 uses
  %i.fi = shl i64 %n.vec133, 3                    ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ex, i64 %i.fi  ; 2 uses
  %i.fk = getelementptr i8, ptr %i.em, i64 %i.fi
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph131
  %index135 = phi i64 [ 0, %vector.ph131 ], [ %index.next140, %vector.body134 ] ; 2 uses
  %i.fl = shl i64 %index135, 3                    ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.ex, i64 %i.fl ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.em, i64 %i.fl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %i.fm = getelementptr i8, ptr %next.gep137, i64 16
  %wide.load138 = load <2 x i64>, ptr %next.gep137, align 8, !tbaa !71, !alias.scope !1759, !noalias !1754
  %wide.load139 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !71, !alias.scope !1759, !noalias !1754
  %i.fn = getelementptr i8, ptr %next.gep136, i64 16
  store <2 x i64> %wide.load138, ptr %next.gep136, align 8, !tbaa !71, !alias.scope !1762, !noalias !1759
  store <2 x i64> %wide.load139, ptr %i.fn, align 8, !tbaa !71, !alias.scope !1762, !noalias !1759
  %i.fo = getelementptr i8, ptr %next.gep137, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep137, align 8, !tbaa !71, !alias.scope !1759, !noalias !1754
  store <2 x ptr> splat (ptr null), ptr %i.fo, align 8, !tbaa !71, !alias.scope !1759, !noalias !1754
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.fp, label %middle.block141, label %vector.body134, !llvm.loop !1764

middle.block141:                                  ; preds = %vector.body134
  %cmp.n142 = icmp eq i64 %i.fd, %n.vec133
  br i1 %cmp.n142, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i58, label %.lr.ph.i.i.i.i.i.i.i54.preheader145

.lr.ph.i.i.i.i.i.i.i54.preheader145:              ; preds = %vector.memcheck123, %.lr.ph.i.i.i.i.i.i.i54.preheader, %middle.block141
  %.012.i.i.i.i.i.i.i55.ph = phi ptr [ %i.ex, %vector.memcheck123 ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i54.preheader ], [ %i.fj, %middle.block141 ]
  %.0911.i.i.i.i.i.i.i56.ph = phi ptr [ %i.em, %vector.memcheck123 ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i54.preheader ], [ %i.fk, %middle.block141 ]
  br label %.lr.ph.i.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i.i54:                           ; preds = %.lr.ph.i.i.i.i.i.i.i54.preheader145, %.lr.ph.i.i.i.i.i.i.i54
  %.012.i.i.i.i.i.i.i55 = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.i54 ], [ %.012.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i54.preheader145 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i56 = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i.i54 ], [ %.0911.i.i.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i.i.i54.preheader145 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %i.fq = load i64, ptr %.0911.i.i.i.i.i.i.i56, align 8, !tbaa !71, !alias.scope !1757, !noalias !1754
  store i64 %i.fq, ptr %.012.i.i.i.i.i.i.i55, align 8, !tbaa !71, !alias.scope !1754, !noalias !1757
  store ptr null, ptr %.0911.i.i.i.i.i.i.i56, align 8, !tbaa !71, !alias.scope !1757, !noalias !1754
  %i.fr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i56, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i55, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i57 = icmp eq ptr %i.fr, %i.eh
  br i1 %.not.i.i.i.i.i.i.i57, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i58, label %.lr.ph.i.i.i.i.i.i.i54, !llvm.loop !1765

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i58: ; preds = %.lr.ph.i.i.i.i.i.i.i54, %middle.block141, %.noexc63
  %.0.lcssa.i.i.i.i.i.i.i59 = phi ptr [ %i.ex, %.noexc63 ], [ %i.fj, %middle.block141 ], [ %i.fs, %.lr.ph.i.i.i.i.i.i.i54 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i59, i64 8
  %.not.i23.i.i.i60 = icmp eq ptr %i.em, null
  br i1 %.not.i23.i.i.i60, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i58
  call void @_ZdlPv(ptr noundef nonnull %i.em) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i58, %bb.ad
  store ptr %i.ex, ptr %i.ef, align 8, !tbaa !84
  store ptr %i.ft, ptr %i.eg, align 8, !tbaa !80
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ev
  store ptr %i.fu, ptr %i.ei, align 8, !tbaa !83
  %.pr71 = load ptr, ptr %3, align 8, !tbaa !71   ; 3 uses
  %.not.i65 = icmp eq ptr %.pr71, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit67, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i66

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i66: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr71) #34, !inline_history !204
  call void @_ZdlPv(ptr noundef nonnull %.pr71) #37, !inline_history !204
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit67

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit67: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.ae:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i50, %bb.ac, %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, %_ZN6duckdb9make_uniqINS_15ArrowAppendDataEJRNS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.af:                                            ; preds = %bb.f
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.fx, %bb.ag ], [ %i.fw, %bb.af ]
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.al

bb.ai:                                            ; preds = %bb.q
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i26, %bb.t
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn17 = phi { ptr, i32 } [ %i.fz, %bb.aj ], [ %i.fy, %bb.ai ]
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah, %bb.ae
  %.pn19 = phi { ptr, i32 } [ %i.fv, %bb.ae ], [ %.pn17, %bb.ak ], [ %.pn, %bb.ah ]
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ArrowMapDataIiE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::vector.977", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::Vector", align 8   ; 8 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.an

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.ao

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb13ArrowListDataIiE13AppendOffsetsERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.d unwind label %bb.ap

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.a = load ptr, ptr %6, align 8, !tbaa !1667
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %7, align 8, !tbaa !1503
  %i.c = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.e unwind label %bb.aq      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.d = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.f unwind label %bb.ar      ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1669
  %i.g = load ptr, ptr %6, align 8, !tbaa !1667
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.g unwind label %bb.as

bb.g:                                             ; preds = %bb.f
  %i.n = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.h unwind label %bb.as      ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %bb.i unwind label %bb.at

bb.i:                                             ; preds = %bb.h
  %i.q = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
end_hunk_20
begin_hunk_21_@_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EEC2INS0_14ArrowBatchTaskESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34, !inline_history !1902
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34, !inline_history !1902
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.m, %bb.l
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !79

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSA_m.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #34
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1903 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(360) %i.b) #34, !inline_history !1905
  br label %_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1863 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN6duckdb14ArrowBatchTaskEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN6duckdb14ArrowBatchTaskEE) #34
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1863 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #34
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN6duckdb25QueryResultChunkScanStateC1ERNS_11QueryResultE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(392)) unnamed_addr #3

declare noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #3

declare void @_ZN6duckdb23PhysicalResultCollectorC2ERNS_12PhysicalPlanERNS_21PreparedStatementDataE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(266)) unnamed_addr #3

declare void @_ZN6duckdb22PhysicalBatchCollectorC2ERNS_12PhysicalPlanERNS_21PreparedStatementDataE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(266)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEEvSD_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %.not116 = icmp eq ptr %2, %3
  br i1 %.not116, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1203
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1087 ; 27 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 7 uses
  %i.r = sub i64 %i.b, %i.c
  %i.s = add i64 %i.r, -8                         ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check183 = icmp ult i64 %i.s, 216
  br i1 %min.iters.check183, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck176

vector.memcheck176:                               ; preds = %bb.d
  %i.v = add i64 %i.b, -8
  %i.w = sub i64 %i.v, %i.c
  %i.x = and i64 %i.w, -8                         ; 2 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep177 = getelementptr i8, ptr %i.y, i64 8
  %i.z = add i64 %i.x, %i.c
  %i.aa = add i64 %i.z, 8
  %i.ab = sub i64 %i.aa, %i.b
  %scevgep178 = getelementptr i8, ptr %i.i, i64 %i.ab
  %bound0179 = icmp ult ptr %i.i, %scevgep178
  %bound1180 = icmp ult ptr %i.q, %scevgep177
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck176
  %n.vec186 = and i64 %i.u, 4611686018427387900   ; 3 uses
  %i.ac = shl i64 %n.vec186, 3                    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ac
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph184
  %index188 = phi i64 [ 0, %vector.ph184 ], [ %index.next193, %vector.body187 ] ; 2 uses
  %i.af = shl i64 %index188, 3                    ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.i, i64 %i.af ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.q, i64 %i.af ; 4 uses
  %i.ag = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load191 = load <2 x i64>, ptr %next.gep190, align 8, !tbaa !1091, !alias.scope !1906
  %wide.load192 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !1091, !alias.scope !1906
  %i.ah = getelementptr i8, ptr %next.gep189, i64 16
  store <2 x i64> %wide.load191, ptr %next.gep189, align 8, !tbaa !1091, !alias.scope !1909, !noalias !1906
  store <2 x i64> %wide.load192, ptr %i.ah, align 8, !tbaa !1091, !alias.scope !1909, !noalias !1906
  %i.ai = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep190, align 8, !tbaa !1091, !alias.scope !1906
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !1091, !alias.scope !1906
  %index.next193 = add nuw i64 %index188, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next193, %n.vec186
  br i1 %i.aj, label %middle.block194, label %vector.body187, !llvm.loop !1911

middle.block194:                                  ; preds = %vector.body187
  %cmp.n195 = icmp eq i64 %i.u, %n.vec186
  br i1 %cmp.n195, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck176, %bb.d, %middle.block194
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck176 ], [ %i.i, %bb.d ], [ %i.ad, %middle.block194 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck176 ], [ %i.q, %bb.d ], [ %i.ae, %middle.block194 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ak = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !1091
  store i64 %i.ak, ptr %.013.i.i.i.i.i, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !1091
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1912

_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block194
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.an, ptr %i.h, align 8, !tbaa !1087
  %i.ao = ptrtoint ptr %i.q to i64
  %i.ap = sub i64 %i.ao, %i.m
  %i.aq = ashr exact i64 %i.ap, 3                 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.aw, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.aq, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.at, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.i, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %.078.i.i.i.i.i = phi ptr [ %i.as, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.q, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !1091
  store ptr null, ptr %i.as, align 8, !tbaa !1091
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !1091 ; 3 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !1091
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i51
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.av) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.av) #37
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i51
  %i.aw = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ax = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, !llvm.loop !1913

_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.ay = icmp sgt i64 %i.e, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55
  %.012.i.i.i.i.i = phi i64 [ %i.bd, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %i.e, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bc, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %1, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bb, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %2, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %i.az = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !1091
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !1091
  %i.ba = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1091 ; 3 uses
  store ptr %i.az, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1091
  %.not.i.i.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i53, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i52
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ba) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.ba) #37
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54, %.lr.ph.i.i.i.i.i52
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bd = add nsw i64 %.012.i.i.i.i.i, -1
  %i.be = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1914

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.n ; 6 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bf, %3
  br i1 %.not10.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = add i64 %i.b, %i.m
  %i.bh = add i64 %i.k, %i.c
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = add i64 %i.bi, -8                       ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 264
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader270, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bm = add i64 %i.b, %i.m
  %i.bn = add i64 %i.bm, -8
  %i.bo = add i64 %i.k, %i.c
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -8                       ; 2 uses
  %i.br = getelementptr i8, ptr %i.i, i64 %i.bq
  %scevgep = getelementptr i8, ptr %i.br, i64 8
  %i.bs = add i64 %i.bq, %i.k
  %i.bt = add i64 %i.bs, 8
  %i.bu = sub i64 %i.bt, %i.m
  %scevgep150 = getelementptr i8, ptr %2, i64 %i.bu
  %bound0 = icmp ult ptr %i.i, %scevgep150
  %bound1 = icmp ult ptr %i.bf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader270, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bv = shl i64 %n.vec, 3                       ; 2 uses
  %i.bw = getelementptr i8, ptr %i.i, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bf, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.by ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.bf, i64 %i.by ; 4 uses
  %i.bz = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep151, align 8, !tbaa !1091, !alias.scope !1915
  %wide.load152 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !1091, !alias.scope !1915
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1091, !alias.scope !1918, !noalias !1915
  store <2 x i64> %wide.load152, ptr %i.ca, align 8, !tbaa !1091, !alias.scope !1918, !noalias !1915
  %i.cb = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep151, align 8, !tbaa !1091, !alias.scope !1915
  store <2 x ptr> splat (ptr null), ptr %i.cb, align 8, !tbaa !1091, !alias.scope !1915
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1920

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader270

.lr.ph.i.i.i.i.preheader270:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  %.sroa.08.011.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader270, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader270 ] ; 2 uses
  %.sroa.08.011.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader270 ] ; 3 uses
  %i.cd = load i64, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !1091
  store i64 %i.cd, ptr %.012.i.i.i.i, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !1091
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ce, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1921

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cg = sub nsw i64 %i.e, %i.o
  %i.ch = getelementptr [8 x i8], ptr %i.i, i64 %i.cg ; 5 uses
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.ci = sub i64 %i.k, %i.m
  %i.cj = add i64 %i.ci, -8                       ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.cj, 216
  br i1 %min.iters.check161, label %.lr.ph.i.i.i.i.i57.preheader269, label %vector.memcheck154

vector.memcheck154:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader
  %i.cm = add i64 %i.k, -8
  %i.cn = sub i64 %i.cm, %i.m
  %i.co = and i64 %i.cn, -8                       ; 2 uses
  %i.cp = add i64 %i.d, %i.co
  %i.cq = add i64 %i.cp, 8
  %i.cr = sub i64 %i.cq, %i.n
  %scevgep155 = getelementptr i8, ptr %i.i, i64 %i.cr
  %i.cs = getelementptr i8, ptr %1, i64 %i.co
  %scevgep156 = getelementptr i8, ptr %i.cs, i64 8
  %bound0157 = icmp ult ptr %i.ch, %scevgep156
  %bound1158 = icmp ult ptr %1, %scevgep155
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph.i.i.i.i.i57.preheader269, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck154
  %n.vec164 = and i64 %i.cl, 4611686018427387900  ; 3 uses
  %i.ct = shl i64 %n.vec164, 3                    ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ch, i64 %i.ct
  %i.cv = getelementptr i8, ptr %1, i64 %i.ct
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.cw = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.ch, i64 %i.cw ; 2 uses
  %next.gep168 = getelementptr i8, ptr %1, i64 %i.cw ; 4 uses
  %i.cx = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 8, !tbaa !1091, !alias.scope !1922
  %wide.load170 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !1091, !alias.scope !1922
  %i.cy = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 8, !tbaa !1091, !alias.scope !1925, !noalias !1922
  store <2 x i64> %wide.load170, ptr %i.cy, align 8, !tbaa !1091, !alias.scope !1925, !noalias !1922
  %i.cz = getelementptr i8, ptr %next.gep168, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep168, align 8, !tbaa !1091, !alias.scope !1922
  store <2 x ptr> splat (ptr null), ptr %i.cz, align 8, !tbaa !1091, !alias.scope !1922
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.da, label %middle.block172, label %vector.body165, !llvm.loop !1927

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.cl, %n.vec164
  br i1 %cmp.n173, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader269

.lr.ph.i.i.i.i.i57.preheader269:                  ; preds = %vector.memcheck154, %.lr.ph.i.i.i.i.i57.preheader, %middle.block172
  %.013.i.i.i.i.i58.ph = phi ptr [ %i.ch, %vector.memcheck154 ], [ %i.ch, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.cu, %middle.block172 ]
  %.sroa.08.012.i.i.i.i.i59.ph = phi ptr [ %1, %vector.memcheck154 ], [ %1, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.cv, %middle.block172 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader269, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i57 ], [ %.013.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader269 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i57 ], [ %.sroa.08.012.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader269 ] ; 3 uses
  %i.db = load i64, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !1091
  store i64 %i.db, ptr %.013.i.i.i.i.i58, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !1091
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 8
  %.not.i.i.i.i.i60 = icmp eq ptr %i.dc, %i.i
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57, !llvm.loop !1928

_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62: ; preds = %.lr.ph.i.i.i.i.i57, %middle.block172, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.de, ptr %i.h, align 8, !tbaa !1087
  %i.df = ashr exact i64 %i.n, 3                  ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i64:                               ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70
  %.012.i.i.i.i.i65 = phi i64 [ %i.dl, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %i.df, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 2 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.dk, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %1, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %.0910.i.i.i.i.i67 = phi ptr [ %i.dj, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %2, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %i.dh = load ptr, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !1091
  store ptr null, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !1091
  %i.di = load ptr, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !1091 ; 3 uses
  store ptr %i.dh, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !1091
  %.not.i.i.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i68, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69: ; preds = %.lr.ph.i.i.i.i.i64
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.di) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.di) #37
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69, %.lr.ph.i.i.i.i.i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i67, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  %i.dl = add nsw i64 %.012.i.i.i.i.i65, -1
  %i.dm = icmp sgt i64 %.012.i.i.i.i.i65, 1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1914

bb.e:                                             ; preds = %bb.b
  %i.dn = load ptr, ptr %0, align 8, !tbaa !1090  ; 12 uses
  %i.do = ptrtoint ptr %i.dn to i64               ; 3 uses
  %i.dp = sub i64 %i.k, %i.do
  %i.dq = ashr exact i64 %i.dp, 3                 ; 4 uses
  %i.dr = sub nsw i64 1152921504606846975, %i.dq
  %i.ds = icmp ult i64 %i.dr, %i.e
  br i1 %i.ds, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.e)
  %i.dt = add nsw i64 %.sroa.speculated.i, %i.dq  ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.dq
  %i.dv = tail call i64 @llvm.umin.i64(i64 %i.dt, i64 1152921504606846975)
  %i.dw = select i1 %i.du, i64 1152921504606846975, i64 %i.dv ; 3 uses
  %.not.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #35
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.dz = phi ptr [ %i.dy, %bb.g ], [ null, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %i.dn, %1
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit
  %i.ea = sub i64 %i.a, %i.do
  %i.eb = add i64 %i.ea, -8                       ; 2 uses
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.eb, 152
  br i1 %min.iters.check205, label %.lr.ph.i.i.i.i.i73.preheader266, label %vector.memcheck198

vector.memcheck198:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %i.ee = add i64 %i.a, -8
  %i.ef = sub i64 %i.ee, %i.do
  %i.eg = and i64 %i.ef, -8
  %i.eh = add i64 %i.eg, 8                        ; 2 uses
  %scevgep199 = getelementptr i8, ptr %i.dz, i64 %i.eh
  %scevgep200 = getelementptr i8, ptr %i.dn, i64 %i.eh
  %bound0201 = icmp ult ptr %i.dz, %scevgep200
  %bound1202 = icmp ult ptr %i.dn, %scevgep199
  %found.conflict203 = and i1 %bound0201, %bound1202
  br i1 %found.conflict203, label %.lr.ph.i.i.i.i.i73.preheader266, label %vector.ph206

vector.ph206:                                     ; preds = %vector.memcheck198
  %n.vec208 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.ei = shl i64 %n.vec208, 3                    ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dz, i64 %i.ei  ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dn, i64 %i.ei
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph206
  %index210 = phi i64 [ 0, %vector.ph206 ], [ %index.next215, %vector.body209 ] ; 2 uses
  %i.el = shl i64 %index210, 3                    ; 2 uses
  %next.gep211 = getelementptr i8, ptr %i.dz, i64 %i.el ; 2 uses
  %next.gep212 = getelementptr i8, ptr %i.dn, i64 %i.el ; 4 uses
  %i.em = getelementptr i8, ptr %next.gep212, i64 16
  %wide.load213 = load <2 x i64>, ptr %next.gep212, align 8, !tbaa !1091, !alias.scope !1929
  %wide.load214 = load <2 x i64>, ptr %i.em, align 8, !tbaa !1091, !alias.scope !1929
  %i.en = getelementptr i8, ptr %next.gep211, i64 16
  store <2 x i64> %wide.load213, ptr %next.gep211, align 8, !tbaa !1091, !alias.scope !1932, !noalias !1929
  store <2 x i64> %wide.load214, ptr %i.en, align 8, !tbaa !1091, !alias.scope !1932, !noalias !1929
  %i.eo = getelementptr i8, ptr %next.gep212, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep212, align 8, !tbaa !1091, !alias.scope !1929
  store <2 x ptr> splat (ptr null), ptr %i.eo, align 8, !tbaa !1091, !alias.scope !1929
  %index.next215 = add nuw i64 %index210, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next215, %n.vec208
  br i1 %i.ep, label %middle.block216, label %vector.body209, !llvm.loop !1934

middle.block216:                                  ; preds = %vector.body209
  %cmp.n217 = icmp eq i64 %i.ed, %n.vec208
  br i1 %cmp.n217, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73.preheader266

.lr.ph.i.i.i.i.i73.preheader266:                  ; preds = %vector.memcheck198, %.lr.ph.i.i.i.i.i73.preheader, %middle.block216
  %.013.i.i.i.i.i74.ph = phi ptr [ %i.dz, %vector.memcheck198 ], [ %i.dz, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ej, %middle.block216 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %i.dn, %vector.memcheck198 ], [ %i.dn, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ek, %middle.block216 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader266, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader266 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader266 ] ; 3 uses
  %i.eq = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !1091
  store i64 %i.eq, ptr %.013.i.i.i.i.i74, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !1091
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.er, %1
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73, !llvm.loop !1935

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block216, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %i.dz, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit ], [ %i.ej, %middle.block216 ], [ %i.es, %.lr.ph.i.i.i.i.i73 ] ; 6 uses
  %i.et = sub i64 %i.b, %i.c
  %i.eu = add i64 %i.et, -8                       ; 2 uses
  %i.ev = lshr i64 %i.eu, 3
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check227 = icmp ult i64 %i.eu, 152
  br i1 %min.iters.check227, label %.lr.ph.i.i.i.i79.preheader, label %vector.memcheck220

vector.memcheck220:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.ex = add i64 %i.b, -8
  %i.ey = sub i64 %i.ex, %i.c
  %i.ez = and i64 %i.ey, -8
  %i.fa = add i64 %i.ez, 8                        ; 2 uses
  %scevgep221 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.fa
  %scevgep222 = getelementptr i8, ptr %2, i64 %i.fa
  %bound0223 = icmp ult ptr %.0.lcssa.i.i.i.i.i77, %scevgep222
  %bound1224 = icmp ult ptr %2, %scevgep221
  %found.conflict225 = and i1 %bound0223, %bound1224
  br i1 %found.conflict225, label %.lr.ph.i.i.i.i79.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck220
  %n.vec230 = and i64 %i.ew, 4611686018427387900  ; 3 uses
  %i.fb = shl i64 %n.vec230, 3                    ; 2 uses
  %i.fc = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.fb ; 2 uses
  %i.fd = getelementptr i8, ptr %2, i64 %i.fb
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph228
  %index232 = phi i64 [ 0, %vector.ph228 ], [ %index.next237, %vector.body231 ] ; 2 uses
  %i.fe = shl i64 %index232, 3                    ; 2 uses
  %next.gep233 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.fe ; 2 uses
  %next.gep234 = getelementptr i8, ptr %2, i64 %i.fe ; 4 uses
  %i.ff = getelementptr i8, ptr %next.gep234, i64 16
  %wide.load235 = load <2 x i64>, ptr %next.gep234, align 8, !tbaa !1091, !alias.scope !1936
  %wide.load236 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !1091, !alias.scope !1936
  %i.fg = getelementptr i8, ptr %next.gep233, i64 16
  store <2 x i64> %wide.load235, ptr %next.gep233, align 8, !tbaa !1091, !alias.scope !1939, !noalias !1936
  store <2 x i64> %wide.load236, ptr %i.fg, align 8, !tbaa !1091, !alias.scope !1939, !noalias !1936
  %i.fh = getelementptr i8, ptr %next.gep234, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep234, align 8, !tbaa !1091, !alias.scope !1936
  store <2 x ptr> splat (ptr null), ptr %i.fh, align 8, !tbaa !1091, !alias.scope !1936
  %index.next237 = add nuw i64 %index232, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next237, %n.vec230
  br i1 %i.fi, label %middle.block238, label %vector.body231, !llvm.loop !1941

middle.block238:                                  ; preds = %vector.body231
  %cmp.n239 = icmp eq i64 %i.ew, %n.vec230
  br i1 %cmp.n239, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79.preheader

.lr.ph.i.i.i.i79.preheader:                       ; preds = %vector.memcheck220, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %middle.block238
  %.012.i.i.i.i80.ph = phi ptr [ %.0.lcssa.i.i.i.i.i77, %vector.memcheck220 ], [ %.0.lcssa.i.i.i.i.i77, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.fc, %middle.block238 ]
  %.sroa.08.011.i.i.i.i81.ph = phi ptr [ %2, %vector.memcheck220 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.fd, %middle.block238 ]
  br label %.lr.ph.i.i.i.i79

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79.preheader, %.lr.ph.i.i.i.i79
  %.012.i.i.i.i80 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i79 ], [ %.012.i.i.i.i80.ph, %.lr.ph.i.i.i.i79.preheader ] ; 2 uses
  %.sroa.08.011.i.i.i.i81 = phi ptr [ %i.fk, %.lr.ph.i.i.i.i79 ], [ %.sroa.08.011.i.i.i.i81.ph, %.lr.ph.i.i.i.i79.preheader ] ; 3 uses
  %i.fj = load i64, ptr %.sroa.08.011.i.i.i.i81, align 8, !tbaa !1091
  store i64 %i.fj, ptr %.012.i.i.i.i80, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.011.i.i.i.i81, align 8, !tbaa !1091
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i81, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 8 ; 2 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.fk, %3
  br i1 %.not.i.i.i.i82, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79, !llvm.loop !1942

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84: ; preds = %.lr.ph.i.i.i.i79, %middle.block238
  %.lcssa148 = phi ptr [ %i.fc, %middle.block238 ], [ %i.fl, %.lr.ph.i.i.i.i79 ] ; 7 uses
  %.not11.i.i.i.i.i85 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i85, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86.preheader

.lr.ph.i.i.i.i.i86.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84
  %i.fm = sub i64 %i.k, %i.a
  %i.fn = add i64 %i.fm, -8                       ; 2 uses
  %i.fo = lshr i64 %i.fn, 3
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check249 = icmp ult i64 %i.fn, 152
  br i1 %min.iters.check249, label %.lr.ph.i.i.i.i.i86.preheader264, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i.i.i.i86.preheader
  %i.fq = add i64 %i.k, -8
  %i.fr = sub i64 %i.fq, %i.a
  %i.fs = and i64 %i.fr, -8
  %i.ft = add i64 %i.fs, 8                        ; 2 uses
  %scevgep243 = getelementptr i8, ptr %.lcssa148, i64 %i.ft
  %scevgep244 = getelementptr i8, ptr %1, i64 %i.ft
  %bound0245 = icmp ult ptr %.lcssa148, %scevgep244
  %bound1246 = icmp ult ptr %1, %scevgep243
  %found.conflict247 = and i1 %bound0245, %bound1246
  br i1 %found.conflict247, label %.lr.ph.i.i.i.i.i86.preheader264, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck242
  %n.vec252 = and i64 %i.fp, 4611686018427387900  ; 3 uses
  %i.fu = shl i64 %n.vec252, 3                    ; 2 uses
  %i.fv = getelementptr i8, ptr %.lcssa148, i64 %i.fu ; 2 uses
  %i.fw = getelementptr i8, ptr %1, i64 %i.fu
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph250
  %index254 = phi i64 [ 0, %vector.ph250 ], [ %index.next259, %vector.body253 ] ; 2 uses
  %i.fx = shl i64 %index254, 3                    ; 2 uses
  %next.gep255 = getelementptr i8, ptr %.lcssa148, i64 %i.fx ; 2 uses
  %next.gep256 = getelementptr i8, ptr %1, i64 %i.fx ; 4 uses
  %i.fy = getelementptr i8, ptr %next.gep256, i64 16
  %wide.load257 = load <2 x i64>, ptr %next.gep256, align 8, !tbaa !1091, !alias.scope !1943
  %wide.load258 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !1091, !alias.scope !1943
  %i.fz = getelementptr i8, ptr %next.gep255, i64 16
  store <2 x i64> %wide.load257, ptr %next.gep255, align 8, !tbaa !1091, !alias.scope !1946, !noalias !1943
  store <2 x i64> %wide.load258, ptr %i.fz, align 8, !tbaa !1091, !alias.scope !1946, !noalias !1943
  %i.ga = getelementptr i8, ptr %next.gep256, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep256, align 8, !tbaa !1091, !alias.scope !1943
  store <2 x ptr> splat (ptr null), ptr %i.ga, align 8, !tbaa !1091, !alias.scope !1943
  %index.next259 = add nuw i64 %index254, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next259, %n.vec252
  br i1 %i.gb, label %middle.block260, label %vector.body253, !llvm.loop !1948

middle.block260:                                  ; preds = %vector.body253
  %cmp.n261 = icmp eq i64 %i.fp, %n.vec252
  br i1 %cmp.n261, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86.preheader264

.lr.ph.i.i.i.i.i86.preheader264:                  ; preds = %vector.memcheck242, %.lr.ph.i.i.i.i.i86.preheader, %middle.block260
  %.013.i.i.i.i.i87.ph = phi ptr [ %.lcssa148, %vector.memcheck242 ], [ %.lcssa148, %.lr.ph.i.i.i.i.i86.preheader ], [ %i.fv, %middle.block260 ]
  %.sroa.08.012.i.i.i.i.i88.ph = phi ptr [ %1, %vector.memcheck242 ], [ %1, %.lr.ph.i.i.i.i.i86.preheader ], [ %i.fw, %middle.block260 ]
  br label %.lr.ph.i.i.i.i.i86

.lr.ph.i.i.i.i.i86:                               ; preds = %.lr.ph.i.i.i.i.i86.preheader264, %.lr.ph.i.i.i.i.i86
  %.013.i.i.i.i.i87 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i86 ], [ %.013.i.i.i.i.i87.ph, %.lr.ph.i.i.i.i.i86.preheader264 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i88 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i86 ], [ %.sroa.08.012.i.i.i.i.i88.ph, %.lr.ph.i.i.i.i.i86.preheader264 ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !1091
  store i64 %i.gc, ptr %.013.i.i.i.i.i87, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !1091
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i88, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i87, i64 8 ; 2 uses
  %.not.i.i.i.i.i89 = icmp eq ptr %i.gd, %i.i
  br i1 %.not.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86, !llvm.loop !1949

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91: ; preds = %.lr.ph.i.i.i.i.i86, %middle.block260, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84
  %.0.lcssa.i.i.i.i.i90 = phi ptr [ %.lcssa148, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84 ], [ %i.fv, %middle.block260 ], [ %i.ge, %.lr.ph.i.i.i.i.i86 ]
  %.not4.i.i = icmp eq ptr %i.dn, %i.i
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.gg, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.dn, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91 ] ; 2 uses
  %i.gf = load ptr, ptr %.05.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i92, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.gf) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.gf) #37
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gg, %i.i
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91
  %.not.i93 = icmp eq ptr %i.dn, null
  br i1 %.not.i93, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.dn) #37
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, %bb.h
  store ptr %i.dz, ptr %0, align 8, !tbaa !1090
  store ptr %.0.lcssa.i.i.i.i.i90, ptr %i.h, align 8, !tbaa !1087
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dw
  store ptr %i.gh, ptr %i.f, align 8, !tbaa !1203
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb25ArrowCollectorGlobalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb25ArrowCollectorGlobalStateE, i64 16), ptr %0, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !75
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1950
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1950
  br label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, !prof !79

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1090 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1087 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.s, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.v) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #37
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.r, align 8, !tbaa !1090
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1282 ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(392) %i.z) #34, !inline_history !1296
end_hunk_21
