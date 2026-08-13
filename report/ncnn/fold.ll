loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn4Fold7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit, %_ZNK4ncnn3Mat5emptyEv.exit
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.z
  %.131 = phi i32 [ 0, %bb.z ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit37.thread

bb.ab:                                            ; preds = %bb.y, %bb.p
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.p ], [ %i.eu, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.ai

_ZNK4ncnn3Mat5emptyEv.exit37.thread:              ; preds = %bb.j, %_ZNK4ncnn3Mat5emptyEv.exit37, %bb.aa
  %.2 = phi i32 [ %.131, %bb.aa ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit37 ], [ -100, %bb.j ]
  %i.ev = load ptr, ptr %i.ay, align 8, !tbaa !45 ; 2 uses
  %.not.i39 = icmp eq ptr %i.ev, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit38, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit37.thread
  %i.ew = atomicrmw add ptr %i.ev, i32 -1 acq_rel, align 4
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit38

bb.ad:                                            ; preds = %bb.ac
  %i.ey = load ptr, ptr %i.bb, align 16, !tbaa !46 ; 3 uses
  %.not3.i = icmp eq ptr %i.ey, null
  %i.ez = load ptr, ptr %4, align 16, !tbaa !47   ; 3 uses
  br i1 %.not3.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !48
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  invoke void %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef %i.ez)
          to label %_ZN4ncnn3MatD2Ev.exit38 unwind label %bb.ah, !inline_history !50

bb.af:                                            ; preds = %bb.ad
  %.not.i57 = icmp eq ptr %i.ez, null
  br i1 %.not.i57, label %_ZN4ncnn3MatD2Ev.exit38, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.ez) #6
  br label %_ZN4ncnn3MatD2Ev.exit38

bb.ah:                                            ; preds = %bb.ae
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit38:                          ; preds = %bb.ac, %_ZNK4ncnn3Mat5emptyEv.exit37.thread, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.2

bb.ai:                                            ; preds = %bb.ab, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.bj, %bb.b ]
  %i.ff = load ptr, ptr %i.ay, align 8, !tbaa !45 ; 2 uses
  %.not.i40 = icmp eq ptr %i.ff, null
  br i1 %.not.i40, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = atomicrmw add ptr %i.ff, i32 -1 acq_rel, align 4
  %i.fh = icmp eq i32 %i.fg, 1
  br i1 %i.fh, label %bb.ak, label %_ZN4ncnn3MatD2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fi = load ptr, ptr %i.bb, align 16, !tbaa !46 ; 3 uses
  %.not3.i41 = icmp eq ptr %i.fi, null
  %i.fj = load ptr, ptr %4, align 16, !tbaa !47   ; 3 uses
  br i1 %.not3.i41, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !48
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef %i.fj)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ao, !inline_history !50

bb.am:                                            ; preds = %bb.ak
  %.not.i55 = icmp eq ptr %i.fj, null
  br i1 %.not.i55, label %_ZN4ncnn3MatD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.fj) #6
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ao:                                            ; preds = %bb.al
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.aj, %bb.ai, %bb.al, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  resume { ptr, i32 } %.pn.pn
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn4FoldC2Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn4FoldE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !61
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn4Fold7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !43     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !43
  %i.h = load i32, ptr %0, align 4, !tbaa !43     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !43
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 11 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !43
  %i.k = load i32, ptr %i.a, align 4, !tbaa !43   ; 15 uses
  %.not83 = icmp sgt i32 %i.k, %i.j
  br i1 %.not83, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load i32, ptr %4, align 4, !tbaa !43
  %i.m = load ptr, ptr %3, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !62
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !42
  %factor.op.mul = mul i64 %i.r, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !62, !noalias !63
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !39, !noalias !63
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !66, !noalias !63
  %i.y = load ptr, ptr %5, align 8, !tbaa !47, !noalias !63 ; 22 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !44, !noalias !63
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !42, !noalias !63 ; 4 uses
  %factor.op.mul85 = mul i64 %i.aa, %i.ac         ; 22 uses
  %i.ad = sext i32 %i.t to i64                    ; 2 uses
  %i.ae = sext i32 %i.v to i64
  %i.af = mul nsw i64 %i.ae, %i.ad                ; 2 uses
  %i.ag = mul i64 %i.ac, %i.af
  %i.ah = add i64 %i.ag, 15
  %i.ai = and i64 %i.ah, -16
  %i.aj = udiv i64 %i.ai, %i.ac
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !67, !noalias !63
  %i.am = icmp eq i32 %i.al, 4
  %spec.select = select i1 %i.am, i64 %i.af, i64 %i.aj
  %i.an = trunc i64 %spec.select to i32
  %i.ao = mul i32 %i.x, %i.an                     ; 6 uses
  %i.ap = icmp sgt i32 %i.ao, 0                   ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.au = mul i64 %i.ac, %i.ad
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 224
  br i1 %i.as, label %.noexc.lr.ph.split.us, label %.noexc.lr.ph.split

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !9  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.noexc.lr.ph.split.us.split.us, label %.noexc.lr.ph.split.us.split

