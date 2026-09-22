Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/convert?download=true
inline.NumInlined: 271
inline.NumDeleted: 129
begin_hunk_0_@_ZN4YAML7convertIbvE6decodeERKNS_4NodeERb:bb.a
  %i.du = add i8 %i.dt, -65
  %i.dv = icmp ult i8 %i.du, 26
  br i1 %i.dv, label %bb.ae, label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit119

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i35.i, i64 3
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !15
  %i.dy = add i8 %i.dx, -65
  %i.dz = icmp ult i8 %i.dy, 26
  br i1 %i.dz, label %bb.af, label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit121

bb.af:                                            ; preds = %bb.ae
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i35.i, i64 4
  %i.eb = add nsw i64 %.052.i.i.i.i.i34.i, -1
  %i.ec = icmp sgt i64 %.052.i.i.i.i.i34.i, 1
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i33.i, label %._crit_edge.i.i.i.i.i26.i, !llvm.loop !28

._crit_edge.i.i.i.i.i26.i:                        ; preds = %bb.af, %bb.ab
  %.sroa.032.0.lcssa.i.i.i.i.i27.i = phi ptr [ %.pre.i, %bb.ab ], [ %scevgep44.i, %bb.af ] ; 6 uses
  %.pre-phi.i.i.i.i.i28.i = ptrtoint ptr %.sroa.032.0.lcssa.i.i.i.i.i27.i to i64
  %i.ed = sub i64 %i.by, %.pre-phi.i.i.i.i.i28.i
  switch i64 %i.ed, label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i [
    i64 3, label %bb.ag
    i64 2, label %bb.ai
    i64 1, label %bb.ak
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i26.i
  %i.ee = load i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i27.i, align 1, !tbaa !15
  %i.ef = add i8 %i.ee, -65
  %i.eg = icmp ult i8 %i.ef, 26
  br i1 %i.eg, label %bb.ah, label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i27.i, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i.i.i.i.i26.i
  %.sroa.032.1.i.i.i.i.i32.i = phi ptr [ %i.eh, %bb.ah ], [ %.sroa.032.0.lcssa.i.i.i.i.i27.i, %._crit_edge.i.i.i.i.i26.i ] ; 3 uses
  %i.ei = load i8, ptr %.sroa.032.1.i.i.i.i.i32.i, align 1, !tbaa !15
  %i.ej = add i8 %i.ei, -65
  %i.ek = icmp ult i8 %i.ej, 26
  br i1 %i.ek, label %bb.aj, label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i

bb.aj:                                            ; preds = %bb.ai
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i32.i, i64 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i.i.i.i.i26.i
  %.sroa.032.2.i.i.i.i.i29.i = phi ptr [ %i.el, %bb.aj ], [ %.sroa.032.0.lcssa.i.i.i.i.i27.i, %._crit_edge.i.i.i.i.i26.i ] ; 2 uses
  %i.em = load i8, ptr %.sroa.032.2.i.i.i.i.i29.i, align 1, !tbaa !15
  %i.en = add i8 %i.em, -65
  %i.eo = icmp ult i8 %i.en, 26
  %spec.select.i.i.i.i.i30.i = select i1 %i.eo, ptr %i.bx, ptr %.sroa.032.2.i.i.i.i.i29.i
  br label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i

_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit: ; preds = %bb.ac
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i35.i, i64 1
  br label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i

_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit119: ; preds = %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i35.i, i64 2
  br label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i

_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit121: ; preds = %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i35.i, i64 3
  br label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i

_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i: ; preds = %.lr.ph.i.i.i.i.i33.i, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit119, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit121, %bb.ak, %bb.ai, %bb.ag, %._crit_edge.i.i.i.i.i26.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i31.i = phi ptr [ %.sroa.032.1.i.i.i.i.i32.i, %bb.ai ], [ %spec.select.i.i.i.i.i30.i, %bb.ak ], [ %i.bx, %._crit_edge.i.i.i.i.i26.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i27.i, %bb.ag ], [ %i.er, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit121 ], [ %i.ep, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit ], [ %i.eq, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit119 ], [ %.sroa.032.051.i.i.i.i.i35.i, %.lr.ph.i.i.i.i.i33.i ]
  %i.es = icmp eq ptr %i.bx, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i31.i
  br label %.thread.i

.thread.i:                                        ; preds = %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i, %.loopexit.i, %._crit_edge.i.i.i.i.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  %i.et = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i ], [ true, %.loopexit.i ], [ %i.es, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i ], [ true, %._crit_edge.i.i.i.i.i12.i ]
  %i.eu = icmp eq ptr %.pre.i, %i.bl
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.thread.i
  call void @_ZdlPv(ptr noundef %.pre.i) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br i1 %i.et, label %.preheader, label %.critedge

