Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/factory?download=true
inline.NumInlined: 16551
inline.NumDeleted: 4623
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store ptr %i.bh, ptr %12, align 8, !tbaa !166
  store i8 34, ptr %i.bh, align 8, !tbaa !165
  store i64 1, ptr %i.bi, align 8, !tbaa !167
  store i8 0, ptr %i.bj, align 1, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  store ptr %i.bk, ptr %13, align 8, !tbaa !166
  store i16 8738, ptr %i.bk, align 8
  store i64 2, ptr %i.bl, align 8, !tbaa !167
  store i8 0, ptr %i.bm, align 2, !tbaa !165
  invoke void @_ZN5osgeo4proj8internal10replaceAllERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.o unwind label %bb.ag

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.40, i64 noundef 19)
          to label %.noexc147 unwind label %bb.ah, !noalias !862 ; 6 uses

.noexc147:                                        ; preds = %bb.o
  store ptr %i.bn, ptr %10, align 8, !tbaa !166, !alias.scope !862
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !164 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 5 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

bb.p:                                             ; preds = %.noexc147
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !167 ; 3 uses
  %i.dp = icmp ult i64 %i.do, 16
  call void @llvm.assume(i1 %i.dp)
  %i.dq = add nuw nsw i64 %i.do, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.dl, i64 %i.dq, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %.noexc147
  store ptr %i.dk, ptr %10, align 8, !tbaa !164, !alias.scope !862
  %i.dr = load i64, ptr %i.dl, align 8, !tbaa !165
  store i64 %i.dr, ptr %i.bn, align 8, !tbaa !165, !alias.scope !862
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !167
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.p
  %i.ds = phi i64 [ %i.do, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.ds, ptr %i.bo, align 8, !tbaa !167, !alias.scope !862
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !164
  store i64 0, ptr %i.dt, align 8, !tbaa !167
  store i8 0, ptr %i.dl, align 8, !tbaa !165
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.du = load i64, ptr %i.bo, align 8, !tbaa !167, !noalias !863
  %i.dv = and i64 %i.du, -2
  %i.dw = icmp eq i64 %i.dv, 4611686018427387902
  br i1 %i.dw, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.613) #36
          to label %.noexc151 unwind label %.loopexit.split-lp620.loopexit.split-lp.loopexit.split-lp, !noalias !863

.noexc151:                                        ; preds = %bb.r
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.q
  %i.dx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.43, i64 noundef 2)
          to label %.noexc152 unwind label %.loopexit.split-lp620.loopexit.split-lp.loopexit.split-lp, !noalias !863 ; 6 uses

.noexc152:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bp, ptr %9, align 8, !tbaa !166, !alias.scope !863
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !164 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

bb.s:                                             ; preds = %.noexc152
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !167 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  %i.ee = add nuw nsw i64 %i.ec, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.dz, i64 %i.ee, i1 false)
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %.noexc152
  store ptr %i.dy, ptr %9, align 8, !tbaa !164, !alias.scope !863
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !165
  store i64 %i.ef, ptr %i.bp, align 8, !tbaa !165, !alias.scope !863
  %.phi.trans.insert.i149 = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.pre.i150 = load i64, ptr %.phi.trans.insert.i149, align 8, !tbaa !167
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.s
  %i.eg = phi i64 [ %i.ec, %bb.s ], [ %.pre.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.eg, ptr %i.bq, align 8, !tbaa !167, !alias.scope !863
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !164
  store i64 0, ptr %i.eh, align 8, !tbaa !167
  store i8 0, ptr %i.dz, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  store ptr %14, ptr %i.br, align 8, !tbaa !181
  store ptr %14, ptr %14, align 8, !tbaa !182
  store i64 0, ptr %i.bs, align 8, !tbaa !184
  invoke void @_ZN5osgeo4proj2io15DatabaseContext7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1696) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false)
          to label %bb.u unwind label %bb.ai

bb.u:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %14, align 8, !tbaa !182  ; 2 uses
  %.not8.i.i153 = icmp eq ptr %i.ei, %14
  br i1 %.not8.i.i153, label %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io9SQLValuesESaIS4_EED2Ev.exit160, label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %bb.u, %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i157
  %.09.i.i155 = phi ptr [ %i.ej, %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i157 ], [ %i.ei, %bb.u ] ; 4 uses
  %i.ej = load ptr, ptr %.09.i.i155, align 8, !tbaa !182 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.09.i.i155, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !164 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.09.i.i155, i64 40 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156: ; preds = %.lr.ph.i.i154
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !165
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #34
  br label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i157

_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i157:      ; preds = %.lr.ph.i.i154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i155, i64 noundef 72) #34
  %.not.i.i158 = icmp eq ptr %i.ej, %14
  br i1 %.not.i.i158, label %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io9SQLValuesESaIS4_EED2Ev.exit160, label %.lr.ph.i.i154, !llvm.loop !2

