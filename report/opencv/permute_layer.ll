Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/permute_layer?download=true
inline.NumInlined: 874
inline.NumDeleted: 296
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK2cv3dnn16PermuteLayerImpl14PermuteInvokerIfEclERKNS_5RangeE:bb.a
  %i.g = icmp sgt i32 %i.d, 1
  br i1 %i.g, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 97) #21
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %6, align 8, !tbaa !54     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !48
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i73 ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.o = load i32, ptr %i.n, align 4, !tbaa !103  ; 2 uses
  %.not85 = icmp eq i32 %i.d, 2
  br i1 %.not85, label %bb.e, label %_ZN2cv8MatShapeixEm.exit75

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 97) #21
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !48
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i73: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit75:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !103  ; 2 uses
  %i.x = icmp samesign ugt i32 %i.d, 3
  br i1 %i.x, label %_ZN2cv8MatShapeixEm.exit81, label %bb.h

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 97) #21
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78: ; preds = %bb.j
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !48
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit81:                       ; preds = %_ZN2cv8MatShapeixEm.exit75
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !103 ; 3 uses
  %i.ag = sext i32 %i.f to i64
  %i.ah = sext i32 %i.o to i64                    ; 3 uses
  %i.ai = mul nsw i64 %i.ah, %i.ag
  %i.aj = sext i32 %i.w to i64                    ; 3 uses
  %i.ak = mul i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !118
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = add i64 %i.ak, -1
  %i.ap = add i64 %i.ao, %i.an
  %i.aq = udiv i64 %i.ap, %i.an                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !121
  %i.at = sext i32 %i.as to i64
  %i.au = mul i64 %i.aq, %i.at
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.au) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !60
  %i.ax = lshr i64 %i.aw, 2                       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !60
  %i.ba = lshr i64 %i.az, 2                       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !60
  %i.bd = lshr i64 %i.bc, 2                       ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !117 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !62
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !63 ; 5 uses
  %.not.i.i.not = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.not, label %bb.k, label %_ZNKSt6vectorImSaImEE2atEm.exit

bb.k:                                             ; preds = %_ZN2cv8MatShapeixEm.exit81
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.30, i64 noundef 0, i64 noundef 0) #21
  unreachable

_ZNKSt6vectorImSaImEE2atEm.exit:                  ; preds = %_ZN2cv8MatShapeixEm.exit81
  %i.bj = load i32, ptr %1, align 4, !tbaa !120
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %i.aq, %i.bk                    ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !115 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 128 ; 4 uses
  %i.bp = load i64, ptr %i.bi, align 8, !tbaa !60
  %i.bq = shl i64 %i.bp, 32
  %i.br = ashr exact i64 %i.bq, 29
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !60
  %i.bu = lshr i64 %i.bt, 2                       ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !60
  %i.bx = shl i64 %i.bw, 32
  %i.by = ashr exact i64 %i.bx, 29
  %i.bz = getelementptr inbounds i8, ptr %i.bo, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !60
  %i.cb = lshr i64 %i.ca, 2                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !60
  %i.ce = shl i64 %i.cd, 32
  %i.cf = ashr exact i64 %i.ce, 29
  %i.cg = getelementptr inbounds i8, ptr %i.bo, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !60
  %i.ci = lshr i64 %i.ch, 2                       ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !60
  %i.cl = shl i64 %i.ck, 32
  %i.cm = ashr exact i64 %i.cl, 29
  %i.cn = getelementptr inbounds i8, ptr %i.bo, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !60
  %i.cp = lshr i64 %i.co, 2                       ; 10 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !95 ; 2 uses
  %i.cu = icmp ult i64 %i.bl, %.sroa.speculated
  %i.cv = icmp sgt i32 %i.af, 0
  %or.cond = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond, label %.lr.ph.us.preheader, label %.critedge

