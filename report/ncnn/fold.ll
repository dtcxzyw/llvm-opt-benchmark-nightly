Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/fold?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn4Fold7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.em = load <2 x ptr>, ptr %4, align 16, !tbaa !53
  store <2 x ptr> %i.em, ptr %2, align 8, !tbaa !53
  %i.en = load i64, ptr %i.az, align 16, !tbaa !42
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !42
  %i.eo = load i32, ptr %i.ba, align 8, !tbaa !54
  store i32 %i.eo, ptr %i.ei, align 8, !tbaa !54
  %i.ep = load ptr, ptr %i.bb, align 16, !tbaa !52
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !52
  %i.er = load <4 x i32>, ptr %i.bc, align 8, !tbaa !43
  store <4 x i32> %i.er, ptr %i.ej, align 8, !tbaa !43
  %i.es = load i32, ptr %i.bd, align 8, !tbaa !55
  store i32 %i.es, ptr %i.ek, align 8, !tbaa !55
  %i.et = load i64, ptr %i.be, align 16, !tbaa !44
  store i64 %i.et, ptr %i.el, align 8, !tbaa !44
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.eu = landingpad { ptr, i32 }
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
  %i.ev = load ptr, ptr %i.ay, align 8, !tbaa !51 ; 2 uses
  %.not.i39 = icmp eq ptr %i.ev, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit38, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit37.thread
  %i.ew = atomicrmw add ptr %i.ev, i32 -1 acq_rel, align 4
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit38

bb.ad:                                            ; preds = %bb.ac
  %i.ey = load ptr, ptr %i.bb, align 16, !tbaa !52 ; 3 uses
  %.not3.i = icmp eq ptr %i.ey, null
  %i.ez = load ptr, ptr %4, align 16, !tbaa !45   ; 3 uses
  br i1 %.not3.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !47
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
  %i.ff = load ptr, ptr %i.ay, align 8, !tbaa !51 ; 2 uses
  %.not.i40 = icmp eq ptr %i.ff, null
  br i1 %.not.i40, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = atomicrmw add ptr %i.ff, i32 -1 acq_rel, align 4
  %i.fh = icmp eq i32 %i.fg, 1
  br i1 %i.fh, label %bb.ak, label %_ZN4ncnn3MatD2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fi = load ptr, ptr %i.bb, align 16, !tbaa !52 ; 3 uses
  %.not3.i41 = icmp eq ptr %i.fi, null
  %i.fj = load ptr, ptr %4, align 16, !tbaa !45   ; 3 uses
  br i1 %.not3.i41, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !47
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
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn4FoldE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !63
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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 15 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !43
  %i.k = load i32, ptr %i.a, align 4, !tbaa !43   ; 14 uses
  %.not83 = icmp sgt i32 %i.k, %i.j
  br i1 %.not83, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load i32, ptr %4, align 4, !tbaa !43
  %i.m = load ptr, ptr %3, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !75
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !42
  %factor.op.mul = mul i64 %i.r, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !75, !noalias !76
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !41, !noalias !76
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !77, !noalias !76
  %i.y = load ptr, ptr %5, align 8, !tbaa !45, !noalias !76 ; 37 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !44, !noalias !76
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !42, !noalias !76 ; 4 uses
  %factor.op.mul85 = mul i64 %i.aa, %i.ac         ; 37 uses
  %i.ad = sext i32 %i.t to i64                    ; 2 uses
  %i.ae = sext i32 %i.v to i64
  %i.af = mul nsw i64 %i.ae, %i.ad                ; 2 uses
  %i.ag = mul i64 %i.ac, %i.af
  %i.ah = add i64 %i.ag, 15
  %i.ai = and i64 %i.ah, -16
  %i.aj = udiv i64 %i.ai, %i.ac
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !78, !noalias !76
  %i.am = icmp eq i32 %i.al, 4
  %spec.select = select i1 %i.am, i64 %i.af, i64 %i.aj
  %i.an = trunc i64 %spec.select to i32
  %i.ao = mul i32 %i.x, %i.an                     ; 6 uses
  %i.ap = icmp sgt i32 %i.ao, 0                   ; 5 uses
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
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
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
  %10 = zext nneg i32 %i.ao to i64
  %11 = shl nuw nsw i64 %10, 2                    ; 9 uses
  %12 = add nsw i32 %i.j, 1
  br i1 %i.ap, label %.noexc.us.us.us.preheader.a, label %._crit_edge

.noexc.us.us.us.preheader.a:                      ; preds = %.noexc.us.us.us.preheader
  %i.bi = sext i32 %i.k to i64                    ; 2 uses
  %i.bj = add i32 %i.j, 1
  %i.bk = sub i32 %i.bj, %i.k
  %i.bl = sub i32 %i.j, %i.k
  %xtraiter176.a = and i32 %i.bk, 7               ; 2 uses
  %lcmp.mod177.not.a = icmp eq i32 %xtraiter176.a, 0
  br i1 %lcmp.mod177.not.a, label %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.prol, label %.lr.ph.us.us.us.preheader.prol

