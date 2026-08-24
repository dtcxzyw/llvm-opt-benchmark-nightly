Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/generic_type?download=true
inline.NumInlined: 3438
inline.NumDeleted: 966
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6casadi11GenericTypeneERKS0_:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %.088216 = phi i64 [ %i.de, %bb.q ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.088216
  %i.dg = load double, ptr %i.df, align 8, !tbaa !155
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.088216
  %i.di = load double, ptr %i.dh, align 8, !tbaa !155
  %i.dj = fcmp une double %i.dg, %i.di
  br i1 %i.dj, label %.thread, label %bb.q

.loopexit214:                                     ; preds = %bb.n
  %.not.i.i.i134 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIdSaIdEED2Ev.exit135, label %.thread

.thread:                                          ; preds = %bb.q, %.lr.ph, %.loopexit214
  %.193192 = phi i1 [ %.not109, %.loopexit214 ], [ %.not109, %bb.q ], [ true, %.lr.ph ]
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !46
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.dn) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit135

_ZNSt6vectorIdSaIdEED2Ev.exit135:                 ; preds = %.loopexit214, %.thread
  %.193193 = phi i1 [ %.not109, %.loopexit214 ], [ %.193192, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i136 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIdSaIdEED2Ev.exit137, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit135
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !46
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.dr) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit137

_ZNSt6vectorIdSaIdEED2Ev.exit137:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit135, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit.thread

_ZNK6casadi11GenericType16is_double_vectorEv.exit.thread: ; preds = %bb.l, %_ZNK6casadi11GenericType9is_doubleEv.exit.thread, %_ZNK6casadi11GenericType16is_double_vectorEv.exit133, %_ZNK6casadi11GenericType16is_double_vectorEv.exit
  %i.ds = tail call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.ds, label %_ZNK6casadi11GenericType13is_int_vectorEv.exit.thread, label %_ZNK6casadi11GenericType13is_int_vectorEv.exit

_ZNK6casadi11GenericType13is_int_vectorEv.exit:   ; preds = %_ZNK6casadi11GenericType16is_double_vectorEv.exit.thread
  %i.dt = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call noundef i32 %i.dw(ptr noundef nonnull align 8 dereferenceable(24) %i.dt), !inline_history !12
  %i.dy = icmp eq i32 %i.dx, 5
  br i1 %i.dy, label %bb.s, label %_ZNK6casadi11GenericType13is_int_vectorEv.exit.thread

bb.s:                                             ; preds = %_ZNK6casadi11GenericType13is_int_vectorEv.exit
  %i.dz = tail call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.dz, label %_ZNK6casadi11GenericType13is_int_vectorEv.exit.thread, label %_ZNK6casadi11GenericType13is_int_vectorEv.exit140

_ZNK6casadi11GenericType13is_int_vectorEv.exit140: ; preds = %bb.s
  %i.ea = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(24) %i.ea), !inline_history !12
  %i.ef = icmp eq i32 %i.ee, 5
  br i1 %i.ef, label %bb.t, label %_ZNK6casadi11GenericType13is_int_vectorEv.exit.thread

bb.t:                                             ; preds = %_ZNK6casadi11GenericType13is_int_vectorEv.exit140
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNK6casadi11GenericType13to_int_vectorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNK6casadi11GenericType13to_int_vectorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !142 ; 2 uses
  %i.ei = load ptr, ptr %6, align 8, !tbaa !25    ; 5 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !142
  %i.eo = load ptr, ptr %7, align 8, !tbaa !25    ; 4 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.er = sub i64 %i.ep, %i.eq
  %.not106 = icmp ne i64 %i.el, %i.er             ; 4 uses
  %.not108217 = icmp eq ptr %i.eh, %i.ei
  %or.cond237.not = or i1 %.not108217, %.not106
  br i1 %or.cond237.not, label %.loopexit212, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %bb.u
  %i.es = ashr exact i64 %i.el, 3
  br label %.lr.ph219

bb.v:                                             ; preds = %bb.t
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %6, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i141 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !29
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #21
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ar

bb.x:                                             ; preds = %.lr.ph219
  %i.fa = add nuw i64 %.087218, 1                 ; 2 uses
  %exitcond241.not = icmp eq i64 %i.fa, %i.es
  br i1 %exitcond241.not, label %.thread196, label %.lr.ph219, !llvm.loop !341

