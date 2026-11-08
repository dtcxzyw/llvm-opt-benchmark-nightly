Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpDenseSymMatrix?download=true
inline.NumInlined: 571
inline.NumDeleted: 321
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5Ipopt14DenseSymMatrix23HighRankUpdateTransposeEdRKNS_17MultiVectorMatrixES3_d:bb.a

bb.aj:                                            ; preds = %bb.ai
  %i.gk = load ptr, ptr %.0.i4.i79, align 8, !tbaa !15
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i79) #18, !inline_history !153
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit95

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit95:      ; preds = %bb.aj, %bb.ai, %_ZNK5Ipopt6Vector3DotERKS0_.exit93
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i4.i72, i64 8 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !13
  %i.gp = add nsw i32 %i.go, -1                   ; 2 uses
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
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 4 uses
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
  %i.ab = add nsw i64 %i.y, -1
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !58
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = mul i32 %i.j, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ag ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !58
  %i.aj = fadd double %i.ad, %i.ai
  store double %i.aj, ptr %i.ah, align 8, !tbaa !58
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.al = load double, ptr %i.ak, align 8, !tbaa !58
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.an = mul i32 %i.j, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ao ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !58
  %i.ar = fadd double %i.al, %i.aq
  store double %i.ar, ptr %i.ap, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph33.unr-lcssa, label %bb.b, !llvm.loop !178

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %i.y
  br i1 %exitcond47.not, label %._crit_edge34, label %bb.c, !llvm.loop !179

._crit_edge34:                                    ; preds = %.loopexit, %bb.a
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.c:                                             ; preds = %.lr.ph33, %.loopexit
  %indvars.iv36.a = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next44, %.loopexit ] ; 5 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv36.a, 1 ; 7 uses
  %i.as = icmp samesign ult i64 %indvars.iv.next44, %i.x
  br i1 %i.as, label %.lr.ph30, label %.loopexit

.lr.ph30:                                         ; preds = %bb.c
  %i.at = mul nuw nsw i64 %indvars.iv36.a, %i.y   ; 4 uses
  %i.au = xor i64 %indvars.iv36.a, -1
  %i.av = add nsw i64 %i.au, %wide.trip.count     ; 3 uses
  %min.iters.check = icmp ult i64 %i.av, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph30
  %i.aw = mul i64 %indvars.iv36.a, %i.aa
  %i.ax = add i64 %i.aw, 8                        ; 2 uses
  %i.ay = getelementptr i8, ptr %i.w, i64 %i.ax
  %i.az = add nuw i64 %indvars.iv36.a, 1
  %i.ba = mul i64 %i.z, %i.az                     ; 2 uses
  %i.bb = getelementptr i8, ptr %i.w, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.u, i64 %i.ax
  %i.bd = getelementptr i8, ptr %i.u, i64 %i.ba
  %bound0 = icmp ult ptr %i.ay, %i.bd
  %bound1 = icmp ult ptr %i.bc, %i.bb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, -4                      ; 3 uses
  %i.be = add i64 %indvars.iv.next44, %n.vec
  %invariant.op = add nuw i64 %indvars.iv.next44, %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.reass ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <2 x double>, ptr %i.bf, align 8, !tbaa !58, !alias.scope !185
  %wide.load51.a = load <2 x double>, ptr %i.bg, align 8, !tbaa !58, !alias.scope !185
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.reass ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %wide.load52 = load <2 x double>, ptr %i.bh, align 8, !tbaa !58, !alias.scope !186, !noalias !185
  %wide.load53 = load <2 x double>, ptr %i.bi, align 8, !tbaa !58, !alias.scope !186, !noalias !185
  %i.bj = fadd <2 x double> %wide.load, %wide.load52
  %i.bk = fadd <2 x double> %wide.load51.a, %wide.load53
  store <2 x double> %i.bj, ptr %i.bh, align 8, !tbaa !58, !alias.scope !186, !noalias !185
  store <2 x double> %i.bk, ptr %i.bi, align 8, !tbaa !58, !alias.scope !186, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph30, %middle.block
  %indvars.iv38.ph = phi i64 [ %indvars.iv.next44, %vector.memcheck ], [ %indvars.iv.next44, %.lr.ph30 ], [ %i.be, %middle.block ] ; 5 uses
  %i.bm = sub i64 %i.y, %indvars.iv38.ph
  %xtraiter55 = and i64 %i.bm, 1
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bn = add nuw nsw i64 %indvars.iv38.ph, %i.at ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bn ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !58
  %i.bs = fadd double %i.bp, %i.br
  store double %i.bs, ptr %i.bq, align 8, !tbaa !58
  %indvars.iv.next39.prol = add nuw nsw i64 %indvars.iv38.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv38.unr = phi i64 [ %indvars.iv38.ph, %scalar.ph.preheader ], [ %indvars.iv.next39.prol, %scalar.ph.prol ]
  %i.bt = icmp eq i64 %indvars.iv38.ph, %i.ab
  br i1 %i.bt, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op57 = add nuw nsw i64 1, %i.at
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv38 = phi i64 [ %indvars.iv38.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next39.1, %scalar.ph ] ; 3 uses
  %i.bu = add nuw nsw i64 %indvars.iv38, %i.at    ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !58
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bu ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !58
  %i.bz = fadd double %i.bw, %i.by
  store double %i.bz, ptr %i.bx, align 8, !tbaa !58
  %.reass58 = add nuw nsw i64 %indvars.iv38, %invariant.op57 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.reass58
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !58
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.reass58 ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !58
  %i.ce = fadd double %i.cb, %i.cd
  store double %i.ce, ptr %i.cc, align 8, !tbaa !58
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
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %i.h
  br i1 %exitcond32.not, label %._crit_edge, label %bb.b, !llvm.loop !187

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.017.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1.lcssa, %.loopexit ]
  %i.k = tail call noundef zeroext i1 @_ZN5Ipopt14IsFiniteNumberEd(double noundef %.017.lcssa)
  ret i1 %i.k