.preheader:                                       ; preds = %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit.i, %._crit_edge.i.i.i.i.i.i, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.am

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.018.add = add nuw nsw i64 %.018.idx77, 16     ; 2 uses
  %.not = icmp eq i64 %.018.add, 64
  br i1 %.not, label %.critedge, label %bb.am

bb.am:                                            ; preds = %.preheader, %bb.al
  %.018.idx77 = phi i64 [ 0, %.preheader ], [ %.018.add, %bb.al ] ; 2 uses
  %.018.ptr78 = getelementptr inbounds nuw i8, ptr @_ZZN4YAML7convertIbvE6decodeERKNS_4NodeERbE5names, i64 %.018.idx77 ; 2 uses
  %i.ez = load ptr, ptr %.018.ptr78, align 16, !tbaa !83 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.fa = load i8, ptr %0, align 8, !tbaa !49, !range !50, !noundef !51
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fc = call ptr @__cxa_allocate_exception(i64 64) #12 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.fd)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @__cxa_throw(ptr nonnull %i.fc, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #13
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fc) #12
  br label %common.resume

bb.aq:                                            ; preds = %bb.am
  %i.ff = load ptr, ptr %i.i, align 8, !tbaa !52  ; 2 uses
  %.not.i27 = icmp eq ptr %i.ff, null
  br i1 %.not.i27, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !55
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  br label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit28

bb.as:                                            ; preds = %bb.aq
  %i.fj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML6detail9node_data12empty_scalarB5cxx11Ev()
  br label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit28

_ZNK4YAML4Node6ScalarB5cxx11Ev.exit28:            ; preds = %bb.ar, %bb.as
  %i.fk = phi ptr [ %i.fi, %bb.ar ], [ %i.fj, %bb.as ] ; 2 uses
  %.val25 = load ptr, ptr %i.fk, align 8, !tbaa !18 ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  %.val26 = load i64, ptr %i.fl, align 8, !tbaa !14 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  store ptr %i.ev, ptr %3, align 8, !tbaa !16, !alias.scope !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !84
  store i64 %.val26, ptr %i.b, align 8, !tbaa !17, !noalias !84
  %i.fm = icmp ugt i64 %.val26, 15
  br i1 %i.fm, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit28
  %i.fn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.fn, ptr %3, align 8, !tbaa !18, !alias.scope !84
  %i.fo = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !84
  store i64 %i.fo, ptr %i.ev, align 8, !tbaa !15, !alias.scope !84
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit28
  %i.fp = phi ptr [ %i.fn, %.noexc.i.i ], [ %i.ev, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit28 ] ; 2 uses
  switch i64 %.val26, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.at:                                            ; preds = %._crit_edge.i.i.i
  %i.fq = load i8, ptr %.val25, align 1, !tbaa !15, !noalias !84
  store i8 %i.fq, ptr %i.fp, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.au:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fp, ptr readonly align 1 %.val25, i64 %.val26, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.au, %bb.at, %._crit_edge.i.i.i
  %i.fr = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !84 ; 2 uses
  store i64 %i.fr, ptr %i.ew, align 8, !tbaa !14, !alias.scope !84
  %i.fs = load ptr, ptr %3, align 8, !tbaa !18, !alias.scope !84
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  store i8 0, ptr %i.ft, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !84
  %i.fu = load ptr, ptr %3, align 8, !tbaa !18, !alias.scope !84 ; 6 uses
  %i.fv = load i64, ptr %i.ew, align 8, !tbaa !14 ; 9 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  %.not6.i.i = icmp samesign eq i64 %i.fv, 0
  br i1 %.not6.i.i, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %iter.check162