.lr.ph219:                                        ; preds = %.lr.ph219.preheader, %bb.x
  %.087218 = phi i64 [ %i.fa, %bb.x ], [ 0, %.lr.ph219.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.087218
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !145
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.087218
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !145
  %.not107 = icmp eq i64 %i.fc, %i.fe
  br i1 %.not107, label %bb.x, label %.thread196

.loopexit212:                                     ; preds = %bb.u
  %.not.i.i.i142 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIxSaIxEED2Ev.exit143, label %.thread196

.thread196:                                       ; preds = %bb.x, %.lr.ph219, %.loopexit212
  %.395199 = phi i1 [ %.not106, %.loopexit212 ], [ %.not106, %bb.x ], [ true, %.lr.ph219 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !29
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = sub i64 %i.fh, %i.eq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.fi) #21
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit143

_ZNSt6vectorIxSaIxEED2Ev.exit143:                 ; preds = %.loopexit212, %.thread196
  %.395200 = phi i1 [ %.not106, %.loopexit212 ], [ %.395199, %.thread196 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.not.i.i.i144 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i144, label %_ZNSt6vectorIxSaIxEED2Ev.exit145, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit143
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !29
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.fl, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.fm) #21
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit145

_ZNSt6vectorIxSaIxEED2Ev.exit145:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit143, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit.thread

_ZNK6casadi11GenericType13is_int_vectorEv.exit.thread: ; preds = %bb.s, %_ZNK6casadi11GenericType16is_double_vectorEv.exit.thread, %_ZNK6casadi11GenericType13is_int_vectorEv.exit140, %_ZNK6casadi11GenericType13is_int_vectorEv.exit
  %i.fn = tail call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.fn, label %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit.thread, label %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit

_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit: ; preds = %_ZNK6casadi11GenericType13is_int_vectorEv.exit.thread
  %i.fo = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = tail call noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(24) %i.fo), !inline_history !16
  %i.ft = icmp eq i32 %i.fs, 6
  br i1 %i.ft, label %bb.z, label %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit.thread

bb.z:                                             ; preds = %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit
  %i.fu = tail call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.fu, label %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit.thread, label %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit148

_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit148: ; preds = %bb.z
  %i.fv = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = tail call noundef i32 %i.fy(ptr noundef nonnull align 8 dereferenceable(24) %i.fv), !inline_history !16
  %i.ga = icmp eq i32 %i.fz, 6
  br i1 %i.ga, label %bb.aa, label %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit.thread

bb.aa:                                            ; preds = %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit148
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZNK6casadi11GenericType20to_int_vector_vectorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNK6casadi11GenericType20to_int_vector_vectorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !33 ; 4 uses
  %i.gd = load ptr, ptr %8, align 8, !tbaa !30    ; 7 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gg = sub i64 %i.ge, %i.gf                    ; 2 uses
  %i.gh = sdiv exact i64 %i.gg, 24
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !33 ; 3 uses
  %i.gk = load ptr, ptr %9, align 8, !tbaa !30    ; 6 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64               ; 2 uses
  %i.gn = sub i64 %i.gl, %i.gm
  %.not101 = icmp eq i64 %i.gg, %i.gn
  br i1 %.not101, label %.preheader209, label %.loopexit208

.preheader209:                                    ; preds = %bb.ab
  %.not105223.not = icmp eq ptr %i.gc, %i.gd
  br i1 %.not105223.not, label %.loopexit208, label %.lr.ph225

bb.ac:                                            ; preds = %bb.aa
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.ar

