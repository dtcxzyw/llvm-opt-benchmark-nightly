inline.NumInlined: 954
inline.NumDeleted: 441
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK5faiss16ZnSphereCodecRec15encode_centroidEPKf:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %wide.load = load <2 x float>, ptr %i.o, align 4, !tbaa !34 ; 4 uses
  %wide.load114 = load <2 x float>, ptr %i.p, align 4, !tbaa !34 ; 4 uses
  %i.q = fcmp une <2 x float> %wide.load, zeroinitializer
  %i.r = fcmp une <2 x float> %wide.load114, zeroinitializer
  %i.s = fmul <2 x float> %wide.load, %wide.load
  %i.t = fmul <2 x float> %wide.load114, %wide.load114
  %i.u = fptosi <2 x float> %i.s to <2 x i32>
  %i.v = fptosi <2 x float> %i.t to <2 x i32>
  %i.w = fcmp ult <2 x float> %wide.load, zeroinitializer
  %i.x = fcmp ult <2 x float> %wide.load114, zeroinitializer
  %i.y = zext <2 x i1> %i.w to <2 x i64>
  %i.z = zext <2 x i1> %i.x to <2 x i64>
  %i.aa = select <2 x i1> %i.q, <2 x i32> %i.u, <2 x i32> zeroinitializer
  %i.ab = select <2 x i1> %i.r, <2 x i32> %i.v, <2 x i32> zeroinitializer
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x i64> %i.y, ptr %i.ac, align 8, !tbaa !47
  store <2 x i64> %i.z, ptr %i.ad, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store <2 x i32> %i.aa, ptr %i.ae, align 4, !tbaa !48
  store <2 x i32> %i.ab, ptr %i.af, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader78.loopexit, label %.lr.ph.preheader115

.lr.ph.preheader115:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader78.loopexit:                            ; preds = %.lr.ph, %middle.block
  %i.ah = ptrtoint ptr %i.m to i64
  %i.ai = ptrtoint ptr %i.g to i64
  br label %.preheader78

.preheader78:                                     ; preds = %.preheader78.loopexit, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0113 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ah, %.preheader78.loopexit ]
  %.sroa.056.0111 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %.preheader78.loopexit ] ; 6 uses
  %.sroa.15.075109 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.preheader78.loopexit ]
  %.sroa.063.077107 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.f, %.preheader78.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %.not83 = icmp slt i32 %i.ak, 1
  br i1 %.not83, label %._crit_edge86, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader78
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.preheader

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.e) #27
  resume { ptr, i32 } %i.ao

.lr.ph:                                           ; preds = %.lr.ph.preheader115, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader115 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !34 ; 4 uses
  %i.ar = fcmp une float %i.aq, 0.000000e+00
  %i.as = fmul float %i.aq, %i.aq
  %i.at = fptosi float %i.as to i32
  %i.au = fcmp ult float %i.aq, 0.000000e+00
  %.sink96 = zext i1 %i.au to i64
  %.sink = select i1 %i.ar, i32 %i.at, i32 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store i64 %.sink96, ptr %i.av, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store i32 %.sink, ptr %i.aw, align 4, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader78.loopexit, label %.lr.ph, !llvm.loop !191

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.04185.in = phi i32 [ %i.b, %.preheader.lr.ph ], [ %.04185, %._crit_edge ]
  %.04384 = phi i32 [ 1, %.preheader.lr.ph ], [ %i.bj, %._crit_edge ] ; 4 uses
  %.04185 = lshr i32 %.04185.in, 1                ; 3 uses
  %.not = icmp eq i32 %.04185, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader
  %i.ax = load i32, ptr %i.am, align 4, !tbaa !49
  %i.ay = add nsw i32 %i.ax, 1                    ; 3 uses
  %i.az = mul nsw i32 %i.ay, %.04384
  %i.ba = load ptr, ptr %i.al, align 8, !tbaa !63
  %i.bb = add nsw i32 %.04384, -1
  %i.bc = mul nsw i32 %i.ay, %i.bb
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !63
  %wide.trip.count93 = zext nneg i32 %.04185 to i64
  br label %bb.d

._crit_edge86:                                    ; preds = %._crit_edge, %.preheader78
  %i.be = load i64, ptr %.sroa.063.077107, align 8, !tbaa !47
  %.not.i.i.i53 = icmp eq ptr %.sroa.056.0111, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorImSaImEED2Ev.exit55, label %bb.c