_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io9SQLValuesESaIS4_EED2Ev.exit160: ; preds = %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i157, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %i.eq = load ptr, ptr %9, align 8, !tbaa !164   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.bp
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io9SQLValuesESaIS4_EED2Ev.exit160
  %i.es = load i64, ptr %i.bp, align 8, !tbaa !165
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io9SQLValuesESaIS4_EED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  %i.eu = load ptr, ptr %10, align 8, !tbaa !164  ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.bn
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.ew = load i64, ptr %i.bn, align 8, !tbaa !165
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  %i.ey = load ptr, ptr %11, align 8, !tbaa !164  ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.bt
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.fa = load i64, ptr %i.bt, align 8, !tbaa !165
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  %i.fc = load ptr, ptr %13, align 8, !tbaa !164  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.bk
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.fe = load i64, ptr %i.bk, align 8, !tbaa !165
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.fg = load ptr, ptr %12, align 8, !tbaa !164  ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.bh
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.fi = load i64, ptr %i.bh, align 8, !tbaa !165
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %.sroa.0573.0821 = load ptr, ptr %8, align 8, !tbaa !182 ; 2 uses
  %.not588822 = icmp eq ptr %.sroa.0573.0821, %8
  br i1 %.not588822, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.fk = load ptr, ptr %i.bx, align 8, !tbaa !371
  %.not.i.i176 = icmp eq ptr %i.cn, %i.fk
  br i1 %.not.i.i176, label %bb.y, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 3 uses
  store ptr %i.fl, ptr %i.cn, align 8, !tbaa !166
  %i.fm = load ptr, ptr %7, align 8, !tbaa !164   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ba
  br i1 %i.fn, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.fo = load i64, ptr %i.bb, align 8, !tbaa !167 ; 3 uses
  %i.fp = icmp ult i64 %i.fo, 16
  call void @llvm.assume(i1 %i.fp)
  %i.fq = add nuw nsw i64 %i.fo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fl, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.fq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  store ptr %i.fm, ptr %i.cn, align 8, !tbaa !164
  %i.fr = load i64, ptr %i.ba, align 8, !tbaa !165
  store i64 %i.fr, ptr %i.fl, align 8, !tbaa !165
  %.pre = load i64, ptr %i.bb, align 8, !tbaa !167
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.w
  %i.fs = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.fo, %bb.w ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !167
  store ptr %i.ba, ptr %7, align 8, !tbaa !164
  store i64 0, ptr %i.bb, align 8, !tbaa !167
  store i8 0, ptr %i.ba, align 8, !tbaa !165
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.fv = load i8, ptr %i.bc, align 8, !tbaa !861, !range !160, !noundef !161
  store i8 %i.fv, ptr %i.fu, align 8, !tbaa !861
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cn, i64 40 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cn, i64 56 ; 3 uses
  store ptr %i.fx, ptr %i.fw, align 8, !tbaa !166
  %i.fy = load ptr, ptr %i.bd, align 8, !tbaa !164 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.be
  br i1 %i.fz, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ga = load i64, ptr %i.bf, align 8, !tbaa !167 ; 3 uses
  %i.gb = icmp ult i64 %i.ga, 16
  call void @llvm.assume(i1 %i.gb)
  %i.gc = add nuw nsw i64 %i.ga, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fx, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.gc, i1 false)
  br label %_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.fy, ptr %i.fw, align 8, !tbaa !164
  %i.gd = load i64, ptr %i.be, align 8, !tbaa !165
  store i64 %i.gd, ptr %i.fx, align 8, !tbaa !165
  %.pre866 = load i64, ptr %i.bf, align 8, !tbaa !167
  br label %_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i

_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i, %bb.x
  %i.ge = phi i64 [ %.pre866, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i ], [ %i.ga, %bb.x ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !167
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !164
  store i64 0, ptr %i.bf, align 8, !tbaa !167
  store i8 0, ptr %i.be, align 8, !tbaa !165
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.gh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !215
  store <2 x ptr> %i.gh, ptr %i.gg, align 8, !tbaa !215
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  %i.gj = load ptr, ptr %i.bv, align 8, !tbaa !190
  store ptr %i.gj, ptr %i.gi, align 8, !tbaa !190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cn, i64 96 ; 2 uses
  store ptr %i.gk, ptr %i.bw, align 8, !tbaa !372
  br label %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE9push_backEOSF_.exit

bb.y:                                             ; preds = %._crit_edge
  %i.gl = ptrtoint ptr %i.cn to i64
  %i.gm = ptrtoint ptr %.val.i.i.i to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 4 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775776
  br i1 %i.go, label %bb.z, label %_ZNKSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.614) #36
          to label %.noexc179 unwind label %.loopexit.split-lp615.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc179:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.gp = sdiv exact i64 %i.gn, 96                ; 3 uses
  %i.gq = icmp eq ptr %i.cn, %.val.i.i.i          ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.gq, i64 1, i64 %i.gp
  %i.gr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gp ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %i.gp
  %i.gt = call i64 @llvm.umin.i64(i64 %i.gr, i64 96076792050570581)
  %i.gu = select i1 %i.gs, i64 96076792050570581, i64 %i.gt ; 3 uses
  %.not.i.i.i.i177 = icmp ne i64 %i.gu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i177)
  %i.gv = mul nuw nsw i64 %i.gu, 96
  %i.gw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gv) #37
          to label %.noexc180 unwind label %.loopexit.split-lp615.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gn ; 10 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 3 uses
  store ptr %i.gy, ptr %i.gx, align 8, !tbaa !166
  %i.gz = load ptr, ptr %7, align 8, !tbaa !164   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.ba
  br i1 %i.ha, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178

bb.aa:                                            ; preds = %.noexc180
  %i.hb = load i64, ptr %i.bb, align 8, !tbaa !167 ; 3 uses
  %i.hc = icmp ult i64 %i.hb, 16
  call void @llvm.assume(i1 %i.hc)
  %i.hd = add nuw nsw i64 %i.hb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gy, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.hd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178: ; preds = %.noexc180
  store ptr %i.gz, ptr %i.gx, align 8, !tbaa !164
  %i.he = load i64, ptr %i.ba, align 8, !tbaa !165
  store i64 %i.he, ptr %i.gy, align 8, !tbaa !165
  %.pre.i.i.i = load i64, ptr %i.bb, align 8, !tbaa !167
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178, %bb.aa
  %i.hf = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178 ], [ %i.hb, %bb.aa ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !167
  store ptr %i.ba, ptr %7, align 8, !tbaa !164
  store i64 0, ptr %i.bb, align 8, !tbaa !167
  store i8 0, ptr %i.ba, align 8, !tbaa !165
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.hi = load i8, ptr %i.bc, align 8, !tbaa !861, !range !160, !noundef !161
  store i8 %i.hi, ptr %i.hh, align 8, !tbaa !861
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gx, i64 40 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gx, i64 56 ; 3 uses
  store ptr %i.hk, ptr %i.hj, align 8, !tbaa !166
  %i.hl = load ptr, ptr %i.bd, align 8, !tbaa !164 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.be
  br i1 %i.hm, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.hn = load i64, ptr %i.bf, align 8, !tbaa !167 ; 3 uses
  %i.ho = icmp ult i64 %i.hn, 16
  call void @llvm.assume(i1 %i.ho)
  %i.hp = add nuw nsw i64 %i.hn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hk, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.hp, i1 false)
  br label %_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.hl, ptr %i.hj, align 8, !tbaa !164
  %i.hq = load i64, ptr %i.be, align 8, !tbaa !165
  store i64 %i.hq, ptr %i.hk, align 8, !tbaa !165
  %.pre41.i.i.i = load i64, ptr %i.bf, align 8, !tbaa !167
  br label %_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i.i

