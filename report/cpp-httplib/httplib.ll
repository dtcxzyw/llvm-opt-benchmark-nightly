Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 103
begin_hunk_0_@_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb:bb.a
  %i.af = load ptr, ptr %0, align 8, !tbaa !194
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ak = lshr i64 %3, 56
  %i.al = trunc nuw i64 %i.ak to i8
  store i8 %i.al, ptr %i.c, align 1, !tbaa !177
  %i.am = lshr i64 %3, 48
  %i.an = trunc i64 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !177
  %i.ap = lshr i64 %3, 40
  %i.aq = trunc i64 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !177
  %i.as = lshr i64 %3, 32
  %i.at = trunc i64 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.at, ptr %i.au, align 1, !tbaa !177
  %i.av = lshr i64 %3, 24
  %i.aw = trunc i64 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !177
  %i.ay = lshr i64 %3, 16
  %i.az = trunc i64 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !177
  %i.bb = lshr i64 %3, 8
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !177
  %i.be = trunc i64 %3 to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !177
  %i.bg = load ptr, ptr %0, align 8, !tbaa !194
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
  br i1 %.b, label %bb.o, label %bb.j, !prof !296

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt13random_deviceC2Ev(ptr noundef nonnull align 8 dereferenceable(5000) %6)
  %i.bl = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.p

_ZNSt13random_deviceclEv.exit:                    ; preds = %bb.j
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  store i64 %i.bm, ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, align 8, !tbaa !190
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
  store i64 %i.bs, ptr %i.bn, align 8, !tbaa !190
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
  store i64 %i.bz, ptr %i.bu, align 8, !tbaa !190
  %i.ca = add nuw nsw i64 %.011.i.i, 2
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  store i64 624, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, i64 4992), align 8, !tbaa !298
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
  %i.cf = load ptr, ptr %0, align 8, !tbaa !194
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
  store i8 0, ptr %i.cn, align 1, !tbaa !177
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
  br i1 %.not64.not, label %iter.check, label %.critedge67, !llvm.loop !1386

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
  %min.iters.check116 = icmp ult i64 %indvars.iv, 32
  br i1 %min.iters.check116, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %umax, 28
  %n.vec = and i64 %umax, 8160                    ; 4 uses
  %wide.load118 = load <16 x i8>, ptr %i.d, align 16, !tbaa !177
  %wide.load119 = load <16 x i8>, ptr %i.cr, align 16, !tbaa !177
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = getelementptr i8, ptr %i.cw, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load = load <16 x i8>, ptr %i.da, align 1, !tbaa !177
  %wide.load117 = load <16 x i8>, ptr %i.db, align 1, !tbaa !177
  %i.dc = xor <16 x i8> %wide.load118, %wide.load
  %i.dd = xor <16 x i8> %wide.load119, %wide.load117
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <16 x i8> %i.dc, ptr %i.de, align 1, !tbaa !177
  store <16 x i8> %i.dd, ptr %i.df, align 1, !tbaa !177
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !1387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %umax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1390

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec120 = and i64 %umax, 8188                 ; 3 uses
  %wide.load123 = load <4 x i8>, ptr %i.d, align 16, !tbaa !177
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 3 uses
  %i.dh = getelementptr i8, ptr %i.cw, i64 %index121
  %wide.load122 = load <4 x i8>, ptr %i.dh, align 1, !tbaa !177
  %i.di = xor <4 x i8> %wide.load123, %wide.load122
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 %index121
  store <4 x i8> %i.di, ptr %i.dj, align 1, !tbaa !177
  %index.next124 = add nuw i64 %index121, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next124, %n.vec120
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1388

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %umax, %n.vec120
  br i1 %cmp.n125, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.098.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec120, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.098.ph, 1
  %xtraiter = and i64 %umax, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.dl = getelementptr i8, ptr %i.cw, i64 %.098.ph
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !177
  %i.dn = load i8, ptr %i.d, align 16, !tbaa !177
  %i.do = xor i8 %i.dn, %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.098.ph
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !177
  %i.dq = or disjoint i64 %.098.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.098.unr = phi i64 [ %.098.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dq, %vec.epilog.scalar.ph.prol ]
  %i.dr = icmp eq i64 %umax, %.neg
  br i1 %i.dr, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ds = load ptr, ptr %0, align 8, !tbaa !194
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = invoke noundef i64 %i.du(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.cn, i64 noundef %.sroa.speculated)
          to label %bb.v unwind label %bb.w

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.098 = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.098.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dw = getelementptr i8, ptr %i.cw, i64 %.098
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !177
  %i.dy = and i64 %.098, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !177
  %i.eb = xor i8 %i.ea, %i.dx
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.098
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !177
  %i.ed = add nuw nsw i64 %.098, 1                ; 3 uses
  %i.ee = getelementptr i8, ptr %i.cw, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !177
  %i.eg = and i64 %i.ed, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !177
  %i.ej = xor i8 %i.ei, %i.ef
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ed
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !177
  %i.el = add nuw nsw i64 %.098, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.el, %umax
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1389

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
  %i.eo = load ptr, ptr %0, align 8, !tbaa !194
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
  store ptr %i.a, ptr %1, align 8, !tbaa !175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.346, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !177
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !189    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !177
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !189    ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !177
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !298  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 623
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !190
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !190 ; 5 uses
  %i.g = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.h = and <2 x i64> %i.g, splat (i64 -2147483648)
  %i.i = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.j = or disjoint <2 x i64> %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3176
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !190
  %i.l = lshr exact <2 x i64> %i.j, splat (i64 1)
  %i.m = xor <2 x i64> %i.l, %wide.load9
  %i.n = and <2 x i64> %wide.load, splat (i64 1)
  %i.o = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.q = xor <2 x i64> %i.m, %i.p
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !190
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 226
  br i1 %i.r, label %vector.ph11, label %vector.body, !llvm.loop !1391