.lr.ph.us.us.us.preheader.prol:                   ; preds = %.noexc.us.us.us.preheader.a, %.lr.ph.us.us.us.preheader.prol
  %indvars.iv123.us.prol = phi i64 [ %indvars.iv.next124.us.prol, %.lr.ph.us.us.us.preheader.prol ], [ %i.bi, %.noexc.us.us.us.preheader.a ] ; 2 uses
  %prol.iter181 = phi i32 [ %prol.iter181.next, %.lr.ph.us.us.us.preheader.prol ], [ 0, %.noexc.us.us.us.preheader.a ]
  %.reass86.us.us.us.prol = mul i64 %factor.op.mul85, %indvars.iv123.us.prol
  %i.bm = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us.prol
  call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 0, i64 %11, i1 false), !tbaa !80
  %indvars.iv.next124.us.prol = add nsw i64 %indvars.iv123.us.prol, 1 ; 2 uses
  %prol.iter181.next = add i32 %prol.iter181, 1   ; 2 uses
  %prol.iter181.cmp.not = icmp eq i32 %prol.iter181.next, %xtraiter176.a
  br i1 %prol.iter181.cmp.not, label %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.prol, label %.lr.ph.us.us.us.preheader.prol, !llvm.loop !66

_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.prol: ; preds = %.lr.ph.us.us.us.preheader.prol, %.noexc.us.us.us.preheader.a
  %indvars.iv123.us.unr = phi i64 [ %i.bi, %.noexc.us.us.us.preheader.a ], [ %indvars.iv.next124.us.prol, %.lr.ph.us.us.us.preheader.prol ]
  %13 = icmp ult i32 %i.bl, 7
  br i1 %13, label %._crit_edge, label %.noexc.us.us.us.prol.loopexit

.noexc.us.us.us.prol.loopexit:                    ; preds = %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.prol, %.noexc.us.us.us.prol.loopexit
  %indvars.iv123.unr = phi i64 [ %indvars.iv.next124.us.7, %.noexc.us.us.us.prol.loopexit ], [ %indvars.iv123.us.unr, %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.prol ] ; 9 uses
  %.reass86.us.us.us.us129 = mul i64 %factor.op.mul85, %indvars.iv123.unr
  %14 = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us.us129
  call void @llvm.memset.p0.i64(ptr align 4 %14, i8 0, i64 %11, i1 false), !tbaa !80
  %indvars.iv.next124.us = add nsw i64 %indvars.iv123.unr, 1
  %.reass86.us.us.us.us129.1 = mul i64 %factor.op.mul85, %indvars.iv.next124.us
  %15 = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us.us129.1
  call void @llvm.memset.p0.i64(ptr align 4 %15, i8 0, i64 %11, i1 false), !tbaa !80
  %indvars.iv.next124.us.1 = add nsw i64 %indvars.iv123.unr, 2
  %.reass86.us.us.us.us129.2 = mul i64 %factor.op.mul85, %indvars.iv.next124.us.1
  %16 = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us.us129.2
  call void @llvm.memset.p0.i64(ptr align 4 %16, i8 0, i64 %11, i1 false), !tbaa !80
  %indvars.iv.next124.us.2 = add nsw i64 %indvars.iv123.unr, 3
  %.reass86.us.us.us.us129.3 = mul i64 %factor.op.mul85, %indvars.iv.next124.us.2
  %17 = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us.us129.3
  call void @llvm.memset.p0.i64(ptr align 4 %17, i8 0, i64 %11, i1 false), !tbaa !80
  %indvars.iv.next124.us.3 = add nsw i64 %indvars.iv123.unr, 4
  %.reass86.us.us.us.us129.4 = mul i64 %factor.op.mul85, %indvars.iv.next124.us.3
  %18 = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us.us129.4
  call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 %11, i1 false), !tbaa !80
  %indvars.iv.next124.us.4 = add nsw i64 %indvars.iv123.unr, 5
  %.reass86.us.us.us.us129.5 = mul i64 %factor.op.mul85, %indvars.iv.next124.us.4
  %19 = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us.us129.5
  call void @llvm.memset.p0.i64(ptr align 4 %19, i8 0, i64 %11, i1 false), !tbaa !80
  %indvars.iv.next124.us.5 = add nsw i64 %indvars.iv123.unr, 6
  %.reass86.us.us.us.us129.6 = mul i64 %factor.op.mul85, %indvars.iv.next124.us.5
  %20 = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us.us129.6
  call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %11, i1 false), !tbaa !80
  %indvars.iv.next124.us.6 = add nsw i64 %indvars.iv123.unr, 7
  %.reass86.us.us.us.us129.7 = mul i64 %factor.op.mul85, %indvars.iv.next124.us.6
  %21 = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us.us129.7
  call void @llvm.memset.p0.i64(ptr align 4 %21, i8 0, i64 %11, i1 false), !tbaa !80
  %indvars.iv.next124.us.7 = add nsw i64 %indvars.iv123.unr, 8 ; 2 uses
  %lftr.wideiv126.us.7 = trunc i64 %indvars.iv.next124.us.7 to i32
  %exitcond127.us.not.7 = icmp eq i32 %12, %lftr.wideiv126.us.7
  br i1 %exitcond127.us.not.7, label %._crit_edge, label %.noexc.us.us.us.prol.loopexit

