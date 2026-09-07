Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_string?download=true
inline.NumInlined: 13637
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 5361
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 5371
loop-unroll.NumUnrolledNotLatch: 27
begin_hunk_0_@_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_:bb.a
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !26
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %.not.24 = icmp eq ptr %i.cd, %2
  br i1 %.not.24, label %._crit_edge, label %.lr.ph.25

.lr.ph.25:                                        ; preds = %.lr.ph.24
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !26
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !26
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %.not.25 = icmp eq ptr %i.cg, %2
  br i1 %.not.25, label %._crit_edge, label %.lr.ph.26

.lr.ph.26:                                        ; preds = %.lr.ph.25
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !26
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 27 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.not.26 = icmp eq ptr %i.cj, %2
  br i1 %.not.26, label %._crit_edge, label %.lr.ph.27

.lr.ph.27:                                        ; preds = %.lr.ph.26
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !26
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !26
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 2 uses
  %.not.27 = icmp eq ptr %i.cm, %2
  br i1 %.not.27, label %._crit_edge, label %.lr.ph.28

.lr.ph.28:                                        ; preds = %.lr.ph.27
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !26
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 29 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %.not.28 = icmp eq ptr %i.cp, %2
  br i1 %.not.28, label %._crit_edge, label %.lr.ph.29

.lr.ph.29:                                        ; preds = %.lr.ph.28
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !26
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !26
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 31
  %.not.29 = icmp eq ptr %i.cs, %2
  br i1 %.not.29, label %._crit_edge, label %bb.b
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.g = sub i64 %i.f, %i.d                       ; 10 uses
  %i.h = sub nsw i64 %i.e, %i.g
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %iter.check218, label %bb.d

iter.check218:                                    ; preds = %bb.c
  %min.iters.check200 = icmp ult i64 %i.g, 8
  br i1 %min.iters.check200, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check201

vector.main.loop.iter.check201:                   ; preds = %iter.check218
  %min.iters.check202 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check202, label %vec.epilog.ph222, label %vector.ph203

vector.ph203:                                     ; preds = %vector.main.loop.iter.check201
  %i.j = and i64 %i.g, 24
  %n.vec204 = and i64 %i.g, -32                   ; 5 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec204
  %i.l = getelementptr i8, ptr %0, i64 %n.vec204
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next213, %vector.body205 ] ; 3 uses
  %next.gep207 = getelementptr i8, ptr %1, i64 %index206 ; 3 uses
  %next.gep208 = getelementptr i8, ptr %0, i64 %index206 ; 3 uses
  %i.m = getelementptr i8, ptr %next.gep208, i64 16 ; 2 uses
  %wide.load209 = load <16 x i8>, ptr %next.gep208, align 1, !tbaa !26, !alias.scope !959, !noalias !960
  %wide.load210 = load <16 x i8>, ptr %i.m, align 1, !tbaa !26, !alias.scope !959, !noalias !960
  %i.n = getelementptr i8, ptr %next.gep207, i64 16 ; 2 uses
  %wide.load211 = load <16 x i8>, ptr %next.gep207, align 1, !tbaa !26, !alias.scope !960
  %wide.load212 = load <16 x i8>, ptr %i.n, align 1, !tbaa !26, !alias.scope !960
  store <16 x i8> %wide.load211, ptr %next.gep208, align 1, !tbaa !26, !alias.scope !959, !noalias !960
  store <16 x i8> %wide.load212, ptr %i.m, align 1, !tbaa !26, !alias.scope !959, !noalias !960
  store <16 x i8> %wide.load209, ptr %next.gep207, align 1, !tbaa !26, !alias.scope !960
  store <16 x i8> %wide.load210, ptr %i.n, align 1, !tbaa !26, !alias.scope !960
  %index.next213 = add nuw i64 %index206, 32      ; 2 uses
  %i.o = icmp eq i64 %index.next213, %n.vec204
  br i1 %i.o, label %middle.block214, label %vector.body205, !llvm.loop !940