.noexc.lr.ph.split.us.split.us:                   ; preds = %.noexc.lr.ph.split.us
  %i.ba = load i32, ptr %i.at, align 4, !tbaa !30
  %i.bb = load i32, ptr %i.av, align 8, !tbaa !29
  %i.bc = load i32, ptr %7, align 4, !tbaa !43    ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.noexc.lr.ph.split.us.split.us.split.us, label %.noexc.lr.ph.split.us.split.us.split

.noexc.lr.ph.split.us.split.us.split.us:          ; preds = %.noexc.lr.ph.split.us.split.us
  %i.be = load i32, ptr %8, align 4, !tbaa !43    ; 4 uses
  %i.bf = icmp sgt i32 %i.be, 0
  %i.bg = load i32, ptr %9, align 4, !tbaa !43
  %i.bh = sext i32 %i.bg to i64
  br i1 %i.bf, label %.noexc.lr.ph.split.us.split.us.split.us.split.us, label %.noexc.us.us.us.preheader

.noexc.us.us.us.preheader:                        ; preds = %.noexc.lr.ph.split.us.split.us.split.us
  %i.bi = sext i32 %i.k to i64                    ; 5 uses
  %i.bj = zext nneg i32 %i.ao to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2                ; 5 uses
  %i.bl = add i32 %i.j, 1
  %10 = sub i32 %i.bl, %i.k                       ; 2 uses
  %i.bm = sub i32 %i.j, %i.k
  %xtraiter189 = and i32 %10, 3                   ; 3 uses
  %11 = icmp ult i32 %i.bm, 3
  br i1 %11, label %.noexc.us.us.us.epil.preheader, label %.noexc.us.us.us.preheader.new

.noexc.us.us.us.preheader.new:                    ; preds = %.noexc.us.us.us.preheader
  %unroll_iter193 = and i32 %10, -4
  br label %.noexc.us.us.us

.noexc.lr.ph.split.us.split.us.split.us.split.us: ; preds = %.noexc.lr.ph.split.us.split.us.split.us
  %i.bn = load i32, ptr %i.aw, align 8, !tbaa !31
  %i.bo = sext i32 %i.bn to i64                   ; 6 uses
  %i.bp = sext i32 %i.k to i64                    ; 2 uses
  %i.bq = zext nneg i32 %i.ao to i64
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = sext i32 %i.bb to i64
  %i.bt = sext i32 %i.ba to i64
  %i.bu = sext i32 %i.l to i64
  %i.bv = add nsw i32 %i.j, 1
  %i.bw = sub i32 %i.bv, %i.k
  %factor.op.mul158 = mul i64 %factor.op.mul, %i.bu
  %wide.trip.count137 = zext nneg i32 %i.ar to i64
  %factor.op.mul157 = mul i64 %i.au, %i.bt
  %wide.trip.count = zext nneg i32 %i.ay to i64
  %xtraiter197 = and i32 %i.be, 3                 ; 3 uses
  %i.bx = icmp ult i32 %i.be, 4
  %unroll_iter203 = and i32 %i.be, 2147483644
  %lcmp.mod199.not = icmp eq i32 %xtraiter197, 0
  %lcmp.mod202 = icmp ne i32 %xtraiter197, 0
  br label %.noexc.us.us.us.us

.noexc.us.us.us.us:                               ; preds = %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us, %.noexc.lr.ph.split.us.split.us.split.us.split.us
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us ], [ %i.bp, %.noexc.lr.ph.split.us.split.us.split.us.split.us ] ; 3 uses
  %indvar127 = phi i64 [ %indvar.next128, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us ], [ 0, %.noexc.lr.ph.split.us.split.us.split.us.split.us ] ; 2 uses
  %.reass159 = mul i64 %indvars.iv139, %factor.op.mul158
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 %.reass159
  %.reass86.us.us.us.us = mul i64 %factor.op.mul85, %indvars.iv139
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 %.reass86.us.us.us.us
  br i1 %i.ap, label %.lr.ph.us.us.us.us.preheader, label %.preheader52.us.us.us.us.us.us.preheader

.lr.ph.us.us.us.us.preheader:                     ; preds = %.noexc.us.us.us.us
  %i.ca = add i64 %indvar127, %i.bp
  %i.cb = mul i64 %factor.op.mul85, %i.ca
  %scevgep129 = getelementptr i8, ptr %i.y, i64 %i.cb
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep129, i8 0, i64 %i.br, i1 false), !tbaa !68
  br label %.preheader52.us.us.us.us.us.us.preheader

.preheader52.us.us.us.us.us.us.preheader:         ; preds = %.lr.ph.us.us.us.us.preheader, %.noexc.us.us.us.us
  br label %.preheader52.us.us.us.us.us.us

.preheader52.us.us.us.us.us.us:                   ; preds = %.preheader52.us.us.us.us.us.us.preheader, %._crit_edge.split.us.split.us.us.us.us.us.us.us
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %._crit_edge.split.us.split.us.us.us.us.us.us.us ], [ 0, %.preheader52.us.us.us.us.us.us.preheader ] ; 2 uses
  %.03975.us.us.us.us.us.us = phi ptr [ %.lcssa, %._crit_edge.split.us.split.us.us.us.us.us.us.us ], [ %i.by, %.preheader52.us.us.us.us.us.us.preheader ]
  %.reass = mul i64 %indvars.iv134, %factor.op.mul157
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.reass
  br label %.preheader.lr.ph.us.us.us.us.us.us.us.us