.noexc.lr.ph.split.us.split.us.split.us.split.us: ; preds = %.noexc.lr.ph.split.us.split.us.split.us
  %i.bn = load i32, ptr %i.aw, align 8, !tbaa !31
  %i.bo = sext i32 %i.bn to i64                   ; 6 uses
  %i.bp = zext nneg i32 %i.ao to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = sext i32 %i.bb to i64
  %i.bs = sext i32 %i.ba to i64
  %i.bt = sext i32 %i.k to i64
  %i.bu = sext i32 %i.l to i64
  %i.bv = add nsw i32 %i.j, 1
  %factor.op.mul158 = mul i64 %factor.op.mul, %i.bu
  %wide.trip.count137 = zext nneg i32 %i.ar to i64
  %factor.op.mul157 = mul i64 %i.au, %i.bs
  %wide.trip.count = zext nneg i32 %i.ay to i64
  %xtraiter179 = and i32 %i.be, 3                 ; 3 uses
  %i.bw = icmp ult i32 %i.be, 4
  %unroll_iter = and i32 %i.be, 2147483644
  %lcmp.mod180.not = icmp eq i32 %xtraiter179, 0
  %lcmp.mod183 = icmp ne i32 %xtraiter179, 0
  br label %.noexc.us.us.us.us

.noexc.us.us.us.us:                               ; preds = %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3, %.noexc.lr.ph.split.us.split.us.split.us.split.us
  %indvars.iv139 = phi i64 [ %indvars.iv.next124.3, %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3 ], [ %i.bt, %.noexc.lr.ph.split.us.split.us.split.us.split.us ] ; 3 uses
  %.reass159 = mul i64 %indvars.iv139, %factor.op.mul158
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 %.reass159
  %.reass86.us.us.us.us = mul i64 %factor.op.mul85, %indvars.iv139
  %i.by = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us.us ; 2 uses
  br i1 %i.ap, label %.lr.ph.us.us.us.us.preheader, label %.preheader52.us.us.us.us.us.us.preheader

.lr.ph.us.us.us.us.preheader:                     ; preds = %.noexc.us.us.us.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.by, i8 0, i64 %i.bq, i1 false), !tbaa !80
  br label %.preheader52.us.us.us.us.us.us.preheader

.preheader52.us.us.us.us.us.us.preheader:         ; preds = %.lr.ph.us.us.us.us.preheader, %.noexc.us.us.us.us
  br label %.preheader52.us.us.us.us.us.us

.preheader52.us.us.us.us.us.us:                   ; preds = %.preheader52.us.us.us.us.us.us.preheader, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us.a
  %indvars.iv134 = phi i64 [ %indvars.iv.next140, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us.a ], [ 0, %.preheader52.us.us.us.us.us.us.preheader ] ; 2 uses
  %.03975.us.us.us.us.us.us = phi ptr [ %.lcssa, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us.a ], [ %i.bx, %.preheader52.us.us.us.us.us.us.preheader ]
  %.reass = mul i64 %indvars.iv134, %factor.op.mul157
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.reass
  br label %.preheader.lr.ph.us.us.us.us.us.us.us.us