bb.c:                                             ; preds = %._crit_edge86
  %i.bf = ptrtoint ptr %.sroa.056.0111 to i64
  %i.bg = sub i64 %.sroa.13.0113, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.0111, i64 noundef %i.bg) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit55

_ZNSt6vectorImSaImEED2Ev.exit55:                  ; preds = %._crit_edge86, %bb.c
  %i.bh = ptrtoint ptr %.sroa.063.077107 to i64
  %i.bi = sub i64 %.sroa.15.075109, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.077107, i64 noundef %i.bi) #27
  ret i64 %i.be

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.bj = add nuw i32 %.04384, 1
  %exitcond95.not = icmp eq i32 %.04384, %i.ak
  br i1 %exitcond95.not, label %._crit_edge86, label %.preheader, !llvm.loop !192

bb.d:                                             ; preds = %.lr.ph81, %bb.d
  %indvars.iv90 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next91, %bb.d ] ; 4 uses
  %i.bk = shl nuw nsw i64 %indvars.iv90, 1        ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.0111, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !48 ; 2 uses
  %i.bn = or disjoint i64 %i.bk, 1                ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.0111, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !48 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.063.077107, i64 %i.bk
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !47
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.063.077107, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !47
  %i.bu = add nsw i32 %i.bp, %i.bm                ; 2 uses
  %i.bv = add nsw i32 %i.az, %i.bu
  %i.bw = mul nsw i32 %i.bv, %i.ay
  %i.bx = add nsw i32 %i.bw, %i.bm
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !47
  %i.cb = add nsw i32 %i.bc, %i.bp
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !47
  %i.cf = mul i64 %i.ce, %i.br
  %i.cg = add i64 %i.ca, %i.bt
  %i.ch = add i64 %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.063.077107, i64 %indvars.iv90
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.0111, i64 %indvars.iv90
  store i32 %i.bu, ptr %i.cj, align 4, !tbaa !48
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge, label %bb.d, !llvm.loop !193
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss16ZnSphereCodecAltC2Eii(ptr noundef nonnull align 8 dereferenceable(224) initializes((24, 32), (40, 64)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5faiss13ZnSphereCodecC2Eii(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16ZnSphereCodecAltE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.c = icmp samesign ult i32 %i.b, 2            ; 3 uses
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr %i.a, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = select i1 %i.c, i32 %1, i32 8
  %i.g = select i1 %i.c, i32 %2, i32 14
  invoke void @_ZN5faiss16ZnSphereCodecRecC1Eii(ptr noundef nonnull align 8 dereferenceable(112) %i.e, i32 noundef %i.f, i32 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5faiss13ZnSphereCodecD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #14
  resume { ptr, i32 } %i.h
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_lattice_Zn.cpp() #24 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5faiss12_GLOBAL__N_14combE, i8 0, i64 24, i1 false)
  store i32 100, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss12_GLOBAL__N_14combE, i64 24), align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !47
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5faiss12_GLOBAL__N_14combE, ptr null, i64 noundef 10000, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i.i unwind label %bb.b

_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i.i:        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.b = load ptr, ptr @_ZN5faiss12_GLOBAL__N_14combE, align 8, !tbaa !63 ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  store i64 1, ptr %i.b, align 8, !tbaa !47
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss12_GLOBAL__N_14combE, i64 24), align 8, !tbaa !194 ; 4 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %__cxx_global_var_init.exit

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i.i
  %i.f = zext nneg i32 %i.d to i64                ; 5 uses
  %0 = zext nneg i32 %i.d to i35
  %1 = shl nuw nsw i35 %0, 3
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = add i64 %i.g, %i.c
  %i.i = add i64 %i.h, 8
  %i.j = shl nuw nsw i64 %i.f, 3
  %diff.check = icmp ult i32 %i.d, 4
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.l = load ptr, ptr @_ZN5faiss12_GLOBAL__N_14combE, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss12_GLOBAL__N_14combE, i64 16), align 8, !tbaa !73
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.p) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.k