iter.check162:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %min.iters.check148 = icmp ult i64 %i.fv, 8
  br i1 %min.iters.check148, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check162
  %min.iters.check150 = icmp ult i64 %i.fv, 32
  br i1 %min.iters.check150, label %vec.epilog.ph166, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %i.fx = and i64 %i.fv, 24
  %n.vec152 = and i64 %i.fv, -32                  ; 4 uses
  %i.fy = getelementptr i8, ptr %i.fu, i64 %n.vec152
  br label %vector.body153

vector.body153:                                   ; preds = %vector.ph151, %vector.body153
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next158, %vector.body153 ] ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.fu, i64 %index154 ; 3 uses
  %i.fz = getelementptr i8, ptr %next.gep155, i64 16 ; 2 uses
  %wide.load156 = load <16 x i8>, ptr %next.gep155, align 1, !tbaa !15 ; 3 uses
  %wide.load157 = load <16 x i8>, ptr %i.fz, align 1, !tbaa !15 ; 3 uses
  %i.ga = add <16 x i8> %wide.load156, splat (i8 -65)
  %i.gb = add <16 x i8> %wide.load157, splat (i8 -65)
  %i.gc = icmp ult <16 x i8> %i.ga, splat (i8 26)
  %i.gd = icmp ult <16 x i8> %i.gb, splat (i8 26)
  %i.ge = add nuw nsw <16 x i8> %wide.load156, splat (i8 32)
  %i.gf = add nuw nsw <16 x i8> %wide.load157, splat (i8 32)
  %i.gg = select <16 x i1> %i.gc, <16 x i8> %i.ge, <16 x i8> %wide.load156
  %i.gh = select <16 x i1> %i.gd, <16 x i8> %i.gf, <16 x i8> %wide.load157
  store <16 x i8> %i.gg, ptr %next.gep155, align 1, !tbaa !15
  store <16 x i8> %i.gh, ptr %i.fz, align 1, !tbaa !15
  %index.next158 = add nuw i64 %index154, 32      ; 2 uses
  %i.gi = icmp eq i64 %index.next158, %n.vec152
  br i1 %i.gi, label %middle.block159, label %vector.body153, !llvm.loop !33

middle.block159:                                  ; preds = %vector.body153
  %cmp.n160 = icmp eq i64 %i.fv, %n.vec152
  br i1 %cmp.n160, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exitthread-pre-split, label %vec.epilog.iter.check164