_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i, %bb.ab
  %i.hr = phi i64 [ %i.hn, %bb.ab ], [ %.pre41.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !167
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !164
  store i64 0, ptr %i.bf, align 8, !tbaa !167
  store i8 0, ptr %i.be, align 8, !tbaa !165
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gx, i64 72
  %i.hu = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !215
  store <2 x ptr> %i.hu, ptr %i.ht, align 8, !tbaa !215
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gx, i64 88
  %i.hw = load ptr, ptr %i.bv, align 8, !tbaa !190
  store ptr %i.hw, ptr %i.hv, align 8, !tbaa !190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  br i1 %i.gq, label %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i.i, %_ZSt19__relocate_object_aIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE14TableStructureSG_SaISG_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.jh, %_ZSt19__relocate_object_aIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE14TableStructureSG_SaISG_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %i.gw, %_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i.i ] ; 11 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.jg, %_ZSt19__relocate_object_aIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE14TableStructureSG_SaISG_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %.val.i.i.i, %_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i.i ] ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.hx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.hx, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !166, !alias.scope !864
  %i.hy = load ptr, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !164, !alias.scope !865 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !167, !alias.scope !865 ; 3 uses
  %i.id = icmp ult i64 %i.ic, 16
  call void @llvm.assume(i1 %i.id)
  %i.ie = add nuw nsw i64 %i.ic, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hx, ptr noundef nonnull align 8 dereferenceable(1) %i.hz, i64 %i.ie, i1 false), !alias.scope !866
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.hy, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !164, !alias.scope !864
  %i.if = load i64, ptr %i.hz, align 8, !tbaa !165, !alias.scope !865
  store i64 %i.if, ptr %i.hx, align 8, !tbaa !165, !alias.scope !864
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !167, !alias.scope !865
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.ac
  %i.ig = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ic, %bb.ac ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 8
  store i64 %i.ig, ptr %i.ii, align 8, !tbaa !167, !alias.scope !864
  store ptr %i.hz, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !164, !alias.scope !865
  store i64 0, ptr %i.ih, align 8, !tbaa !167, !alias.scope !865
  store i8 0, ptr %i.hz, align 8, !tbaa !165, !alias.scope !865
  %i.ij = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 32
  %i.il = load i8, ptr %i.ik, align 8, !tbaa !861, !range !160, !alias.scope !865, !noundef !161
  store i8 %i.il, ptr %i.ij, align 8, !tbaa !861, !alias.scope !864
  %i.im = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 56 ; 3 uses
  store ptr %i.io, ptr %i.im, align 8, !tbaa !166, !alias.scope !864
  %i.ip = load ptr, ptr %i.in, align 8, !tbaa !164, !alias.scope !865 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 56 ; 5 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48
  %i.it = load i64, ptr %i.is, align 8, !tbaa !167, !alias.scope !865 ; 3 uses
  %i.iu = icmp ult i64 %i.it, 16
  call void @llvm.assume(i1 %i.iu)
  %i.iv = add nuw nsw i64 %i.it, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.io, ptr noundef nonnull align 8 dereferenceable(1) %i.iq, i64 %i.iv, i1 false), !alias.scope !866
  br label %_ZSt19__relocate_object_aIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE14TableStructureSG_SaISG_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  store ptr %i.ip, ptr %i.im, align 8, !tbaa !164, !alias.scope !864
  %i.iw = load i64, ptr %i.iq, align 8, !tbaa !165, !alias.scope !865
  store i64 %i.iw, ptr %i.io, align 8, !tbaa !165, !alias.scope !864
  %.phi.trans.insert2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48
  %.pre3.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i.i.i.i.i, align 8, !tbaa !167, !alias.scope !865
  br label %_ZSt19__relocate_object_aIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE14TableStructureSG_SaISG_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZSt19__relocate_object_aIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE14TableStructureSG_SaISG_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i.i, %bb.ad
  %i.ix = phi i64 [ %i.it, %bb.ad ], [ %.pre3.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i.i ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48
  %i.iz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 48
  store i64 %i.ix, ptr %i.iz, align 8, !tbaa !167, !alias.scope !864
  store ptr %i.iq, ptr %i.in, align 8, !tbaa !164, !alias.scope !865
  store i64 0, ptr %i.iy, align 8, !tbaa !167, !alias.scope !865
  store i8 0, ptr %i.iq, align 8, !tbaa !165, !alias.scope !865
  %i.ja = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 72
  %i.jb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.jc = load <2 x ptr>, ptr %i.jb, align 8, !tbaa !215, !alias.scope !865
  store <2 x ptr> %i.jc, ptr %i.ja, align 8, !tbaa !215, !alias.scope !864
  %i.jd = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 88
  %i.je = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 88
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !190, !alias.scope !865
  store ptr %i.jf, ptr %i.jd, align 8, !tbaa !190, !alias.scope !864
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, i8 0, i64 24, i1 false), !alias.scope !865
  %i.jg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jg, %i.cn
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !847

_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit34.i.i.i: ; preds = %_ZSt19__relocate_object_aIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE14TableStructureSG_SaISG_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i, %_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.gw, %_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i.i ], [ %i.jh, %_ZSt19__relocate_object_aIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE14TableStructureSG_SaISG_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i35.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i35.i.i.i, label %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit34.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.gn) #34
  br label %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i

_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i: ; preds = %bb.ae, %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit34.i.i.i
  store ptr %i.gw, ptr %6, align 8, !tbaa !373
  store ptr %i.ji, ptr %i.bw, align 8, !tbaa !372
  %i.jj = getelementptr inbounds nuw [96 x i8], ptr %i.gw, i64 %i.gu
  store ptr %i.jj, ptr %i.bx, align 8, !tbaa !371
  br label %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE9push_backEOSF_.exit

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.l
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ag:                                            ; preds = %bb.n
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.ah:                                            ; preds = %bb.o
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

.loopexit.split-lp620.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.r
  %lpad.loopexit.split-lp1199 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