middle.block214:                                  ; preds = %vector.body205
  %cmp.n215 = icmp eq i64 %i.g, %n.vec204
  br i1 %cmp.n215, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %vec.epilog.iter.check220

vec.epilog.iter.check220:                         ; preds = %middle.block214
  %min.epilog.iters.check221 = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check221, label %.lr.ph.i.preheader, label %vec.epilog.ph222, !prof !41

vec.epilog.ph222:                                 ; preds = %vector.main.loop.iter.check201, %vec.epilog.iter.check220
  %vec.epilog.resume.val216 = phi i64 [ %n.vec204, %vec.epilog.iter.check220 ], [ 0, %vector.main.loop.iter.check201 ]
  %n.vec223 = and i64 %i.g, -8                    ; 4 uses
  %i.p = getelementptr i8, ptr %1, i64 %n.vec223
  %i.q = getelementptr i8, ptr %0, i64 %n.vec223
  br label %vec.epilog.vector.body224

vec.epilog.vector.body224:                        ; preds = %vec.epilog.vector.body224, %vec.epilog.ph222
  %index225 = phi i64 [ %vec.epilog.resume.val216, %vec.epilog.ph222 ], [ %index.next230, %vec.epilog.vector.body224 ] ; 3 uses
  %next.gep226 = getelementptr i8, ptr %1, i64 %index225 ; 2 uses
  %next.gep227 = getelementptr i8, ptr %0, i64 %index225 ; 2 uses
  %wide.load228 = load <8 x i8>, ptr %next.gep227, align 1, !tbaa !26, !alias.scope !959, !noalias !960
  %wide.load229 = load <8 x i8>, ptr %next.gep226, align 1, !tbaa !26, !alias.scope !960
  store <8 x i8> %wide.load229, ptr %next.gep227, align 1, !tbaa !26, !alias.scope !959, !noalias !960
  store <8 x i8> %wide.load228, ptr %next.gep226, align 1, !tbaa !26, !alias.scope !960
  %index.next230 = add nuw i64 %index225, 8       ; 2 uses
  %i.r = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.r, label %vec.epilog.middle.block231, label %vec.epilog.vector.body224, !llvm.loop !941

