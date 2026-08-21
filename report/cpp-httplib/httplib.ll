inline.NumInlined: 21632
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb:bb.a
  store i8 %spec.select, ptr %i.i, align 1, !tbaa !65
  %i.r = load ptr, ptr %0, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.w = lshr i64 %3, 8
  %i.x = trunc nuw i64 %i.w to i8
  store i8 %i.x, ptr %i.b, align 1, !tbaa !65
  %i.y = trunc i64 %3 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !65
  %i.aa = load ptr, ptr %0, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.b, i64 noundef 2)
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %i.ae, label %bb.h, label %bb.aa

bb.f:                                             ; preds = %bb.c
  %spec.select65 = select i1 %5, i8 -1, i8 127
  store i8 %spec.select65, ptr %i.i, align 1, !tbaa !65
  %i.af = load ptr, ptr %0, align 8, !tbaa !81
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ak = lshr i64 %3, 56
  %i.al = trunc nuw i64 %i.ak to i8
  store i8 %i.al, ptr %i.c, align 1, !tbaa !65
  %i.am = lshr i64 %3, 48
  %i.an = trunc i64 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !65
  %i.ap = lshr i64 %3, 40
  %i.aq = trunc i64 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !65
  %i.as = lshr i64 %3, 32
  %i.at = trunc i64 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.at, ptr %i.au, align 1, !tbaa !65
  %i.av = lshr i64 %3, 24
  %i.aw = trunc i64 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !65
  %i.ay = lshr i64 %3, 16
  %i.az = trunc i64 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !65
  %i.bb = lshr i64 %3, 8
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !65
  %i.be = trunc i64 %3 to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !65
  %i.bg = load ptr, ptr %0, align 8, !tbaa !81
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.c, i64 noundef 8)
  %i.bk = icmp sgt i64 %i.bj, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br i1 %i.bk, label %bb.h, label %bb.aa

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.b
  br i1 %5, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %.b = load i1, ptr @_ZGVZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, align 1
  br i1 %.b, label %bb.o, label %bb.j, !prof !283

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt13random_deviceC2Ev(ptr noundef nonnull align 8 dereferenceable(5000) %6)
  %i.bl = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.p

_ZNSt13random_deviceclEv.exit:                    ; preds = %bb.j
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  store i64 %i.bm, ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, align 8, !tbaa !78
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_ZNSt13random_deviceclEv.exit
  %store_forwarded = phi i64 [ %i.bm, %_ZNSt13random_deviceclEv.exit ], [ %i.bz, %bb.l ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit ], [ %i.ca, %bb.l ] ; 4 uses
  %i.bn = getelementptr [8 x i8], ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, i64 %.011.i.i
  %i.bo = lshr i64 %store_forwarded, 30
  %i.bp = xor i64 %i.bo, %store_forwarded
  %i.bq = mul nuw nsw i64 %i.bp, 1812433253
  %i.br = add nuw i64 %i.bq, %.011.i.i            ; 2 uses
  %i.bs = and i64 %i.br, 4294967295               ; 2 uses
  store i64 %i.bs, ptr %i.bn, align 8, !tbaa !78
  %i.bt = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.bt, 624
  br i1 %exitcond.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr [8 x i8], ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, i64 %i.bt
  %i.bv = lshr i64 %i.bs, 30
  %i.bw = xor i64 %i.bv, %i.br
  %i.bx = mul i64 %i.bw, 1812433253
  %i.by = add i64 %i.bx, %i.bt
  %i.bz = and i64 %i.by, 4294967295               ; 2 uses
  store i64 %i.bz, ptr %i.bu, align 8, !tbaa !78
  %i.ca = add nuw nsw i64 %.011.i.i, 2
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  store i64 624, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, i64 4992), align 8, !tbaa !284
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #48
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  store i1 true, ptr @_ZGVZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, align 1
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt13random_deviceD2Ev.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.cd = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng)
  %i.ce = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.cd)
  %.0.extract.trunc = trunc i64 %i.ce to i32
  store i32 %.0.extract.trunc, ptr %i.d, align 16
  %i.cf = load ptr, ptr %0, align 8, !tbaa !81
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef i64 %i.ch(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.d, i64 noundef 4)
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %.critedge, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.p:                                             ; preds = %bb.j
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceD2Ev.exit68 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #48
  unreachable

_ZNSt13random_deviceD2Ev.exit68:                  ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ab

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.o
  %.sroa.speculated85 = call i64 @llvm.umin.i64(i64 %3, i64 4096) ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit74, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated85) #50
          to label %.noexc69 unwind label %bb.u   ; 11 uses