.lr.ph225:                                        ; preds = %.preheader209, %.critedge
  %.086224 = phi i64 [ %i.hj, %.critedge ], [ 0, %.preheader209 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %.086224 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !142 ; 2 uses
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !25 ; 3 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu                    ; 2 uses
  %i.gw = ashr exact i64 %i.gv, 3
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %.086224 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !142
  %i.ha = load ptr, ptr %i.gx, align 8, !tbaa !25 ; 2 uses
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %.not102.not.not = icmp ne i64 %i.gv, %i.hd     ; 3 uses
  br i1 %.not102.not.not, label %.loopexit208, label %.preheader207

.preheader207:                                    ; preds = %.lr.ph225
  %.not104220.not = icmp eq ptr %i.gr, %i.gs
  br i1 %.not104220.not, label %.critedge, label %.lr.ph222

bb.ad:                                            ; preds = %.lr.ph222
  %i.he = add nuw i64 %.085221, 1                 ; 2 uses
  %exitcond243.not = icmp eq i64 %i.he, %i.gw
  br i1 %exitcond243.not, label %.critedge, label %.lr.ph222, !llvm.loop !342

.lr.ph222:                                        ; preds = %.preheader207, %bb.ad
  %.085221 = phi i64 [ %i.he, %bb.ad ], [ 0, %.preheader207 ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.085221
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !145
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.085221
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !145
  %.not103 = icmp eq i64 %i.hg, %i.hi
  br i1 %.not103, label %bb.ad, label %.loopexit208

.critedge:                                        ; preds = %bb.ad, %.preheader207
  %i.hj = add nuw i64 %.086224, 1                 ; 2 uses
  %exitcond245.not = icmp eq i64 %i.hj, %i.gh
  br i1 %exitcond245.not, label %.loopexit208, label %.lr.ph225, !llvm.loop !343

.loopexit208:                                     ; preds = %.lr.ph225, %.critedge, %.lr.ph222, %.preheader209, %bb.ab
  %.7 = phi i1 [ true, %bb.ab ], [ true, %.lr.ph222 ], [ false, %.preheader209 ], [ %.not102.not.not, %.critedge ], [ %.not102.not.not, %.lr.ph225 ]
  %.not4.i.i.i = icmp eq ptr %i.gk, %i.gj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit208, %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hq, %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i ], [ %i.gk, %.loopexit208 ] ; 3 uses
  %i.hk = load ptr, ptr %.05.i.i.i, align 8, !tbaa !25 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !29
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #21
  br label %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i:  ; preds = %bb.ae, %.lr.ph.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i149 = icmp eq ptr %i.hq, %i.gj
  br i1 %.not.i.i.i149, label %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !34

_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i, %.loopexit208
  %.not.i.i1.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !36
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = sub i64 %i.ht, %i.gm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.hu) #21
  br label %_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %.not4.i.i.i150 = icmp eq ptr %i.gd, %i.gc
  br i1 %.not4.i.i.i150, label %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i158, label %.lr.ph.i.i.i151

.lr.ph.i.i.i151:                                  ; preds = %_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i154
  %.05.i.i.i152 = phi ptr [ %i.ib, %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i154 ], [ %i.gd, %_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.hv = load ptr, ptr %.05.i.i.i152, align 8, !tbaa !25 ; 3 uses
  %.not.i.i.i.i.i.i.i153 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i.i.i153, label %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i154, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i151
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i152, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !29
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = sub i64 %i.hy, %i.hz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.ia) #21
  br label %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i154

_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i154: ; preds = %bb.ag, %.lr.ph.i.i.i151
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i152, i64 24 ; 2 uses
  %.not.i.i.i155 = icmp eq ptr %i.ib, %i.gc
  br i1 %.not.i.i.i155, label %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i158, label %.lr.ph.i.i.i151, !llvm.loop !34

_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i158: ; preds = %_ZSt8_DestroyISt6vectorIxSaIxEEEvPT_.exit.i.i.i154, %_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev.exit
  %.not.i.i1.i159 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i1.i159, label %_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev.exit160, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i158
  %i.ic = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !36
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = sub i64 %i.ie, %i.gf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.if) #21
  br label %_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev.exit160

_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev.exit160:      ; preds = %_ZSt8_DestroyIPSt6vectorIxSaIxEES2_EvT_S4_RSaIT0_E.exit.i158, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit.thread

_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit.thread: ; preds = %bb.z, %_ZNK6casadi11GenericType13is_int_vectorEv.exit.thread, %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit148, %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit
  %i.ig = tail call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.ig, label %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit.thread, label %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit

_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit: ; preds = %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit.thread
  %i.ih = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = tail call noundef i32 %i.ik(ptr noundef nonnull align 8 dereferenceable(24) %i.ih), !inline_history !15
  %i.im = icmp eq i32 %i.il, 9
  br i1 %i.im, label %bb.ai, label %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit.thread

bb.ai:                                            ; preds = %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit
  %i.in = tail call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.in, label %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit.thread, label %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit163

_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit163: ; preds = %bb.ai
  %i.io = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = tail call noundef i32 %i.ir(ptr noundef nonnull align 8 dereferenceable(24) %i.io), !inline_history !15
  %i.it = icmp eq i32 %i.is, 9
  br i1 %i.it, label %bb.aj, label %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit.thread

bb.aj:                                            ; preds = %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit163
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @_ZNK6casadi11GenericType23to_double_vector_vectorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.14") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNK6casadi11GenericType23to_double_vector_vectorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.14") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.iu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !50 ; 2 uses
  %i.iw = load ptr, ptr %10, align 8, !tbaa !47   ; 3 uses
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy                    ; 2 uses
  %i.ja = sdiv exact i64 %i.iz, 24
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !50 ; 3 uses
  %i.jd = load ptr, ptr %11, align 8, !tbaa !47   ; 5 uses
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %.not = icmp eq i64 %i.iz, %i.jg
  br i1 %.not, label %.preheader205, label %.loopexit