.preheader.lr.ph.us.us.us.us.us.us.us.us:         ; preds = %._crit_edge.split.us.split.us.us.us.us.us.us.us.a, %.preheader52.us.us.us.us.us.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next135, %._crit_edge.split.us.split.us.us.us.us.us.us.us.a ], [ 0, %.preheader52.us.us.us.us.us.us ] ; 2 uses
  %.14065.us.us.us.us.us.us.us.us = phi ptr [ %.lcssa, %._crit_edge.split.us.split.us.us.us.us.us.us.us.a ], [ %.03975.us.us.us.us.us.us, %.preheader52.us.us.us.us.us.us ]
  %i.ca = mul nsw i64 %indvars.iv130, %i.br
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ca
  br label %.preheader.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us:            ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us.us.us.us
  %.03562.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us.us.us.us.us.us.us ], [ %i.de, %._crit_edge.us.us.us.us.us.us.us.us.us ]
  %.03661.us.us.us.us.us.us.us.us.us = phi ptr [ %i.cb, %.preheader.lr.ph.us.us.us.us.us.us.us.us ], [ %i.dd, %._crit_edge.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.260.us.us.us.us.us.us.us.us.us = phi ptr [ %.14065.us.us.us.us.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us.us.us.us ], [ %.lcssa, %._crit_edge.us.us.us.us.us.us.us.us.us ] ; 2 uses
  br i1 %i.bw, label %.epil.preheader, label %.preheader.us.us.us.us.us.us.us.us.us.new

.preheader.us.us.us.us.us.us.us.us.us.new:        ; preds = %.preheader.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.new
  %.156.us.us.us.us.us.us.us.us.us = phi ptr [ %i.cu, %.preheader.us.us.us.us.us.us.us.us.us.new ], [ %.03661.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.355.us.us.us.us.us.us.us.us.us = phi ptr [ %i.cv, %.preheader.us.us.us.us.us.us.us.us.us.new ], [ %.260.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.preheader.us.us.us.us.us.us.us.us.us.new ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us ]
  %i.cc = load float, ptr %.355.us.us.us.us.us.us.us.us.us, align 4, !tbaa !80
  %i.cd = load float, ptr %.156.us.us.us.us.us.us.us.us.us, align 4, !tbaa !80
  %i.ce = fadd fast float %i.cd, %i.cc
  store float %i.ce, ptr %.156.us.us.us.us.us.us.us.us.us, align 4, !tbaa !80
  %i.cf = getelementptr inbounds [4 x i8], ptr %.156.us.us.us.us.us.us.us.us.us, i64 %i.bo ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.355.us.us.us.us.us.us.us.us.us, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !80
  %i.ci = load float, ptr %i.cf, align 4, !tbaa !80
  %i.cj = fadd fast float %i.ci, %i.ch
  store float %i.cj, ptr %i.cf, align 4, !tbaa !80
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.bo ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.355.us.us.us.us.us.us.us.us.us, i64 8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !80
  %i.cn = load float, ptr %i.ck, align 4, !tbaa !80
  %i.co = fadd fast float %i.cn, %i.cm
  store float %i.co, ptr %i.ck, align 4, !tbaa !80
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.bo ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.355.us.us.us.us.us.us.us.us.us, i64 12
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !80
  %i.cs = load float, ptr %i.cp, align 4, !tbaa !80
  %i.ct = fadd fast float %i.cs, %i.cr
  store float %i.ct, ptr %i.cp, align 4, !tbaa !80
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.bo ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.355.us.us.us.us.us.us.us.us.us, i64 16 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us.us.us.us.us.us.us.us.new, !llvm.loop !67

._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %.preheader.us.us.us.us.us.us.us.us.us.new
  br i1 %lcmp.mod180.not, label %._crit_edge.us.us.us.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us.us.us.us.us.us.us.us
  %.156.us.us.us.us.us.us.us.us.us.epil.init = phi ptr [ %.03661.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us ], [ %i.cu, %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa ]
  %.355.us.us.us.us.us.us.us.us.us.epil.init = phi ptr [ %.260.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us ], [ %i.cv, %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.156.us.us.us.us.us.us.us.us.us.epil = phi ptr [ %.156.us.us.us.us.us.us.us.us.us.epil.init, %.epil.preheader ], [ %i.cz, %bb.c ] ; 4 uses
  %.355.us.us.us.us.us.us.us.us.us.epil = phi ptr [ %.355.us.us.us.us.us.us.us.us.us.epil.init, %.epil.preheader ], [ %i.da, %bb.c ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.cw = load float, ptr %.355.us.us.us.us.us.us.us.us.us.epil, align 4, !tbaa !80
  %i.cx = load float, ptr %.156.us.us.us.us.us.us.us.us.us.epil, align 4, !tbaa !80
  %i.cy = fadd fast float %i.cx, %i.cw
  store float %i.cy, ptr %.156.us.us.us.us.us.us.us.us.us.epil, align 4, !tbaa !80
  %i.cz = getelementptr inbounds [4 x i8], ptr %.156.us.us.us.us.us.us.us.us.us.epil, i64 %i.bo
  %i.da = getelementptr inbounds nuw i8, ptr %.355.us.us.us.us.us.us.us.us.us.epil, i64 4 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter179
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us.us.us.us.us.us, label %bb.c, !llvm.loop !68

._crit_edge.us.us.us.us.us.us.us.us.us:           ; preds = %bb.c, %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa
  %i.db = phi ptr [ %i.cp, %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %.156.us.us.us.us.us.us.us.us.us.epil, %bb.c ]
  %.lcssa = phi ptr [ %i.cv, %._crit_edge.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %i.da, %bb.c ] ; 3 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.bo
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.bh
  %i.de = add nuw nsw i32 %.03562.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond129.not = icmp eq i32 %i.de, %i.bc
  br i1 %exitcond129.not, label %._crit_edge.split.us.split.us.us.us.us.us.us.us.a, label %.preheader.us.us.us.us.us.us.us.us.us, !llvm.loop !69

._crit_edge.split.us.split.us.us.us.us.us.us.us.a: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count
  br i1 %exitcond138.not, label %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us.a, label %.preheader.lr.ph.us.us.us.us.us.us.us.us, !llvm.loop !70

_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us.a: ; preds = %._crit_edge.split.us.split.us.us.us.us.us.us.us.a
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count137
  br i1 %exitcond143.not, label %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3, label %.preheader52.us.us.us.us.us.us, !llvm.loop !71

_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3:    ; preds = %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us.a
  %indvars.iv.next124.3 = add nsw i64 %indvars.iv139, 1 ; 2 uses
  %lftr.wideiv126.3 = trunc i64 %indvars.iv.next124.3 to i32
  %exitcond127.not.3 = icmp eq i32 %i.bv, %lftr.wideiv126.3
  br i1 %exitcond127.not.3, label %._crit_edge, label %.noexc.us.us.us.us

.noexc.lr.ph.split.us.split.us.split:             ; preds = %.noexc.lr.ph.split.us.split.us
  br i1 %i.ap, label %.noexc.us.us.us97.preheader, label %._crit_edge

.noexc.us.us.us97.preheader:                      ; preds = %.noexc.lr.ph.split.us.split.us.split
  %i.df = zext nneg i32 %i.ao to i64
  %i.dg = shl nuw nsw i64 %i.df, 2                ; 9 uses
  %i.dh = sext i32 %i.k to i64                    ; 2 uses
  %i.di = add nsw i32 %i.j, 1
  %i.dj = add i32 %i.j, 1
  %i.dk = sub i32 %i.dj, %i.k
  %i.dl = sub i32 %i.j, %i.k
  %xtraiter173.a = and i32 %i.dk, 7               ; 2 uses
  %lcmp.mod174.not.a = icmp eq i32 %xtraiter173.a, 0
  br i1 %lcmp.mod174.not.a, label %.noexc.us.us.us97.prol.loopexit, label %.noexc.us.us.us97.prol

.noexc.us.us.us97.prol:                           ; preds = %.noexc.us.us.us97.preheader, %.noexc.us.us.us97.prol
  %indvars.iv118.prol = phi i64 [ %indvars.iv.next119.prol, %.noexc.us.us.us97.prol ], [ %i.dh, %.noexc.us.us.us97.preheader ] ; 2 uses
  %prol.iter175.a = phi i32 [ %prol.iter175.next.a, %.noexc.us.us.us97.prol ], [ 0, %.noexc.us.us.us97.preheader ]
  %.reass86.us.us.us99.prol = mul i64 %factor.op.mul85, %indvars.iv118.prol
  %i.dm = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us99.prol
  call void @llvm.memset.p0.i64(ptr align 4 %i.dm, i8 0, i64 %i.dg, i1 false), !tbaa !80
  %indvars.iv.next119.prol = add nsw i64 %indvars.iv118.prol, 1 ; 2 uses
  %prol.iter175.next.a = add i32 %prol.iter175.a, 1 ; 2 uses
  %prol.iter175.cmp.not.a = icmp eq i32 %prol.iter175.next.a, %xtraiter173.a
  br i1 %prol.iter175.cmp.not.a, label %.noexc.us.us.us97.prol.loopexit, label %.noexc.us.us.us97.prol, !llvm.loop !72

.noexc.us.us.us97.prol.loopexit:                  ; preds = %.noexc.us.us.us97.prol, %.noexc.us.us.us97.preheader
  %indvars.iv118.unr = phi i64 [ %i.dh, %.noexc.us.us.us97.preheader ], [ %indvars.iv.next119.prol, %.noexc.us.us.us97.prol ]
  %i.dn = icmp ult i32 %i.dl, 7
  br i1 %i.dn, label %._crit_edge, label %.noexc.us.us.us97

.noexc.us.us.us97:                                ; preds = %.noexc.us.us.us97.prol.loopexit, %.noexc.us.us.us97
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.7, %.noexc.us.us.us97 ], [ %indvars.iv118.unr, %.noexc.us.us.us97.prol.loopexit ] ; 9 uses
  %.reass86.us.us.us99 = mul i64 %factor.op.mul85, %indvars.iv118
  %i.do = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us99
  call void @llvm.memset.p0.i64(ptr align 4 %i.do, i8 0, i64 %i.dg, i1 false), !tbaa !80
  %indvars.iv.next119 = add nsw i64 %indvars.iv118, 1
  %.reass86.us.us.us99.1 = mul i64 %factor.op.mul85, %indvars.iv.next119
  %i.dp = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us99.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.dp, i8 0, i64 %i.dg, i1 false), !tbaa !80
  %indvars.iv.next119.1 = add nsw i64 %indvars.iv118, 2
  %.reass86.us.us.us99.2 = mul i64 %factor.op.mul85, %indvars.iv.next119.1
  %i.dq = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us99.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dq, i8 0, i64 %i.dg, i1 false), !tbaa !80
  %indvars.iv.next119.2 = add nsw i64 %indvars.iv118, 3
  %.reass86.us.us.us99.3 = mul i64 %factor.op.mul85, %indvars.iv.next119.2
  %i.dr = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us99.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.dr, i8 0, i64 %i.dg, i1 false), !tbaa !80
  %indvars.iv.next119.3 = add nsw i64 %indvars.iv118, 4
  %.reass86.us.us.us99.4 = mul i64 %factor.op.mul85, %indvars.iv.next119.3
  %i.ds = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us99.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ds, i8 0, i64 %i.dg, i1 false), !tbaa !80
  %indvars.iv.next119.4 = add nsw i64 %indvars.iv118, 5
  %.reass86.us.us.us99.5 = mul i64 %factor.op.mul85, %indvars.iv.next119.4
  %i.dt = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us99.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.dt, i8 0, i64 %i.dg, i1 false), !tbaa !80
  %indvars.iv.next119.5 = add nsw i64 %indvars.iv118, 6
  %.reass86.us.us.us99.6 = mul i64 %factor.op.mul85, %indvars.iv.next119.5
  %i.du = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us99.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.du, i8 0, i64 %i.dg, i1 false), !tbaa !80
  %indvars.iv.next119.6 = add nsw i64 %indvars.iv118, 7
  %.reass86.us.us.us99.7 = mul i64 %factor.op.mul85, %indvars.iv.next119.6
  %i.dv = getelementptr i8, ptr %i.y, i64 %.reass86.us.us.us99.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.dv, i8 0, i64 %i.dg, i1 false), !tbaa !80
  %indvars.iv.next119.7 = add nsw i64 %indvars.iv118, 8 ; 2 uses
  %lftr.wideiv121.7 = trunc i64 %indvars.iv.next119.7 to i32
  %exitcond122.not.7 = icmp eq i32 %i.di, %lftr.wideiv121.7
  br i1 %exitcond122.not.7, label %._crit_edge, label %.noexc.us.us.us97

