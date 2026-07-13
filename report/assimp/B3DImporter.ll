inline.NumInlined: 1740
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11B3DImporter8ReadVRTSEv:bb.a

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
  %i.cu = icmp ugt i64 %i.bk, %i.ct
  br i1 %i.cu, label %bb.t, label %._crit_edge65, !llvm.loop !70

bb.y:                                             ; preds = %.lr.ph61, %bb.ac
  %i.cv = phi i32 [ %i.cp, %.lr.ph61 ], [ %i.fs, %bb.ac ]
  %.02959 = phi i32 [ 0, %.lr.ph61 ], [ %i.ft, %bb.ac ] ; 2 uses
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
  %umax96 = tail call i128 @llvm.umax.i128(i128 %i.de, i128 %i.dg)
  %i.dh = add nuw nsw i128 %umax96, 3
  %10 = sub nsw i128 %i.dh, %i.dg
  %i.di = lshr i128 %10, 2
  %i.dj = add nsw i64 %wide.trip.count, -1
  %i.dk = zext i64 %i.dj to i128
  %umin97 = tail call i128 @llvm.umin.i128(i128 %i.di, i128 %i.dk)
  %i.dl = trunc nuw i128 %umin97 to i64
  %i.dm = add i64 %i.dl, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dm, 61
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.ew, ptr %i.b, align 8, !alias.scope !71, !noalias !74
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %vector.scevcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %vector.scevcheck ], [ %.promoted, %.lr.ph ], [ %i.ep, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.dn = zext i64 %i.dc to i128
  %i.do = add nuw nsw i128 %i.dn, 1
  %i.dp = add i64 %.promoted, 4
  %i.dq = zext i64 %i.dp to i128                  ; 2 uses
  %umax = tail call i128 @llvm.umax.i128(i128 %i.do, i128 %i.dq)
  %i.dr = add nuw nsw i128 %umax, 3
  %i.ds = sub nsw i128 %i.dr, %i.dq
  %i.dt = lshr i128 %i.ds, 2
  %i.du = add nsw i64 %wide.trip.count, -1
  %i.dv = zext i64 %i.du to i128
  %umin = tail call i128 @llvm.umin.i128(i128 %i.dt, i128 %i.dv)
  %i.dw = trunc nuw i128 %umin to i64             ; 2 uses
  %mul.result = shl i64 %i.dw, 2
  %mul.overflow = icmp ugt i64 %i.dw, 4611686018427387903
  %i.dx = sub i64 -5, %.promoted
  %i.dy = icmp ult i64 %i.dx, %mul.result
  %i.dz = or i1 %i.dy, %mul.overflow
  br i1 %i.dz, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.cz, i64 %.promoted
  %scevgep92 = getelementptr i8, ptr %i.cz, i64 4
  %i.ea = zext i64 %i.dc to i128
  %i.eb = add nuw nsw i128 %i.ea, 1
  %i.ec = add i64 %.promoted, 4
  %i.ed = zext i64 %i.ec to i128                  ; 2 uses
  %umax93 = tail call i128 @llvm.umax.i128(i128 %i.eb, i128 %i.ed)
  %i.ee = add nuw nsw i128 %umax93, 3
  %i.ef = sub nsw i128 %i.ee, %i.ed
  %i.eg = lshr i128 %i.ef, 2
  %i.eh = add nsw i64 %wide.trip.count, -1
  %i.ei = zext i64 %i.eh to i128
  %umin94 = tail call i128 @llvm.umin.i128(i128 %i.eg, i128 %i.ei)
  %i.ej = trunc nuw i128 %umin94 to i64
  %i.ek = shl i64 %i.ej, 2
  %i.el = getelementptr i8, ptr %scevgep92, i64 %.promoted
  %scevgep95 = getelementptr i8, ptr %i.el, i64 %i.ek
  %bound0 = icmp ult ptr %i.b, %scevgep95
  %bound1 = icmp ult ptr %scevgep, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.dm, 3                    ; 2 uses
  %i.em = icmp eq i64 %n.mod.vf, 0
  %i.en = select i1 %i.em, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.dm, %i.en                   ; 3 uses
  %i.eo = shl i64 %n.vec, 2
  %i.ep = add i64 %.promoted, %i.eo
  %i.eq = add i64 %.promoted, 4
  %i.er = getelementptr i8, ptr %i.cz, i64 %.promoted
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.es = phi i64 [ %i.eq, %vector.ph ], [ %i.ez, %vector.body ] ; 2 uses
  %i.et = shl i64 %index, 2
  %i.eu = getelementptr i8, ptr %i.er, i64 %i.et  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %wide.load = load <2 x float>, ptr %i.eu, align 1, !alias.scope !74
  %wide.load98 = load <2 x float>, ptr %i.ev, align 1, !alias.scope !74
  %i.ew = add i64 %i.es, 12
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store <2 x float> %wide.load, ptr %i.ex, align 16
  store <2 x float> %wide.load98, ptr %i.ey, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = add i64 %i.es, 16
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !76

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %.pre68 = load float, ptr %i.ca, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %i.fb = phi float [ %.pre68, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.y ]
  %.not38 = icmp eq i32 %.02959, 0
  br i1 %.not38, label %bb.ab, label %bb.ac

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fc = phi i64 [ %i.fd, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fd = add i64 %i.fc, 4                        ; 3 uses
  %i.fe = icmp ugt i64 %i.fd, %i.dc
  br i1 %i.fe, label %._crit_edge.i.i, label %_ZN6Assimp11B3DImporter9ReadFloatEv.exit

._crit_edge.i.i:                                  ; preds = %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.ff, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ff, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.fh, align 1
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %1, align 8               ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ff
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %bb.aa
  %i.fl = load i64, ptr %i.ff, align 8
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %common.resume

_ZN6Assimp11B3DImporter9ReadFloatEv.exit:         ; preds = %scalar.ph
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.fc
  %.0.copyload.i52 = load float, ptr %i.fn, align 1
  store i64 %i.fd, ptr %i.b, align 8
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %.0.copyload.i52, ptr %i.fo, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !77

bb.ab:                                            ; preds = %._crit_edge
  %i.fp = fsub float 1.000000e+00, %i.fb
  %i.fq = load float, ptr %i.a, align 16
  %i.fr = load float, ptr %i.cb, align 8
  store float %i.fq, ptr %i.cr, align 4
  store float %i.fp, ptr %.sroa.4.0..sroa_idx56, align 4
  store float %i.fr, ptr %.sroa.5.0..sroa_idx, align 4
  %.pre69 = load i32, ptr %i.ad, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  %i.fs = phi i32 [ %.pre69, %bb.ab ], [ %i.cv, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ft = add nuw nsw i32 %.02959, 1              ; 2 uses
  %i.fu = icmp slt i32 %i.ft, %i.fs
  br i1 %i.fu, label %bb.y, label %._crit_edge62, !llvm.loop !78
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 4                          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %_ZN6Assimp11B3DImporter7ReadIntEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
end_hunk_0
begin_hunk_1_@_ZN11aiAnimationD2Ev:bb.a
  %i.t = phi i32 [ %i.f, %.lr.ph ], [ %.pre, %_ZN10aiNodeAnimD2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !210

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %.pre41) #25
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j, %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %.not18 = icmp eq i32 %i.x, 0
  br i1 %.not18, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8
  %.not19 = icmp eq ptr %i.z, null
  br i1 %.not19, label %bb.q, label %.lr.ph26

._crit_edge27:                                    ; preds = %bb.o
  %.pre43 = load ptr, ptr %i.y, align 8           ; 2 uses
  %i.aa = icmp eq ptr %.pre43, null
  br i1 %i.aa, label %bb.q, label %bb.p

.lr.ph26:                                         ; preds = %bb.l, %bb.o
  %i.ab = phi i32 [ %i.aj, %bb.o ], [ %i.x, %bb.l ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.o ], [ 0, %bb.l ] ; 2 uses
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv35
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1032
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN10aiMeshAnimD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.ah) #25
  br label %_ZN10aiMeshAnimD2Ev.exit

_ZN10aiMeshAnimD2Ev.exit:                         ; preds = %bb.m, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 1040) #25
  %.pre42 = load i32, ptr %i.w, align 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph26, %_ZN10aiMeshAnimD2Ev.exit
  %i.aj = phi i32 [ %i.ab, %.lr.ph26 ], [ %.pre42, %_ZN10aiMeshAnimD2Ev.exit ] ; 2 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next36, %i.ak
  br i1 %i.al, label %.lr.ph26, label %._crit_edge27, !llvm.loop !211

bb.p:                                             ; preds = %._crit_edge27
  tail call void @_ZdaPv(ptr noundef nonnull %.pre43) #25
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge27, %bb.p, %bb.l, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8            ; 2 uses
  %.not20 = icmp eq i32 %i.an, 0
  br i1 %.not20, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not21 = icmp eq ptr %i.ap, null
  br i1 %.not21, label %bb.aa, label %.lr.ph29

._crit_edge30:                                    ; preds = %bb.y
  %.pre45 = load ptr, ptr %i.ao, align 8          ; 2 uses
  %i.aq = icmp eq ptr %.pre45, null
  br i1 %i.aq, label %bb.aa, label %bb.z

.lr.ph29:                                         ; preds = %bb.r, %bb.y
  %i.ar = phi i32 [ %i.bp, %bb.y ], [ %i.an, %bb.r ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %bb.y ], [ 0, %bb.r ] ; 2 uses
  %i.as = load ptr, ptr %i.ao, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv38
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.y, label %bb.s

bb.s:                                             ; preds = %.lr.ph29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1032
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN15aiMeshMorphAnimD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %.idx.i = shl i64 %i.ba, 5                      ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.t
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN14aiMeshMorphKeyD2Ev.exit.i, %.preheader.preheader.i
  %i.bd = phi ptr [ %i.be, %_ZN14aiMeshMorphKeyD2Ev.exit.i ], [ %i.bc, %.preheader.preheader.i ] ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -32 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bg = load i32, ptr %i.bf, align 8
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %_ZN14aiMeshMorphKeyD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %.preheader.i
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 -24
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not2.i.i = icmp eq ptr %i.bi, null
  br i1 %.not2.i.i, label %_ZN14aiMeshMorphKeyD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds i8, ptr %i.bd, i64 -16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %.not3.i.i = icmp eq ptr %i.bk, null
  br i1 %.not3.i.i, label %_ZN14aiMeshMorphKeyD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZdaPv(ptr noundef nonnull %i.bi) #25
  %i.bl = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN14aiMeshMorphKeyD2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.bl) #25
  br label %_ZN14aiMeshMorphKeyD2Ev.exit.i