.preheader205:                                    ; preds = %bb.ak
  %.not100231.not = icmp eq ptr %i.iv, %i.iw
  br i1 %.not100231.not, label %.loopexit, label %.lr.ph233

bb.al:                                            ; preds = %bb.aj
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.ar

.lr.ph233:                                        ; preds = %.preheader205, %.critedge115
  %.084232 = phi i64 [ %i.kd, %.critedge115 ], [ 0, %.preheader205 ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [24 x i8], ptr %i.iw, i64 %.084232 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !154 ; 2 uses
  %i.jl = load ptr, ptr %i.ji, align 8, !tbaa !43 ; 3 uses
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 2 uses
  %i.jp = ashr exact i64 %i.jo, 3
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %i.jd, i64 %.084232 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !154
  %i.jt = load ptr, ptr %i.jq, align 8, !tbaa !43 ; 2 uses
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %.not98.not.not = icmp ne i64 %i.jo, %i.jw      ; 3 uses
  br i1 %.not98.not.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph233
  %.not99228.not = icmp eq ptr %i.jk, %i.jl
  br i1 %.not99228.not, label %.critedge115, label %.lr.ph230

bb.am:                                            ; preds = %.lr.ph230
  %i.jx = add nuw i64 %.0229, 1                   ; 2 uses
  %exitcond247.not = icmp eq i64 %i.jx, %i.jp
  br i1 %exitcond247.not, label %.critedge115, label %.lr.ph230, !llvm.loop !344

.lr.ph230:                                        ; preds = %.preheader, %bb.am
  %.0229 = phi i64 [ %i.jx, %bb.am ], [ 0, %.preheader ] ; 3 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %.0229
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !155
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.0229
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !155
  %i.kc = fcmp une double %i.jz, %i.kb
  br i1 %i.kc, label %.loopexit, label %bb.am

.critedge115:                                     ; preds = %bb.am, %.preheader
  %i.kd = add nuw i64 %.084232, 1                 ; 2 uses
  %exitcond249.not = icmp eq i64 %i.kd, %i.ja
  br i1 %exitcond249.not, label %.loopexit, label %.lr.ph233, !llvm.loop !345

.loopexit:                                        ; preds = %.lr.ph233, %.critedge115, %.lr.ph230, %.preheader205, %bb.ak
  %.11 = phi i1 [ true, %bb.ak ], [ true, %.lr.ph230 ], [ false, %.preheader205 ], [ %.not98.not.not, %.critedge115 ], [ %.not98.not.not, %.lr.ph233 ]
  %.not4.i.i.i164 = icmp eq ptr %i.jd, %i.jc
  br i1 %.not4.i.i.i164, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i165

.lr.ph.i.i.i165:                                  ; preds = %.loopexit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.05.i.i.i166 = phi ptr [ %i.kk, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i ], [ %i.jd, %.loopexit ] ; 3 uses
  %i.ke = load ptr, ptr %.05.i.i.i166, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i.i167 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i.i.i.i.i167, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i165
  %i.kf = getelementptr inbounds nuw i8, ptr %.05.i.i.i166, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !46
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.ke to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kj) #21
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i:  ; preds = %bb.an, %.lr.ph.i.i.i165
  %i.kk = getelementptr inbounds nuw i8, ptr %.05.i.i.i166, i64 24 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.kk, %i.jc
  br i1 %.not.i.i.i168, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i165, !llvm.loop !51

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.pr.i169 = load ptr, ptr %11, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.kl = phi ptr [ %.pr.i169, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.jd, %.loopexit ] ; 3 uses
  %.not.i.i1.i170 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i1.i170, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.km = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !52
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = ptrtoint ptr %i.kl to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %i.kl, i64 noundef %i.kq) #21
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.kr = load ptr, ptr %10, align 8, !tbaa !47   ; 3 uses
  %i.ks = load ptr, ptr %i.iu, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i171 = icmp eq ptr %i.kr, %i.ks
  br i1 %.not4.i.i.i171, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i179, label %.lr.ph.i.i.i172

