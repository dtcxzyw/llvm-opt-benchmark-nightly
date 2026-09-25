Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/euf_egraph?download=true
inline.NumInlined: 1311
inline.NumDeleted: 546
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3euf6egraph5mergeEPNS_5enodeES2_NS_13justificationE:bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.du = load i8, ptr %i.dt, align 4, !tbaa !164, !range !128, !noundef !129
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !45
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !45
  %i.ea = icmp ugt i32 %i.dx, %i.dz
  %.not9 = icmp ne i32 %i.cq, 0
  %i.eb = or i1 %.not9, %i.ea
  %or.cond126.not = or i1 %i.eb, %i.bl
  br i1 %or.cond126.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.0124 = phi ptr [ %1, %bb.q ], [ %2, %bb.s ], [ %1, %bb.r ] ; 11 uses
  %.0123 = phi ptr [ %2, %bb.q ], [ %1, %bb.s ], [ %2, %bb.r ] ; 4 uses
  %.0122 = phi ptr [ %i.j, %bb.q ], [ %i.l, %bb.s ], [ %i.j, %bb.r ] ; 7 uses
  %.0 = phi ptr [ %i.l, %bb.q ], [ %i.j, %bb.s ], [ %i.l, %bb.r ] ; 10 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0122, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !131 ; 4 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %_ZN3euf6egraph14remove_parentsEPNS_5enodeE.exit, label %_ZNK3euf13enode_parents3endEv.exit.i

_ZNK3euf13enode_parents3endEv.exit.i:             ; preds = %bb.t
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 -4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !132 ; 2 uses
  %i.eh = zext i32 %i.eg to i64
  %i.ei = shl nuw nsw i64 %i.eh, 3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ei
  %.not16.i = icmp eq i32 %i.eg, 0
  br i1 %.not16.i, label %_ZN3euf6egraph14remove_parentsEPNS_5enodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK3euf13enode_parents3endEv.exit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.aa, %.lr.ph.i
  %.017.i = phi ptr [ %i.ed, %.lr.ph.i ], [ %i.ey, %bb.aa ] ; 2 uses
  %i.el = load ptr, ptr %.017.i, align 8, !tbaa !66 ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 3 uses
  %i.en = load i8, ptr %i.em, align 8, !tbaa !248, !range !128, !noundef !129
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 13
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !42, !range !128, !noundef !129
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 80
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !142
  %i.eu = icmp eq ptr %i.el, %i.et
  br i1 %i.eu, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.em, align 8, !tbaa !248
  call void @_ZN3euf6etable5eraseEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48) %i.ek, ptr noundef nonnull %i.el)
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 15
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !165, !range !128, !noundef !129
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.em, align 8, !tbaa !248
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.u
  %i.ey = getelementptr inbounds nuw i8, ptr %.017.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ey, %i.ej
  br i1 %.not.i, label %_ZN3euf6egraph14remove_parentsEPNS_5enodeE.exit, label %bb.u

_ZN3euf6egraph14remove_parentsEPNS_5enodeE.exit:  ; preds = %bb.aa, %bb.t, %_ZNK3euf13enode_parents3endEv.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !131 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %_ZNK3euf5enode11num_parentsEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN3euf6egraph14remove_parentsEPNS_5enodeE.exit
  %i.fc = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !132
  br label %_ZNK3euf5enode11num_parentsEv.exit