bb.ai:                                            ; preds = %bb.t
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io9SQLValuesESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %i.jo = load ptr, ptr %9, align 8, !tbaa !164   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.bp
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.ai
  %i.jq = load i64, ptr %i.bp, align 8, !tbaa !165
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %bb.ai, %.loopexit.split-lp620.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  %.pn109 = phi { ptr, i32 } [ %i.jn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %lpad.loopexit.split-lp1199, %.loopexit.split-lp620.loopexit.split-lp.loopexit.split-lp ], [ %i.jn, %bb.ai ] ; 2 uses
  %i.js = load ptr, ptr %10, align 8, !tbaa !164  ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.bn
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %i.ju = load i64, ptr %i.bn, align 8, !tbaa !165
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.ah
  %.pn109.pn = phi { ptr, i32 } [ %i.jm, %bb.ah ], [ %.pn109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %.pn109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ] ; 2 uses
  %i.jw = load ptr, ptr %11, align 8, !tbaa !164  ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.bt
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %i.jy = load i64, ptr %i.bt, align 8, !tbaa !165
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.ag
  %.pn109.pn.pn = phi { ptr, i32 } [ %i.jl, %bb.ag ], [ %.pn109.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %.pn109.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ]
  %i.ka = load ptr, ptr %13, align 8, !tbaa !164  ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.bk
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.kc = load i64, ptr %i.bk, align 8, !tbaa !165
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.ke = load ptr, ptr %12, align 8, !tbaa !164  ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.bh
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.kg = load i64, ptr %i.bh, align 8, !tbaa !165
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ap

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.0573.0823 = phi ptr [ %.sroa.0573.0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ %.sroa.0573.0821, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0573.0823, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !187 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32 ; 2 uses
  %i.kl = load ptr, ptr %i.bu, align 8, !tbaa !188 ; 8 uses
  %i.km = load ptr, ptr %i.bv, align 8, !tbaa !190
  %.not.i = icmp eq ptr %i.kl, %i.km
  br i1 %.not.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 3 uses
  store ptr %i.kn, ptr %i.kl, align 8, !tbaa !166
  %i.ko = load ptr, ptr %i.kk, align 8, !tbaa !164 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 40
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !167 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  store i64 %i.kq, ptr %i.i, align 8, !tbaa !168
  %i.kr = icmp ugt i64 %i.kq, 15
  br i1 %i.kr, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.aj
  %i.ks = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.kl, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc196 unwind label %.loopexit.split-lp615.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc196:                                        ; preds = %.noexc.i.i
  store ptr %i.ks, ptr %i.kl, align 8, !tbaa !164
  %i.kt = load i64, ptr %i.i, align 8, !tbaa !168
  store i64 %i.kt, ptr %i.kn, align 8, !tbaa !165
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc196, %bb.aj
  %i.ku = phi ptr [ %i.ks, %.noexc196 ], [ %i.kn, %bb.aj ] ; 2 uses
  switch i64 %i.kq, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i
  %i.kv = load i8, ptr %i.ko, align 1, !tbaa !165
  store i8 %i.kv, ptr %i.ku, align 1, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.al:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ku, ptr align 1 %i.ko, i64 %i.kq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.al, %bb.ak, %._crit_edge.i.i.i
  %i.kw = load i64, ptr %i.i, align 8, !tbaa !168 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !167
  %i.ky = load ptr, ptr %i.kl, align 8, !tbaa !164
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kw
  store i8 0, ptr %i.kz, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  %i.la = load ptr, ptr %i.bu, align 8, !tbaa !188
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  store ptr %i.lb, ptr %i.bu, align 8, !tbaa !188
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.am:                                            ; preds = %.lr.ph
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr %i.kl, ptr noundef nonnull align 8 dereferenceable(32) %i.kk)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp615.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.am
  %.sroa.0573.0 = load ptr, ptr %.sroa.0573.0823, align 8, !tbaa !182 ; 2 uses
  %.not588 = icmp eq ptr %.sroa.0573.0, %8
  br i1 %.not588, label %._crit_edge, label %.lr.ph

_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE9push_backEOSF_.exit: ; preds = %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i, %_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i
  %.val.i.i.i868 = phi ptr [ %i.gw, %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %.val.i.i.i, %_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i ]
  %i.lc = phi ptr [ %i.ji, %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %i.gk, %_ZZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEN14TableStructureC2EOSF_.exit.i.i ]
  %i.ld = load ptr, ptr %8, align 8, !tbaa !182   ; 2 uses
  %.not8.i.i198 = icmp eq ptr %i.ld, %8
  br i1 %.not8.i.i198, label %_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit, label %.lr.ph.i.i199

.lr.ph.i.i199:                                    ; preds = %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE9push_backEOSF_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i
  %.09.i.i200 = phi ptr [ %i.le, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i ], [ %i.ld, %_ZNSt6vectorIZN5osgeo4proj2io15DatabaseContext7Private20attachExtraDatabasesERKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEE14TableStructureSaISF_EE9push_backEOSF_.exit ] ; 5 uses
  %i.le = load ptr, ptr %.09.i.i200, align 8, !tbaa !182 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.09.i.i200, i64 16 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !187 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.09.i.i200, i64 24
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !188 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.lg, %i.li
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i199, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.lo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.lg, %.lr.ph.i.i199 ] ; 3 uses
  %i.lj = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !164 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !165
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj2io15DatabaseContext7Private22getInsertStatementsForERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs12ProjectedCRSEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESL_bRKSt6vectorISJ_SaISJ_EE:bb.a
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !164
  %i.pn = load ptr, ptr %20, align 8, !tbaa !164
  %i.po = load ptr, ptr %21, align 8, !tbaa !164
  %i.pp = load ptr, ptr %i.lu, align 8, !tbaa !555
  %i.pq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.pp) #38
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !164
  invoke void (ptr, ptr, ...) @_ZN5osgeo4proj2ioL15formatStatementB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull @.str.135, ptr noundef %i.pe, ptr noundef %i.pf, ptr noundef %i.pm, ptr noundef %i.pn, ptr noundef %i.po, ptr noundef %i.pr)
          to label %bb.df unwind label %bb.dl

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit293
  %i.ps = load ptr, ptr %i.ii, align 8, !tbaa !552
  %i.pt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation15SingleOperation15parameterValuesEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ps) #38 ; 6 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 4 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !561
  %i.pw = load ptr, ptr %i.pt, align 8, !tbaa !562
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = sub i64 %i.px, %i.py
  %i.qa = icmp ugt i64 %i.pz, 112
  br i1 %i.qa, label %bb.dg, label %bb.dp

bb.dg:                                            ; preds = %bb.df
  %i.qb = call ptr @__cxa_allocate_exception(i64 40) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  invoke void @_ZN5osgeo4proj8internal8toStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, i32 noundef 7)
          to label %bb.dh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.thread

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull @.str.136, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.di unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.thread

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.137)
          to label %bb.dj unwind label %bb.dm

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN5osgeo4proj2io16FactoryExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.qb, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.dk unwind label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  invoke void @__cxa_throw(ptr nonnull %i.qb, ptr nonnull @_ZTIN5osgeo4proj2io16FactoryExceptionE, ptr @_ZN5osgeo4proj2io16FactoryExceptionD1Ev) #36
          to label %bb.ht unwind label %bb.dn

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit293
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.thread: ; preds = %bb.dg
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.dm:                                            ; preds = %bb.di
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