vec.epilog.middle.block231:                       ; preds = %vec.epilog.vector.body224
  %cmp.n232 = icmp eq i64 %i.g, %n.vec223
  br i1 %cmp.n232, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check218, %vec.epilog.iter.check220, %vec.epilog.middle.block231
  %.010.i.ph = phi ptr [ %1, %iter.check218 ], [ %i.k, %vec.epilog.iter.check220 ], [ %i.p, %vec.epilog.middle.block231 ] ; 2 uses
  %.079.i.ph = phi ptr [ %0, %iter.check218 ], [ %i.l, %vec.epilog.iter.check220 ], [ %i.q, %vec.epilog.middle.block231 ] ; 3 uses
  %.079.i.ph244 = ptrtoaddr ptr %.079.i.ph to i64 ; 2 uses
  %i.s = sub i64 %i.f, %.079.i.ph244
  %xtraiter245 = and i64 %i.s, 3                  ; 2 uses
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.010.i.prol = phi ptr [ %i.w, %.lr.ph.i.prol ], [ %.010.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.079.i.prol = phi ptr [ %i.v, %.lr.ph.i.prol ], [ %.079.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter247 = phi i64 [ %prol.iter247.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.t = load i8, ptr %.079.i.prol, align 1, !tbaa !26
  %i.u = load i8, ptr %.010.i.prol, align 1, !tbaa !26
  store i8 %i.u, ptr %.079.i.prol, align 1, !tbaa !26
  store i8 %i.t, ptr %.010.i.prol, align 1, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %.079.i.prol, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 1 ; 2 uses
  %prol.iter247.next = add i64 %prol.iter247, 1   ; 2 uses
  %prol.iter247.cmp.not = icmp eq i64 %prol.iter247.next, %xtraiter245
  br i1 %prol.iter247.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !942

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.010.i.unr = phi ptr [ %.010.i.ph, %.lr.ph.i.preheader ], [ %i.w, %.lr.ph.i.prol ]
  %.079.i.unr = phi ptr [ %.079.i.ph, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i.prol ]
  %i.x = sub i64 %.079.i.ph244, %i.f
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.079.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.z = load i8, ptr %.079.i, align 1, !tbaa !26
  %i.aa = load i8, ptr %.010.i, align 1, !tbaa !26
  store i8 %i.aa, ptr %.079.i, align 1, !tbaa !26
  store i8 %i.z, ptr %.010.i, align 1, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %.079.i, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !26
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !26
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !26
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %.079.i, i64 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i, i64 2 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !26
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !26
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !26
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i, i64 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i, i64 3 ; 2 uses
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !26
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !26
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !26
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i.3 = icmp eq ptr %i.an, %1
  br i1 %.not.i.3, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i, !llvm.loop !943

bb.d:                                             ; preds = %bb.c
  %i.ap = sub i64 %i.c, %i.f
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 10 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 19 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 26 uses
  %i.ar = sub nsw i64 %.086, %.082                ; 17 uses
  %i.as = icmp slt i64 %.082, %i.ar
  br i1 %i.as, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %.082, 1
  br i1 %i.at, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, label %bb.g

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f
  %i.au = load i8, ptr %.058, align 1, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %.058, i64 1
  %i.aw = getelementptr inbounds i8, ptr %.058, i64 %.086
  %gepdiff = add nsw i64 %.086, -1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.058, ptr nonnull align 1 %i.av, i64 %gepdiff, i1 false)
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -1
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !26
  br label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ay = icmp sgt i64 %i.ar, 0
  br i1 %i.ay, label %iter.check, label %._crit_edge110

iter.check:                                       ; preds = %bb.g
  %i.az = getelementptr i8, ptr %.058, i64 %.082  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check, label %.lr.ph109.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.058, i64 %i.ar
  %scevgep135 = getelementptr i8, ptr %.058, i64 %.086
  %bound0 = icmp ult ptr %.058, %scevgep135
  %bound1 = icmp ult ptr %i.az, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check136 = icmp ult i64 %i.ar, 32
  br i1 %min.iters.check136, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.ar, 28
  %n.vec = and i64 %i.ar, 9223372036854775776     ; 6 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 %n.vec
  %i.bc = getelementptr i8, ptr %.058, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %index ; 3 uses
  %next.gep137 = getelementptr i8, ptr %.058, i64 %index ; 3 uses
  %i.bd = getelementptr i8, ptr %next.gep137, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep137, align 1, !tbaa !26, !alias.scope !961, !noalias !962
  %wide.load138 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !26, !alias.scope !961, !noalias !962
  %i.be = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load139 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !26, !alias.scope !962
  %wide.load140 = load <16 x i8>, ptr %i.be, align 1, !tbaa !26, !alias.scope !962
  store <16 x i8> %wide.load139, ptr %next.gep137, align 1, !tbaa !26, !alias.scope !961, !noalias !962
  store <16 x i8> %wide.load140, ptr %i.bd, align 1, !tbaa !26, !alias.scope !961, !noalias !962
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !26, !alias.scope !962
  store <16 x i8> %wide.load138, ptr %i.be, align 1, !tbaa !26, !alias.scope !962
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !947

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge110, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph109.preheader, label %vec.epilog.ph, !prof !963

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %i.ar, 9223372036854775804  ; 5 uses
  %i.bg = getelementptr i8, ptr %i.az, i64 %n.vec142
  %i.bh = getelementptr i8, ptr %.058, i64 %n.vec142 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 3 uses
  %next.gep144 = getelementptr i8, ptr %i.az, i64 %index143 ; 2 uses
  %next.gep145 = getelementptr i8, ptr %.058, i64 %index143 ; 2 uses
  %wide.load146 = load <4 x i8>, ptr %next.gep145, align 1, !tbaa !26, !alias.scope !961, !noalias !962
  %wide.load147 = load <4 x i8>, ptr %next.gep144, align 1, !tbaa !26, !alias.scope !962
  store <4 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !26, !alias.scope !961, !noalias !962
  store <4 x i8> %wide.load146, ptr %next.gep144, align 1, !tbaa !26, !alias.scope !962
  %index.next148 = add nuw i64 %index143, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !948

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n149 = icmp eq i64 %i.ar, %n.vec142
  br i1 %cmp.n149, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec142, %vec.epilog.middle.block ] ; 3 uses
  %.055106.ph = phi ptr [ %i.az, %iter.check ], [ %i.az, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ] ; 2 uses
  %.159105.ph = phi ptr [ %.058, %iter.check ], [ %.058, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter241 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol

.lr.ph109.prol:                                   ; preds = %.lr.ph109.preheader, %.lr.ph109.prol
  %.054107.prol = phi i64 [ %i.bn, %.lr.ph109.prol ], [ %.054107.ph, %.lr.ph109.preheader ]
  %.055106.prol = phi ptr [ %i.bm, %.lr.ph109.prol ], [ %.055106.ph, %.lr.ph109.preheader ] ; 3 uses
  %.159105.prol = phi ptr [ %i.bl, %.lr.ph109.prol ], [ %.159105.ph, %.lr.ph109.preheader ] ; 3 uses
  %prol.iter243 = phi i64 [ %prol.iter243.next, %.lr.ph109.prol ], [ 0, %.lr.ph109.preheader ]
  %i.bj = load i8, ptr %.159105.prol, align 1, !tbaa !26
  %i.bk = load i8, ptr %.055106.prol, align 1, !tbaa !26
  store i8 %i.bk, ptr %.159105.prol, align 1, !tbaa !26
  store i8 %i.bj, ptr %.055106.prol, align 1, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %.159105.prol, i64 1 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.055106.prol, i64 1 ; 2 uses
  %i.bn = add nuw nsw i64 %.054107.prol, 1        ; 2 uses
  %prol.iter243.next = add i64 %prol.iter243, 1   ; 2 uses
  %prol.iter243.cmp.not = icmp eq i64 %prol.iter243.next, %xtraiter241
  br i1 %prol.iter243.cmp.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol, !llvm.loop !949

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph109.preheader ], [ %i.bl, %.lr.ph109.prol ]
  %.054107.unr = phi i64 [ %.054107.ph, %.lr.ph109.preheader ], [ %i.bn, %.lr.ph109.prol ]
  %.055106.unr = phi ptr [ %.055106.ph, %.lr.ph109.preheader ], [ %i.bm, %.lr.ph109.prol ]
  %.159105.unr = phi ptr [ %.159105.ph, %.lr.ph109.preheader ], [ %i.bl, %.lr.ph109.prol ]
  %i.bo = sub i64 %.054107.ph, %.086
  %i.bp = add i64 %i.bo, %.082
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block, %vec.epilog.middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.bh, %vec.epilog.middle.block ], [ %i.bc, %middle.block ], [ %.lcssa.unr, %.lr.ph109.prol.loopexit ], [ %i.cg, %.lr.ph109 ]
  %i.br = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.br, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109
  %.054107 = phi i64 [ %i.ci, %.lr.ph109 ], [ %.054107.unr, %.lr.ph109.prol.loopexit ]
  %.055106 = phi ptr [ %i.ch, %.lr.ph109 ], [ %.055106.unr, %.lr.ph109.prol.loopexit ] ; 6 uses
  %.159105 = phi ptr [ %i.cg, %.lr.ph109 ], [ %.159105.unr, %.lr.ph109.prol.loopexit ] ; 6 uses
  %i.bs = load i8, ptr %.159105, align 1, !tbaa !26
  %i.bt = load i8, ptr %.055106, align 1, !tbaa !26
  store i8 %i.bt, ptr %.159105, align 1, !tbaa !26
  store i8 %i.bs, ptr %.055106, align 1, !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %.159105, i64 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.055106, i64 1 ; 2 uses
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !26
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !26
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !26
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !26
  %i.by = getelementptr inbounds nuw i8, ptr %.159105, i64 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.055106, i64 2 ; 2 uses
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !26
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !26
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !26
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %.159105, i64 3 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.055106, i64 3 ; 2 uses
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !26
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !26
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !26
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !26
  %i.cg = getelementptr inbounds nuw i8, ptr %.159105, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.055106, i64 4
  %i.ci = add nuw nsw i64 %.054107, 4             ; 2 uses
  %exitcond118.not.3 = icmp eq i64 %i.ci, %i.ar
  br i1 %exitcond118.not.3, label %._crit_edge110, label %.lr.ph109, !llvm.loop !950