_ZNK3euf5enode11num_parentsEv.exit:               ; preds = %_ZN3euf6egraph14remove_parentsEPNS_5enodeE.exit, %bb.ab
  %.0.i.i = phi i32 [ %i.fd, %bb.ab ], [ 0, %_ZN3euf6egraph14remove_parentsEPNS_5enodeE.exit ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !138 ; 4 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNK3euf5enode11num_parentsEv.exit
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 -4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !132 ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 -8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !132
  %i.fl = icmp eq i32 %i.fi, %i.fk
  br i1 %i.fl, label %bb.ad, label %_ZN3euf6egraph7push_eqEPNS_5enodeES2_j.exit

bb.ad:                                            ; preds = %bb.ac, %_ZNK3euf5enode11num_parentsEv.exit
  call void @_ZN6vectorIN3euf6egraph13update_recordELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
  %.pre.i.i32 = load ptr, ptr %i.fe, align 8, !tbaa !138 ; 2 uses
  %.phi.trans.insert.i.i33 = getelementptr inbounds i8, ptr %.pre.i.i32, i64 -4
  %.pre2.i.i34 = load i32, ptr %.phi.trans.insert.i.i33, align 4, !tbaa !132
  br label %_ZN3euf6egraph7push_eqEPNS_5enodeES2_j.exit

_ZN3euf6egraph7push_eqEPNS_5enodeES2_j.exit:      ; preds = %bb.ac, %bb.ad
  %i.fm = phi i32 [ %.pre2.i.i34, %bb.ad ], [ %i.fi, %bb.ac ]
  %i.fn = phi ptr [ %.pre.i.i32, %bb.ad ], [ %i.ff, %bb.ac ]
  %i.fo = zext i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.fo ; 4 uses
  store i32 0, ptr %i.fp, align 8, !tbaa !140
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %.0122, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !66
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store ptr %.0124, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !66
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i32 %.0.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.fq = load ptr, ptr %i.fe, align 8, !tbaa !138
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -4 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !132
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZN3euf5enode21reverse_justificationEv(ptr noundef nonnull align 8 dereferenceable(176) %.0124)
  %i.fu = getelementptr inbounds nuw i8, ptr %.0124, i64 72
  store ptr %.0123, ptr %i.fu, align 8, !tbaa !246
  %i.fv = getelementptr inbounds nuw i8, ptr %.0124, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !151
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN3euf11enode_class8iteratorppEv.exit

bb.ae:                                            ; preds = %_ZN3euf11enode_class8iteratorppEv.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %.0122, i64 56 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0, i64 56 ; 2 uses
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !66
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !66
  store ptr %i.fz, ptr %i.fw, align 8, !tbaa !66
  store ptr %i.fy, ptr %i.fx, align 8, !tbaa !66
  %i.ga = getelementptr inbounds nuw i8, ptr %.0122, i64 32
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !45
  %i.gc = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !45
  %i.ge = add i32 %i.gd, %i.gb
  store i32 %i.ge, ptr %i.gc, align 8, !tbaa !45
  %i.gf = getelementptr inbounds nuw i8, ptr %.0, i64 20
  store i32 0, ptr %i.gf, align 4, !tbaa !43
  call void @_ZN3euf6egraph11merge_th_eqEPNS_5enodeES2_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0122, ptr noundef nonnull %.0)
  call void @_ZN3euf6egraph16reinsert_parentsEPNS_5enodeES2_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0122, ptr noundef nonnull %.0)
  %i.gg = load i32, ptr %3, align 8, !tbaa !249
  %i.gh = icmp eq i32 %i.gg, 1
  br i1 %i.gh, label %bb.af, label %bb.ai

_ZN3euf11enode_class8iteratorppEv.exit:           ; preds = %_ZN3euf6egraph7push_eqEPNS_5enodeES2_j.exit, %_ZN3euf11enode_class8iteratorppEv.exit
  %.sroa.046.0129 = phi ptr [ %.0124, %_ZN3euf6egraph7push_eqEPNS_5enodeES2_j.exit ], [ %i.gk, %_ZN3euf11enode_class8iteratorppEv.exit ] ; 3 uses
  %.sroa.7.0128 = phi ptr [ null, %_ZN3euf6egraph7push_eqEPNS_5enodeES2_j.exit ], [ %spec.select, %_ZN3euf11enode_class8iteratorppEv.exit ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.046.0129, i64 64
  store ptr %.0, ptr %i.gi, align 8, !tbaa !51
  %.not.i40 = icmp eq ptr %.sroa.7.0128, null
  %spec.select = select i1 %.not.i40, ptr %.sroa.046.0129, ptr %.sroa.7.0128 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.046.0129, i64 56
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !50 ; 2 uses
  %.not.i39 = icmp ne ptr %spec.select, %.0124
  %i.gl = icmp ne ptr %i.gk, %.0124
  %i.gm = select i1 %.not.i39, i1 true, i1 %i.gl
  br i1 %i.gm, label %_ZN3euf11enode_class8iteratorppEv.exit, label %bb.ae

bb.af:                                            ; preds = %bb.ae
  %i.gn = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !129, !align !163 ; 2 uses
  %i.go = load ptr, ptr %.0, align 8, !tbaa !49   ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 840
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !242
  %i.gr = icmp eq ptr %i.go, %i.gq
  br i1 %i.gr, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 832
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !241
  %i.gu = icmp eq ptr %i.go, %i.gt
  br i1 %i.gu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @_ZN3euf6egraph11add_literalEPNS_5enodeES2_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %.0124, ptr noundef nonnull %.0)
  br label %.thread

bb.ai:                                            ; preds = %bb.ag, %bb.ae
  %i.gv = getelementptr inbounds nuw i8, ptr %.0123, i64 24
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !143 ; 2 uses
  %.not10 = icmp eq i32 %i.gw, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0124, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !143
  %.not13 = icmp eq i32 %i.gw, %.pre              ; 2 uses
  br i1 %.not10, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not13, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN3euf6egraph11add_literalEPNS_5enodeES2_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %.0124, ptr noundef nonnull %.0123)
  br label %.thread

bb.al:                                            ; preds = %bb.ai
  br i1 %.not13, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZN3euf6egraph11add_literalEPNS_5enodeES2_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %.0123, ptr noundef nonnull %.0124)
  br label %.thread