vector.ph11:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1808
end_hunk_0
begin_hunk_1_@_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE:bb.a
  %.not.i.i.i3.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i3.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !489
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #46
  br label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 152) #46
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !490  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !488    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !488
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !490
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !489
  %i.m = load ptr, ptr %1, align 8, !tbaa !310    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !310
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !378

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !177
  store i8 %i.t, ptr %i.i, align 1, !tbaa !177
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !490
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !471  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !470  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #50
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !470
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !471
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !480
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !261
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !261
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !470 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !480
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #46
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !471
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1141 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !1112 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #50
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !1112
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1141
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1106
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !1105 ; 7 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !1105 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not7.i.i.i.i.i, label %.loopexit30, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bi = ptrtoaddr ptr %i.bg to i64              ; 2 uses
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = ptrtoaddr ptr %i.bh to i64
  %i.bl = add i64 %i.bk, -2
  %i.bm = sub i64 %i.bl, %i.bi                    ; 3 uses
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = add nuw i64 %i.bn, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bm, 6
  %i.bp = sub i64 %i.bi, %i.bj
  %diff.check = icmp ugt i64 %i.bp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.bm, 30
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bo, 12
  %n.vec = and i64 %i.bo, -16                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bu ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep47, align 1
  %wide.load48 = load <8 x i16>, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load48, ptr %i.bw, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !2989

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit30, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !1142

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.bo, -4                    ; 3 uses
  %i.by = shl i64 %n.vec50, 1                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = shl i64 %index51, 1                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.bc, i64 %i.cb
  %next.gep53 = getelementptr i8, ptr %i.bg, i64 %i.cb
  %wide.load54 = load <4 x i16>, ptr %next.gep53, align 1
  store <4 x i16> %wide.load54, ptr %next.gep52, align 1
  %index.next55 = add nuw i64 %index51, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2990

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.bo, %n.vec50
  br i1 %cmp.n56, label %.loopexit30, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cd = load i16, ptr %.sroa.04.08.i.i.i.i.i, align 1
  store i16 %i.cd, ptr %.09.i.i.i.i.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bh
  br i1 %.not.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i, !llvm.loop !2991

.loopexit30:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !1141
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1136 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !1111 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i.i.i18, label %.noexc27, label %bb.l