bb.dn:                                            ; preds = %bb.dk, %bb.dj
  %.0115 = phi i1 [ false, %bb.dk ], [ true, %bb.dj ] ; 2 uses
  %i.qf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qg = load ptr, ptr %24, align 8, !tbaa !164  ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %bb.dn
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !165
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294, %bb.dm
  %.pn199 = phi { ptr, i32 } [ %i.qe, %bb.dm ], [ %i.qf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294 ], [ %i.qf, %bb.dn ] ; 4 uses
  %.1 = phi i1 [ true, %bb.dm ], [ %.0115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294 ], [ %.0115, %bb.dn ] ; 2 uses
  %i.ql = load ptr, ptr %25, align 8, !tbaa !164  ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.qn = icmp eq ptr %i.ql, %i.qm
  br i1 %i.qn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  %i.qo = load i64, ptr %i.qm, align 8, !tbaa !165
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  %i.qq = load ptr, ptr %26, align 8, !tbaa !164  ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.qs = icmp eq ptr %i.qq, %i.qr
  br i1 %i.qs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.thread: ; preds = %bb.dh
  %i.qt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qu = load ptr, ptr %26, align 8, !tbaa !164  ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.thread
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !165
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #34
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  %i.qz = load i64, ptr %i.qr, align 8, !tbaa !165
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.ra) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br i1 %.1, label %bb.do, label %bb.hj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br i1 %.1, label %bb.do, label %bb.hj

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.thread
  %.pn199.pn.pn529.ph = phi { ptr, i32 } [ %i.qt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.thread ], [ %i.qd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.thread ], [ %i.qt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %bb.do

bb.do:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  %.pn199.pn.pn529 = phi { ptr, i32 } [ %.pn199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300 ], [ %.pn199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %.pn199.pn.pn529.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.qb) #33
  br label %bb.hj

bb.dp:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  %i.rb = icmp eq ptr %.3120, null
  br i1 %i.rb, label %bb.dq, label %.preheader562

bb.dq:                                            ; preds = %bb.dp
  %i.rc = load i64, ptr %i.ly, align 8, !tbaa !167 ; 3 uses
  %i.rd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadata10Identifier4EPSGB5cxx11E, i64 8), align 8, !tbaa !167
  %i.re = icmp eq i64 %i.rc, %i.rd
  br i1 %i.re, label %bb.dr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread539

bb.dr:                                            ; preds = %bb.dq
  %i.rf = icmp eq i64 %i.rc, 0
  br i1 %i.rf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.dr
  %i.rg = load ptr, ptr @_ZN5osgeo4proj8metadata10Identifier4EPSGB5cxx11E, align 8, !tbaa !164
  %i.rh = load ptr, ptr %20, align 8, !tbaa !164
  %bcmp.i = call i32 @bcmp(ptr %i.rh, ptr %i.rg, i64 %i.rc)
  %i.ri = icmp eq i32 %bcmp.i, 0
  br i1 %i.ri, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread539

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.dr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.rj = load ptr, ptr %21, align 8, !tbaa !164
  %i.rk = call i64 @__isoc23_strtol(ptr noundef nonnull %i.rj, ptr noundef null, i32 noundef 10) #33, !inline_history !3
  %i.rl = trunc i64 %i.rk to i32
  %i.rm = call noundef ptr @_ZN5osgeo4proj9operation10getMappingEi(i32 noundef %i.rl) #33
  br label %bb.ds

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread539: ; preds = %bb.dq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.rn = load ptr, ptr %i.lu, align 8, !tbaa !555
  %i.ro = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.rn) #38
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !164
  %i.rq = call noundef ptr @_ZN5osgeo4proj9operation10getMappingEPKc(ptr noundef %i.rp) #33
  br label %bb.ds

bb.ds:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread539
  %.4 = phi ptr [ %i.rm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.rq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread539 ] ; 2 uses
  %.not171 = icmp eq ptr %.4, null
  br i1 %.not171, label %..loopexit563_crit_edge, label %.preheader562

..loopexit563_crit_edge:                          ; preds = %bb.ds
  %.pre649 = load ptr, ptr %i.pu, align 8, !tbaa !561
  %.pre651 = load ptr, ptr %i.pt, align 8, !tbaa !562
  br label %.loopexit563

.preheader562:                                    ; preds = %bb.dp, %bb.ds
  %.4873 = phi ptr [ %.4, %bb.ds ], [ %.3120, %bb.dp ]
  %i.rr = getelementptr inbounds nuw i8, ptr %.4873, i64 40 ; 3 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !1191 ; 2 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !1193
  %.not172625 = icmp eq ptr %i.rt, null
  %.pre650 = load ptr, ptr %i.pu, align 8, !tbaa !561 ; 2 uses
  %.pre652 = load ptr, ptr %i.pt, align 8, !tbaa !562 ; 2 uses
  br i1 %.not172625, label %.loopexit563, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader562
  %i.ru = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge624
  %i.rw = phi ptr [ %i.rs, %.preheader.lr.ph ], [ %i.rz, %._crit_edge624 ]
  %i.rx = phi ptr [ %.pre652, %.preheader.lr.ph ], [ %i.sa, %._crit_edge624 ] ; 4 uses
  %i.ry = phi ptr [ %.pre650, %.preheader.lr.ph ], [ %i.sb, %._crit_edge624 ]
  %.0114626 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.sc, %._crit_edge624 ] ; 2 uses
  %.not638 = icmp eq ptr %i.ry, %i.rx
  br i1 %.not638, label %._crit_edge624, label %.lr.ph623

._crit_edge624.loopexit:                          ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit
  %.pre648 = load ptr, ptr %i.rr, align 8, !tbaa !1191
  br label %._crit_edge624

._crit_edge624:                                   ; preds = %._crit_edge624.loopexit, %.preheader
  %i.rz = phi ptr [ %.pre648, %._crit_edge624.loopexit ], [ %i.rw, %.preheader ] ; 2 uses
  %i.sa = phi ptr [ %i.uu, %._crit_edge624.loopexit ], [ %i.rx, %.preheader ] ; 2 uses
  %i.sb = phi ptr [ %i.ut, %._crit_edge624.loopexit ], [ %i.rx, %.preheader ] ; 2 uses
  %i.sc = add i64 %.0114626, 1                    ; 2 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.sc
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !1193
  %.not172 = icmp eq ptr %i.se, null
  br i1 %.not172, label %.loopexit563, label %.preheader, !llvm.loop !1172