.lr.ph.us.preheader:                              ; preds = %_ZNKSt6vectorImSaImEE2atEm.exit
  %i.cw = urem i64 %i.bl, %i.aj
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = udiv i64 %i.bl, %i.aj                   ; 2 uses
  %i.cz = urem i64 %i.cy, %i.ah
  %i.da = trunc i64 %i.cz to i32
  %i.db = udiv i64 %i.cy, %i.ah
  %i.dc = trunc i64 %i.db to i32
  %wide.trip.count = zext nneg i32 %i.af to i64   ; 7 uses
  %i.dd = add nuw nsw i64 %wide.trip.count, 4611686018427387903
  %i.de = mul i64 %i.cp, %i.dd
  %8 = shl i64 %i.de, 2
  %scevgep = getelementptr i8, ptr %i.cr, i64 %8
  %9 = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep112 = getelementptr i8, ptr %i.ct, i64 %9
  %min.iters.check = icmp ult i32 %i.af, 48
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.n
  %.05490.us = phi i64 [ %i.gg, %bb.n ], [ %i.bl, %.lr.ph.us.preheader ]
  %.05589.us = phi i32 [ %.2.us, %bb.n ], [ %i.dc, %.lr.ph.us.preheader ] ; 4 uses
  %.05688.us = phi i32 [ %.258.us, %bb.n ], [ %i.da, %.lr.ph.us.preheader ] ; 3 uses
  %.05987.us = phi i32 [ %.261.us, %bb.n ], [ %i.cx, %.lr.ph.us.preheader ] ; 2 uses
  %i.df = sext i32 %.05589.us to i64              ; 4 uses
  %i.dg = mul i64 %i.bu, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.dg
  %i.di = sext i32 %.05688.us to i64              ; 4 uses
  %i.dj = mul i64 %i.cb, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dj
  %i.dl = sext i32 %.05987.us to i64              ; 4 uses
  %i.dm = mul i64 %i.ci, %i.dl
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dm ; 13 uses
  %i.do = mul i64 %i.ax, %i.df
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.do
  %i.dq = mul i64 %i.ba, %i.di
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = mul i64 %i.bd, %i.dl
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ds ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %i.du = mul i64 %i.ax, %i.df
  %i.dv = mul i64 %i.ba, %i.di
  %i.dw = mul i64 %i.bd, %i.dl
  %i.dx = add i64 %i.du, %i.dv
  %i.dy = add i64 %i.dx, %i.dw
  %i.dz = shl i64 %i.dy, 2
  %i.ea = getelementptr i8, ptr %scevgep112, i64 %i.dz
  %i.eb = mul i64 %i.bu, %i.df
  %i.ec = mul i64 %i.cb, %i.di
  %i.ed = mul i64 %i.ci, %i.dl
  %i.ee = add i64 %i.eb, %i.ec
  %i.ef = add i64 %i.ee, %i.ed
  %i.eg = shl i64 %i.ef, 2
  %i.eh = getelementptr i8, ptr %scevgep, i64 %i.eg ; 4 uses
  %i.ei = icmp ult ptr %i.eh, %i.dn
  %i.ej = select i1 %i.ei, ptr %i.eh, ptr %i.dn
  %i.ek = icmp ugt ptr %i.eh, %i.dn
  %i.el = select i1 %i.ek, ptr %i.eh, ptr %i.dn
  %i.em = getelementptr i8, ptr %i.el, i64 4
  %bound0 = icmp ult ptr %i.dt, %i.em
  %bound1 = icmp ult ptr %i.ej, %i.ea
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.en = or disjoint i64 %index, 1
  %i.eo = or disjoint i64 %index, 2
  %i.ep = or disjoint i64 %index, 3
  %i.eq = mul i64 %i.cp, %index
  %i.er = mul i64 %i.cp, %i.en
  %i.es = mul i64 %i.cp, %i.eo
  %i.et = mul i64 %i.cp, %i.ep
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.eq
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.er
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.es
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.et
  %i.ey = load float, ptr %i.eu, align 4, !tbaa !107, !alias.scope !224
  %i.ez = load float, ptr %i.ev, align 4, !tbaa !107, !alias.scope !224
  %i.fa = load float, ptr %i.ew, align 4, !tbaa !107, !alias.scope !224
  %i.fb = load float, ptr %i.ex, align 4, !tbaa !107, !alias.scope !224
  %i.fc = insertelement <4 x float> poison, float %i.ey, i64 0
  %i.fd = insertelement <4 x float> %i.fc, float %i.ez, i64 1
  %i.fe = insertelement <4 x float> %i.fd, float %i.fa, i64 2
  %i.ff = insertelement <4 x float> %i.fe, float %i.fb, i64 3
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index
  store <4 x float> %i.ff, ptr %i.fg, align 4, !tbaa !107, !alias.scope !225, !noalias !224
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fi = mul i64 %i.cp, %indvars.iv.prol
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !107
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.prol
  store float %i.fk, ptr %i.fl, align 4, !tbaa !107
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !221

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.fm = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fn = icmp ugt i64 %i.fm, -4
  br i1 %i.fn, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fo = mul i64 %i.cp, %indvars.iv
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.fo
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !107
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv
  store float %i.fq, ptr %i.fr, align 4, !tbaa !107
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fs = mul i64 %i.cp, %indvars.iv.next
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !107
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next
  store float %i.fu, ptr %i.fv, align 4, !tbaa !107
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fw = mul i64 %i.cp, %indvars.iv.next.1
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.fw
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !107
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next.1
  store float %i.fy, ptr %i.fz, align 4, !tbaa !107
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ga = mul i64 %i.cp, %indvars.iv.next.2
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !107
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next.2
  store float %i.gc, ptr %i.gd, align 4, !tbaa !107
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !222