.preheader.lr.ph.us.us.us.us.us.us.us.us:         ; preds = %._crit_edge63.split.us.us.us.us.us.us.us.us.us, %.preheader52.us.us.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge63.split.us.us.us.us.us.us.us.us.us ], [ 0, %.preheader52.us.us.us.us.us.us ] ; 2 uses
  %.14065.us.us.us.us.us.us.us.us = phi ptr [ %.lcssa, %._crit_edge63.split.us.us.us.us.us.us.us.us.us ], [ %.03975.us.us.us.us.us.us, %.preheader52.us.us.us.us.us.us ]
  %i.cd = mul nsw i64 %indvars.iv, %i.bs
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  br label %.preheader.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us:            ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us.us.us.us
  %.03562.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us.us.us.us.us.us.us ], [ %i.dh, %._crit_edge.us.us.us.us.us.us.us.us.us ]
  %.03661.us.us.us.us.us.us.us.us.us = phi ptr [ %i.ce, %.preheader.lr.ph.us.us.us.us.us.us.us.us ], [ %i.dg, %._crit_edge.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.260.us.us.us.us.us.us.us.us.us = phi ptr [ %.14065.us.us.us.us.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us.us.us.us ], [ %.lcssa, %._crit_edge.us.us.us.us.us.us.us.us.us ] ; 2 uses
  br i1 %i.bx, label %.epil.preheader, label %.preheader.us.us.us.us.us.us.us.us.us.new

.preheader.us.us.us.us.us.us.us.us.us.new:        ; preds = %.preheader.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.new
  %.156.us.us.us.us.us.us.us.us.us = phi ptr [ %i.cx, %.preheader.us.us.us.us.us.us.us.us.us.new ], [ %.03661.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.355.us.us.us.us.us.us.us.us.us = phi ptr [ %i.cy, %.preheader.us.us.us.us.us.us.us.us.us.new ], [ %.260.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us ] ; 5 uses
  %niter204 = phi i32 [ %niter204.next.3, %.preheader.us.us.us.us.us.us.us.us.us.new ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us ]
  %i.cf = load float, ptr %.355.us.us.us.us.us.us.us.us.us, align 4, !tbaa !68
  %i.cg = load float, ptr %.156.us.us.us.us.us.us.us.us.us, align 4, !tbaa !68
  %i.ch = fadd fast float %i.cg, %i.cf
  store float %i.ch, ptr %.156.us.us.us.us.us.us.us.us.us, align 4, !tbaa !68
  %i.ci = getelementptr inbounds [4 x i8], ptr %.156.us.us.us.us.us.us.us.us.us, i64 %i.bo ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.355.us.us.us.us.us.us.us.us.us, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !68
  %i.cl = load float, ptr %i.ci, align 4, !tbaa !68
  %i.cm = fadd fast float %i.cl, %i.ck
  store float %i.cm, ptr %i.ci, align 4, !tbaa !68
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.bo ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.355.us.us.us.us.us.us.us.us.us, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !68
  %i.cq = load float, ptr %i.cn, align 4, !tbaa !68
  %i.cr = fadd fast float %i.cq, %i.cp
  store float %i.cr, ptr %i.cn, align 4, !tbaa !68
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.bo ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.355.us.us.us.us.us.us.us.us.us, i64 12
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !68
  %i.cv = load float, ptr %i.cs, align 4, !tbaa !68
  %i.cw = fadd fast float %i.cv, %i.cu
  store float %i.cw, ptr %i.cs, align 4, !tbaa !68
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.bo ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.355.us.us.us.us.us.us.us.us.us, i64 16 ; 3 uses
  %niter204.next.3 = add nuw nsw i32 %niter204, 4 ; 2 uses
  %niter204.ncmp.3 = icmp eq i32 %niter204.next.3, %unroll_iter203
  br i1 %niter204.ncmp.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us.us.us.us.us.us.us.us.new, !llvm.loop !70

._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %.preheader.us.us.us.us.us.us.us.us.us.new
  br i1 %lcmp.mod199.not, label %._crit_edge.us.us.us.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us.us.us.us.us.us.us.us
  %.156.us.us.us.us.us.us.us.us.us.epil.init = phi ptr [ %.03661.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us ], [ %i.cx, %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa ]
  %.355.us.us.us.us.us.us.us.us.us.epil.init = phi ptr [ %.260.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us ], [ %i.cy, %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod202)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.156.us.us.us.us.us.us.us.us.us.epil = phi ptr [ %.156.us.us.us.us.us.us.us.us.us.epil.init, %.epil.preheader ], [ %i.dc, %bb.c ] ; 4 uses
  %.355.us.us.us.us.us.us.us.us.us.epil = phi ptr [ %.355.us.us.us.us.us.us.us.us.us.epil.init, %.epil.preheader ], [ %i.dd, %bb.c ] ; 2 uses
  %epil.iter198 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter198.next, %bb.c ]
  %i.cz = load float, ptr %.355.us.us.us.us.us.us.us.us.us.epil, align 4, !tbaa !68
  %i.da = load float, ptr %.156.us.us.us.us.us.us.us.us.us.epil, align 4, !tbaa !68
  %i.db = fadd fast float %i.da, %i.cz
  store float %i.db, ptr %.156.us.us.us.us.us.us.us.us.us.epil, align 4, !tbaa !68
  %i.dc = getelementptr inbounds [4 x i8], ptr %.156.us.us.us.us.us.us.us.us.us.epil, i64 %i.bo
  %i.dd = getelementptr inbounds nuw i8, ptr %.355.us.us.us.us.us.us.us.us.us.epil, i64 4 ; 2 uses
  %epil.iter198.next = add i32 %epil.iter198, 1   ; 2 uses
  %epil.iter198.cmp.not = icmp eq i32 %epil.iter198.next, %xtraiter197
  br i1 %epil.iter198.cmp.not, label %._crit_edge.us.us.us.us.us.us.us.us.us, label %bb.c, !llvm.loop !72

._crit_edge.us.us.us.us.us.us.us.us.us:           ; preds = %bb.c, %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa
  %i.de = phi ptr [ %i.cs, %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %.156.us.us.us.us.us.us.us.us.us.epil, %bb.c ]
  %.lcssa = phi ptr [ %i.cy, %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %i.dd, %bb.c ] ; 3 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.bo
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.bh
  %i.dh = add nuw nsw i32 %.03562.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond131.not = icmp eq i32 %i.dh, %i.bc
  br i1 %exitcond131.not, label %._crit_edge63.split.us.us.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us.us, !llvm.loop !74

._crit_edge63.split.us.us.us.us.us.us.us.us.us:   ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond133.not, label %._crit_edge.split.us.split.us.us.us.us.us.us.us, label %.preheader.lr.ph.us.us.us.us.us.us.us.us, !llvm.loop !75

._crit_edge.split.us.split.us.us.us.us.us.us.us:  ; preds = %._crit_edge63.split.us.us.us.us.us.us.us.us.us
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us, label %.preheader52.us.us.us.us.us.us, !llvm.loop !76

_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us: ; preds = %._crit_edge.split.us.split.us.us.us.us.us.us.us
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, 1
  %indvar.next128 = add nuw nsw i64 %indvar127, 1 ; 2 uses
  %lftr.wideiv142 = trunc i64 %indvar.next128 to i32
  %exitcond143.not = icmp eq i32 %i.bw, %lftr.wideiv142
  br i1 %exitcond143.not, label %._crit_edge, label %.noexc.us.us.us.us

.noexc.us.us.us:                                  ; preds = %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3, %.noexc.us.us.us.preheader.new
  %indvar122 = phi i64 [ 0, %.noexc.us.us.us.preheader.new ], [ %indvar.next123.3, %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3 ] ; 5 uses
  %niter194 = phi i32 [ 0, %.noexc.us.us.us.preheader.new ], [ %niter194.next.3, %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3 ]
  br i1 %i.ap, label %.lr.ph.us.us.us.preheader, label %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3

.lr.ph.us.us.us.preheader:                        ; preds = %.noexc.us.us.us
  %i.di = add nsw i64 %indvar122, %i.bi
  %i.dj = mul i64 %factor.op.mul85, %i.di
  %scevgep124 = getelementptr i8, ptr %i.y, i64 %i.dj
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep124, i8 0, i64 %i.bk, i1 false), !tbaa !68
  %indvar.next123 = or disjoint i64 %indvar122, 1
  %i.dk = add nsw i64 %indvar.next123, %i.bi
  %i.dl = mul i64 %factor.op.mul85, %i.dk
  %scevgep124.1 = getelementptr i8, ptr %i.y, i64 %i.dl
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep124.1, i8 0, i64 %i.bk, i1 false), !tbaa !68
  %indvar.next123.1 = or disjoint i64 %indvar122, 2
  %i.dm = add nsw i64 %indvar.next123.1, %i.bi
  %i.dn = mul i64 %factor.op.mul85, %i.dm
  %scevgep124.2 = getelementptr i8, ptr %i.y, i64 %i.dn
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep124.2, i8 0, i64 %i.bk, i1 false), !tbaa !68
  %indvar.next123.2 = or disjoint i64 %indvar122, 3
  %i.do = add nsw i64 %indvar.next123.2, %i.bi
  %i.dp = mul i64 %factor.op.mul85, %i.do
  %scevgep124.3 = getelementptr i8, ptr %i.y, i64 %i.dp
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep124.3, i8 0, i64 %i.bk, i1 false), !tbaa !68
  br label %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3