.noexc.lr.ph.split.us.split:                      ; preds = %.noexc.lr.ph.split.us
  br i1 %i.ap, label %.noexc.us.preheader, label %._crit_edge

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us.split
  %i.dw = zext nneg i32 %i.ao to i64
  %i.dx = shl nuw nsw i64 %i.dw, 2                ; 9 uses
  %i.dy = sext i32 %i.k to i64                    ; 2 uses
  %i.dz = add nsw i32 %i.j, 1
  %i.ea = add i32 %i.j, 1
  %i.eb = sub i32 %i.ea, %i.k
  %i.ec = sub i32 %i.j, %i.k
  %xtraiter170 = and i32 %i.eb, 7                 ; 2 uses
  %lcmp.mod171.not = icmp eq i32 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.noexc.us.prol.loopexit, label %.noexc.us.prol

.noexc.us.prol:                                   ; preds = %.noexc.us.preheader, %.noexc.us.prol
  %indvars.iv113.prol = phi i64 [ %indvars.iv.next114.prol, %.noexc.us.prol ], [ %i.dy, %.noexc.us.preheader ] ; 2 uses
  %prol.iter172 = phi i32 [ %prol.iter172.next, %.noexc.us.prol ], [ 0, %.noexc.us.preheader ]
  %.reass86.us.prol = mul i64 %factor.op.mul85, %indvars.iv113.prol
  %i.ed = getelementptr i8, ptr %i.y, i64 %.reass86.us.prol
  call void @llvm.memset.p0.i64(ptr align 4 %i.ed, i8 0, i64 %i.dx, i1 false), !tbaa !80
  %indvars.iv.next114.prol = add nsw i64 %indvars.iv113.prol, 1 ; 2 uses
  %prol.iter172.next = add i32 %prol.iter172, 1   ; 2 uses
  %prol.iter172.cmp.not = icmp eq i32 %prol.iter172.next, %xtraiter170
  br i1 %prol.iter172.cmp.not, label %.noexc.us.prol.loopexit, label %.noexc.us.prol, !llvm.loop !73