bb.l:                                             ; preds = %._crit_edge.us
  %i.ge = add nsw i32 %.05688.us, 1               ; 2 uses
  %.not66.us = icmp slt i32 %i.ge, %i.o
  br i1 %.not66.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gf = add nsw i32 %.05589.us, 1               ; 2 uses
  %.not67.us = icmp slt i32 %i.gf, %i.f
  br i1 %.not67.us, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.us
  %.261.us = phi i32 [ %i.gi, %._crit_edge.us ], [ 0, %bb.l ], [ 0, %bb.m ]
  %.258.us = phi i32 [ %.05688.us, %._crit_edge.us ], [ %i.ge, %bb.l ], [ 0, %bb.m ]
  %.2.us = phi i32 [ %.05589.us, %._crit_edge.us ], [ %.05589.us, %bb.l ], [ %i.gf, %bb.m ]
  %i.gg = add nuw i64 %.05490.us, 1               ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %.sroa.speculated
  br i1 %i.gh, label %.lr.ph.us, label %.critedge, !llvm.loop !223

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gi = add nsw i32 %.05987.us, 1               ; 2 uses
  %.not.us = icmp slt i32 %i.gi, %i.w
  br i1 %.not.us, label %bb.n, label %bb.l

.critedge:                                        ; preds = %bb.n, %bb.m, %_ZNKSt6vectorImSaImEE2atEm.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16PermuteLayerImpl14PermuteInvokerIsE3runERKNS_3MatERS4_RKSt6vectorImSaImEEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %18 = alloca %"class.cv::dnn::PermuteLayerImpl::PermuteInvoker.28", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16PermuteLayerImpl14PermuteInvokerIsEE, i64 16), ptr %18, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i32 %3, ptr %i.d, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !102  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %2, align 8, !tbaa !63     ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !102
  %narrow.i24 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %spec.select.i25 = zext nneg i32 %narrow.i24 to i64 ; 4 uses
  %i.k = icmp ult i64 %i.i, %spec.select.i25
  br i1 %i.k, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 103) #21
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %16, align 8, !tbaa !54    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !48
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.body

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.s = load i32, ptr %i.r, align 4, !tbaa !103
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK2cv3dnn16PermuteLayerImpl14PermuteInvokerIsEclERKNS_5RangeE:bb.a
  %i.g = icmp sgt i32 %i.d, 1
  br i1 %i.g, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 97) #21
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %6, align 8, !tbaa !54     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !48
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i73 ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.o = load i32, ptr %i.n, align 4, !tbaa !103  ; 2 uses
  %.not85 = icmp eq i32 %i.d, 2
  br i1 %.not85, label %bb.e, label %_ZN2cv8MatShapeixEm.exit75

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 97) #21
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !48
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i73: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit75:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !103  ; 2 uses
  %i.x = icmp samesign ugt i32 %i.d, 3
  br i1 %i.x, label %_ZN2cv8MatShapeixEm.exit81, label %bb.h

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 97) #21
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78: ; preds = %bb.j
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !48
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit81:                       ; preds = %_ZN2cv8MatShapeixEm.exit75
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !103 ; 3 uses
  %i.ag = sext i32 %i.f to i64
  %i.ah = sext i32 %i.o to i64                    ; 3 uses
  %i.ai = mul nsw i64 %i.ah, %i.ag
  %i.aj = sext i32 %i.w to i64                    ; 3 uses
  %i.ak = mul i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !126
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = add i64 %i.ak, -1
  %i.ap = add i64 %i.ao, %i.an
  %i.aq = udiv i64 %i.ap, %i.an                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !121
  %i.at = sext i32 %i.as to i64
  %i.au = mul i64 %i.aq, %i.at
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.au) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !60
  %i.ax = lshr i64 %i.aw, 1                       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !60
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !60
  %i.bd = lshr i64 %i.bc, 1                       ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !125 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !62
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !63 ; 5 uses
  %.not.i.i.not = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.not, label %bb.k, label %_ZNKSt6vectorImSaImEE2atEm.exit