_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3:    ; preds = %.noexc.us.us.us, %.lr.ph.us.us.us.preheader
  %indvar.next123.3 = add nuw nsw i64 %indvar122, 4 ; 2 uses
  %niter194.next.3 = add i32 %niter194, 4         ; 2 uses
  %niter194.ncmp.3 = icmp eq i32 %niter194.next.3, %unroll_iter193
  br i1 %niter194.ncmp.3, label %._crit_edge.loopexit166.unr-lcssa, label %.noexc.us.us.us

.noexc.lr.ph.split.us.split.us.split:             ; preds = %.noexc.lr.ph.split.us.split.us
  br i1 %i.ap, label %.noexc.us.us.us97.preheader, label %._crit_edge

.noexc.us.us.us97.preheader:                      ; preds = %.noexc.lr.ph.split.us.split.us.split
  %i.dq = sext i32 %i.k to i64                    ; 5 uses
  %i.dr = zext nneg i32 %i.ao to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2                ; 5 uses
  %i.dt = add nsw i32 %i.j, 1
  %i.du = sub i32 %i.dt, %i.k                     ; 2 uses
  %i.dv = sub i32 %i.j, %i.k
  %xtraiter181 = and i32 %i.du, 3                 ; 3 uses
  %i.dw = icmp ult i32 %i.dv, 3
  br i1 %i.dw, label %.noexc.us.us.us97.epil.preheader, label %.noexc.us.us.us97.preheader.new