.lr.ph.i.i.i172:                                  ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i175
  %.05.i.i.i173 = phi ptr [ %i.kz, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i175 ], [ %i.kr, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.kt = load ptr, ptr %.05.i.i.i173, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i.i174 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i.i.i174, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i175, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i172
  %i.ku = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !46
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = sub i64 %i.kw, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.ky) #21
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i175

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i175: ; preds = %bb.ap, %.lr.ph.i.i.i172
  %i.kz = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 24 ; 2 uses
  %.not.i.i.i176 = icmp eq ptr %i.kz, %i.ks
  br i1 %.not.i.i.i176, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i177, label %.lr.ph.i.i.i172, !llvm.loop !51

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i177: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i175
  %.pr.i178 = load ptr, ptr %10, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i179

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i179: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i177, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit
  %i.la = phi ptr [ %.pr.i178, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i177 ], [ %i.kr, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i180 = icmp eq ptr %i.la, null
  br i1 %.not.i.i1.i180, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit181, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i179
  %i.lb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !52
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.la to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.lf) #21
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit181

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit181:      ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i179, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit.thread

_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit.thread: ; preds = %bb.ai, %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit.thread, %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit, %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit163, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit181, %_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev.exit160, %_ZNSt6vectorIxSaIxEED2Ev.exit145, %_ZNSt6vectorIdSaIdEED2Ev.exit137, %bb.k, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %.12 = phi i1 [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %i.be, %bb.i ], [ %i.bv, %bb.k ], [ %.193193, %_ZNSt6vectorIdSaIdEED2Ev.exit137 ], [ %.395200, %_ZNSt6vectorIxSaIxEED2Ev.exit145 ], [ %.7, %_ZNSt6vectorIS_IxSaIxEESaIS1_EED2Ev.exit160 ], [ %.11, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit181 ], [ true, %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit163 ], [ true, %_ZNK6casadi11GenericType23is_double_vector_vectorEv.exit ], [ true, %_ZNK6casadi11GenericType20is_int_vector_vectorEv.exit.thread ], [ true, %bb.ai ]
  ret i1 %.12

bb.ar:                                            ; preds = %bb.al, %bb.ac, %_ZNSt6vectorIxSaIxEED2Ev.exit, %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %.pn = phi { ptr, i32 } [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %i.cx, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.et, %_ZNSt6vectorIxSaIxEED2Ev.exit ], [ %i.go, %bb.ac ], [ %i.jh, %bb.al ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi11GenericTypeC2ERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_St4lessIS7_ESaISt4pairIKS7_S0_EEE(ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !215
  %i.a = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24
          to label %bb.b unwind label %bb.g       ; 11 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6casadi19GenericTypeInternalILNS_6TypeIDE11ESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS8_ESaISt4pairIKS8_S9_EEEEE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !311
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !312
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store ptr %i.c, ptr %i.f, align 8, !tbaa !313
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !314
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6casadi19GenericTypeInternalILNS_6TypeIDE11ESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS8_ESaISt4pairIKS8_S9_EEEEC2ERKSG_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.j, ptr %2, align 8, !tbaa !315
  %i.k = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i.i unwind label %.body ; 3 uses

.noexc.i.i.i:                                     ; preds = %bb.c, %.noexc.i.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !317  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %.noexc.i.i.i, !llvm.loop !318

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !319
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i = phi ptr [ %i.k, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !320  ; 2 uses
  %.not.i.i8.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.e, label %bb.d, !llvm.loop !321

bb.e:                                             ; preds = %bb.d
  store ptr %.0.i.i7.i.i.i.i.i, ptr %i.f, align 8, !tbaa !319
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !314
  store i64 %i.q, ptr %i.g, align 8, !tbaa !314
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  store ptr %i.k, ptr %i.d, align 8, !tbaa !319
  br label %_ZN6casadi19GenericTypeInternalILNS_6TypeIDE11ESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS8_ESaISt4pairIKS8_S9_EEEEC2ERKSG_.exit

.body:                                            ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(72) %i.a) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #21
  br label %bb.h

_ZN6casadi19GenericTypeInternalILNS_6TypeIDE11ESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS8_ESaISt4pairIKS8_S9_EEEEC2ERKSG_.exit: ; preds = %bb.e, %bb.b
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE3ownEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6casadi19GenericTypeInternalILNS_6TypeIDE11ESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS8_ESaISt4pairIKS8_S9_EEEEC2ERKSG_.exit
  ret void

bb.g:                                             ; preds = %_ZN6casadi19GenericTypeInternalILNS_6TypeIDE11ESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS8_ESaISt4pairIKS8_S9_EEEEC2ERKSG_.exit, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.r, %.body ]
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #22
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
end_hunk_0