.noexc.us.prol.loopexit:                          ; preds = %.noexc.us.prol, %.noexc.us.preheader
  %indvars.iv113.unr = phi i64 [ %i.dy, %.noexc.us.preheader ], [ %indvars.iv.next114.prol, %.noexc.us.prol ]
  %i.ee = icmp ult i32 %i.ec, 7
  br i1 %i.ee, label %._crit_edge, label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.prol.loopexit, %.noexc.us
  %indvars.iv113 = phi i64 [ %indvars.iv.next114.7, %.noexc.us ], [ %indvars.iv113.unr, %.noexc.us.prol.loopexit ] ; 9 uses
  %.reass86.us = mul i64 %factor.op.mul85, %indvars.iv113
  %i.ef = getelementptr i8, ptr %i.y, i64 %.reass86.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.ef, i8 0, i64 %i.dx, i1 false), !tbaa !80
  %indvars.iv.next114 = add nsw i64 %indvars.iv113, 1
  %.reass86.us.1 = mul i64 %factor.op.mul85, %indvars.iv.next114
  %i.eg = getelementptr i8, ptr %i.y, i64 %.reass86.us.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.eg, i8 0, i64 %i.dx, i1 false), !tbaa !80
  %indvars.iv.next114.1 = add nsw i64 %indvars.iv113, 2
  %.reass86.us.2 = mul i64 %factor.op.mul85, %indvars.iv.next114.1
  %i.eh = getelementptr i8, ptr %i.y, i64 %.reass86.us.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.eh, i8 0, i64 %i.dx, i1 false), !tbaa !80
  %indvars.iv.next114.2 = add nsw i64 %indvars.iv113, 3
  %.reass86.us.3 = mul i64 %factor.op.mul85, %indvars.iv.next114.2
  %i.ei = getelementptr i8, ptr %i.y, i64 %.reass86.us.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.ei, i8 0, i64 %i.dx, i1 false), !tbaa !80
  %indvars.iv.next114.3 = add nsw i64 %indvars.iv113, 4
  %.reass86.us.4 = mul i64 %factor.op.mul85, %indvars.iv.next114.3
  %i.ej = getelementptr i8, ptr %i.y, i64 %.reass86.us.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ej, i8 0, i64 %i.dx, i1 false), !tbaa !80
  %indvars.iv.next114.4 = add nsw i64 %indvars.iv113, 5
  %.reass86.us.5 = mul i64 %factor.op.mul85, %indvars.iv.next114.4
  %i.ek = getelementptr i8, ptr %i.y, i64 %.reass86.us.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.ek, i8 0, i64 %i.dx, i1 false), !tbaa !80
  %indvars.iv.next114.5 = add nsw i64 %indvars.iv113, 6
  %.reass86.us.6 = mul i64 %factor.op.mul85, %indvars.iv.next114.5
  %i.el = getelementptr i8, ptr %i.y, i64 %.reass86.us.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.el, i8 0, i64 %i.dx, i1 false), !tbaa !80
  %indvars.iv.next114.6 = add nsw i64 %indvars.iv113, 7
  %.reass86.us.7 = mul i64 %factor.op.mul85, %indvars.iv.next114.6
  %i.em = getelementptr i8, ptr %i.y, i64 %.reass86.us.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.em, i8 0, i64 %i.dx, i1 false), !tbaa !80
  %indvars.iv.next114.7 = add nsw i64 %indvars.iv113, 8 ; 2 uses
  %lftr.wideiv116.7 = trunc i64 %indvars.iv.next114.7 to i32
  %exitcond117.not.7 = icmp eq i32 %i.dz, %lftr.wideiv116.7
  br i1 %exitcond117.not.7, label %._crit_edge, label %.noexc.us

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  br i1 %i.ap, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split
  %i.en = zext nneg i32 %i.ao to i64
  %i.eo = shl nuw nsw i64 %i.en, 2                ; 9 uses
  %i.ep = sext i32 %i.k to i64                    ; 2 uses
  %i.eq = add nsw i32 %i.j, 1
  %i.er = add i32 %i.j, 1
  %i.es = sub i32 %i.er, %i.k
  %i.et = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.es, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc.prol.loopexit, label %.noexc.prol