bb.k:                                             ; preds = %_ZN2cv8MatShapeixEm.exit81
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.30, i64 noundef 0, i64 noundef 0) #21
  unreachable

_ZNKSt6vectorImSaImEE2atEm.exit:                  ; preds = %_ZN2cv8MatShapeixEm.exit81
  %i.bj = load i32, ptr %1, align 4, !tbaa !120
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %i.aq, %i.bk                    ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !123 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 128 ; 4 uses
  %i.bp = load i64, ptr %i.bi, align 8, !tbaa !60
  %i.bq = shl i64 %i.bp, 32
  %i.br = ashr exact i64 %i.bq, 29
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !60
  %i.bu = lshr i64 %i.bt, 1                       ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !60
  %i.bx = shl i64 %i.bw, 32
  %i.by = ashr exact i64 %i.bx, 29
  %i.bz = getelementptr inbounds i8, ptr %i.bo, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !60
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !60
  %i.ce = shl i64 %i.cd, 32
  %i.cf = ashr exact i64 %i.ce, 29
  %i.cg = getelementptr inbounds i8, ptr %i.bo, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !60
  %i.ci = lshr i64 %i.ch, 1                       ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !60
  %i.cl = shl i64 %i.ck, 32
  %i.cm = ashr exact i64 %i.cl, 29
  %i.cn = getelementptr inbounds i8, ptr %i.bo, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !60
  %i.cp = lshr i64 %i.co, 1                       ; 14 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !95 ; 2 uses
  %i.cu = icmp ult i64 %i.bl, %.sroa.speculated
  %i.cv = icmp sgt i32 %i.af, 0
  %or.cond = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond, label %.lr.ph.us.preheader, label %.critedge