bb.l:                                             ; preds = %.loopexit30
  %i.co = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %.noexc.i.i25, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i25:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #50
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit30
  %i.cq = phi ptr [ null, %.loopexit30 ], [ %i.cp, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !1111
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !1136
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !1108
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !1107 ; 5 uses
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !1107 ; 3 uses
  %.not7.i.i.i.i.i19 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not7.i.i.i.i.i19, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64              ; 2 uses
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoaddr ptr %i.cv to i64
  %i.cz = add i64 %i.cy, -4
  %i.da = sub i64 %i.cz, %i.cw                    ; 2 uses
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check61 = icmp ult i64 %i.da, 44
  %i.dd = sub i64 %i.cw, %i.cx
  %diff.check60 = icmp ugt i64 %i.dd, -32
  %or.cond74 = or i1 %min.iters.check61, %diff.check60
  br i1 %or.cond74, label %.lr.ph.i.i.i.i.i20.preheader75, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec63 = and i64 %i.dc, 9223372036854775800   ; 3 uses
  %i.de = shl i64 %n.vec63, 2                     ; 2 uses
  %i.df = getelementptr i8, ptr %i.cq, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cu, i64 %i.de
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.dh = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.cq, i64 %i.dh ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.cu, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 2
  %wide.load69 = load <4 x i32>, ptr %i.di, align 2
  %i.dj = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %wide.load68, ptr %next.gep66, align 2
  store <4 x i32> %wide.load69, ptr %i.dj, align 2
  %index.next70 = add nuw i64 %index65, 8         ; 2 uses
  %i.dk = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.dk, label %middle.block71, label %vector.body64, !llvm.loop !2992

middle.block71:                                   ; preds = %vector.body64
  %cmp.n72 = icmp eq i64 %i.dc, %n.vec63
  br i1 %cmp.n72, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader75

.lr.ph.i.i.i.i.i20.preheader75:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block71
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.df, %middle.block71 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.dg, %middle.block71 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader75, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader75 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader75 ] ; 2 uses
  %i.dl = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dl, ptr %.09.i.i.i.i.i21, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dm, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !2993

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block71, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.df, %middle.block71 ], [ %i.dn, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !1136
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.do, ptr noundef nonnull align 8 dereferenceable(56) %i.dp, i64 56, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %i.as, align 8, !tbaa !1112 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.du = load ptr, ptr %i.bf, align 8, !tbaa !1106
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dx) #46
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.n ], [ %i.ds, %bb.o ], [ %i.ds, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #23
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.dq, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dy = load ptr, ptr %0, align 8, !tbaa !488   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dy, null
end_hunk_1
begin_hunk_2_@_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE:bb.a
  %.not.i.i.i3.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i3.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !489
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #46
  br label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #46
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !490  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !488    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !488
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !490
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !489
  %i.m = load ptr, ptr %1, align 8, !tbaa !310    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !310
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !378

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !177
  store i8 %i.t, ptr %i.i, align 1, !tbaa !177
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !490
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !471  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !470  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #50
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !470
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !471
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !480
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !261
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !261
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !470 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !480
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #46
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !471
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1141 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !1112 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #50
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !1112
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1141
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1106
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !1105 ; 7 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !1105 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not7.i.i.i.i.i, label %.loopexit30, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bi = ptrtoaddr ptr %i.bg to i64              ; 2 uses
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = ptrtoaddr ptr %i.bh to i64
  %i.bl = add i64 %i.bk, -2
  %i.bm = sub i64 %i.bl, %i.bi                    ; 3 uses
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = add nuw i64 %i.bn, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bm, 6
  %i.bp = sub i64 %i.bi, %i.bj
  %diff.check = icmp ugt i64 %i.bp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.bm, 30
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bo, 12
  %n.vec = and i64 %i.bo, -16                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bu ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep47, align 1
  %wide.load48 = load <8 x i16>, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load48, ptr %i.bw, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !3020

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit30, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !1142

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.bo, -4                    ; 3 uses
  %i.by = shl i64 %n.vec50, 1                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = shl i64 %index51, 1                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.bc, i64 %i.cb
  %next.gep53 = getelementptr i8, ptr %i.bg, i64 %i.cb
  %wide.load54 = load <4 x i16>, ptr %next.gep53, align 1
  store <4 x i16> %wide.load54, ptr %next.gep52, align 1
  %index.next55 = add nuw i64 %index51, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3021

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.bo, %n.vec50
  br i1 %cmp.n56, label %.loopexit30, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cd = load i16, ptr %.sroa.04.08.i.i.i.i.i, align 1
  store i16 %i.cd, ptr %.09.i.i.i.i.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bh
  br i1 %.not.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i, !llvm.loop !3022

.loopexit30:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !1141
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1136 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !1111 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i.i.i18, label %.noexc27, label %bb.l

bb.l:                                             ; preds = %.loopexit30
  %i.co = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %.noexc.i.i25, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i25:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #50
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit30
  %i.cq = phi ptr [ null, %.loopexit30 ], [ %i.cp, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !1111
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !1136
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !1108
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !1107 ; 5 uses
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !1107 ; 3 uses
  %.not7.i.i.i.i.i19 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not7.i.i.i.i.i19, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64              ; 2 uses
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoaddr ptr %i.cv to i64
  %i.cz = add i64 %i.cy, -4
  %i.da = sub i64 %i.cz, %i.cw                    ; 2 uses
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check61 = icmp ult i64 %i.da, 44
  %i.dd = sub i64 %i.cw, %i.cx
  %diff.check60 = icmp ugt i64 %i.dd, -32
  %or.cond74 = or i1 %min.iters.check61, %diff.check60
  br i1 %or.cond74, label %.lr.ph.i.i.i.i.i20.preheader75, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec63 = and i64 %i.dc, 9223372036854775800   ; 3 uses
  %i.de = shl i64 %n.vec63, 2                     ; 2 uses
  %i.df = getelementptr i8, ptr %i.cq, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cu, i64 %i.de
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.dh = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.cq, i64 %i.dh ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.cu, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 2
  %wide.load69 = load <4 x i32>, ptr %i.di, align 2
  %i.dj = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %wide.load68, ptr %next.gep66, align 2
  store <4 x i32> %wide.load69, ptr %i.dj, align 2
  %index.next70 = add nuw i64 %index65, 8         ; 2 uses
  %i.dk = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.dk, label %middle.block71, label %vector.body64, !llvm.loop !3023

middle.block71:                                   ; preds = %vector.body64
  %cmp.n72 = icmp eq i64 %i.dc, %n.vec63
  br i1 %cmp.n72, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader75

.lr.ph.i.i.i.i.i20.preheader75:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block71
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.df, %middle.block71 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.dg, %middle.block71 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader75, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader75 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader75 ] ; 2 uses
  %i.dl = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dl, ptr %.09.i.i.i.i.i21, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dm, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !3024

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block71, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.df, %middle.block71 ], [ %i.dn, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !1136
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.do, ptr noundef nonnull align 8 dereferenceable(64) %i.dp, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %i.as, align 8, !tbaa !1112 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.du = load ptr, ptr %i.bf, align 8, !tbaa !1106
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dx) #46
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.n ], [ %i.ds, %bb.o ], [ %i.ds, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #23
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.dq, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dy = load ptr, ptr %0, align 8, !tbaa !488   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dy, null
end_hunk_2
begin_hunk_3_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE24_M_add_equivalence_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ag = phi ptr [ %i.o, %bb.j ], [ %i.s, %bb.k ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !176
  store i8 0, ptr %i.ag, align 1, !tbaa !177
  %i.ai = load ptr, ptr %3, align 8, !tbaa !189   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !177
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !471 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !480
  %.not.i7 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i7, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !175
  %i.as = load ptr, ptr %2, align 8, !tbaa !189   ; 2 uses
  %i.at = load i64, ptr %i.h, align 8, !tbaa !176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.at, ptr %i.a, align 8, !tbaa !190
  %i.au = icmp ugt i64 %i.at, 15
  br i1 %i.au, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.l
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !189
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !190
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !177
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.l
  %i.ax = phi ptr [ %i.av, %.noexc ], [ %i.ar, %bb.l ] ; 2 uses
  switch i64 %i.at, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = load i8, ptr %i.as, align 1, !tbaa !177
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.as, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.az = load i64, ptr %i.a, align 8, !tbaa !190 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !176
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !189
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !471
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %i.be, ptr %i.an, align 8, !tbaa !471
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.d

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.o
  %i.bg = load ptr, ptr %2, align 8, !tbaa !189   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.p
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bi = load i64, ptr %i.p, align 8, !tbaa !177
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.p:                                             ; preds = %bb.e
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.bk, %bb.p ]
  %i.bl = load ptr, ptr %2, align 8, !tbaa !189   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.q
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !177
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE13_M_make_rangeEcc(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef signext %1, i8 noundef signext %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = icmp sgt i8 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 8, ptr noundef nonnull @.str.527) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i8 %2 to i16
  %.sroa.2.0.insert.shift.i = shl nuw i16 %.sroa.2.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %1 to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1141 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1106
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.d, align 1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !1141
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store ptr %i.h, ptr %i.c, align 8, !tbaa !1141
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1112 ; 9 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775806
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
  unreachable

_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.n = ashr exact i64 %i.l, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add i64 %.sroa.speculated.i.i.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 4611686018427387903)
  %i.r = select i1 %i.p, i64 4611686018427387903, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #50 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.u, align 1
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = ptrtoaddr ptr %i.t to i64
  %i.w = add i64 %i.j, -2
  %i.x = sub i64 %i.w, %i.k                       ; 3 uses
  %i.y = lshr i64 %i.x, 1
  %i.z = add nuw i64 %i.y, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 6
  %i.aa = sub i64 %i.k, %i.v
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.x, 30
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.z, 12
  %n.vec = and i64 %i.z, -16                      ; 4 uses
  %i.ac = shl i64 %n.vec, 1                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.af ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.i, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  %i.ag = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep11, align 1, !alias.scope !3056, !noalias !3055
  %wide.load12 = load <8 x i16>, ptr %i.ag, align 1, !alias.scope !3056, !noalias !3055
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !alias.scope !3055, !noalias !3056
  store <8 x i16> %wide.load12, ptr %i.ah, align 1, !alias.scope !3055, !noalias !3056
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !3052

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !1142

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.z, -4                     ; 3 uses
  %i.aj = shl i64 %n.vec14, 1                     ; 2 uses
  %i.ak = getelementptr i8, ptr %i.t, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.i, i64 %i.aj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 2 uses
  %i.am = shl i64 %index15, 1                     ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.t, i64 %i.am
  %next.gep17 = getelementptr i8, ptr %i.i, i64 %i.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  %wide.load18 = load <4 x i16>, ptr %next.gep17, align 1, !alias.scope !3056, !noalias !3055
  store <4 x i16> %wide.load18, ptr %next.gep16, align 1, !alias.scope !3055, !noalias !3056
  %index.next19 = add nuw i64 %index15, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next19, %n.vec14
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3053

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.z, %n.vec14
  br i1 %cmp.n20, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  %i.ao = load i16, ptr %.0911.i.i.i.i.i.i, align 1, !alias.scope !3056, !noalias !3055
  store i16 %i.ao, ptr %.012.i.i.i.i.i.i, align 1, !alias.scope !3055, !noalias !3056
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3054