bb.b:                                             ; preds = %.lr.ph23, %.loopexit
  %indvars.iv.a = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next29, %.loopexit ] ; 6 uses
  %.01721 = phi double [ 0.000000e+00, %.lr.ph23 ], [ %.1.lcssa, %.loopexit ]
  %i.l = sub i64 %i.j, %indvars.iv.a
  %indvars30 = trunc i64 %indvars.iv.a to i32
  %i.m = mul nuw nsw i32 %i.d, %indvars30
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.a
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load double, ptr %i.p, align 8, !tbaa !58
  %i.r = fadd double %.01721, %i.q                ; 3 uses
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv.a, 1 ; 5 uses
  %i.s = icmp samesign ult i64 %indvars.iv.next29, %i.i
  br i1 %i.s, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.t = xor i64 %indvars.iv.a, -1
  %i.u = add nsw i64 %i.t, %i.h
  %i.v = mul nuw nsw i64 %indvars.iv.a, %i.h
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.v ; 9 uses
  %xtraiter = and i64 %i.u, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv25.prol = phi i64 [ %indvars.iv.next26.prol, %.lr.ph.prol ], [ %indvars.iv.next29, %.lr.ph.preheader ] ; 2 uses
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
  %indvars.iv25.unr = phi i64 [ %indvars.iv.next29, %.lr.ph.preheader ], [ %indvars.iv.next26.prol, %.lr.ph.prol ]
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

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14DenseSymMatrix18ComputeRowAMaxImplERNS_6VectorEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(205) %1, i1 zeroext %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !50, !range !51, !noundef !52
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 233 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !51
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %1)
  store i8 1, ptr %i.a, align 8, !tbaa !50
  store i8 0, ptr %i.d, align 1, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_ZN5Ipopt11DenseVector6ValuesEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !56   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = zext nneg i32 %i.m to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #19
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ] ; 2 uses
  store ptr %.0.i.i.i, ptr %i.g, align 8, !tbaa !49
  br label %_ZN5Ipopt11DenseVector6ValuesEv.exit

_ZN5Ipopt11DenseVector6ValuesEv.exit:             ; preds = %bb.c, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i
  %i.r = phi ptr [ %i.h, %bb.c ], [ %.0.i.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !38   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %_ZN5Ipopt11DenseVector6ValuesEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  %wide.trip.count36 = zext nneg i32 %i.v to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.f
  %indvars.iv31 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next32, %bb.f ] ; 2 uses
  %indvars.iv29 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next30, %bb.f ] ; 2 uses
  %.02024 = phi ptr [ %i.y, %.preheader.preheader ], [ %i.ah, %bb.f ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv31 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %bb.f, %_ZN5Ipopt11DenseVector6ValuesEv.exit
  ret void

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge, label %.preheader, !llvm.loop !190

bb.g:                                             ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.122 = phi ptr [ %.02024, %.preheader ], [ %i.ah, %bb.g ] ; 2 uses
  %i.aa = load double, ptr %.122, align 8, !tbaa !58
  %i.ab = tail call noundef double @llvm.fabs.f64(double %i.aa) ; 4 uses
  %i.ac = load double, ptr %i.z, align 8, !tbaa !58 ; 2 uses
  %i.ad = fcmp olt double %i.ac, %i.ab
  %.sroa.speculated.i = select i1 %i.ad, double %i.ab, double %i.ac
  store double %.sroa.speculated.i, ptr %i.z, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ag = fcmp olt double %i.af, %i.ab
  %.sroa.speculated.i21 = select i1 %i.ag, double %i.ab, double %i.af
  store double %.sroa.speculated.i21, ptr %i.ae, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %.122, i64 8 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv29
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !191
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14DenseSymMatrix9PrintImplERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str)
  %i.d = load ptr, ptr %6, align 8, !tbaa !197
  %i.e = load ptr, ptr %4, align 8, !tbaa !197
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !38
  %i.j = load ptr, ptr %1, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  tail call void (ptr, i32, i32, i32, ptr, ...) %i.l(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @.str.1, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load i8, ptr %i.m, align 8, !tbaa !40, !range !51, !noundef !52
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.preheader29, label %bb.b

.preheader29:                                     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !37
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.v = phi ptr [ %i.q, %.preheader.lr.ph ], [ %i.z, %._crit_edge ] ; 2 uses
  %.02831 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.aa, %._crit_edge ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38   ; 2 uses
  %i.y = icmp slt i32 %.02831, %i.x
  br i1 %i.y, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.z = phi ptr [ %i.v, %.preheader ], [ %i.ar, %.lr.ph ] ; 2 uses
  %i.aa = add nuw nsw i32 %.02831, 1              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !37
  %i.ad = icmp slt i32 %i.aa, %i.ac
  br i1 %i.ad, label %.preheader, label %.loopexit, !llvm.loop !192

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.ae = phi i32 [ %i.at, %.lr.ph ], [ %i.x, %.preheader ]
  %.030 = phi i32 [ %i.aq, %.lr.ph ], [ %.02831, %.preheader ] ; 3 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !197
  %i.ag = load ptr, ptr %4, align 8, !tbaa !197
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.ai = mul nuw nsw i32 %i.ae, %.02831
  %i.aj = add nsw i32 %i.ai, %.030
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
end_hunk_0