.lr.ph623:                                        ; preds = %.preheader, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit
  %i.sf = phi ptr [ %i.uu, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit ], [ %i.rx, %.preheader ]
  %.0113622 = phi i64 [ %i.us, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit ], [ 0, %.preheader ] ; 2 uses
  %i.sg = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %.0113622 ; 4 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !565 ; 4 uses
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph623
  %i.sj = load ptr, ptr %i.sh, align 8, !tbaa !201
  %i.sk = icmp eq ptr %i.sj, getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5osgeo4proj9operation23OperationParameterValueE, i64 16)
  br i1 %i.sk, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %.lr.ph623, %bb.dt
  %i.sl = call ptr @__cxa_allocate_exception(i64 40) #33 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16FactoryExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.sl, ptr noundef nonnull @.str.138)
          to label %.invoke unwind label %bb.dv

.invoke:                                          ; preds = %bb.du, %bb.em
  %i.sm = phi ptr [ %i.wn, %bb.em ], [ %i.sl, %bb.du ]
  invoke void @__cxa_throw(ptr nonnull %i.sm, ptr nonnull @_ZTIN5osgeo4proj2io16FactoryExceptionE, ptr @_ZN5osgeo4proj2io16FactoryExceptionD1Ev) #36
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.dv:                                            ; preds = %bb.du
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.sl) #33
  br label %.loopexit.split-lp.loopexit.split-lp

bb.dw:                                            ; preds = %bb.dt
  %i.so = load ptr, ptr %i.rr, align 8, !tbaa !1191
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %.0114626
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !1193
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !1196 ; 3 uses
  %.not195 = icmp eq ptr %i.sr, null
  br i1 %.not195, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ss = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation23OperationParameterValue9parameterEv(ptr noundef nonnull align 8 dereferenceable(56) %i.sh) #38
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !568
  %i.su = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.st) #38 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !167 ; 3 uses
  %i.sx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sr) #33
  %i.sy = icmp eq i64 %i.sw, %i.sx
  br i1 %i.sy, label %bb.dy, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit

bb.dy:                                            ; preds = %bb.dx
  %i.sz = icmp eq i64 %i.sw, 0
  br i1 %i.sz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.dy
  %i.ta = load ptr, ptr %i.su, align 8, !tbaa !164
  %bcmp.i303 = call i32 @bcmp(ptr %i.ta, ptr nonnull %i.sr, i64 %i.sw)
  %i.tb = icmp eq i32 %bcmp.i303, 0
  br i1 %i.tb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.dy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.tc = load ptr, ptr %i.ru, align 8, !tbaa !561 ; 8 uses
  %i.td = load ptr, ptr %i.rv, align 8, !tbaa !569
  %.not.i304 = icmp eq ptr %i.tc, %i.td
  br i1 %.not.i304, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store ptr %i.sh, ptr %i.tc, align 8, !tbaa !565
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !223 ; 3 uses
  store ptr %i.tg, ptr %i.te, align 8, !tbaa !223
  %.not.i.i.i.i.i305 = icmp eq ptr %i.tg, null
  br i1 %.not.i.i.i.i.i305, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8 ; 3 uses
  %i.ti = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i.i306 = icmp eq i8 %i.ti, 0
  br i1 %.not.i.i.i.i.i.i306, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.tj = load i32, ptr %i.th, align 4, !tbaa !225
  %i.tk = add nsw i32 %i.tj, 1
  store i32 %i.tk, ptr %i.th, align 4, !tbaa !225
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i

bb.ec:                                            ; preds = %bb.ea
  %i.tl = atomicrmw volatile add ptr %i.th, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i307 = load ptr, ptr %i.ru, align 8, !tbaa !561
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i: ; preds = %bb.ec, %bb.eb, %bb.dz
  %i.tm = phi ptr [ %i.tc, %bb.dz ], [ %i.tc, %bb.eb ], [ %.pre.i307, %bb.ec ]
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  store ptr %i.tn, ptr %i.ru, align 8, !tbaa !561
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit

bb.ed:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.to = load ptr, ptr %27, align 8, !tbaa !562  ; 5 uses
  %i.tp = ptrtoint ptr %i.tc to i64
  %i.tq = ptrtoint ptr %i.to to i64               ; 2 uses
  %i.tr = sub i64 %i.tp, %i.tq                    ; 3 uses
  %i.ts = icmp eq i64 %i.tr, 9223372036854775792
  br i1 %i.ts, label %.invoke879, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ed
  %i.tt = ashr exact i64 %i.tr, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.tt, i64 1)
  %i.tu = add nsw i64 %.sroa.speculated.i.i, %i.tt ; 2 uses
  %i.tv = icmp ult i64 %i.tu, %i.tt
  %i.tw = call i64 @llvm.umin.i64(i64 %i.tu, i64 576460752303423487)
  %i.tx = select i1 %i.tv, i64 576460752303423487, i64 %i.tw ; 3 uses
  %.not.i.i500 = icmp ne i64 %i.tx, 0
  call void @llvm.assume(i1 %.not.i.i500)
  %i.ty = shl nuw nsw i64 %i.tx, 4
  %i.tz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ty) #37
          to label %.noexc506 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc506:                                        ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12_M_check_lenEmPKc.exit.i
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.tr
  %i.ub = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !223 ; 2 uses
  %i.ud = load <2 x ptr>, ptr %i.sg, align 8, !tbaa !224
  store <2 x ptr> %i.ud, ptr %i.ua, align 8, !tbaa !224
  %.not.i.i.i.i.i501 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i.i.i.i501, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i503, label %bb.ee

bb.ee:                                            ; preds = %.noexc506
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 8 ; 3 uses
  %i.uf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i.i502 = icmp eq i8 %i.uf, 0
  br i1 %.not.i.i.i.i.i.i502, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ug = load i32, ptr %i.ue, align 4, !tbaa !225
  %i.uh = add nsw i32 %i.ug, 1
  store i32 %i.uh, ptr %i.ue, align 4, !tbaa !225
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i503