bb.h:                                             ; preds = %._crit_edge110
  %i.cj = sub nsw i64 %.082, %i.br
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.ck = icmp eq i64 %i.ar, 1
  %i.cl = getelementptr i8, ptr %.058, i64 %.086  ; 9 uses
  br i1 %i.ck, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -1 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !26
  %i.co = add nsw i64 %.086, -1                   ; 2 uses
  %i.cp = icmp sgt i64 %.086, 2
  br i1 %i.cp, label %bb.k, label %bb.l, !prof !964

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %.058, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull align 1 %.058, i64 %i.co, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.l:                                             ; preds = %bb.j
  %i.cr = icmp eq i64 %i.co, 1
  br i1 %i.cr, label %bb.m, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.m:                                             ; preds = %bb.l
  %i.cs = load i8, ptr %.058, align 1, !tbaa !26
  store i8 %i.cs, ptr %i.cm, align 1, !tbaa !26
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.k, %bb.l, %bb.m
  store i8 %i.cn, ptr %.058, align 1, !tbaa !26
  br label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit

bb.n:                                             ; preds = %bb.i
  %i.ct = sub i64 0, %i.ar
  %i.cu = getelementptr i8, ptr %i.cl, i64 %i.ct  ; 8 uses
  %i.cv = icmp sgt i64 %.082, 0
  br i1 %i.cv, label %iter.check176, label %._crit_edge