_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ak, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 2
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !1106
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.au) #46
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !1112
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !1141
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.r
  store ptr %i.av, ptr %i.e, align 8, !tbaa !1106
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d, %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.b = load ptr, ptr %1, align 8, !tbaa !975
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !978
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !980  ; 9 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.b, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !175
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.h, align 8, !tbaa !176
  store i8 0, ptr %i.g, align 8, !tbaa !177
  %.not40 = icmp eq ptr %2, %3
  br i1 %.not40, label %.preheader.split.us.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 313
  br label %bb.c

.preheader:                                       ; preds = %bb.g
  %.pre = load i64, ptr %i.h, align 8, !tbaa !176
  %.pre49 = load ptr, ptr %4, align 8             ; 3 uses
  %i.j = freeze i64 %.pre                         ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.preheader.split.us.preheader, label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %.preheader
  %i.l = phi ptr [ %.pre49, %.preheader ], [ %i.g, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ]
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.critedge.us.3, %.preheader.split.us.preheader
  %.017.idx42.us = phi i64 [ 0, %.preheader.split.us.preheader ], [ %.017.add.us.3, %.critedge.us.3 ] ; 6 uses
  %.017.ptr.us = getelementptr inbounds nuw i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_E14__collatenames, i64 %.017.idx42.us
  %i.m = load ptr, ptr %.017.ptr.us, align 16, !tbaa !310
  %char0 = load i8, ptr %i.m, align 1
  %i.n = icmp eq i8 %char0, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.us