bb.eg:                                            ; preds = %bb.ee
  %i.ui = atomicrmw volatile add ptr %i.ue, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i503

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i503: ; preds = %bb.eg, %bb.ef, %.noexc506
  %.not10.i.i.i.i = icmp eq ptr %i.to, %i.tc
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i503, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.um, %.lr.ph.i.i.i.i ], [ %i.tz, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i503 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ul, %.lr.ph.i.i.i.i ], [ %i.to, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i503 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.uj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.uk = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !224, !alias.scope !1198
  store ptr null, ptr %i.uj, align 8, !tbaa !223, !alias.scope !1198
  store <2 x ptr> %i.uk, ptr %.012.i.i.i.i, align 8, !tbaa !224, !alias.scope !1197
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !565, !alias.scope !1198
  %i.ul = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i504 = icmp eq ptr %i.ul, %i.tc
  br i1 %.not.i.i.i.i504, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1176

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i503
  %.0.lcssa.i.i.i.i = phi ptr [ %i.tz, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i503 ], [ %i.um, %.lr.ph.i.i.i.i ]
  %i.un = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.to, null
  br i1 %.not.i23.i, label %.noexc308, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i
  %i.uo = load ptr, ptr %i.rv, align 8, !tbaa !569
  %i.up = ptrtoint ptr %i.uo to i64
  %i.uq = sub i64 %i.up, %i.tq
  call void @_ZdlPvm(ptr noundef nonnull %i.to, i64 noundef %i.uq) #34
  br label %.noexc308

.noexc308:                                        ; preds = %bb.eh, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i
  store ptr %i.tz, ptr %27, align 8, !tbaa !562
  store ptr %i.un, ptr %i.ru, align 8, !tbaa !561
  %i.ur = getelementptr inbounds nuw [16 x i8], ptr %i.tz, i64 %i.tx
  store ptr %i.ur, ptr %i.rv, align 8, !tbaa !569
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit: ; preds = %bb.dx, %.noexc308, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEC2ERKS8_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.dw
  %i.us = add nuw i64 %.0113622, 1                ; 2 uses
  %i.ut = load ptr, ptr %i.pu, align 8, !tbaa !561 ; 2 uses
  %i.uu = load ptr, ptr %i.pt, align 8, !tbaa !562 ; 3 uses
  %i.uv = ptrtoint ptr %i.ut to i64
  %i.uw = ptrtoint ptr %i.uu to i64
  %i.ux = sub i64 %i.uv, %i.uw
  %i.uy = ashr exact i64 %i.ux, 4
  %i.uz = icmp ult i64 %i.us, %i.uy
  br i1 %i.uz, label %.lr.ph623, label %._crit_edge624.loopexit, !llvm.loop !1177

.loopexit563:                                     ; preds = %._crit_edge624, %..loopexit563_crit_edge, %.preheader562
  %i.va = phi ptr [ %.pre651, %..loopexit563_crit_edge ], [ %.pre652, %.preheader562 ], [ %i.sa, %._crit_edge624 ]
  %i.vb = phi ptr [ %.pre649, %..loopexit563_crit_edge ], [ %.pre650, %.preheader562 ], [ %i.sb, %._crit_edge624 ]
  %i.vc = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !561 ; 2 uses
  %i.ve = load ptr, ptr %27, align 8, !tbaa !562  ; 2 uses
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = ptrtoint ptr %i.vb to i64
  %i.vj = ptrtoint ptr %i.va to i64
  %i.vk = sub i64 %i.vi, %i.vj
  %.not173 = icmp eq i64 %i.vh, %i.vk
  br i1 %.not173, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %.loopexit563
  %i.vl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %i.pt)
          to label %._crit_edge653 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge653:                                   ; preds = %bb.ei
  %.pre654 = load ptr, ptr %27, align 8, !tbaa !570
  %.pre655 = load ptr, ptr %i.vc, align 8, !tbaa !570
  br label %bb.ej

bb.ej:                                            ; preds = %._crit_edge653, %.loopexit563
  %i.vm = phi ptr [ %.pre655, %._crit_edge653 ], [ %i.vd, %.loopexit563 ] ; 4 uses
  %i.vn = phi ptr [ %.pre654, %._crit_edge653 ], [ %i.ve, %.loopexit563 ] ; 2 uses
  %.not547627 = icmp eq ptr %i.vn, %i.vm
  br i1 %.not547627, label %._crit_edge631, label %.lr.ph630

.lr.ph630:                                        ; preds = %bb.ej
  %i.vo = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.vq = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 8 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 5 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.vw = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.vy = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.vz = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.wa = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  br label %bb.ek

._crit_edge631.loopexit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %.pre656 = load ptr, ptr %i.vc, align 8, !tbaa !561
  %.pre657 = load ptr, ptr %27, align 8, !tbaa !562
  br label %._crit_edge631

._crit_edge631:                                   ; preds = %._crit_edge631.loopexit, %bb.ej
  %i.wb = phi ptr [ %.pre657, %._crit_edge631.loopexit ], [ %i.vm, %bb.ej ]
  %i.wc = phi ptr [ %.pre656, %._crit_edge631.loopexit ], [ %i.vm, %bb.ej ]
  %i.wd = ptrtoint ptr %i.wc to i64
  %i.we = ptrtoint ptr %i.wb to i64
  %i.wf = sub i64 %i.wd, %i.we
  %i.wg = ashr exact i64 %i.wf, 4                 ; 2 uses
  %i.wh = icmp ult i64 %i.wg, 7
  br i1 %i.wh, label %.lr.ph634, label %._crit_edge635

.lr.ph634:                                        ; preds = %._crit_edge631
  %i.wi = getelementptr inbounds nuw i8, ptr %23, i64 8
  br label %bb.fj

bb.ek:                                            ; preds = %.lr.ph630, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %.sroa.0510.0628 = phi ptr [ %i.vn, %.lr.ph630 ], [ %i.zl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342 ] ; 2 uses
  %i.wj = load ptr, ptr %.sroa.0510.0628, align 8, !tbaa !565 ; 4 uses
  %i.wk = icmp eq ptr %i.wj, null
  br i1 %i.wk, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.wl = load ptr, ptr %i.wj, align 8, !tbaa !201
  %i.wm = icmp eq ptr %i.wl, getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5osgeo4proj9operation23OperationParameterValueE, i64 16)
  br i1 %i.wm, label %bb.eo, label %bb.em

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i362, %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE12_M_check_lenEmPKc.exit.i, %.invoke879, %.invoke, %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i358
  %lpad.loopexit.split-lp906 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.em:                                            ; preds = %bb.ek, %bb.el
  %i.wn = call ptr @__cxa_allocate_exception(i64 40) #33 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16FactoryExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.wn, ptr noundef nonnull @.str.138)
          to label %.invoke unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.wo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.wn) #33
  br label %.loopexit.split-lp.loopexit.split-lp