iter.check176:                                    ; preds = %bb.n
  %min.iters.check158 = icmp ult i64 %.082, 8
  br i1 %min.iters.check158, label %.lr.ph.preheader, label %vector.memcheck153

vector.memcheck153:                               ; preds = %iter.check176
  %scevgep154 = getelementptr i8, ptr %.058, i64 %i.ar
  %bound0155 = icmp ult ptr %.058, %i.cl
  %bound1156 = icmp ult ptr %scevgep154, %i.cu
  %found.conflict157 = and i1 %bound0155, %bound1156
  br i1 %found.conflict157, label %.lr.ph.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %vector.memcheck153
  %min.iters.check160 = icmp ult i64 %.082, 32
  br i1 %min.iters.check160, label %vec.epilog.ph180, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %i.cw = and i64 %.082, 24
  %n.vec162 = and i64 %.082, 9223372036854775776  ; 5 uses
  %i.cx = sub nsw i64 0, %n.vec162                ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cl, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cu, i64 %i.cx
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next171, %vector.body163 ] ; 2 uses
  %i.da = sub i64 0, %index164                    ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.cl, i64 %i.da ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.cu, i64 %i.da ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep166, i64 -16 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %next.gep166, i64 -32 ; 2 uses
  %wide.load167 = load <16 x i8>, ptr %i.db, align 1, !tbaa !26, !alias.scope !965, !noalias !966
  %wide.load168 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !26, !alias.scope !965, !noalias !966
  %i.dd = getelementptr inbounds i8, ptr %next.gep165, i64 -16 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %next.gep165, i64 -32 ; 2 uses
  %wide.load169 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !26, !alias.scope !966
  %wide.load170 = load <16 x i8>, ptr %i.de, align 1, !tbaa !26, !alias.scope !966
  store <16 x i8> %wide.load169, ptr %i.db, align 1, !tbaa !26, !alias.scope !965, !noalias !966
  store <16 x i8> %wide.load170, ptr %i.dc, align 1, !tbaa !26, !alias.scope !965, !noalias !966
  store <16 x i8> %wide.load167, ptr %i.dd, align 1, !tbaa !26, !alias.scope !966
  store <16 x i8> %wide.load168, ptr %i.de, align 1, !tbaa !26, !alias.scope !966
  %index.next171 = add nuw i64 %index164, 32      ; 2 uses
  %i.df = icmp eq i64 %index.next171, %n.vec162
  br i1 %i.df, label %middle.block172, label %vector.body163, !llvm.loop !954