vec.epilog.iter.check164:                         ; preds = %middle.block159
  %min.epilog.iters.check165 = icmp eq i64 %i.fx, 0
  br i1 %min.epilog.iters.check165, label %.lr.ph.i.i.preheader, label %vec.epilog.ph166, !prof !87

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check164
  %vec.epilog.resume.val161 = phi i64 [ %n.vec152, %vec.epilog.iter.check164 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec167 = and i64 %i.fv, -8                   ; 3 uses
  %i.gj = getelementptr i8, ptr %i.fu, i64 %n.vec167
  br label %vec.epilog.vector.body168

vec.epilog.vector.body168:                        ; preds = %vec.epilog.vector.body168, %vec.epilog.ph166
  %index169 = phi i64 [ %vec.epilog.resume.val161, %vec.epilog.ph166 ], [ %index.next172, %vec.epilog.vector.body168 ] ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.fu, i64 %index169 ; 2 uses
  %wide.load171 = load <8 x i8>, ptr %next.gep170, align 1, !tbaa !15 ; 3 uses
  %i.gk = add <8 x i8> %wide.load171, splat (i8 -65)
  %i.gl = icmp ult <8 x i8> %i.gk, splat (i8 26)
  %i.gm = add nuw nsw <8 x i8> %wide.load171, splat (i8 32)
  %i.gn = select <8 x i1> %i.gl, <8 x i8> %i.gm, <8 x i8> %wide.load171
  store <8 x i8> %i.gn, ptr %next.gep170, align 1, !tbaa !15
  %index.next172 = add nuw i64 %index169, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next172, %n.vec167
  br i1 %i.go, label %vec.epilog.middle.block173, label %vec.epilog.vector.body168, !llvm.loop !34

vec.epilog.middle.block173:                       ; preds = %vec.epilog.vector.body168
  %cmp.n174 = icmp eq i64 %i.fv, %n.vec167
  br i1 %cmp.n174, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exitthread-pre-split, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check162, %vec.epilog.iter.check164, %vec.epilog.middle.block173
  %.sroa.0.08.i.i.ph = phi ptr [ %i.fu, %iter.check162 ], [ %i.fy, %vec.epilog.iter.check164 ], [ %i.gj, %vec.epilog.middle.block173 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.gu, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.gp = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !15 ; 3 uses
  %i.gq = add i8 %i.gp, -65
  %i.gr = icmp ult i8 %i.gq, 26
  %i.gs = add nuw nsw i8 %i.gp, 32
  %i.gt = select i1 %i.gr, i8 %i.gs, i8 %i.gp
  store i8 %i.gt, ptr %.sroa.0.08.i.i, align 1, !tbaa !15
  %i.gu = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.gu, %i.fw
  br i1 %.not.i.i29, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !35

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exitthread-pre-split: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block173, %middle.block159
  %.pr = load i64, ptr %i.ew, align 8, !tbaa !14
  br label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exitthread-pre-split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.gv = phi i64 [ %.pr, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exitthread-pre-split ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 4 uses
  %i.gw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ez) #12
  %i.gx = icmp eq i64 %i.gv, %i.gw
  br i1 %i.gx, label %bb.av, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit_crit_edge

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit_crit_edge: ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !18
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit

bb.av:                                            ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.gy = icmp eq i64 %i.gv, 0
  %.pre91 = load ptr, ptr %3, align 8, !tbaa !18  ; 3 uses
  br i1 %i.gy, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %bcmp.i.i = call i32 @bcmp(ptr %.pre91, ptr nonnull %i.ez, i64 %i.gv)
  %i.gz = icmp eq i32 %bcmp.i.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit_crit_edge, %bb.aw, %bb.av
  %i.ha = phi ptr [ %.pre, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit_crit_edge ], [ %.pre91, %bb.aw ], [ %.pre91, %bb.av ] ; 2 uses
  %i.hb = phi i1 [ false, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit_crit_edge ], [ %i.gz, %bb.aw ], [ true, %bb.av ]
  %i.hc = icmp eq ptr %i.ha, %i.ev
  br i1 %i.hc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %i.hd = icmp ult i64 %i.gv, 16
  call void @llvm.assume(i1 %i.hd)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  call void @_ZdlPv(ptr noundef %i.ha) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %i.hb, label %.critedge.sink.split, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.he = getelementptr inbounds nuw i8, ptr %.018.ptr78, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.hg = load i8, ptr %0, align 8, !tbaa !49, !range !50, !noundef !51
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hi = call ptr @__cxa_allocate_exception(i64 64) #12 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.hi, ptr noundef nonnull align 8 dereferenceable(32) %i.hj)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @__cxa_throw(ptr nonnull %i.hi, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #13
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hi) #12
  br label %common.resume

bb.bb:                                            ; preds = %bb.ax
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !52  ; 2 uses
  %.not.i33 = icmp eq ptr %i.hl, null
  br i1 %.not.i33, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !55
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !58
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  br label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit34

bb.bd:                                            ; preds = %bb.bb
  %i.hp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML6detail9node_data12empty_scalarB5cxx11Ev()
  br label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit34

_ZNK4YAML4Node6ScalarB5cxx11Ev.exit34:            ; preds = %bb.bc, %bb.bd
  %i.hq = phi ptr [ %i.ho, %bb.bc ], [ %i.hp, %bb.bd ] ; 2 uses
  %.val23 = load ptr, ptr %i.hq, align 8, !tbaa !18 ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 8
  %.val24 = load i64, ptr %i.hr, align 8, !tbaa !14 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  store ptr %i.ex, ptr %4, align 8, !tbaa !16, !alias.scope !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !89
  store i64 %.val24, ptr %i.a, align 8, !tbaa !17, !noalias !89
  %i.hs = icmp ugt i64 %.val24, 15
  br i1 %i.hs, label %.noexc.i.i41, label %._crit_edge.i.i.i35

.noexc.i.i41:                                     ; preds = %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit34
  %i.ht = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ht, ptr %4, align 8, !tbaa !18, !alias.scope !89
  %i.hu = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !89
  store i64 %i.hu, ptr %i.ex, align 8, !tbaa !15, !alias.scope !89
  br label %._crit_edge.i.i.i35

._crit_edge.i.i.i35:                              ; preds = %.noexc.i.i41, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit34
  %i.hv = phi ptr [ %i.ht, %.noexc.i.i41 ], [ %i.ex, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit34 ] ; 2 uses
  switch i64 %.val24, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i36
  ]