.thread:                                          ; preds = %bb.aj, %bb.ak, %bb.am, %bb.al, %bb.ah
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !331 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !331 ; 2 uses
  %i.hb = icmp eq ptr %i.gy, %i.ha
  br i1 %i.hb, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %_ZNKSt8functionIFvPN3euf5enodeES2_EEclES2_S2_.exit
  %.sroa.042.0130 = phi ptr [ %i.hg, %_ZNKSt8functionIFvPN3euf5enodeES2_EEclES2_S2_.exit ], [ %i.gy, %.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.0, ptr %i.a, align 8, !tbaa !66
  store ptr %.0122, ptr %i.b, align 8, !tbaa !66
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.042.0130, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !144
  %.not.i.i41 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i41, label %bb.an, label %_ZNKSt8functionIFvPN3euf5enodeES2_EEclES2_S2_.exit

bb.an:                                            ; preds = %.lr.ph
  call void @_ZSt25__throw_bad_function_callv() #22
  unreachable

_ZNKSt8functionIFvPN3euf5enodeES2_EEclES2_S2_.exit: ; preds = %.lr.ph
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.042.0130, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !184
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.042.0130, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.042.0130, i64 32 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.ha
  br i1 %i.hh, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt8functionIFvPN3euf5enodeES2_EEclES2_S2_.exit, %.thread, %_ZN3euf6egraph12set_conflictEPNS_5enodeES2_NS_13justificationE.exit, %_ZN3euf6egraph12set_conflictEPNS_5enodeES2_NS_13justificationE.exit30, %bb.c, %bb.b
  ret void
}

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #2

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #2

declare void @_Z12verbose_lockv() local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3euf13justification7displayERSoRKSt8functionIFvS1_PvEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #2

declare void @_Z14verbose_unlockv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6egraph14remove_parentsEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK3euf13enode_parents3endEv.exit

_ZNK3euf13enode_parents3endEv.exit:               ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !132  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3euf13enode_parents3endEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a, %_ZNK3euf13enode_parents3endEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.017 = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %bb.h ] ; 2 uses
  %i.j = load ptr, ptr %.017, align 8, !tbaa !66  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !248, !range !128, !noundef !129
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.o = load i8, ptr %i.n, align 1, !tbaa !42, !range !128, !noundef !129
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !142
  %i.s = icmp eq ptr %i.j, %i.r
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.k, align 8, !tbaa !248
  tail call void @_ZN3euf6etable5eraseEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull %i.j)
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.u = load i8, ptr %i.t, align 1, !tbaa !165, !range !128, !noundef !129
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.k, align 8, !tbaa !248
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.d, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6egraph19merge_justificationEPNS_5enodeES2_NS_13justificationE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef %2, ptr nofree noundef readonly byval(%"class.euf::justification") align 8 captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN3euf5enode21reverse_justificationEv(ptr noundef nonnull align 8 dereferenceable(176) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %2, ptr %i.a, align 8, !tbaa !246
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !151
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6egraph11merge_th_eqEPNS_5enodeES2_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ugt i32 %i.b, -257
  br i1 %i.c, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96
  br label %bb.b

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %.sroa.025.032 = phi ptr [ %i.a, %.lr.ph ], [ %i.ca, %select.unfold ] ; 3 uses
  %i.j = load i32, ptr %.sroa.025.032, align 8    ; 4 uses
  %i.k = shl i32 %i.j, 24                         ; 2 uses
  %i.l = ashr exact i32 %i.k, 24                  ; 3 uses
  %i.m = load i32, ptr %i.d, align 8
  %i.n = icmp ugt i32 %i.m, -257
  br i1 %i.n, label %_ZNK3euf5enode10get_th_varEi.exit.thread.thread, label %.preheader.i.i

_ZNK3euf5enode10get_th_varEi.exit.thread.thread:  ; preds = %bb.b
  store i32 %i.j, ptr %i.d, align 8
  store ptr null, ptr %i.i, align 8, !tbaa !243
  br label %_ZN3euf5enode10add_th_varEiiR6region.exit

.preheader.i.i:                                   ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.s, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.o = load i32, ptr %.0.i.i, align 8           ; 2 uses
  %i.p = shl i32 %i.o, 24
  %i.q = icmp eq i32 %i.k, %i.p
  br i1 %i.q, label %_ZNK3euf5enode10get_th_varEi.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !243  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i20.preheader, label %.preheader.i.i, !llvm.loop !8

_ZNK3euf5enode10get_th_varEi.exit:                ; preds = %.preheader.i.i
  %i.t = ashr i32 %i.o, 8                         ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %.preheader.i.i20.preheader, label %bb.g

.preheader.i.i20.preheader:                       ; preds = %bb.c, %_ZNK3euf5enode10get_th_varEi.exit
  br label %.preheader.i.i20

.preheader.i.i20:                                 ; preds = %.preheader.i.i20.preheader, %.preheader.i.i20
  %.0.i.i21 = phi ptr [ %i.w, %.preheader.i.i20 ], [ %i.d, %.preheader.i.i20.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !243  ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.w, null
  br i1 %.not.i.i22, label %bb.d, label %.preheader.i.i20, !llvm.loop !9

bb.d:                                             ; preds = %.preheader.i.i20
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 8
  %i.y = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 noundef 16) ; 3 uses
  store i32 %i.j, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !243
  store ptr %i.y, ptr %i.x, align 8, !tbaa !243
end_hunk_0