.noexc69:                                         ; preds = %bb.r
  store i8 0, ptr %i.cn, align 1, !tbaa !65
  %i.co = add nsw i64 %.sroa.speculated85, -1     ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %iter.check.preheader, label %bb.s

bb.s:                                             ; preds = %.noexc69
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cq, i8 0, i64 %i.co, i1 false)
  br label %iter.check.preheader

iter.check.preheader:                             ; preds = %bb.s, %.noexc69
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %iter.check

bb.t:                                             ; preds = %bb.v
  %i.cs = add i64 %.044100, 4096                  ; 2 uses
  %.not64.not = icmp ult i64 %i.cs, %3
  %indvars.iv.next = add i64 %indvars.iv, -4096
  br i1 %.not64.not, label %iter.check, label %.critedge67, !llvm.loop !286

bb.u:                                             ; preds = %bb.r
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

iter.check:                                       ; preds = %iter.check.preheader, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ %3, %iter.check.preheader ] ; 5 uses
  %.044100 = phi i64 [ %i.cs, %bb.t ], [ 0, %iter.check.preheader ] ; 3 uses
  %i.cu = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %umax = call i64 @llvm.umin.i64(i64 %i.cu, i64 4096) ; 8 uses
  %i.cv = sub nuw i64 %3, %.044100
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.cv, i64 4096)
  %i.cw = getelementptr i8, ptr %2, i64 %.044100  ; 5 uses
  %min.iters.check = icmp ult i64 %indvars.iv, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv, i64 4096)
  %i.cx = add nsw i64 %umin, -5
  %i.cy = icmp ult i64 %i.cx, -4
  br i1 %i.cy, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check118 = icmp ult i64 %indvars.iv, 32
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %umax, 28
  %n.vec = and i64 %umax, 8160                    ; 4 uses
  %wide.load120 = load <16 x i8>, ptr %i.d, align 16, !tbaa !65
  %wide.load121 = load <16 x i8>, ptr %i.cr, align 16, !tbaa !65
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = getelementptr i8, ptr %i.cw, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load = load <16 x i8>, ptr %i.da, align 1, !tbaa !65
  %wide.load119 = load <16 x i8>, ptr %i.db, align 1, !tbaa !65
  %i.dc = xor <16 x i8> %wide.load120, %wide.load
  %i.dd = xor <16 x i8> %wide.load121, %wide.load119
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <16 x i8> %i.dc, ptr %i.de, align 1, !tbaa !65
  store <16 x i8> %i.dd, ptr %i.df, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %umax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !290

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %umax, 8188                 ; 3 uses
  %wide.load125 = load <4 x i8>, ptr %i.d, align 16, !tbaa !65
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 3 uses
  %i.dh = getelementptr i8, ptr %i.cw, i64 %index123
  %wide.load124 = load <4 x i8>, ptr %i.dh, align 1, !tbaa !65
  %i.di = xor <4 x i8> %wide.load125, %wide.load124
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 %index123
  store <4 x i8> %i.di, ptr %i.dj, align 1, !tbaa !65
  %index.next126 = add nuw i64 %index123, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next126, %n.vec122
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !291

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n127 = icmp eq i64 %umax, %n.vec122
  br i1 %cmp.n127, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.098.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec122, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.098.ph, 1
  %xtraiter = and i64 %umax, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.dl = getelementptr i8, ptr %i.cw, i64 %.098.ph
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !65
  %i.dn = load i8, ptr %i.d, align 16, !tbaa !65
  %i.do = xor i8 %i.dn, %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.098.ph
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !65
  %i.dq = or disjoint i64 %.098.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.098.unr = phi i64 [ %.098.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dq, %vec.epilog.scalar.ph.prol ]
  %i.dr = icmp eq i64 %umax, %.neg
  br i1 %i.dr, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ds = load ptr, ptr %0, align 8, !tbaa !81
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = invoke noundef i64 %i.du(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.cn, i64 noundef %.sroa.speculated)
          to label %bb.v unwind label %bb.w

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.098 = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.098.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dw = getelementptr i8, ptr %i.cw, i64 %.098
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !65
  %i.dy = and i64 %.098, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !65
  %i.eb = xor i8 %i.ea, %i.dx
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.098
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !65
  %i.ed = add nuw nsw i64 %.098, 1                ; 3 uses
  %i.ee = getelementptr i8, ptr %i.cw, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !65
  %i.eg = and i64 %i.ed, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !65
  %i.ej = xor i8 %i.ei, %i.ef
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ed
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !65
  %i.el = add nuw nsw i64 %.098, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.el, %umax
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !292