.critedge.us:                                     ; preds = %.preheader.split.us
  %.017.add.us = or disjoint i64 %.017.idx42.us, 8 ; 2 uses
  %.017.ptr.us.1 = getelementptr inbounds nuw i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_E14__collatenames, i64 %.017.add.us
  %i.o = load ptr, ptr %.017.ptr.us.1, align 8, !tbaa !310
  %char0.1 = load i8, ptr %i.o, align 1
  %i.p = icmp eq i8 %char0.1, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.us.1

.critedge.us.1:                                   ; preds = %.critedge.us
  %.017.add.us.1 = or disjoint i64 %.017.idx42.us, 16 ; 2 uses
  %.017.ptr.us.2 = getelementptr inbounds nuw i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_E14__collatenames, i64 %.017.add.us.1
  %i.q = load ptr, ptr %.017.ptr.us.2, align 16, !tbaa !310
  %char0.2 = load i8, ptr %i.q, align 1
  %i.r = icmp eq i8 %char0.2, 0
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.us.2

.critedge.us.2:                                   ; preds = %.critedge.us.1
  %.017.add.us.2 = or disjoint i64 %.017.idx42.us, 24 ; 2 uses
  %.017.ptr.us.3 = getelementptr inbounds nuw i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_E14__collatenames, i64 %.017.add.us.2
  %i.s = load ptr, ptr %.017.ptr.us.3, align 8, !tbaa !310
  %char0.3 = load i8, ptr %i.s, align 1
  %i.t = icmp eq i8 %char0.3, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.us.3