.lr.ph.us.preheader:                              ; preds = %_ZNKSt6vectorImSaImEE2atEm.exit
  %i.cw = urem i64 %i.bl, %i.aj
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = udiv i64 %i.bl, %i.aj                   ; 2 uses
  %i.cz = urem i64 %i.cy, %i.ah
  %i.da = trunc i64 %i.cz to i32
  %i.db = udiv i64 %i.cy, %i.ah
  %i.dc = trunc i64 %i.db to i32
  %wide.trip.count = zext nneg i32 %i.af to i64   ; 7 uses
  %i.dd = add nuw i64 %wide.trip.count, 9223372036854775807
  %i.de = mul i64 %i.cp, %i.dd
  %8 = shl i64 %i.de, 1
  %scevgep = getelementptr i8, ptr %i.cr, i64 %8
  %9 = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep112 = getelementptr i8, ptr %i.ct, i64 %9
  %min.iters.check = icmp ult i32 %i.af, 24
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.n
  %.05490.us = phi i64 [ %i.ha, %bb.n ], [ %i.bl, %.lr.ph.us.preheader ]
  %.05589.us = phi i32 [ %.2.us, %bb.n ], [ %i.dc, %.lr.ph.us.preheader ] ; 4 uses
  %.05688.us = phi i32 [ %.258.us, %bb.n ], [ %i.da, %.lr.ph.us.preheader ] ; 3 uses
  %.05987.us = phi i32 [ %.261.us, %bb.n ], [ %i.cx, %.lr.ph.us.preheader ] ; 2 uses
  %i.df = sext i32 %.05589.us to i64              ; 4 uses
  %i.dg = mul i64 %i.bu, %i.df
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.dg
  %i.di = sext i32 %.05688.us to i64              ; 4 uses
  %i.dj = mul i64 %i.cb, %i.di
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.dj
  %i.dl = sext i32 %.05987.us to i64              ; 4 uses
  %i.dm = mul i64 %i.ci, %i.dl
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.dm ; 17 uses
  %i.do = mul i64 %i.ax, %i.df
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.do
  %i.dq = mul i64 %i.ba, %i.di
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = mul i64 %i.bd, %i.dl
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ds ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %i.du = mul i64 %i.ax, %i.df
  %i.dv = mul i64 %i.ba, %i.di
  %i.dw = mul i64 %i.bd, %i.dl
  %i.dx = add i64 %i.du, %i.dv
  %i.dy = add i64 %i.dx, %i.dw
  %i.dz = shl i64 %i.dy, 1
  %i.ea = getelementptr i8, ptr %scevgep112, i64 %i.dz
  %i.eb = mul i64 %i.bu, %i.df
  %i.ec = mul i64 %i.cb, %i.di
  %i.ed = mul i64 %i.ci, %i.dl
  %i.ee = add i64 %i.eb, %i.ec
  %i.ef = add i64 %i.ee, %i.ed
  %i.eg = shl i64 %i.ef, 1
  %i.eh = getelementptr i8, ptr %scevgep, i64 %i.eg ; 4 uses
  %i.ei = icmp ult ptr %i.eh, %i.dn
  %i.ej = select i1 %i.ei, ptr %i.eh, ptr %i.dn
  %i.ek = icmp ugt ptr %i.eh, %i.dn
  %i.el = select i1 %i.ek, ptr %i.eh, ptr %i.dn
  %i.em = getelementptr i8, ptr %i.el, i64 2
  %bound0 = icmp ult ptr %i.dt, %i.em
  %bound1 = icmp ult ptr %i.ej, %i.ea
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.en = or disjoint i64 %index, 1
  %i.eo = or disjoint i64 %index, 2
  %i.ep = or disjoint i64 %index, 3
  %i.eq = or disjoint i64 %index, 4
  %i.er = or disjoint i64 %index, 5
  %i.es = or disjoint i64 %index, 6
  %i.et = or disjoint i64 %index, 7
  %i.eu = mul i64 %i.cp, %index
  %i.ev = mul i64 %i.cp, %i.en
  %i.ew = mul i64 %i.cp, %i.eo
  %i.ex = mul i64 %i.cp, %i.ep
  %i.ey = mul i64 %i.cp, %i.eq
  %i.ez = mul i64 %i.cp, %i.er
  %i.fa = mul i64 %i.cp, %i.es
  %i.fb = mul i64 %i.cp, %i.et
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.eu
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.ev
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.ew
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.ex
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.ey
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.ez
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.fa
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.fb
  %i.fk = load i16, ptr %i.fc, align 2, !tbaa !109, !alias.scope !233
  %i.fl = load i16, ptr %i.fd, align 2, !tbaa !109, !alias.scope !233
  %i.fm = load i16, ptr %i.fe, align 2, !tbaa !109, !alias.scope !233
  %i.fn = load i16, ptr %i.ff, align 2, !tbaa !109, !alias.scope !233
  %i.fo = load i16, ptr %i.fg, align 2, !tbaa !109, !alias.scope !233
  %i.fp = load i16, ptr %i.fh, align 2, !tbaa !109, !alias.scope !233
  %i.fq = load i16, ptr %i.fi, align 2, !tbaa !109, !alias.scope !233
  %i.fr = load i16, ptr %i.fj, align 2, !tbaa !109, !alias.scope !233
  %i.fs = insertelement <8 x i16> poison, i16 %i.fk, i64 0
  %i.ft = insertelement <8 x i16> %i.fs, i16 %i.fl, i64 1
  %i.fu = insertelement <8 x i16> %i.ft, i16 %i.fm, i64 2
  %i.fv = insertelement <8 x i16> %i.fu, i16 %i.fn, i64 3
  %i.fw = insertelement <8 x i16> %i.fv, i16 %i.fo, i64 4
  %i.fx = insertelement <8 x i16> %i.fw, i16 %i.fp, i64 5
  %i.fy = insertelement <8 x i16> %i.fx, i16 %i.fq, i64 6
  %i.fz = insertelement <8 x i16> %i.fy, i16 %i.fr, i64 7
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %index
  store <8 x i16> %i.fz, ptr %i.ga, align 2, !tbaa !109, !alias.scope !234, !noalias !233
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gc = mul i64 %i.cp, %indvars.iv.prol
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !109
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %indvars.iv.prol
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !109
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !230

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.gg = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gh = icmp ugt i64 %i.gg, -4
  br i1 %i.gh, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gi = mul i64 %i.cp, %indvars.iv
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !109
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %indvars.iv
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gm = mul i64 %i.cp, %indvars.iv.next
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !109
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %indvars.iv.next
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !109
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gq = mul i64 %i.cp, %indvars.iv.next.1
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.gq
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !109
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %indvars.iv.next.1
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !109
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.gu = mul i64 %i.cp, %indvars.iv.next.2
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !109
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %indvars.iv.next.2
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !109
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !231