_ZN14aiMeshMorphKeyD2Ev.exit.i:                   ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %.preheader.i
  %i.bn = icmp eq ptr %i.be, %i.ax
  br i1 %i.bn, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %_ZN14aiMeshMorphKeyD2Ev.exit.i, %bb.t
  %i.bo = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.az, i64 noundef %i.bo) #25
  br label %_ZN15aiMeshMorphAnimD2Ev.exit

_ZN15aiMeshMorphAnimD2Ev.exit:                    ; preds = %bb.s, %.loopexit.i
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef 1040) #25
  %.pre44 = load i32, ptr %i.am, align 8
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph29, %_ZN15aiMeshMorphAnimD2Ev.exit
  %i.bp = phi i32 [ %i.ar, %.lr.ph29 ], [ %.pre44, %_ZN15aiMeshMorphAnimD2Ev.exit ] ; 2 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next39, %i.bq
  br i1 %i.br, label %.lr.ph29, label %._crit_edge30, !llvm.loop !212

bb.z:                                             ; preds = %._crit_edge30
  tail call void @_ZdaPv(ptr noundef nonnull %.pre45) #25
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge30, %bb.z, %bb.r, %bb.q
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: nounwind
declare void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144)) unnamed_addr #5

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umax.i128(i128, i128) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!11 = distinct !{!11, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!12 = distinct !{null}
!13 = distinct !{null, null}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!19 = distinct !{!19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!22 = distinct !{!22, !4, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !4, !23}
!26 = !{!27}
!27 = distinct !{!27, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0:It1"}
!28 = !{!29}
!29 = distinct !{!29, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1:It1"}
!30 = distinct !{!30, !4, !23, !24}
!31 = distinct !{!31, !4, !23}
!32 = !{!33}
!33 = distinct !{!33, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0:It2"}
!34 = !{!35}
!35 = distinct !{!35, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1:It2"}
!36 = distinct !{!36, !4, !23, !24}
!37 = distinct !{!37, !4, !23}
!38 = !{!39}
!39 = distinct !{!39, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0:It3"}
!40 = !{!41}
!41 = distinct !{!41, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1:It3"}
!42 = distinct !{!42, !4, !23, !24}
!43 = distinct !{!43, !4, !23}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !4}
!47 = distinct !{!47, !4}
!48 = distinct !{!48, !4}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4}
!54 = distinct !{!54, !4}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZSt19__relocate_object_aISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!57 = distinct !{!57, !"_ZSt19__relocate_object_aISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"_ZSt19__relocate_object_aISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!60 = !{!59, !61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!56, !64}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !4, !23, !24}
!66 = distinct !{!66, !4, !23}
!67 = distinct !{!67, !4, !68}
!68 = !{!"llvm.loop.peeled.count", i32 1}
!69 = distinct !{!69, !4}
!70 = distinct !{!70, !4}
!71 = !{!72}
!72 = distinct !{!72, !73}
!73 = distinct !{!73, !"LVerDomain"}
!74 = !{!75}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !4, !23, !24}
!77 = distinct !{!77, !4, !23}
!78 = distinct !{!78, !4}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZSt19__relocate_object_aISt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!83 = distinct !{!83, !"_ZSt19__relocate_object_aISt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"_ZSt19__relocate_object_aISt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!86 = !{!85, !87}
!87 = distinct !{!87, !88}
!88 = distinct !{!88, !"LVerDomain"}
!89 = !{!82, !90}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !4, !23, !24}
!92 = distinct !{!92, !4, !23}
!93 = distinct !{!93, !4}
!94 = distinct !{!94, !4}
!95 = distinct !{!95, !4}
!96 = !{!97, !99}
!97 = distinct !{!97, !98, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!98 = distinct !{!98, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!99 = distinct !{!99, !98, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!100 = distinct !{!100, !4}
!101 = !{!102, !104}
!102 = distinct !{!102, !103, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!103 = distinct !{!103, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!104 = distinct !{!104, !103, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!107 = distinct !{!107, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!108 = distinct !{!108, !107, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!109 = distinct !{!109, !4}
!110 = distinct !{!110, !4}
!111 = distinct !{!111, !4}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZSt19__relocate_object_aISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!114 = distinct !{!114, !"_ZSt19__relocate_object_aISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!115 = !{!116}
!116 = distinct !{!116, !114, !"_ZSt19__relocate_object_aISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!117 = !{!116, !118}
!118 = distinct !{!118, !119}
!119 = distinct !{!119, !"LVerDomain"}
!120 = !{!113, !121}
!121 = distinct !{!121, !119}
!122 = distinct !{!122, !4, !23, !24}
!123 = distinct !{!123, !4, !23}
!124 = distinct !{!124, !4}
!125 = distinct !{!125, !4}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZSt19__relocate_object_aISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!128 = distinct !{!128, !"_ZSt19__relocate_object_aISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"_ZSt19__relocate_object_aISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!131 = !{!130, !132}
!132 = distinct !{!132, !133}
!133 = distinct !{!133, !"LVerDomain"}
!134 = !{!127, !135}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !4, !23, !24}
!137 = distinct !{!137, !4, !23}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!140 = distinct !{!140, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!143 = distinct !{!143, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!146 = distinct !{!146, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!149 = distinct !{!149, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!150 = !{!148, !145, !142, !139}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!153 = distinct !{!153, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!156 = distinct !{!156, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!159 = distinct !{!159, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!160 = !{!158, !155, !152}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!163 = distinct !{!163, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!164 = !{!165}
end_hunk_1