.noexc.prol:                                      ; preds = %.noexc.preheader, %.noexc.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.noexc.prol ], [ %i.ep, %.noexc.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.noexc.prol ], [ 0, %.noexc.preheader ]
  %.reass86.prol = mul i64 %factor.op.mul85, %indvars.iv.prol
  %i.eu = getelementptr i8, ptr %i.y, i64 %.reass86.prol
  call void @llvm.memset.p0.i64(ptr align 4 %i.eu, i8 0, i64 %i.eo, i1 false), !tbaa !80
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc.prol.loopexit, label %.noexc.prol, !llvm.loop !74

.noexc.prol.loopexit:                             ; preds = %.noexc.prol, %.noexc.preheader
  %indvars.iv.unr = phi i64 [ %i.ep, %.noexc.preheader ], [ %indvars.iv.next.prol, %.noexc.prol ]
  %i.ev = icmp ult i32 %i.et, 7
  br i1 %i.ev, label %._crit_edge, label %.noexc

.noexc:                                           ; preds = %.noexc.prol.loopexit, %.noexc
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.noexc ], [ %indvars.iv.unr, %.noexc.prol.loopexit ] ; 9 uses
  %.reass86 = mul i64 %factor.op.mul85, %indvars.iv
  %i.ew = getelementptr i8, ptr %i.y, i64 %.reass86
  call void @llvm.memset.p0.i64(ptr align 4 %i.ew, i8 0, i64 %i.eo, i1 false), !tbaa !80
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.reass86.1 = mul i64 %factor.op.mul85, %indvars.iv.next
  %i.ex = getelementptr i8, ptr %i.y, i64 %.reass86.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.ex, i8 0, i64 %i.eo, i1 false), !tbaa !80
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %.reass86.2 = mul i64 %factor.op.mul85, %indvars.iv.next.1
  %i.ey = getelementptr i8, ptr %i.y, i64 %.reass86.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ey, i8 0, i64 %i.eo, i1 false), !tbaa !80
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %.reass86.3 = mul i64 %factor.op.mul85, %indvars.iv.next.2
  %i.ez = getelementptr i8, ptr %i.y, i64 %.reass86.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.ez, i8 0, i64 %i.eo, i1 false), !tbaa !80
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %.reass86.4 = mul i64 %factor.op.mul85, %indvars.iv.next.3
  %i.fa = getelementptr i8, ptr %i.y, i64 %.reass86.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.fa, i8 0, i64 %i.eo, i1 false), !tbaa !80
  %indvars.iv.next.4 = add nsw i64 %indvars.iv, 5
  %.reass86.5 = mul i64 %factor.op.mul85, %indvars.iv.next.4
  %i.fb = getelementptr i8, ptr %i.y, i64 %.reass86.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.fb, i8 0, i64 %i.eo, i1 false), !tbaa !80
  %indvars.iv.next.5 = add nsw i64 %indvars.iv, 6
  %.reass86.6 = mul i64 %factor.op.mul85, %indvars.iv.next.5
  %i.fc = getelementptr i8, ptr %i.y, i64 %.reass86.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.fc, i8 0, i64 %i.eo, i1 false), !tbaa !80
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, 7
  %.reass86.7 = mul i64 %factor.op.mul85, %indvars.iv.next.6
  %i.fd = getelementptr i8, ptr %i.y, i64 %.reass86.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.fd, i8 0, i64 %i.eo, i1 false), !tbaa !80
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.eq, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %._crit_edge, label %.noexc

