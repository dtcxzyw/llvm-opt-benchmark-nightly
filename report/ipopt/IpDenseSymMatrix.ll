Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpDenseSymMatrix?download=true
inline.NumInlined: 571
inline.NumDeleted: 321
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5Ipopt14DenseSymMatrix23HighRankUpdateTransposeEdRKNS_17MultiVectorMatrixES3_d:bb.a
  store i32 %i.gp, ptr %i.gn, align 8, !tbaa !13
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.ak, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit97

bb.ak:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit95
  %i.gr = load ptr, ptr %.0.i4.i72, align 8, !tbaa !15
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i72) #18, !inline_history !153
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit97

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit97:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit95, %bb.ak
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next155, %i.q
  br i1 %exitcond.not, label %bb.v, label %bb.w, !llvm.loop !160

bb.al:                                            ; preds = %bb.z, %.noexc91, %bb.ah, %bb.y
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body110

.body110:                                         ; preds = %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8.i106, %bb.al
  %eh.lpad-body111 = phi { ptr, i32 } [ %i.gu, %bb.al ], [ %i.ff, %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8.i106 ] ; 3 uses
  %.not.i.i98 = icmp eq ptr %.0.i4.i79, null
  br i1 %.not.i.i98, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99, label %bb.am

bb.am:                                            ; preds = %.body110
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i4.i79, i64 8 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !13
  %i.gx = add nsw i32 %i.gw, -1                   ; 2 uses
  store i32 %i.gx, ptr %i.gv, align 8, !tbaa !13
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.an, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99

bb.an:                                            ; preds = %bb.am
  %i.gz = load ptr, ptr %.0.i4.i79, align 8, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i79) #18, !inline_history !153
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99:      ; preds = %bb.an, %bb.am, %.body110
  %.not.i.i100 = icmp eq ptr %.0.i4.i72, null
  br i1 %.not.i.i100, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68, label %bb.ao

bb.ao:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i4.i72, i64 8 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !13
  %i.he = add nsw i32 %i.hd, -1                   ; 2 uses
  store i32 %i.he, ptr %i.hc, align 8, !tbaa !13
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68