.lr.ph.i.i:                                       ; preds = %.loopexit, %.lr.ph.preheader.i.i
  %indvar.a = phi i64 [ %indvar.next.a, %.loopexit ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %indvar = phi i35 [ %indvar.next, %.loopexit ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %indvars.iv8.i.i = phi i64 [ %indvars.iv.next9.i.i, %.loopexit ], [ 1, %.lr.ph.preheader.i.i ] ; 7 uses
  %indvars.iv6.i.i = phi i64 [ %indvars.iv.next7.i.i, %.loopexit ], [ 2, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.q = mul i64 %i.j, %indvar.a                  ; 2 uses
  %i.r = add i64 %i.i, %i.q
  %sext = shl i64 %i.q, 29
  %i.s = ashr exact i64 %sext, 29
  %i.t = add i64 %i.s, %i.c
  %i.u = mul nuw nsw i64 %indvars.iv8.i.i, %i.f
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u ; 5 uses
  store i64 1, ptr %i.v, align 8, !tbaa !47
  %i.w = add nsw i64 %indvars.iv8.i.i, -1         ; 3 uses
  %i.x = mul nuw nsw i64 %i.w, %i.f               ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 4294967295         ; 4 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.b, i64 %i.x ; 4 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv8.i.i, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i
  %2 = mul i35 %1, %indvar                        ; 2 uses
  %i.z = trunc i64 %i.w to i35
  %mul.result = shl i35 %i.z, 3
  %i.aa = add i35 %2, %mul.result
  %i.ab = icmp slt i35 %i.aa, %2
  %i.ac = icmp ugt i64 %i.w, 4294967295
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ae = sub i64 %i.t, %i.r
  %diff.check2 = icmp ugt i64 %i.ae, -32
  %conflict.rdx = or i1 %diff.check, %diff.check2
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv8.i.i, 8589934588   ; 3 uses
  %i.af = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = or disjoint i64 %index, 1               ; 3 uses
  %i.ah = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ag ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %wide.load = load <2 x i64>, ptr %i.ah, align 8, !tbaa !47
  %wide.load3 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !47
  %i.aj = add nuw nsw i64 %i.y, %i.ag
  %i.ak = shl i64 %i.aj, 32
  %i.al = ashr exact i64 %i.ak, 29
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load4 = load <2 x i64>, ptr %i.am, align 8, !tbaa !47
  %wide.load5 = load <2 x i64>, ptr %i.an, align 8, !tbaa !47
  %i.ao = add <2 x i64> %wide.load4, %wide.load
  %i.ap = add <2 x i64> %wide.load5, %wide.load3
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ag ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x i64> %i.ao, ptr %i.aq, align 8, !tbaa !47
  store <2 x i64> %i.ap, ptr %i.ar, align 8, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv8.i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph.i.i ], [ %i.af, %middle.block ] ; 6 uses
  %i.at = and i64 %indvars.iv6.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.at, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.ph
  %i.au = load i64, ptr %gep.i.i.prol, align 8, !tbaa !47
  %i.av = add nuw nsw i64 %i.y, %indvars.iv.i.i.ph
  %sext.i.i.prol = shl i64 %i.av, 32
  %i.aw = ashr exact i64 %sext.i.i.prol, 29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = add i64 %i.ay, %i.au
  %gep17.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.ph
  store i64 %i.az, ptr %gep17.i.i.prol, align 8, !tbaa !47
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ba = icmp eq i64 %indvars.iv8.i.i, %indvars.iv.i.i.ph
  br i1 %i.ba, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next9.i.i = add nuw nsw i64 %indvars.iv8.i.i, 1 ; 2 uses
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv6.i.i, 1
  %exitcond14.not.i.i = icmp eq i64 %indvars.iv.next9.i.i, %i.f
  %indvar.next = add i35 %indvar, 1
  %indvar.next.a = add i64 %indvar.a, 1
  br i1 %exitcond14.not.i.i, label %__cxx_global_var_init.exit, label %.lr.ph.i.i, !llvm.loop !197

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.bb = load i64, ptr %gep.i.i, align 8, !tbaa !47
  %i.bc = add nuw nsw i64 %i.y, %indvars.iv.i.i
  %sext.i.i = shl i64 %i.bc, 32
  %i.bd = ashr exact i64 %sext.i.i, 29
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !47
  %i.bg = add i64 %i.bf, %i.bb
  %gep17.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i
  store i64 %i.bg, ptr %gep17.i.i, align 8, !tbaa !47
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i.i
  %i.bh = load i64, ptr %gep.i.i.1, align 8, !tbaa !47
  %i.bi = add nuw nsw i64 %i.y, %indvars.iv.next.i.i
  %sext.i.i.1 = shl i64 %i.bi, 32
  %i.bj = ashr exact i64 %sext.i.i.1, 29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !47
  %i.bm = add i64 %i.bl, %i.bh
  %gep17.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i
  store i64 %i.bm, ptr %gep17.i.i.1, align 8, !tbaa !47
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %indvars.iv6.i.i
  br i1 %exitcond.not.i.i.1, label %.loopexit, label %scalar.ph, !llvm.loop !198

__cxx_global_var_init.exit:                       ; preds = %.loopexit, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i.i
  %i.bn = call i32 @__cxa_atexit(ptr nonnull @_ZN5faiss12_GLOBAL__N_14CombD2Ev, ptr nonnull @_ZN5faiss12_GLOBAL__N_14combE, ptr nonnull @__dso_handle) #14 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { convergent nounwind }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"_ZTSN5faiss14ZnSphereSearchE", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16}
!11 = !{!"_ZTSSt6vectorIfSaIfEE", !12, i64 0}
!12 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 float", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 _ZTSN5faiss13ZnSphereCodec11CodeSegmentE", !16, i64 0}
!20 = !{!21, !28, i64 32}
!21 = !{!"_ZTSN5faiss13ZnSphereCodec11CodeSegmentE", !22, i64 0, !28, i64 32, !6, i64 40}
!22 = !{!"_ZTSN5faiss7RepeatsE", !6, i64 0, !23, i64 8}
!23 = !{!"_ZTSSt6vectorIN5faiss6RepeatESaIS1_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN5faiss6RepeatESaIS1_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN5faiss6RepeatESaIS1_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5faiss6RepeatESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN5faiss6RepeatE", !16, i64 0}
!28 = !{!"long", !7, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!21, !6, i64 40}
!32 = !{!33, !6, i64 16}
!33 = !{!"_ZTSN5faiss17EnumeratedVectorsE", !28, i64 8, !6, i64 16}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !7, i64 0}
!36 = distinct !{!36, !30}
!37 = !{!38, !38, i64 0}
!38 = !{!"vtable pointer", !8, i64 0}
!39 = !{!18, !19, i64 8}
!40 = !{!26, !27, i64 0}
!41 = !{!26, !27, i64 16}
!42 = distinct !{!42, !30}
!43 = !{!18, !19, i64 16}
!44 = !{!14, !15, i64 0}
!45 = !{!14, !15, i64 16}
!46 = !{ptr @_ZN5faiss13ZnSphereCodecD2Ev}
!47 = !{!28, !28, i64 0}
!48 = !{!6, !6, i64 0}
!49 = !{!50, !6, i64 20}
!50 = !{!"_ZTSN5faiss16ZnSphereCodecRecE", !33, i64 0, !6, i64 20, !6, i64 24, !6, i64 28, !51, i64 32, !51, i64 56, !6, i64 80, !56, i64 88}
!51 = !{!"_ZTSSt6vectorImSaImEE", !52, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseImSaImEE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"p1 long", !16, i64 0}
!56 = !{!"_ZTSSt6vectorIS_IfSaIfEESaIS1_EE", !57, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE12_Vector_implE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!60 = !{!"p1 _ZTSSt6vectorIfSaIfEE", !16, i64 0}
!61 = !{!50, !6, i64 24}
!62 = !{!50, !6, i64 80}
!63 = !{!54, !55, i64 0}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
!68 = !{!59, !60, i64 0}
!69 = distinct !{!69, !30}
!70 = !{!59, !60, i64 8}
!71 = distinct !{!71, !30}
!72 = !{!59, !60, i64 16}
!73 = !{!54, !55, i64 16}
!74 = !{ptr @_ZN5faiss16ZnSphereCodecRecD2Ev}
!75 = !{!76, !81, i64 104}
!76 = !{!"_ZTSN5faiss16ZnSphereCodecAltE", !77, i64 0, !81, i64 104, !50, i64 112}
!77 = !{!"_ZTSN5faiss13ZnSphereCodecE", !33, i64 0, !10, i64 24, !78, i64 64, !28, i64 88, !28, i64 96}
!78 = !{!"_ZTSSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EE", !79, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EE", !80, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EE12_Vector_implE", !18, i64 0}
!81 = !{!"bool", !7, i64 0}
!82 = !{i8 0, i8 2}
!83 = !{}
!84 = !{!54, !55, i64 8}
!85 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!86 = distinct !{!86, !30, !87, !88}
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = distinct !{!89, !30, !88, !87}
!90 = distinct !{!90, !30, !87, !88}
!91 = distinct !{!91, !30, !88, !87}
!92 = distinct !{!92, !30, !87, !88}
!93 = distinct !{!93, !30, !88, !87}
!94 = distinct !{!94, !30, !87, !88}
!95 = distinct !{!95, !30, !88, !87}
!96 = !{!22, !6, i64 0}
!97 = !{!26, !27, i64 8}
!98 = !{!99, !35, i64 0}
end_hunk_0