.noexc.us.us.us97.preheader.new:                  ; preds = %.noexc.us.us.us97.preheader
  %unroll_iter185 = and i32 %i.du, -4
  br label %.noexc.us.us.us97

.noexc.us.us.us97:                                ; preds = %.noexc.us.us.us97, %.noexc.us.us.us97.preheader.new
  %indvar117 = phi i64 [ 0, %.noexc.us.us.us97.preheader.new ], [ %indvar.next118.3, %.noexc.us.us.us97 ] ; 5 uses
  %niter186 = phi i32 [ 0, %.noexc.us.us.us97.preheader.new ], [ %niter186.next.3, %.noexc.us.us.us97 ]
  %i.dx = add nsw i64 %indvar117, %i.dq
  %i.dy = mul i64 %factor.op.mul85, %i.dx
  %scevgep119 = getelementptr i8, ptr %i.y, i64 %i.dy
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep119, i8 0, i64 %i.ds, i1 false), !tbaa !68
  %indvar.next118 = or disjoint i64 %indvar117, 1
  %i.dz = add nsw i64 %indvar.next118, %i.dq
  %i.ea = mul i64 %factor.op.mul85, %i.dz
  %scevgep119.1 = getelementptr i8, ptr %i.y, i64 %i.ea
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep119.1, i8 0, i64 %i.ds, i1 false), !tbaa !68
  %indvar.next118.1 = or disjoint i64 %indvar117, 2
  %i.eb = add nsw i64 %indvar.next118.1, %i.dq
  %i.ec = mul i64 %factor.op.mul85, %i.eb
  %scevgep119.2 = getelementptr i8, ptr %i.y, i64 %i.ec
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep119.2, i8 0, i64 %i.ds, i1 false), !tbaa !68
  %indvar.next118.2 = or disjoint i64 %indvar117, 3
  %i.ed = add nsw i64 %indvar.next118.2, %i.dq
  %i.ee = mul i64 %factor.op.mul85, %i.ed
  %scevgep119.3 = getelementptr i8, ptr %i.y, i64 %i.ee
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep119.3, i8 0, i64 %i.ds, i1 false), !tbaa !68
  %indvar.next118.3 = add nuw nsw i64 %indvar117, 4 ; 2 uses
  %niter186.next.3 = add i32 %niter186, 4         ; 2 uses
  %niter186.ncmp.3 = icmp eq i32 %niter186.next.3, %unroll_iter185
  br i1 %niter186.ncmp.3, label %._crit_edge.loopexit167.unr-lcssa, label %.noexc.us.us.us97

.noexc.lr.ph.split.us.split:                      ; preds = %.noexc.lr.ph.split.us
  br i1 %i.ap, label %.noexc.us.preheader, label %._crit_edge

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us.split
  %i.ef = sext i32 %i.k to i64                    ; 5 uses
  %i.eg = zext nneg i32 %i.ao to i64
  %i.eh = shl nuw nsw i64 %i.eg, 2                ; 5 uses
  %i.ei = add nsw i32 %i.j, 1
  %i.ej = sub i32 %i.ei, %i.k                     ; 2 uses
  %i.ek = sub i32 %i.j, %i.k
  %xtraiter173 = and i32 %i.ej, 3                 ; 3 uses
  %i.el = icmp ult i32 %i.ek, 3
  br i1 %i.el, label %.noexc.us.epil.preheader, label %.noexc.us.preheader.new