.loopexit:                                        ; preds = %bb.v, %bb.b, %.preheader126, %.preheader124
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.hg, align 8, !tbaa !40
  call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.sink.split: ; preds = %bb.ao, %bb.u
  %.0.i4.i72198.sink203 = phi ptr [ %.0.i4.i, %bb.u ], [ %.0.i4.i72, %bb.ao ] ; 2 uses
  %.pn48.pn.ph = phi { ptr, i32 } [ %eh.lpad-body, %bb.u ], [ %eh.lpad-body111, %bb.ao ]
  %i.hh = load ptr, ptr %.0.i4.i72198.sink203, align 8, !tbaa !15
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i72198.sink203) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.sink.split, %bb.ao, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99, %bb.u, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66
  %.pn48.pn = phi { ptr, i32 } [ %eh.lpad-body111, %bb.ao ], [ %eh.lpad-body, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66 ], [ %eh.lpad-body, %bb.u ], [ %eh.lpad-body111, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit99 ], [ %.pn48.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.sink.split ]
  resume { ptr, i32 } %.pn48.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14DenseSymMatrix14HighRankUpdateEbdRKNS_14DenseGenMatrixEd(ptr noundef nonnull align 8 dereferenceable(97) initializes((96, 97)) %0, i1 noundef zeroext %1, double noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, double noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.0.in.v = select i1 %1, i64 12, i64 16
  %.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.in.v
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38
  tail call void @_ZN5Ipopt10IpBlasSyrkEbiidPKdidPdi(i1 noundef zeroext %1, i32 noundef %i.f, i32 noundef %.0, double noundef %2, ptr noundef %i.h, i32 noundef %i.j, double noundef %4, ptr noundef %i.l, i32 noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.q, align 8, !tbaa !40
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

declare void @_ZN5Ipopt10IpBlasSyrkEbiidPKdidPdi(i1 noundef zeroext, i32 noundef, i32 noundef, double noundef, ptr noundef, i32 noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14DenseSymMatrix18SpecialAddForLMSR1ERKNS_11DenseVectorERKNS_14DenseGenMatrixE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge34

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 3 uses
  %i.j = add nuw i32 %i.d, 1                      ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %i.d, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.lr.ph33.unr-lcssa:                               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph33, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph33.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph33.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %i.m = load double, ptr %i.l, align 8, !tbaa !58
  %i.n = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.o = mul i32 %i.j, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !58
  %i.s = fadd double %i.m, %i.r
  store double %i.s, ptr %i.q, align 8, !tbaa !58
  br label %.lr.ph33

.lr.ph33:                                         ; preds = %.lr.ph33.unr-lcssa, %.epil.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8              ; 6 uses
  %i.x = zext nneg i32 %i.d to i64
  %i.y = zext nneg i32 %i.d to i64                ; 5 uses
  %i.z = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 8
  %i.ab = shl nuw nsw i64 %wide.trip.count, 3
  %i.ac = add nsw i64 %i.y, -1
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !58
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = mul i32 %i.j, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ah ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !58
  %i.ak = fadd double %i.ae, %i.aj
  store double %i.ak, ptr %i.ai, align 8, !tbaa !58
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.am = load double, ptr %i.al, align 8, !tbaa !58
  %i.an = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ao = mul i32 %i.j, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ap ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !58
  %i.as = fadd double %i.am, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph33.unr-lcssa, label %bb.b, !llvm.loop !178

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %i.y
  br i1 %exitcond47.not, label %._crit_edge34, label %bb.c, !llvm.loop !179

._crit_edge34:                                    ; preds = %.loopexit, %bb.a
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.c:                                             ; preds = %.lr.ph33, %.loopexit
  %indvars.iv43 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next44, %.loopexit ] ; 5 uses
  %indvars.iv36 = phi i64 [ 1, %.lr.ph33 ], [ %indvars.iv.next37, %.loopexit ] ; 5 uses
  %i.at = mul i64 %i.aa, %indvars.iv43
  %i.au = add i64 %i.at, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.au
  %i.av = mul i64 %i.ab, %indvars.iv43
  %i.aw = add i64 %i.z, %i.av                     ; 2 uses
  %scevgep48 = getelementptr i8, ptr %i.w, i64 %i.aw
  %scevgep49 = getelementptr i8, ptr %i.u, i64 %i.au
  %scevgep50 = getelementptr i8, ptr %i.u, i64 %i.aw
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 3 uses
  %i.ax = icmp samesign ult i64 %indvars.iv.next44, %i.x
  br i1 %i.ax, label %.lr.ph30, label %.loopexit

.lr.ph30:                                         ; preds = %bb.c
  %i.ay = mul nuw nsw i64 %indvars.iv43, %i.y     ; 4 uses
  %3 = xor i64 %indvars.iv43, -1
  %4 = add nsw i64 %3, %wide.trip.count           ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph30
  %bound0 = icmp ult ptr %scevgep, %scevgep50
  %bound1 = icmp ult ptr %scevgep49, %scevgep48
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.az = add i64 %indvars.iv36, %n.vec
  %invariant.op = add nuw i64 %indvars.iv36, %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.reass ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <2 x double>, ptr %i.ba, align 8, !tbaa !58, !alias.scope !185
  %wide.load51 = load <2 x double>, ptr %i.bb, align 8, !tbaa !58, !alias.scope !185
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.reass ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %wide.load52 = load <2 x double>, ptr %i.bc, align 8, !tbaa !58, !alias.scope !186, !noalias !185
  %wide.load53 = load <2 x double>, ptr %i.bd, align 8, !tbaa !58, !alias.scope !186, !noalias !185
  %i.be = fadd <2 x double> %wide.load, %wide.load52
  %i.bf = fadd <2 x double> %wide.load51, %wide.load53
  store <2 x double> %i.be, ptr %i.bc, align 8, !tbaa !58, !alias.scope !186, !noalias !185
  store <2 x double> %i.bf, ptr %i.bd, align 8, !tbaa !58, !alias.scope !186, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph30, %middle.block
  %indvars.iv38.ph = phi i64 [ %indvars.iv36, %vector.memcheck ], [ %indvars.iv36, %.lr.ph30 ], [ %i.az, %middle.block ] ; 5 uses
  %i.bh = sub i64 %i.y, %indvars.iv38.ph
  %xtraiter55 = and i64 %i.bh, 1
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bi = add nuw nsw i64 %indvars.iv38.ph, %i.ay ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !58
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bi ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !58
  %i.bn = fadd double %i.bk, %i.bm
  store double %i.bn, ptr %i.bl, align 8, !tbaa !58
  %indvars.iv.next39.prol = add nuw nsw i64 %indvars.iv38.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv38.unr = phi i64 [ %indvars.iv38.ph, %scalar.ph.preheader ], [ %indvars.iv.next39.prol, %scalar.ph.prol ]
  %i.bo = icmp eq i64 %indvars.iv38.ph, %i.ac
  br i1 %i.bo, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op57 = add nuw nsw i64 1, %i.ay
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv38 = phi i64 [ %indvars.iv38.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next39.1, %scalar.ph ] ; 3 uses
  %i.bp = add nuw nsw i64 %indvars.iv38, %i.ay    ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !58
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bp ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !58
  %i.bu = fadd double %i.br, %i.bt
  store double %i.bu, ptr %i.bs, align 8, !tbaa !58
  %.reass58 = add nuw nsw i64 %indvars.iv38, %invariant.op57 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.reass58
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !58
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.reass58 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !58
  %i.bz = fadd double %i.bw, %i.by
  store double %i.bz, ptr %i.bx, align 8, !tbaa !58
  %indvars.iv.next39.1 = add nuw nsw i64 %indvars.iv38, 2 ; 2 uses
  %exitcond42.not.1 = icmp eq i64 %indvars.iv.next39.1, %i.y
  br i1 %exitcond42.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !184
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5Ipopt14DenseSymMatrix19HasValidNumbersImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38   ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph23, label %._crit_edge

.lr.ph23:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = zext nneg i32 %i.d to i64                ; 5 uses
  %i.i = zext nneg i32 %i.d to i64
  %i.j = add nsw i64 %i.h, -2
  br label %bb.b

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %.1.lcssa = phi double [ %i.r, %bb.b ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.av, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %i.h
  br i1 %exitcond32.not, label %._crit_edge, label %bb.b, !llvm.loop !187

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.017.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1.lcssa, %.loopexit ]
  %i.k = tail call noundef zeroext i1 @_ZN5Ipopt14IsFiniteNumberEd(double noundef %.017.lcssa)
  ret i1 %i.k

bb.b:                                             ; preds = %.lr.ph23, %.loopexit
  %indvars.iv28 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next29, %.loopexit ] ; 6 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph23 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.01721 = phi double [ 0.000000e+00, %.lr.ph23 ], [ %.1.lcssa, %.loopexit ]
  %i.l = sub i64 %i.j, %indvars.iv28
  %indvars30 = trunc i64 %indvars.iv28 to i32
  %i.m = mul nuw nsw i32 %i.d, %indvars30
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv28
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load double, ptr %i.p, align 8, !tbaa !58
  %i.r = fadd double %.01721, %i.q                ; 3 uses
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 3 uses
  %i.s = icmp samesign ult i64 %indvars.iv.next29, %i.i
  br i1 %i.s, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.t = xor i64 %indvars.iv28, -1
  %i.u = add nsw i64 %i.t, %i.h
  %i.v = mul nuw nsw i64 %indvars.iv28, %i.h
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.v ; 9 uses
  %xtraiter = and i64 %i.u, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv25.prol = phi i64 [ %indvars.iv.next26.prol, %.lr.ph.prol ], [ %indvars.iv, %.lr.ph.preheader ] ; 2 uses
  %.119.prol = phi double [ %i.x, %.lr.ph.prol ], [ %i.r, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25.prol
  %i.w = load double, ptr %gep.prol, align 8, !tbaa !58
  %i.x = fadd double %.119.prol, %i.w             ; 3 uses
  %indvars.iv.next26.prol = add nuw nsw i64 %indvars.iv25.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !188

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %indvars.iv25.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next26.prol, %.lr.ph.prol ]
  %.119.unr = phi double [ %i.r, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %i.y = icmp ult i64 %i.l, 7
  br i1 %i.y, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.7, %.lr.ph ], [ %indvars.iv25.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.119 = phi double [ %i.av, %.lr.ph ], [ %.119.unr, %.lr.ph.prol.loopexit ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %i.z = load double, ptr %gep, align 8, !tbaa !58
  %i.aa = fadd double %.119, %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ac = load double, ptr %gep.1, align 8, !tbaa !58
  %i.ad = fadd double %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.af = load double, ptr %gep.2, align 8, !tbaa !58
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ai = load double, ptr %gep.3, align 8, !tbaa !58
  %i.aj = fadd double %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.al = load double, ptr %gep.4, align 8, !tbaa !58
  %i.am = fadd double %i.aj, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ao = load double, ptr %gep.5, align 8, !tbaa !58
  %i.ap = fadd double %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.ar = load double, ptr %gep.6, align 8, !tbaa !58
  %i.as = fadd double %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv25
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.au = load double, ptr %gep.7, align 8, !tbaa !58
  %i.av = fadd double %i.as, %i.au                ; 2 uses
  %indvars.iv.next26.7 = add nuw nsw i64 %indvars.iv25, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next26.7, %i.h
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !189
}

declare noundef zeroext i1 @_ZN5Ipopt14IsFiniteNumberEd(double noundef) local_unnamed_addr #6

end_hunk_0