bb.v:                                             ; preds = %._crit_edge
  %i.em = icmp sgt i64 %i.dv, -1
  br i1 %i.em, label %bb.t, label %_ZNSt6vectorIcSaIcEED2Ev.exit72

bb.w:                                             ; preds = %._crit_edge
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %.sroa.speculated85) #46
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit72:                  ; preds = %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %.sroa.speculated85) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.aa

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.u ], [ %i.en, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.ab

bb.x:                                             ; preds = %bb.h
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eo = load ptr, ptr %0, align 8, !tbaa !81
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call noundef i64 %i.eq(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %2, i64 noundef %3)
  %i.es = icmp slt i64 %i.er, 0
  br i1 %i.es, label %bb.aa, label %bb.z

.critedge67:                                      ; preds = %bb.t
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %.sroa.speculated85) #46
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit74

_ZNSt6vectorIcSaIcEED2Ev.exit74:                  ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i, %.critedge67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit74, %bb.x, %bb.y
  br label %bb.aa

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit72, %bb.y, %.critedge, %bb.f, %bb.d, %bb.b, %bb.e, %bb.g, %bb.z
  %.7 = phi i1 [ false, %bb.g ], [ true, %bb.z ], [ false, %_ZNSt6vectorIcSaIcEED2Ev.exit72 ], [ false, %.critedge ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.7

bb.ab:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %_ZNSt13random_deviceD2Ev.exit68
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %i.ck, %_ZNSt13random_deviceD2Ev.exit68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt13random_deviceC2Ev(ptr noundef nonnull align 8 dereferenceable(5000) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.346, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !65
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !65
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !65
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.h
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !284  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 623
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !78
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !78 ; 5 uses
  %i.g = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.h = and <2 x i64> %i.g, splat (i64 -2147483648)
  %i.i = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.j = or disjoint <2 x i64> %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3176
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !78
  %i.l = lshr exact <2 x i64> %i.j, splat (i64 1)
  %i.m = xor <2 x i64> %i.l, %wide.load9
  %i.n = and <2 x i64> %wide.load, splat (i64 1)
  %i.o = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.q = xor <2 x i64> %i.m, %i.p
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !78
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 226
  br i1 %i.r, label %vector.ph11, label %vector.body, !llvm.loop !293

vector.ph11:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.t = and i64 %vector.recur.extract, -2147483648
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.v = load i64, ptr %i.u, align 8, !tbaa !78   ; 2 uses
  %i.w = and i64 %i.v, 2147483646
  %i.x = or disjoint i64 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.z = load i64, ptr %i.y, align 8, !tbaa !78
  %i.aa = lshr exact i64 %i.x, 1
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = and i64 %i.v, 1
  %.not20.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not20.i, i64 0, i64 2567483615
  %i.ae = xor i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !78
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !78
  %vector.recur.init14 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body12

end_hunk_0
begin_hunk_1_@_ZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.he = ptrtoint ptr %.sroa.37.2 to i64
  %i.hf = ptrtoint ptr %.sroa.0128.2 to i64
  %i.hg = sub i64 %i.he, %i.hf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.2, i64 noundef %i.hg) #46
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit106

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit106: ; preds = %bb.az, %bb.y, %bb.ba, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.d
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.r, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn28.pn, %bb.ba ], [ %.pn28.pn, %.body ], [ %i.hd, %bb.az ], [ %i.cu, %bb.y ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn31.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev"(ptr %.8.val) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %.8.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !324
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !326
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !785
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !785
  br label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !175
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !324
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !326
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !786
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !786
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !175
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !683    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !685  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !77 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !65
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !686

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !683
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !697
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #46
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail15coalesce_rangesERSt6vectorISt4pairIllESaIS3_EEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !787  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !789    ; 14 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEEZN7httplib6detail15coalesce_rangesERS7_mE3$_0EvT_SD_T0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_T1_"(ptr %i.c, ptr %i.b, i64 noundef %i.k)
  %i.l = icmp sgt i64 %i.f, 256
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %.preheader.i23.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.08.020.i.idx.i.i.i = phi i64 [ %.sroa.08.020.i.add.i.i.i, %bb.f ], [ 16, %.lr.ph.i.i.i.i ] ; 3 uses
  %.pn19.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %bb.f ], [ %i.c, %.lr.ph.i.i.i.i ] ; 4 uses
  %.sroa.08.020.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.08.020.i.idx.i.i.i ; 6 uses
  %.val.i.i.i.i.i = load i64, ptr %.sroa.08.020.i.ptr.i.i.i, align 8, !tbaa !790 ; 5 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !790
  %i.n = icmp slt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8 ; 2 uses
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, label %bb.e