.noexc.us.preheader.new:                          ; preds = %.noexc.us.preheader
  %unroll_iter177 = and i32 %i.ej, -4
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us, %.noexc.us.preheader.new
  %indvar112 = phi i64 [ 0, %.noexc.us.preheader.new ], [ %indvar.next113.3, %.noexc.us ] ; 5 uses
  %niter178 = phi i32 [ 0, %.noexc.us.preheader.new ], [ %niter178.next.3, %.noexc.us ]
  %i.em = add nsw i64 %indvar112, %i.ef
  %i.en = mul i64 %factor.op.mul85, %i.em
  %scevgep114 = getelementptr i8, ptr %i.y, i64 %i.en
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep114, i8 0, i64 %i.eh, i1 false), !tbaa !68
  %indvar.next113 = or disjoint i64 %indvar112, 1
  %i.eo = add nsw i64 %indvar.next113, %i.ef
  %i.ep = mul i64 %factor.op.mul85, %i.eo
  %scevgep114.1 = getelementptr i8, ptr %i.y, i64 %i.ep
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep114.1, i8 0, i64 %i.eh, i1 false), !tbaa !68
  %indvar.next113.1 = or disjoint i64 %indvar112, 2
  %i.eq = add nsw i64 %indvar.next113.1, %i.ef
  %i.er = mul i64 %factor.op.mul85, %i.eq
  %scevgep114.2 = getelementptr i8, ptr %i.y, i64 %i.er
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep114.2, i8 0, i64 %i.eh, i1 false), !tbaa !68
  %indvar.next113.2 = or disjoint i64 %indvar112, 3
  %i.es = add nsw i64 %indvar.next113.2, %i.ef
  %i.et = mul i64 %factor.op.mul85, %i.es
  %scevgep114.3 = getelementptr i8, ptr %i.y, i64 %i.et
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep114.3, i8 0, i64 %i.eh, i1 false), !tbaa !68
  %indvar.next113.3 = add nuw nsw i64 %indvar112, 4 ; 2 uses
  %niter178.next.3 = add i32 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i32 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %._crit_edge.loopexit168.unr-lcssa, label %.noexc.us

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  br i1 %i.ap, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split
  %i.eu = sext i32 %i.k to i64                    ; 5 uses
  %i.ev = zext nneg i32 %i.ao to i64
  %i.ew = shl nuw nsw i64 %i.ev, 2                ; 5 uses
  %i.ex = add nsw i32 %i.j, 1
  %i.ey = sub i32 %i.ex, %i.k                     ; 2 uses
  %i.ez = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.ey, 3                    ; 3 uses
  %i.fa = icmp ult i32 %i.ez, 3
  br i1 %i.fa, label %.noexc.epil.preheader, label %.noexc.preheader.new

.noexc.preheader.new:                             ; preds = %.noexc.preheader
  %unroll_iter = and i32 %i.ey, -4
  br label %.noexc

.noexc:                                           ; preds = %.noexc, %.noexc.preheader.new
  %indvar = phi i64 [ 0, %.noexc.preheader.new ], [ %indvar.next.3, %.noexc ] ; 5 uses
  %niter = phi i32 [ 0, %.noexc.preheader.new ], [ %niter.next.3, %.noexc ]
  %i.fb = add nsw i64 %indvar, %i.eu
  %i.fc = mul i64 %factor.op.mul85, %i.fb
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.fc
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ew, i1 false), !tbaa !68
  %indvar.next = or disjoint i64 %indvar, 1
  %i.fd = add nsw i64 %indvar.next, %i.eu
  %i.fe = mul i64 %factor.op.mul85, %i.fd
  %scevgep.1 = getelementptr i8, ptr %i.y, i64 %i.fe
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1, i8 0, i64 %i.ew, i1 false), !tbaa !68
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.ff = add nsw i64 %indvar.next.1, %i.eu
  %i.fg = mul i64 %factor.op.mul85, %i.ff
  %scevgep.2 = getelementptr i8, ptr %i.y, i64 %i.fg
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2, i8 0, i64 %i.ew, i1 false), !tbaa !68
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.fh = add nsw i64 %indvar.next.2, %i.eu
  %i.fi = mul i64 %factor.op.mul85, %i.fh
  %scevgep.3 = getelementptr i8, ptr %i.y, i64 %i.fi
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3, i8 0, i64 %i.ew, i1 false), !tbaa !68
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit169.unr-lcssa, label %.noexc

._crit_edge.loopexit166.unr-lcssa:                ; preds = %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3
  %lcmp.mod191.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod191.not, label %._crit_edge, label %.noexc.us.us.us.epil.preheader

.noexc.us.us.us.epil.preheader:                   ; preds = %._crit_edge.loopexit166.unr-lcssa, %.noexc.us.us.us.preheader
  %indvar122.epil.init = phi i64 [ 0, %.noexc.us.us.us.preheader ], [ %indvar.next123.3, %._crit_edge.loopexit166.unr-lcssa ]
  %lcmp.mod192 = icmp ne i32 %xtraiter189, 0
  call void @llvm.assume(i1 %lcmp.mod192)
  br label %.noexc.us.us.us.epil

.noexc.us.us.us.epil:                             ; preds = %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil, %.noexc.us.us.us.epil.preheader
  %indvar122.epil = phi i64 [ %indvar122.epil.init, %.noexc.us.us.us.epil.preheader ], [ %indvar.next123.epil, %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil ] ; 2 uses
  %epil.iter190 = phi i32 [ 0, %.noexc.us.us.us.epil.preheader ], [ %epil.iter190.next, %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil ]
  br i1 %i.ap, label %.lr.ph.us.us.us.preheader.epil, label %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil

.lr.ph.us.us.us.preheader.epil:                   ; preds = %.noexc.us.us.us.epil
  %i.fj = add i64 %indvar122.epil, %i.bi
  %i.fk = mul i64 %factor.op.mul85, %i.fj
  %scevgep124.epil = getelementptr i8, ptr %i.y, i64 %i.fk
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep124.epil, i8 0, i64 %i.bk, i1 false), !tbaa !68
  br label %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil

_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil: ; preds = %.lr.ph.us.us.us.preheader.epil, %.noexc.us.us.us.epil
  %indvar.next123.epil = add nuw nsw i64 %indvar122.epil, 1
  %epil.iter190.next = add i32 %epil.iter190, 1   ; 2 uses
  %epil.iter190.cmp.not = icmp eq i32 %epil.iter190.next, %xtraiter189
  br i1 %epil.iter190.cmp.not, label %._crit_edge, label %.noexc.us.us.us.epil, !llvm.loop !77