bb.be:                                            ; preds = %._crit_edge.i.i.i35
  %i.hw = load i8, ptr %.val23, align 1, !tbaa !15, !noalias !89
  store i8 %i.hw, ptr %i.hv, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i36

bb.bf:                                            ; preds = %._crit_edge.i.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hv, ptr readonly align 1 %.val23, i64 %.val24, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i36: ; preds = %bb.bf, %bb.be, %._crit_edge.i.i.i35
  %i.hx = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !89 ; 2 uses
  store i64 %i.hx, ptr %i.ey, align 8, !tbaa !14, !alias.scope !89
  %i.hy = load ptr, ptr %4, align 8, !tbaa !18, !alias.scope !89
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hx
  store i8 0, ptr %i.hz, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !89
  %i.ia = load ptr, ptr %4, align 8, !tbaa !18, !alias.scope !89 ; 6 uses
  %i.ib = load i64, ptr %i.ey, align 8, !tbaa !14 ; 9 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ib
  %.not6.i.i37 = icmp samesign eq i64 %i.ib, 0
  br i1 %.not6.i.i37, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i36
  %min.iters.check = icmp ult i64 %i.ib, 8
  br i1 %min.iters.check, label %.lr.ph.i.i38.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check139 = icmp ult i64 %i.ib, 32
  br i1 %min.iters.check139, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.id = and i64 %i.ib, 24
  %n.vec = and i64 %i.ib, -32                     ; 4 uses
  %i.ie = getelementptr i8, ptr %i.ia, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ia, i64 %index ; 3 uses
  %i.if = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !15 ; 3 uses
  %wide.load140 = load <16 x i8>, ptr %i.if, align 1, !tbaa !15 ; 3 uses
  %i.ig = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ih = add <16 x i8> %wide.load140, splat (i8 -65)
  %i.ii = icmp ult <16 x i8> %i.ig, splat (i8 26)
  %i.ij = icmp ult <16 x i8> %i.ih, splat (i8 26)
  %i.ik = add nuw nsw <16 x i8> %wide.load, splat (i8 32)
  %i.il = add nuw nsw <16 x i8> %wide.load140, splat (i8 32)
  %i.im = select <16 x i1> %i.ii, <16 x i8> %i.ik, <16 x i8> %wide.load
  %i.in = select <16 x i1> %i.ij, <16 x i8> %i.il, <16 x i8> %wide.load140
  store <16 x i8> %i.im, ptr %next.gep, align 1, !tbaa !15
  store <16 x i8> %i.in, ptr %i.if, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.io = icmp eq i64 %index.next, %n.vec
  br i1 %i.io, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ib, %n.vec
  br i1 %cmp.n, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42thread-pre-split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.id, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i38.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec141 = and i64 %i.ib, -8                   ; 3 uses
  %i.ip = getelementptr i8, ptr %i.ia, i64 %n.vec141
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.ia, i64 %index142 ; 2 uses
  %wide.load144 = load <8 x i8>, ptr %next.gep143, align 1, !tbaa !15 ; 3 uses
  %i.iq = add <8 x i8> %wide.load144, splat (i8 -65)
  %i.ir = icmp ult <8 x i8> %i.iq, splat (i8 26)
  %i.is = add nuw nsw <8 x i8> %wide.load144, splat (i8 32)
  %i.it = select <8 x i1> %i.ir, <8 x i8> %i.is, <8 x i8> %wide.load144
  store <8 x i8> %i.it, ptr %next.gep143, align 1, !tbaa !15
  %index.next145 = add nuw i64 %index142, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next145, %n.vec141
  br i1 %i.iu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n146 = icmp eq i64 %i.ib, %n.vec141
  br i1 %cmp.n146, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42thread-pre-split, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i39.ph = phi ptr [ %i.ia, %iter.check ], [ %i.ie, %vec.epilog.iter.check ], [ %i.ip, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader, %.lr.ph.i.i38
  %.sroa.0.08.i.i39 = phi ptr [ %i.ja, %.lr.ph.i.i38 ], [ %.sroa.0.08.i.i39.ph, %.lr.ph.i.i38.preheader ] ; 3 uses
  %i.iv = load i8, ptr %.sroa.0.08.i.i39, align 1, !tbaa !15 ; 3 uses
  %i.iw = add i8 %i.iv, -65
  %i.ix = icmp ult i8 %i.iw, 26
  %i.iy = add nuw nsw i8 %i.iv, 32
  %i.iz = select i1 %i.ix, i8 %i.iy, i8 %i.iv
  store i8 %i.iz, ptr %.sroa.0.08.i.i39, align 1, !tbaa !15
  %i.ja = getelementptr i8, ptr %.sroa.0.08.i.i39, i64 1 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.ja, %i.ic
  br i1 %.not.i.i40, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42thread-pre-split, label %.lr.ph.i.i38, !llvm.loop !40

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42thread-pre-split: ; preds = %.lr.ph.i.i38, %vec.epilog.middle.block, %middle.block
  %.pr51 = load i64, ptr %i.ey, align 8, !tbaa !14
  br label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42: ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42thread-pre-split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i36
  %i.jb = phi i64 [ %.pr51, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42thread-pre-split ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i36 ] ; 4 uses
  %i.jc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hf) #12
  %i.jd = icmp eq i64 %i.jb, %i.jc
  br i1 %i.jd, label %bb.bg, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42._ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit44_crit_edge

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42._ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit44_crit_edge: ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42
  %.pre92 = load ptr, ptr %4, align 8, !tbaa !18
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit44