bb.eo:                                            ; preds = %bb.el
  %i.wp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation23OperationParameterValue9parameterEv(ptr noundef nonnull align 8 dereferenceable(56) %i.wj) #38 ; 3 uses
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !568
  %i.wr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.wq) #38 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  store ptr %i.vo, ptr %28, align 8, !tbaa !166
  store i64 0, ptr %i.vp, align 8, !tbaa !167
  store i8 0, ptr %i.vo, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #33
  store ptr %i.vq, ptr %29, align 8, !tbaa !166
  store i64 0, ptr %i.vr, align 8, !tbaa !167
  store i8 0, ptr %i.vq, align 8, !tbaa !165
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !514 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !514
  %i.wv = icmp eq ptr %i.ws, %i.wu
  br i1 %i.wv, label %bb.ep, label %bb.fb

bb.ep:                                            ; preds = %bb.eo
  %i.ww = load ptr, ptr %i.wp, align 8, !tbaa !568
  %i.wx = call noundef i32 @_ZNK5osgeo4proj9operation18OperationParameter11getEPSGCodeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ww) #38 ; 2 uses
  %i.wy = icmp eq i32 %i.wx, 0
  br i1 %i.wy, label %bb.eq, label %bb.et

bb.eq:                                            ; preds = %bb.ep
  %i.wz = call ptr @__cxa_allocate_exception(i64 40) #33 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16FactoryExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.wz, ptr noundef nonnull @.str.139)
          to label %bb.er unwind label %bb.es

bb.er:                                            ; preds = %bb.eq
  invoke void @__cxa_throw(ptr nonnull %i.wz, ptr nonnull @_ZTIN5osgeo4proj2io16FactoryExceptionE, ptr @_ZN5osgeo4proj2io16FactoryExceptionD1Ev) #36
          to label %bb.ht unwind label %.loopexit.split-lp550.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp550.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit323, %bb.fb, %bb.et, %bb.er
  %lpad.loopexit.split-lp899 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.es:                                            ; preds = %bb.eq
  %i.xa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.wz) #33
  br label %bb.fi

bb.et:                                            ; preds = %bb.ep
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj8metadata10Identifier4EPSGB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit310 unwind label %.loopexit.split-lp550.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit310: ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #33
  invoke void @_ZN5osgeo4proj8internal8toStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, i32 noundef %i.wx)
          to label %bb.eu unwind label %bb.fa

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit310
  %i.xb = load ptr, ptr %29, align 8, !tbaa !164  ; 6 uses
  %i.xc = icmp eq ptr %i.xb, %i.vq
  %i.xd = load ptr, ptr %30, align 8, !tbaa !164  ; 5 uses
  %i.xe = icmp eq ptr %i.xd, %i.vs                ; 2 uses
  br i1 %i.xc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i316: ; preds = %bb.eu
  br i1 %i.xe, label %bb.ev, label %.thread.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i311: ; preds = %bb.eu
  br i1 %i.xe, label %bb.ev, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i312

bb.ev:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i311, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i316
  %i.xf = load i64, ptr %i.vt, align 8, !tbaa !167 ; 3 uses
  %i.xg = icmp ult i64 %i.xf, 16
  call void @llvm.assume(i1 %i.xg)
  switch i64 %i.xf, label %bb.ex [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i314
    i64 1, label %bb.ew
  ]

bb.ew:                                            ; preds = %bb.ev
  %i.xh = load i8, ptr %i.xd, align 1, !tbaa !165
  store i8 %i.xh, ptr %i.xb, align 1, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i314

bb.ex:                                            ; preds = %bb.ev
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xb, ptr align 1 %i.xd, i64 %i.xf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i314: ; preds = %bb.ex, %bb.ew, %bb.ev
  %i.xi = load i64, ptr %i.vt, align 8, !tbaa !167 ; 2 uses
  store i64 %i.xi, ptr %i.vr, align 8, !tbaa !167
  %i.xj = load ptr, ptr %29, align 8, !tbaa !164
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.xi
  store i8 0, ptr %i.xk, align 1, !tbaa !165
  %.pre.i315 = load ptr, ptr %30, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit318

.thread.i317:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i316
  store ptr %i.xd, ptr %29, align 8, !tbaa !164
  %i.xl = load <2 x i64>, ptr %i.vt, align 8, !tbaa !165
  store <2 x i64> %i.xl, ptr %i.vr, align 8, !tbaa !165
  br label %bb.ez

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i312: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i311
  %i.xm = load i64, ptr %i.vq, align 8, !tbaa !165
  store ptr %i.xd, ptr %29, align 8, !tbaa !164
  %i.xn = load <2 x i64>, ptr %i.vt, align 8, !tbaa !165
  store <2 x i64> %i.xn, ptr %i.vr, align 8, !tbaa !165
  %.not.i313 = icmp eq ptr %i.xb, null
  br i1 %.not.i313, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i312
  store ptr %i.xb, ptr %30, align 8, !tbaa !164
  store i64 %i.xm, ptr %i.vs, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit318

bb.ez:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i312, %.thread.i317
  store ptr %i.vs, ptr %30, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit318: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i314, %bb.ey, %bb.ez
  %i.xo = phi ptr [ %i.xb, %bb.ey ], [ %i.vs, %bb.ez ], [ %.pre.i315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i314 ]
  store i64 0, ptr %i.vt, align 8, !tbaa !167
  store i8 0, ptr %i.xo, align 1, !tbaa !165
  %i.xp = load ptr, ptr %30, align 8, !tbaa !164  ; 2 uses
  %i.xq = icmp eq ptr %i.xp, %i.vs
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit318
  %i.xr = load i64, ptr %i.vs, align 8, !tbaa !165
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit325

bb.fa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit310
  %i.xt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  br label %bb.fi

bb.fb:                                            ; preds = %bb.eo
  %i.xu = load ptr, ptr %i.ws, align 8, !tbaa !517
  %i.xv = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata10Identifier9codeSpaceB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.xu) #38
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %i.xw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit323 unwind label %.loopexit.split-lp550.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit323: ; preds = %bb.fb
  %i.xx = load ptr, ptr %i.ws, align 8, !tbaa !517
  %i.xy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj8metadata10Identifier4codeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.xx) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %i.xy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit325 unwind label %.loopexit.split-lp550.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit325: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %i.xz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation23OperationParameterValue14parameterValueEv(ptr noundef nonnull align 8 dereferenceable(56) %i.wj) #38
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !573
  %i.yb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation14ParameterValue5valueEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ya) #38 ; 2 uses
  %i.yc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common7Measure4unitEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yb) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  store ptr %i.vu, ptr %31, align 8, !tbaa !166
  store i64 0, ptr %i.vv, align 8, !tbaa !167
end_hunk_1