._crit_edge.loopexit167.unr-lcssa:                ; preds = %.noexc.us.us.us97
  %lcmp.mod183.not = icmp eq i32 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %._crit_edge, label %.noexc.us.us.us97.epil.preheader

.noexc.us.us.us97.epil.preheader:                 ; preds = %._crit_edge.loopexit167.unr-lcssa, %.noexc.us.us.us97.preheader
  %indvar117.epil.init = phi i64 [ 0, %.noexc.us.us.us97.preheader ], [ %indvar.next118.3, %._crit_edge.loopexit167.unr-lcssa ]
  %lcmp.mod184 = icmp ne i32 %xtraiter181, 0
  call void @llvm.assume(i1 %lcmp.mod184)
  br label %.noexc.us.us.us97.epil

.noexc.us.us.us97.epil:                           ; preds = %.noexc.us.us.us97.epil, %.noexc.us.us.us97.epil.preheader
  %indvar117.epil = phi i64 [ %indvar117.epil.init, %.noexc.us.us.us97.epil.preheader ], [ %indvar.next118.epil, %.noexc.us.us.us97.epil ] ; 2 uses
  %epil.iter182 = phi i32 [ 0, %.noexc.us.us.us97.epil.preheader ], [ %epil.iter182.next, %.noexc.us.us.us97.epil ]
  %i.fl = add i64 %indvar117.epil, %i.dq
  %i.fm = mul i64 %factor.op.mul85, %i.fl
  %scevgep119.epil = getelementptr i8, ptr %i.y, i64 %i.fm
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep119.epil, i8 0, i64 %i.ds, i1 false), !tbaa !68
  %indvar.next118.epil = add nuw nsw i64 %indvar117.epil, 1
  %epil.iter182.next = add i32 %epil.iter182, 1   ; 2 uses
  %epil.iter182.cmp.not = icmp eq i32 %epil.iter182.next, %xtraiter181
  br i1 %epil.iter182.cmp.not, label %._crit_edge, label %.noexc.us.us.us97.epil, !llvm.loop !78

._crit_edge.loopexit168.unr-lcssa:                ; preds = %.noexc.us
  %lcmp.mod175.not = icmp eq i32 %xtraiter173, 0
  br i1 %lcmp.mod175.not, label %._crit_edge, label %.noexc.us.epil.preheader

.noexc.us.epil.preheader:                         ; preds = %._crit_edge.loopexit168.unr-lcssa, %.noexc.us.preheader
  %indvar112.epil.init = phi i64 [ 0, %.noexc.us.preheader ], [ %indvar.next113.3, %._crit_edge.loopexit168.unr-lcssa ]
  %lcmp.mod176 = icmp ne i32 %xtraiter173, 0
  call void @llvm.assume(i1 %lcmp.mod176)
  br label %.noexc.us.epil

.noexc.us.epil:                                   ; preds = %.noexc.us.epil, %.noexc.us.epil.preheader
  %indvar112.epil = phi i64 [ %indvar112.epil.init, %.noexc.us.epil.preheader ], [ %indvar.next113.epil, %.noexc.us.epil ] ; 2 uses
  %epil.iter174 = phi i32 [ 0, %.noexc.us.epil.preheader ], [ %epil.iter174.next, %.noexc.us.epil ]
  %i.fn = add i64 %indvar112.epil, %i.ef
  %i.fo = mul i64 %factor.op.mul85, %i.fn
  %scevgep114.epil = getelementptr i8, ptr %i.y, i64 %i.fo
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep114.epil, i8 0, i64 %i.eh, i1 false), !tbaa !68
  %indvar.next113.epil = add nuw nsw i64 %indvar112.epil, 1
  %epil.iter174.next = add i32 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i32 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %._crit_edge, label %.noexc.us.epil, !llvm.loop !79

._crit_edge.loopexit169.unr-lcssa:                ; preds = %.noexc
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.noexc.epil.preheader

.noexc.epil.preheader:                            ; preds = %._crit_edge.loopexit169.unr-lcssa, %.noexc.preheader
  %indvar.epil.init = phi i64 [ 0, %.noexc.preheader ], [ %indvar.next.3, %._crit_edge.loopexit169.unr-lcssa ]
  %lcmp.mod170 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod170)
  br label %.noexc.epil

.noexc.epil:                                      ; preds = %.noexc.epil, %.noexc.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.noexc.epil.preheader ], [ %indvar.next.epil, %.noexc.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.noexc.epil.preheader ], [ %epil.iter.next, %.noexc.epil ]
  %i.fp = add i64 %indvar.epil, %i.eu
  %i.fq = mul i64 %factor.op.mul85, %i.fp
  %scevgep.epil = getelementptr i8, ptr %i.y, i64 %i.fq
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.epil, i8 0, i64 %i.ew, i1 false), !tbaa !68
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.noexc.epil, !llvm.loop !80