._crit_edge:                                      ; preds = %.noexc.prol.loopexit, %.noexc, %.noexc.us.prol.loopexit, %.noexc.us, %.noexc.us.us.us97.prol.loopexit, %.noexc.us.us.us97, %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.prol, %.noexc.us.us.us.prol.loopexit, %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3, %.noexc.us.us.us.preheader, %.noexc.lr.ph.split.us.split.us.split, %.noexc.lr.ph.split.us.split, %.noexc.lr.ph.split, %bb.b
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
declare !callback !49 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

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
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !5, i64 16}
!15 = !{!"p1 int", !10, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIiSaIiEE", !18, i64 0}
!20 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !23, i64 0}
!25 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !19, i64 112, !19, i64 136, !24, i64 160, !24, i64 184}
!26 = !{!"_ZTSN4ncnn4FoldE", !25, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252}
!27 = !{!26, !6, i64 208}
!28 = !{!26, !6, i64 212}
!29 = !{!26, !6, i64 216}
!30 = !{!26, !6, i64 220}
!31 = !{!26, !6, i64 224}
!32 = !{!26, !6, i64 228}
!33 = !{!26, !6, i64 232}
!34 = !{!26, !6, i64 236}
!35 = !{!26, !6, i64 240}
!36 = !{!26, !6, i64 244}
!37 = !{!26, !6, i64 248}
!38 = !{!26, !6, i64 252}
!39 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!40 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !15, i64 8, !13, i64 16, !6, i64 24, !39, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!41 = !{!40, !6, i64 48}
!42 = !{!40, !13, i64 16}
!43 = !{!6, !6, i64 0}
!44 = !{!40, !13, i64 64}
!45 = !{!40, !10, i64 0}
!46 = !{!"vtable pointer", !4, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{i64 2, i64 -1, i64 -1, i1 true}
!49 = !{!48}
!50 = distinct !{null}
!51 = !{!40, !15, i64 8}
!52 = !{!40, !39, i64 32}
!53 = !{!10, !10, i64 0}
!54 = !{!40, !6, i64 24}
!55 = !{!40, !6, i64 56}
!56 = !{!39, !39, i64 0}
!57 = !{!"_ZTSN4ncnn6OptionE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !6, i64 4, !39, i64 8, !39, i64 16, !6, i64 24, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !6, i64 40, !9, i64 44, !9, i64 45, !9, i64 46, !9, i64 47, !5, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61, !9, i64 62, !9, i64 63}
!58 = !{!57, !6, i64 4}
!59 = !{!9, !9, i64 0}
!60 = !{!5, !5, i64 0}
!61 = !{i64 0, i64 1, !59, i64 1, i64 1, !59, i64 2, i64 1, !59, i64 3, i64 1, !59, i64 4, i64 4, !43, i64 8, i64 8, !56, i64 16, i64 8, !56, i64 24, i64 4, !43, i64 28, i64 1, !59, i64 29, i64 1, !59, i64 30, i64 1, !59, i64 31, i64 1, !59, i64 32, i64 1, !59, i64 33, i64 1, !59, i64 34, i64 1, !59, i64 35, i64 1, !59, i64 36, i64 1, !59, i64 37, i64 1, !59, i64 38, i64 1, !59, i64 39, i64 1, !59, i64 40, i64 4, !43, i64 44, i64 1, !59, i64 45, i64 1, !59, i64 46, i64 1, !59, i64 47, i64 1, !59, i64 48, i64 1, !60, i64 49, i64 1, !59, i64 50, i64 1, !59, i64 51, i64 1, !59, i64 52, i64 1, !59, i64 53, i64 1, !59, i64 54, i64 1, !59, i64 55, i64 1, !59, i64 56, i64 1, !59, i64 57, i64 1, !59, i64 58, i64 1, !59, i64 59, i64 1, !59, i64 60, i64 1, !59, i64 61, i64 1, !59, i64 62, i64 1, !59, i64 63, i64 1, !59}
!62 = !{!57, !9, i64 39}
!63 = !{!25, !9, i64 8}
!64 = distinct !{!64, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!65 = distinct !{!65, !64, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!66 = distinct !{!66, !81}
!67 = distinct !{!67, !82}
!68 = distinct !{!68, !81}
!69 = distinct !{!69, !82}
!70 = distinct !{!70, !82}
!71 = distinct !{!71, !82}
!72 = distinct !{!72, !81}
!73 = distinct !{!73, !81}
!74 = distinct !{!74, !81}
!75 = !{!40, !6, i64 44}
!76 = !{!65}
!77 = !{!40, !6, i64 52}
!78 = !{!40, !6, i64 40}
!79 = !{!"float", !5, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!"llvm.loop.mustprogress"}
end_hunk_0