.critedge.us.3:                                   ; preds = %.critedge.us.2
  %.017.add.us.3 = add nuw nsw i64 %.017.idx42.us, 32 ; 2 uses
  %.not23.us.3 = icmp eq i64 %.017.add.us.3, 1024
  br i1 %.not23.us.3, label %.critedge28, label %.preheader.split.us

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.02241 = phi ptr [ %2, %.lr.ph ], [ %i.ao, %bb.g ] ; 2 uses
  %i.u = load i8, ptr %.02241, align 1, !tbaa !177 ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !177   ; 2 uses
  %.not.i = icmp eq i8 %i.x, 0
  br i1 %.not.i, label %bb.d, label %_ZNKSt5ctypeIcE6narrowEcc.exit

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !194
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.f, i8 noundef signext %i.u, i8 noundef signext 0)
          to label %.noexc unwind label %bb.h, !inline_history !87 ; 3 uses

.noexc:                                           ; preds = %bb.d
  %.not11.i = icmp eq i8 %i.ab, 0
  br i1 %.not11.i, label %_ZNKSt5ctypeIcE6narrowEcc.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  store i8 %i.ab, ptr %i.w, align 1, !tbaa !177
  br label %_ZNKSt5ctypeIcE6narrowEcc.exit

_ZNKSt5ctypeIcE6narrowEcc.exit:                   ; preds = %bb.e, %.noexc, %bb.c
  %.0.i = phi i8 [ %i.x, %bb.c ], [ %i.ab, %bb.e ], [ 0, %.noexc ]
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !176 ; 4 uses
  %i.ad = add i64 %i.ac, 1                        ; 3 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.g
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_3
begin_hunk_4_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE24_M_add_equivalence_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ag = phi ptr [ %i.o, %bb.j ], [ %i.s, %bb.k ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !176
  store i8 0, ptr %i.ag, align 1, !tbaa !177
  %i.ai = load ptr, ptr %3, align 8, !tbaa !189   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !177
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !471 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !480
  %.not.i7 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i7, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !175
  %i.as = load ptr, ptr %2, align 8, !tbaa !189   ; 2 uses
  %i.at = load i64, ptr %i.h, align 8, !tbaa !176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.at, ptr %i.a, align 8, !tbaa !190
  %i.au = icmp ugt i64 %i.at, 15
  br i1 %i.au, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.l
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !189
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !190
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !177
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.l
  %i.ax = phi ptr [ %i.av, %.noexc ], [ %i.ar, %bb.l ] ; 2 uses
  switch i64 %i.at, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = load i8, ptr %i.as, align 1, !tbaa !177
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.as, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.az = load i64, ptr %i.a, align 8, !tbaa !190 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !176
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !189
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !471
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %i.be, ptr %i.an, align 8, !tbaa !471
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.d

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.o
  %i.bg = load ptr, ptr %2, align 8, !tbaa !189   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.p
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bi = load i64, ptr %i.p, align 8, !tbaa !177
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.p:                                             ; preds = %bb.e
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.bk, %bb.p ]
  %i.bl = load ptr, ptr %2, align 8, !tbaa !189   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.q
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !177
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE13_M_make_rangeEcc(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 noundef signext %1, i8 noundef signext %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = icmp sgt i8 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 8, ptr noundef nonnull @.str.527) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i8 %2 to i16
  %.sroa.2.0.insert.shift.i = shl nuw i16 %.sroa.2.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %1 to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1141 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1106
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.d, align 1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !1141
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store ptr %i.h, ptr %i.c, align 8, !tbaa !1141
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1112 ; 9 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775806
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
  unreachable