._crit_edge:                                      ; preds = %._crit_edge.loopexit169.unr-lcssa, %.noexc.epil, %._crit_edge.loopexit168.unr-lcssa, %.noexc.us.epil, %._crit_edge.loopexit167.unr-lcssa, %.noexc.us.us.us97.epil, %._crit_edge.loopexit166.unr-lcssa, %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us, %.noexc.lr.ph.split.us.split.us.split, %.noexc.lr.ph.split.us.split, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !81 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN4ncnn15copy_cut_borderERKNS_3MatERS0_iiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 208}
!10 = !{!"_ZTSN4ncnn4FoldE", !11, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252}
!11 = !{!"_ZTSN4ncnn5LayerE", !12, i64 8, !12, i64 9, !12, i64 10, !12, i64 11, !12, i64 12, !12, i64 13, !12, i64 14, !12, i64 15, !12, i64 16, !12, i64 17, !12, i64 18, !12, i64 19, !12, i64 20, !12, i64 21, !12, i64 22, !12, i64 23, !12, i64 24, !12, i64 25, !12, i64 26, !12, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !18, i64 112, !18, i64 136, !23, i64 160, !23, i64 184}
!12 = !{!"bool", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !7, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt6vectorIiSaIiEE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 int", !13, i64 0}
!23 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!28 = !{!10, !6, i64 212}
!29 = !{!10, !6, i64 216}
!30 = !{!10, !6, i64 220}
!31 = !{!10, !6, i64 224}
!32 = !{!10, !6, i64 228}
!33 = !{!10, !6, i64 232}
!34 = !{!10, !6, i64 236}
!35 = !{!10, !6, i64 240}
!36 = !{!10, !6, i64 244}
!37 = !{!10, !6, i64 248}
!38 = !{!10, !6, i64 252}
!39 = !{!40, !6, i64 48}
!40 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !22, i64 8, !17, i64 16, !6, i64 24, !41, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 64}
!41 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!42 = !{!40, !17, i64 16}
!43 = !{!6, !6, i64 0}
!44 = !{!40, !17, i64 64}
!45 = !{!40, !22, i64 8}
!46 = !{!40, !41, i64 32}
!47 = !{!40, !13, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !8, i64 0}
!50 = distinct !{null}
!51 = !{!13, !13, i64 0}
!52 = !{!40, !6, i64 24}
!53 = !{!40, !6, i64 56}
!54 = !{!41, !41, i64 0}
!55 = !{!56, !6, i64 4}
!56 = !{!"_ZTSN4ncnn6OptionE", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !6, i64 4, !41, i64 8, !41, i64 16, !6, i64 24, !12, i64 28, !12, i64 29, !12, i64 30, !12, i64 31, !12, i64 32, !12, i64 33, !12, i64 34, !12, i64 35, !12, i64 36, !12, i64 37, !12, i64 38, !12, i64 39, !6, i64 40, !12, i64 44, !12, i64 45, !12, i64 46, !12, i64 47, !7, i64 48, !12, i64 49, !12, i64 50, !12, i64 51, !12, i64 52, !12, i64 53, !12, i64 54, !12, i64 55, !12, i64 56, !12, i64 57, !12, i64 58, !12, i64 59, !12, i64 60, !12, i64 61, !12, i64 62, !12, i64 63}
!57 = !{i64 0, i64 1, !58, i64 1, i64 1, !58, i64 2, i64 1, !58, i64 3, i64 1, !58, i64 4, i64 4, !43, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 4, !43, i64 28, i64 1, !58, i64 29, i64 1, !58, i64 30, i64 1, !58, i64 31, i64 1, !58, i64 32, i64 1, !58, i64 33, i64 1, !58, i64 34, i64 1, !58, i64 35, i64 1, !58, i64 36, i64 1, !58, i64 37, i64 1, !58, i64 38, i64 1, !58, i64 39, i64 1, !58, i64 40, i64 4, !43, i64 44, i64 1, !58, i64 45, i64 1, !58, i64 46, i64 1, !58, i64 47, i64 1, !58, i64 48, i64 1, !59, i64 49, i64 1, !58, i64 50, i64 1, !58, i64 51, i64 1, !58, i64 52, i64 1, !58, i64 53, i64 1, !58, i64 54, i64 1, !58, i64 55, i64 1, !58, i64 56, i64 1, !58, i64 57, i64 1, !58, i64 58, i64 1, !58, i64 59, i64 1, !58, i64 60, i64 1, !58, i64 61, i64 1, !58, i64 62, i64 1, !58, i64 63, i64 1, !58}
!58 = !{!12, !12, i64 0}
!59 = !{!7, !7, i64 0}
!60 = !{!56, !12, i64 39}
!61 = !{!11, !12, i64 8}
!62 = !{!40, !6, i64 44}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!65 = distinct !{!65, !"_ZN4ncnn3Mat7channelEi"}
!66 = !{!40, !6, i64 52}
!67 = !{!40, !6, i64 40}
!68 = !{!69, !69, i64 0}
!69 = !{!"float", !7, i64 0}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !71}
!75 = distinct !{!75, !71}
!76 = distinct !{!76, !71}
!77 = distinct !{!77, !73}
!78 = distinct !{!78, !73}
!79 = distinct !{!79, !73}
!80 = distinct !{!80, !73}
!81 = !{!82}
!82 = !{i64 2, i64 -1, i64 -1, i1 true}
end_hunk_0