.lr.ph.i.i.i.i.i.preheader.i.i.i.i:               ; preds = %bb.d
  %i.o = lshr exact i64 %.sroa.08.020.i.idx.i.i.i, 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 32 ; 2 uses
  %xtraiter163 = and i64 %i.o, 3                  ; 2 uses
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ]
  %.069.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.08.020.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %prol.iter165 = phi i64 [ %prol.iter165.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ]
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !78
  store i64 %i.s, ptr %i.r, align 8, !tbaa !790
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.prol, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !78
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !792
  %i.w = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter165.next = add i64 %prol.iter165, 1   ; 2 uses
  %prol.iter165.cmp.not = icmp eq i64 %prol.iter165.next, %xtraiter163
  br i1 %prol.iter165.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !793

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %indvar, 3
  br i1 %i.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -16
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -16
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !78
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !790
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !792
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -32
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -32
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !78
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !790
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !78
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -24
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !792
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -48
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -48
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !78
  store i64 %i.am, ptr %i.al, align 8, !tbaa !790
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !78
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -40
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !792
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !78
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !790
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !78
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -56
  store i64 %i.au, ptr %i.av, align 8, !tbaa !792
  %i.aw = add nsw i64 %.010.i.i.i.i.i.i.i.i.i, -4
  %i.ax = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i, !llvm.loop !794

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  store i64 %.val.i.i.i.i.i, ptr %i.c, align 8, !tbaa !790
  store i64 %.sroa.4.0.copyload.i.i.i.i, ptr %i.m, align 8, !tbaa !792
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val2.i8.i.i.i.i.i = load i64, ptr %.pn19.i.i.i.i, align 8, !tbaa !790 ; 2 uses
  %i.ay = icmp slt i64 %.val.i.i.i.i.i, %.val2.i8.i.i.i.i.i
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.val2.i11.i.i.i.i.i = phi i64 [ %.val2.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.val2.i8.i.i.i.i.i, %bb.e ]
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn19.i.i.i.i, %bb.e ] ; 3 uses
  %.sroa.04.09.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i, %bb.e ] ; 3 uses
  store i64 %.val2.i11.i.i.i.i.i, ptr %.sroa.04.09.i.i.i.i.i, align 8, !tbaa !790
  %i.az = getelementptr inbounds i8, ptr %.sroa.04.09.i.i.i.i.i, i64 -8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i.i, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !792
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !790 ; 2 uses
  %i.bc = icmp slt i64 %.val.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !795

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.e
  %.sroa.04.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %bb.e ], [ %.sroa.0.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i64 %.val.i.i.i.i.i, ptr %.sroa.04.0.lcssa.i.i.i.i.i, align 8, !tbaa !790
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i, ptr %i.bd, align 8, !tbaa !792
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i
  %.sroa.08.020.i.add.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i, 16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.08.020.i.add.i.i.i, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_.exit.i.i.i", label %bb.d, !llvm.loop !796

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_.exit.i.i.i": ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.be, %i.b
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEEZN7httplib6detail15coalesce_rangesERS7_mE3$_0EvT_SD_T0_.exit", label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i14.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.bl, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i14.i.i.i" ], [ %i.be, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_.exit.i.i.i" ] ; 6 uses
  %i.bf = load <2 x i64>, ptr %.sroa.0.07.i.i.i.i, align 8
  %.sroa.03.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.07.i.i.i.i, align 8 ; 2 uses
  %.sroa.0.07.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i8.i.i13.i.i.i = load i64, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !790 ; 2 uses
  %i.bg = icmp slt i64 %.sroa.03.0.copyload.i.i.i.i.i, %.val2.i8.i.i13.i.i.i
  br i1 %i.bg, label %.lr.ph.i.i17.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i14.i.i.i"

.lr.ph.i.i17.i.i.i:                               ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i.i17.i.i.i
  %.val2.i11.i.i18.i.i.i = phi i64 [ %.val2.i.i.i22.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.val2.i8.i.i13.i.i.i, %.lr.ph.i12.i.i.i ]
  %.sroa.0.010.i.i19.i.i.i = phi ptr [ %.sroa.0.0.i.i21.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 3 uses
  %.sroa.04.09.i.i20.i.i.i = phi ptr [ %.sroa.0.010.i.i19.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 3 uses
  store i64 %.val2.i11.i.i18.i.i.i, ptr %.sroa.04.09.i.i20.i.i.i, align 8, !tbaa !790
  %i.bh = getelementptr inbounds i8, ptr %.sroa.04.09.i.i20.i.i.i, i64 -8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !78
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i20.i.i.i, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !792
  %.sroa.0.0.i.i21.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i19.i.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i22.i.i.i = load i64, ptr %.sroa.0.0.i.i21.i.i.i, align 8, !tbaa !790 ; 2 uses
  %i.bk = icmp slt i64 %.sroa.03.0.copyload.i.i.i.i.i, %.val2.i.i.i22.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i17.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i14.i.i.i", !llvm.loop !795

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i14.i.i.i": ; preds = %.lr.ph.i.i17.i.i.i, %.lr.ph.i12.i.i.i
  %.sroa.04.0.lcssa.i.i15.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ], [ %.sroa.0.010.i.i19.i.i.i, %.lr.ph.i.i17.i.i.i ]
  store <2 x i64> %i.bf, ptr %.sroa.04.0.lcssa.i.i15.i.i.i, align 8, !tbaa !78
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 16 ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i16.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEEZN7httplib6detail15coalesce_rangesERS7_mE3$_0EvT_SD_T0_.exit", label %.lr.ph.i12.i.i.i, !llvm.loop !797

.preheader.i23.i.i.i:                             ; preds = %bb.c
  %.sroa.08.017.i24.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.not18.i25.i.i.i = icmp eq ptr %.sroa.08.017.i24.i.i.i, %i.b
  br i1 %.not18.i25.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEEZN7httplib6detail15coalesce_rangesERS7_mE3$_0EvT_SD_T0_.exit", label %.lr.ph.i26.i.i.i

.lr.ph.i26.i.i.i:                                 ; preds = %.preheader.i23.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i26.i.i.i
  %.sroa.08.020.i27.i.i.i = phi ptr [ %.sroa.08.017.i24.i.i.i, %.lr.ph.i26.i.i.i ], [ %.sroa.08.0.i36.i.i.i, %bb.j ] ; 8 uses
  %.pn19.i28.i.i.i = phi ptr [ %i.c, %.lr.ph.i26.i.i.i ], [ %.sroa.08.020.i27.i.i.i, %bb.j ] ; 4 uses
  %.val.i.i29.i.i.i = load i64, ptr %.sroa.08.020.i27.i.i.i, align 8, !tbaa !790 ; 5 uses
  %.val1.i.i30.i.i.i = load i64, ptr %i.c, align 8, !tbaa !790
  %i.bn = icmp slt i64 %.val.i.i29.i.i.i, %.val1.i.i30.i.i.i
  %.sroa.4.0..sroa_idx.i31.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i28.i.i.i, i64 24
  %.sroa.4.0.copyload.i32.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i31.i.i.i, align 8 ; 2 uses
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bo = ptrtoint ptr %.sroa.08.020.i27.i.i.i to i64
  %i.bp = sub i64 %i.bo, %i.e
  %i.bq = ashr exact i64 %i.bp, 4                 ; 5 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44.i.i.i

.lr.ph.i.i.i.i.i.preheader.i45.i.i.i:             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn19.i28.i.i.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i46.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i46.i.i.i.prol

.lr.ph.i.i.i.i.i.i46.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol
  %.010.i.i.i.i.i.i47.i.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ], [ %i.bq, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ]
  %.069.i.i.i.i.i.i48.i.i.i.prol = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ], [ %i.bs, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i49.i.i.i.prol = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ], [ %.sroa.08.020.i27.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ]
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i49.i.i.i.prol, i64 -16 ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i48.i.i.i.prol, i64 -16 ; 3 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !78
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !790
  %i.bw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i49.i.i.i.prol, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !78
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i48.i.i.i.prol, i64 -8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !792
  %i.bz = add nsw i64 %.010.i.i.i.i.i.i47.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i46.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i46.i.i.i.prol, !llvm.loop !798

.lr.ph.i.i.i.i.i.i46.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i46.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i
  %.010.i.i.i.i.i.i47.i.i.i.unr = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ], [ %i.bz, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ]
  %.069.i.i.i.i.i.i48.i.i.i.unr = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ], [ %i.bu, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ]
  %.078.i.i.i.i.i.i49.i.i.i.unr = phi ptr [ %.sroa.08.020.i27.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ]
  %i.ca = icmp ult i64 %i.bq, 4
  br i1 %i.ca, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44.i.i.i, label %.lr.ph.i.i.i.i.i.i46.i.i.i

.lr.ph.i.i.i.i.i.i46.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i46.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i46.i.i.i
  %.010.i.i.i.i.i.i47.i.i.i = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.i46.i.i.i ], [ %.010.i.i.i.i.i.i47.i.i.i.unr, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i48.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i46.i.i.i ], [ %.069.i.i.i.i.i.i48.i.i.i.unr, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol.loopexit ] ; 8 uses
end_hunk_1