_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.n = ashr exact i64 %i.l, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add i64 %.sroa.speculated.i.i.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 4611686018427387903)
  %i.r = select i1 %i.p, i64 4611686018427387903, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #50 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.u, align 1
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = ptrtoaddr ptr %i.t to i64
  %i.w = add i64 %i.j, -2
  %i.x = sub i64 %i.w, %i.k                       ; 3 uses
  %i.y = lshr i64 %i.x, 1
  %i.z = add nuw i64 %i.y, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 6
  %i.aa = sub i64 %i.k, %i.v
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.x, 30
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.z, 12
  %n.vec = and i64 %i.z, -16                      ; 4 uses
  %i.ac = shl i64 %n.vec, 1                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.af ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.i, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %i.ag = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep11, align 1, !alias.scope !3094, !noalias !3093
  %wide.load12 = load <8 x i16>, ptr %i.ag, align 1, !alias.scope !3094, !noalias !3093
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !alias.scope !3093, !noalias !3094
  store <8 x i16> %wide.load12, ptr %i.ah, align 1, !alias.scope !3093, !noalias !3094
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !3090

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !1142

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.z, -4                     ; 3 uses
  %i.aj = shl i64 %n.vec14, 1                     ; 2 uses
  %i.ak = getelementptr i8, ptr %i.t, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.i, i64 %i.aj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 2 uses
  %i.am = shl i64 %index15, 1                     ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.t, i64 %i.am
  %next.gep17 = getelementptr i8, ptr %i.i, i64 %i.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %wide.load18 = load <4 x i16>, ptr %next.gep17, align 1, !alias.scope !3094, !noalias !3093
  store <4 x i16> %wide.load18, ptr %next.gep16, align 1, !alias.scope !3093, !noalias !3094
  %index.next19 = add nuw i64 %index15, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next19, %n.vec14
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3091

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.z, %n.vec14
  br i1 %cmp.n20, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %i.ao = load i16, ptr %.0911.i.i.i.i.i.i, align 1, !alias.scope !3094, !noalias !3093
  store i16 %i.ao, ptr %.012.i.i.i.i.i.i, align 1, !alias.scope !3093, !noalias !3094
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3092

_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ak, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 2
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !1106
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.au) #46
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !1112
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !1141
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.r
  store ptr %i.av, ptr %i.e, align 8, !tbaa !1106
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d, %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb1ELb1EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1024
  switch i32 %i.c, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit28 [
    i32 11, label %bb.b
    i32 16, label %bb.h
    i32 17, label %bb.u
    i32 15, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1025
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1026
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !1024
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1027
  switch i32 %i.l, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1025
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1026
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 27, ptr %i.b, align 8, !tbaa !1024
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1027
  switch i32 %i.u, label %bb.n [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_collate_elementERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !176
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr %3, align 8, !tbaa !189
  %i.z = load i8, ptr %i.y, align 1, !tbaa !177
  %i.aa = load i8, ptr %1, align 1, !tbaa !1158
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.p, label %_ZZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb1ELb1EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEEENKUlcE_clEc.exit

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !1159
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE11_M_add_charEc(ptr noundef nonnull align 8 dereferenceable(160) %2, i8 noundef signext %i.ad)
          to label %_ZZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb1ELb1EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEEENKUlcE_clEc.exit unwind label %bb.q

_ZZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb1ELb1EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEEENKUlcE_clEc.exit: ; preds = %bb.p, %bb.o
  store i8 1, ptr %1, align 1, !tbaa !1158
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1
end_hunk_4
