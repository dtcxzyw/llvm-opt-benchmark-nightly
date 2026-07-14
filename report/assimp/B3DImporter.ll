inline.NumInlined: 1740
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11B3DImporter8ReadVRTSEv:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  store i32 %.0.copyload.i42, ptr %i.ad, align 4
  %i.ae = add i64 %i.c, 12                        ; 3 uses
  %i.af = icmp ugt i64 %i.ae, %i.k
  br i1 %i.af, label %bb.h, label %_ZN6Assimp11B3DImporter7ReadIntEv.exit51

bb.h:                                             ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
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
  %i.cu = icmp ugt i64 %i.bk, %i.ct
  br i1 %i.cu, label %bb.t, label %._crit_edge65, !llvm.loop !70

bb.y:                                             ; preds = %.lr.ph61, %bb.ac
  %i.cv = phi i32 [ %i.cp, %.lr.ph61 ], [ %i.fu, %bb.ac ]
  %.02959 = phi i32 [ 0, %.lr.ph61 ], [ %i.fv, %bb.ac ] ; 2 uses
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
  %i.dg = zext i64 %i.df to i128
  %i.dh = tail call i128 @llvm.usub.sat.i128(i128 %i.de, i128 %i.dg)
  %i.di = add nuw nsw i128 %i.dh, 3
  %i.dj = lshr i128 %i.di, 2
  %i.dk = add nsw i64 %wide.trip.count, -1
  %i.dl = zext i64 %i.dk to i128
  %i.dm = tail call i128 @llvm.umin.i128(i128 %i.dj, i128 %i.dl)
  %i.dn = trunc nuw i128 %i.dm to i64
  %i.do = add i64 %i.dn, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.do, 61
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.ey, ptr %i.b, align 8, !alias.scope !71, !noalias !74
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %vector.scevcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %vector.scevcheck ], [ %.promoted, %.lr.ph ], [ %i.er, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.dp = zext i64 %i.dc to i128
  %i.dq = add nuw nsw i128 %i.dp, 1
  %i.dr = add i64 %.promoted, 4
  %i.ds = zext i64 %i.dr to i128                  ; 2 uses
  %umax = tail call i128 @llvm.umax.i128(i128 %i.dq, i128 %i.ds)
  %i.dt = add nuw nsw i128 %umax, 3
  %i.du = sub nsw i128 %i.dt, %i.ds
  %i.dv = lshr i128 %i.du, 2
  %i.dw = add nsw i64 %wide.trip.count, -1
  %i.dx = zext i64 %i.dw to i128
  %umin = tail call i128 @llvm.umin.i128(i128 %i.dv, i128 %i.dx)
  %i.dy = trunc nuw i128 %umin to i64             ; 2 uses
  %mul.result = shl i64 %i.dy, 2
  %mul.overflow = icmp ugt i64 %i.dy, 4611686018427387903
  %i.dz = sub i64 -5, %.promoted
  %i.ea = icmp ult i64 %i.dz, %mul.result
  %i.eb = or i1 %i.ea, %mul.overflow
  br i1 %i.eb, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.cz, i64 %.promoted
  %scevgep92 = getelementptr i8, ptr %i.cz, i64 4
  %i.ec = zext i64 %i.dc to i128
  %i.ed = add nuw nsw i128 %i.ec, 1
  %i.ee = add i64 %.promoted, 4
  %i.ef = zext i64 %i.ee to i128                  ; 2 uses
  %umax93 = tail call i128 @llvm.umax.i128(i128 %i.ed, i128 %i.ef)
  %i.eg = add nuw nsw i128 %umax93, 3
  %i.eh = sub nsw i128 %i.eg, %i.ef
  %i.ei = lshr i128 %i.eh, 2
  %i.ej = add nsw i64 %wide.trip.count, -1
  %i.ek = zext i64 %i.ej to i128
  %umin94 = tail call i128 @llvm.umin.i128(i128 %i.ei, i128 %i.ek)
  %i.el = trunc nuw i128 %umin94 to i64
  %i.em = shl i64 %i.el, 2
  %i.en = getelementptr i8, ptr %scevgep92, i64 %.promoted
  %scevgep95 = getelementptr i8, ptr %i.en, i64 %i.em
  %bound0 = icmp ult ptr %i.b, %scevgep95
  %bound1 = icmp ult ptr %scevgep, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.do, 3                    ; 2 uses
  %i.eo = icmp eq i64 %n.mod.vf, 0
  %i.ep = select i1 %i.eo, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.do, %i.ep                   ; 3 uses
  %i.eq = shl i64 %n.vec, 2
  %i.er = add i64 %.promoted, %i.eq
  %i.es = add i64 %.promoted, 4
  %i.et = getelementptr i8, ptr %i.cz, i64 %.promoted
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eu = phi i64 [ %i.es, %vector.ph ], [ %i.fb, %vector.body ] ; 2 uses
  %i.ev = shl i64 %index, 2
  %i.ew = getelementptr i8, ptr %i.et, i64 %i.ev  ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %wide.load = load <2 x float>, ptr %i.ew, align 1, !alias.scope !74
  %wide.load96 = load <2 x float>, ptr %i.ex, align 1, !alias.scope !74
  %i.ey = add i64 %i.eu, 12
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store <2 x float> %wide.load, ptr %i.ez, align 16
  store <2 x float> %wide.load96, ptr %i.fa, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = add i64 %i.eu, 16
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !76

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %.pre68 = load float, ptr %i.ca, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %i.fd = phi float [ %.pre68, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.y ]
  %.not38 = icmp eq i32 %.02959, 0
  br i1 %.not38, label %bb.ab, label %bb.ac

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fe = phi i64 [ %i.ff, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ff = add i64 %i.fe, 4                        ; 3 uses
  %i.fg = icmp ugt i64 %i.ff, %i.dc
  br i1 %i.fg, label %._crit_edge.i.i, label %_ZN6Assimp11B3DImporter9ReadFloatEv.exit

._crit_edge.i.i:                                  ; preds = %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.fh, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.fh, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.fj, align 1
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = load ptr, ptr %1, align 8               ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.fh
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %bb.aa
  %i.fn = load i64, ptr %i.fh, align 8
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %common.resume

_ZN6Assimp11B3DImporter9ReadFloatEv.exit:         ; preds = %scalar.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.fe
  %.0.copyload.i52 = load float, ptr %i.fp, align 1
  store i64 %i.ff, ptr %i.b, align 8
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %.0.copyload.i52, ptr %i.fq, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !77

bb.ab:                                            ; preds = %._crit_edge
  %i.fr = fsub float 1.000000e+00, %i.fd
  %i.fs = load float, ptr %i.a, align 16
  %i.ft = load float, ptr %i.cb, align 8
  store float %i.fs, ptr %i.cr, align 4
  store float %i.fr, ptr %.sroa.4.0..sroa_idx56, align 4
  store float %i.ft, ptr %.sroa.5.0..sroa_idx, align 4
  %.pre69 = load i32, ptr %i.ad, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  %i.fu = phi i32 [ %.pre69, %bb.ab ], [ %i.cv, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.fv = add nuw nsw i32 %.02959, 1              ; 2 uses
  %i.fw = icmp slt i32 %i.fv, %i.fu
  br i1 %i.fw, label %bb.y, label %._crit_edge62, !llvm.loop !78
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11B3DImporter8ReadTRISEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
end_hunk_0