bb.bg:                                            ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42
  %i.je = icmp eq i64 %i.jb, 0
  %.pre93 = load ptr, ptr %4, align 8, !tbaa !18  ; 3 uses
  br i1 %i.je, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit44, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %bcmp.i.i43 = call i32 @bcmp(ptr %.pre93, ptr nonnull %i.hf, i64 %i.jb)
  %i.jf = icmp eq i32 %bcmp.i.i43, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit44

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit44: ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42._ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit44_crit_edge, %bb.bh, %bb.bg
  %i.jg = phi ptr [ %.pre92, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42._ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit44_crit_edge ], [ %.pre93, %bb.bh ], [ %.pre93, %bb.bg ] ; 2 uses
  %i.jh = phi i1 [ false, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit42._ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit44_crit_edge ], [ %i.jf, %bb.bh ], [ true, %bb.bg ]
  %i.ji = icmp eq ptr %i.jg, %i.ex
  br i1 %i.ji, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit44
  %i.jj = icmp ult i64 %i.jb, 16
  call void @llvm.assume(i1 %i.jj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit44
  call void @_ZdlPv(ptr noundef %i.jg) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br i1 %i.jh, label %.critedge.sink.split, label %bb.al

.critedge.sink.split:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sink = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  store i8 %.sink, ptr %1, align 1, !tbaa !90
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %.critedge.sink.split, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNK4YAML4Node8IsScalarEv.exit
  %.3 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ true, %.critedge.sink.split ], [ false, %_ZNK4YAML4Node8IsScalarEv.exit ], [ false, %bb.e ], [ false, %bb.al ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.YAML::Mark", align 8       ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i64 -1, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -1, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN4YAML8ErrorMsg21INVALID_NODE_WITH_KEYERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML23RepresentationExceptionE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.a) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML11InvalidNodeE, i64 16), ptr %0, align 8, !tbaa !20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.e) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.d
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN4YAML11InvalidNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4YAML8ErrorMsg21INVALID_NODE_WITH_KEYERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.noexc.i, label %bb.c
end_hunk_0