middle.block172:                                  ; preds = %vector.body163
  %cmp.n173 = icmp eq i64 %.082, %n.vec162
  br i1 %cmp.n173, label %._crit_edge, label %vec.epilog.iter.check178

vec.epilog.iter.check178:                         ; preds = %middle.block172
  %min.epilog.iters.check179 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check179, label %.lr.ph.preheader, label %vec.epilog.ph180, !prof !41

vec.epilog.ph180:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check178
  %vec.epilog.resume.val174 = phi i64 [ %n.vec162, %vec.epilog.iter.check178 ], [ 0, %vector.main.loop.iter.check159 ]
  %n.vec181 = and i64 %.082, 9223372036854775800  ; 4 uses
  %i.dg = sub nsw i64 0, %n.vec181                ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cl, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.cu, i64 %i.dg
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph180
  %index183 = phi i64 [ %vec.epilog.resume.val174, %vec.epilog.ph180 ], [ %index.next188, %vec.epilog.vector.body182 ] ; 2 uses
  %i.dj = sub i64 0, %index183                    ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.cl, i64 %i.dj
  %next.gep185 = getelementptr i8, ptr %i.cu, i64 %i.dj
  %i.dk = getelementptr inbounds i8, ptr %next.gep185, i64 -8 ; 2 uses
  %wide.load186 = load <8 x i8>, ptr %i.dk, align 1, !tbaa !26, !alias.scope !965, !noalias !966
  %i.dl = getelementptr inbounds i8, ptr %next.gep184, i64 -8 ; 2 uses
  %wide.load187 = load <8 x i8>, ptr %i.dl, align 1, !tbaa !26, !alias.scope !966
  store <8 x i8> %wide.load187, ptr %i.dk, align 1, !tbaa !26, !alias.scope !965, !noalias !966
  store <8 x i8> %wide.load186, ptr %i.dl, align 1, !tbaa !26, !alias.scope !966
  %index.next188 = add nuw i64 %index183, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.dm, label %vec.epilog.middle.block189, label %vec.epilog.vector.body182, !llvm.loop !955

vec.epilog.middle.block189:                       ; preds = %vec.epilog.vector.body182
  %cmp.n190 = icmp eq i64 %.082, %n.vec181
  br i1 %cmp.n190, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck153, %iter.check176, %vec.epilog.iter.check178, %vec.epilog.middle.block189
  %.0104.ph = phi i64 [ 0, %iter.check176 ], [ 0, %vector.memcheck153 ], [ %n.vec162, %vec.epilog.iter.check178 ], [ %n.vec181, %vec.epilog.middle.block189 ] ; 3 uses
  %.052103.ph = phi ptr [ %i.cl, %iter.check176 ], [ %i.cl, %vector.memcheck153 ], [ %i.cy, %vec.epilog.iter.check178 ], [ %i.dh, %vec.epilog.middle.block189 ] ; 2 uses
  %.260102.ph = phi ptr [ %i.cu, %iter.check176 ], [ %i.cu, %vector.memcheck153 ], [ %i.cz, %vec.epilog.iter.check178 ], [ %i.di, %vec.epilog.middle.block189 ] ; 2 uses
  %xtraiter = and i64 %.082, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0104.prol = phi i64 [ %i.dr, %.lr.ph.prol ], [ %.0104.ph, %.lr.ph.preheader ]
  %.052103.prol = phi ptr [ %i.do, %.lr.ph.prol ], [ %.052103.ph, %.lr.ph.preheader ]
  %.260102.prol = phi ptr [ %i.dn, %.lr.ph.prol ], [ %.260102.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.dn = getelementptr inbounds i8, ptr %.260102.prol, i64 -1 ; 4 uses
end_hunk_0