bb.l:                                             ; preds = %._crit_edge.us
  %i.gy = add nsw i32 %.05688.us, 1               ; 2 uses
  %.not66.us = icmp slt i32 %i.gy, %i.o
  br i1 %.not66.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gz = add nsw i32 %.05589.us, 1               ; 2 uses
  %.not67.us = icmp slt i32 %i.gz, %i.f
  br i1 %.not67.us, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.us
  %.261.us = phi i32 [ %i.hc, %._crit_edge.us ], [ 0, %bb.l ], [ 0, %bb.m ]
  %.258.us = phi i32 [ %.05688.us, %._crit_edge.us ], [ %i.gy, %bb.l ], [ 0, %bb.m ]
  %.2.us = phi i32 [ %.05589.us, %._crit_edge.us ], [ %.05589.us, %bb.l ], [ %i.gz, %bb.m ]
  %i.ha = add nuw i64 %.05490.us, 1               ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %.sroa.speculated
  br i1 %i.hb, label %.lr.ph.us, label %.critedge, !llvm.loop !232

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.hc = add nsw i32 %.05987.us, 1               ; 2 uses
  %.not.us = icmp slt i32 %i.hc, %i.w
  br i1 %.not.us, label %bb.n, label %bb.l

.critedge:                                        ; preds = %bb.n, %bb.m, %_ZNKSt6vectorImSaImEE2atEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16PermuteLayerImpl14PermuteInvokerIiE3runERKNS_3MatERS4_RKSt6vectorImSaImEEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %18 = alloca %"class.cv::dnn::PermuteLayerImpl::PermuteInvoker.30", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16PermuteLayerImpl14PermuteInvokerIiEE, i64 16), ptr %18, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i32 %3, ptr %i.d, align 8, !tbaa !131
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !102  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %2, align 8, !tbaa !63     ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !102
  %narrow.i24 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %spec.select.i25 = zext nneg i32 %narrow.i24 to i64 ; 4 uses
  %i.k = icmp ult i64 %i.i, %spec.select.i25
  br i1 %i.k, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 103) #21
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %16, align 8, !tbaa !54    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
end_hunk_1
