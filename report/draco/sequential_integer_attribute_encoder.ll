Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_encoder?download=true
inline.NumInlined: 2377
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20EncodePredictionDataEPNS_13EncoderBufferE:bb.a
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %.tr29.2 = trunc i64 %i.eh to i32
  %i.ei = shl i32 %.tr29.2, 3
  %i.ej = add i32 %i.ei, %i.ed                    ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, 2
  br i1 %i.ek, label %.preheader.2, label %._crit_edge.2

.preheader.2:                                     ; preds = %bb.n, %.loopexit.2
  %.02132.2.in = phi i32 [ %.02132.2, %.loopexit.2 ], [ %i.ej, %bb.n ] ; 4 uses
  %.02132.2 = add nsw i32 %.02132.2.in, -3        ; 3 uses
  %i.el = load ptr, ptr %i.dh, align 8, !tbaa !174
  %i.em = lshr i32 %.02132.2, 6
  %.zext.2 = zext nneg i32 %i.em to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.zext.2
  %i.eo = and i32 %.02132.2, 63
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = load i64, ptr %i.en, align 8, !tbaa !128
  %i.es = and i64 %i.er, %i.eq
  %i.et = icmp ne i64 %i.es, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.et)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.o:                                             ; preds = %.preheader.2
  %i.eu = add nsw i32 %.02132.2.in, -2            ; 2 uses
  %i.ev = load ptr, ptr %i.dh, align 8, !tbaa !174
  %i.ew = lshr i32 %i.eu, 6
  %.zext.2.1 = zext nneg i32 %i.ew to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.zext.2.1
  %i.ey = and i32 %i.eu, 63
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = load i64, ptr %i.ex, align 8, !tbaa !128
  %i.fc = and i64 %i.fb, %i.fa
  %i.fd = icmp ne i64 %i.fc, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.fd)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.p:                                             ; preds = %bb.o
  %i.fe = add nsw i32 %.02132.2.in, -1            ; 2 uses
  %i.ff = load ptr, ptr %i.dh, align 8, !tbaa !174
  %i.fg = lshr i32 %i.fe, 6
  %.zext.2.2 = zext nneg i32 %i.fg to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.zext.2.2
  %i.fi = and i32 %i.fe, 63
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = load i64, ptr %i.fh, align 8, !tbaa !128
  %i.fm = and i64 %i.fl, %i.fk
  %i.fn = icmp ne i64 %i.fm, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.fn)
          to label %.loopexit.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.loopexit.2:                                      ; preds = %bb.p
  %i.fo = icmp samesign ugt i32 %.02132.2.in, 5
  br i1 %i.fo, label %.preheader.2, label %._crit_edge.2, !llvm.loop !378

._crit_edge.2:                                    ; preds = %.loopexit.2, %bb.n
  invoke void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %1)
          to label %bb.q unwind label %bb.e

bb.q:                                             ; preds = %._crit_edge.2
  call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !174
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !175
  %i.fu = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.tr.3 = trunc i64 %i.fx to i32
  %i.fy = shl i32 %.tr.3, 3
  %i.fz = add i32 %i.fy, %i.ft
  %i.ga = call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.fz, ptr noundef %1) ; 0 uses
  %i.gb = load ptr, ptr %i.fq, align 8, !tbaa !174
  %i.gc = load i32, ptr %i.fs, align 8, !tbaa !175
  %i.gd = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = shl nsw i64 %i.gg, 3
  %i.gi = zext i32 %i.gc to i64
  %i.gj = sub nsw i64 0, %i.gi
  %.not.3 = icmp eq i64 %i.gh, %i.gj
  br i1 %.not.3, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %2)
  invoke void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.t unwind label %bb.e

bb.t:                                             ; preds = %bb.s
  %i.gk = load ptr, ptr %i.fq, align 8, !tbaa !174
  %i.gl = load i32, ptr %i.fs, align 8, !tbaa !175
  %i.gm = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %.tr29.3 = trunc i64 %i.gp to i32
  %i.gq = shl i32 %.tr29.3, 3
  %i.gr = add i32 %i.gq, %i.gl                    ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, 3
  br i1 %i.gs, label %.preheader.3, label %._crit_edge.3

.preheader.3:                                     ; preds = %bb.t, %.loopexit.3
  %.02132.3.in = phi i32 [ %.02132.3, %.loopexit.3 ], [ %i.gr, %bb.t ] ; 5 uses
  %.02132.3 = add nsw i32 %.02132.3.in, -4        ; 3 uses
  %i.gt = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.gu = lshr i32 %.02132.3, 6
  %.zext.3 = zext nneg i32 %i.gu to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.zext.3
  %i.gw = and i32 %.02132.3, 63
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = shl nuw i64 1, %i.gx
  %i.gz = load i64, ptr %i.gv, align 8, !tbaa !128
  %i.ha = and i64 %i.gz, %i.gy
  %i.hb = icmp ne i64 %i.ha, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.hb)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.preheader.3
  %i.hc = add nsw i32 %.02132.3.in, -3            ; 2 uses
  %i.hd = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.he = lshr i32 %i.hc, 6
  %.zext.3.1 = zext nneg i32 %i.he to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %.zext.3.1
  %i.hg = and i32 %i.hc, 63
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = load i64, ptr %i.hf, align 8, !tbaa !128
  %i.hk = and i64 %i.hj, %i.hi
  %i.hl = icmp ne i64 %i.hk, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.hl)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.hm = add nsw i32 %.02132.3.in, -2            ; 2 uses
  %i.hn = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.ho = lshr i32 %i.hm, 6
  %.zext.3.2 = zext nneg i32 %i.ho to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.zext.3.2
  %i.hq = and i32 %i.hm, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = shl nuw i64 1, %i.hr
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !128
  %i.hu = and i64 %i.ht, %i.hs
  %i.hv = icmp ne i64 %i.hu, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.hv)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.hw = add nsw i32 %.02132.3.in, -1            ; 2 uses
  %i.hx = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.hy = lshr i32 %i.hw, 6
  %.zext.3.3 = zext nneg i32 %i.hy to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %.zext.3.3
  %i.ia = and i32 %i.hw, 63
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = shl nuw i64 1, %i.ib
  %i.id = load i64, ptr %i.hz, align 8, !tbaa !128
  %i.ie = and i64 %i.id, %i.ic
  %i.if = icmp ne i64 %i.ie, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.if)
          to label %.loopexit.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.3:                                      ; preds = %bb.w
  %i.ig = icmp samesign ugt i32 %.02132.3.in, 7
  br i1 %i.ig, label %.preheader.3, label %._crit_edge.3, !llvm.loop !378

._crit_edge.3:                                    ; preds = %.loopexit.3, %bb.t
  invoke void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %1)
          to label %bb.x unwind label %bb.e

bb.x:                                             ; preds = %._crit_edge.3
  call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !201
  store i32 %i.ii, ptr %i.a, align 4, !tbaa !96
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !119
  %i.il = icmp slt i64 %i.ik, 1
  br i1 %i.il, label %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.i.i, label %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.thread.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 8 uses
  %6 = alloca %"struct.draco::ShannonEntropyTracker::EntropyData", align 8 ; 5 uses
  %7 = alloca %"struct.draco::ShannonEntropyTracker::EntropyData", align 8 ; 5 uses
  %8 = alloca [4 x %"class.std::vector"], align 16 ; 33 uses
  %i.b = alloca [4 x i8], align 1                 ; 9 uses
  %i.c = alloca [4 x i64], align 16               ; 9 uses
  %i.d = alloca [4 x i64], align 16               ; 8 uses
  %9 = alloca %struct.PredictionConfiguration, align 8 ; 16 uses
  %10 = alloca %"struct.draco::ShannonEntropyTracker::EntropyData", align 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store i32 %4, ptr %i.e, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = sext i32 %4 to i64                       ; 37 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149  ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !101  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.g
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.p)
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.n, %i.g
  br i1 %i.q, label %bb.d, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i.i.i, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.d
  store ptr %i.r, ptr %i.h, align 8, !tbaa !149
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i

_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i: ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.d, %bb.c, %bb.b
  %i.s = icmp eq i32 %3, 0
  br i1 %i.s, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i
  %i.t = load i32, ptr %1, align 4, !tbaa !96     ; 6 uses
  %i.u = icmp sgt i32 %3, 1
  br i1 %i.u, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %3 to i64
  %i.v = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %xtraiter = and i64 %i.v, 1
  %i.w = icmp eq i32 %3, 2
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.v, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01923.i.epil.init = phi i32 [ %i.t, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.02022.i.epil.init = phi i32 [ %i.t, %.lr.ph.preheader.i ], [ %.121.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod782 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod782)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.y = load i32, ptr %i.x, align 4, !tbaa !96   ; 3 uses
  %i.z = icmp slt i32 %i.y, %.02022.i.epil.init
  %spec.select.i.epil = tail call i32 @llvm.smax.i32(i32 %i.y, i32 %.01923.i.epil.init)
  %.121.i.epil = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %.02022.i.epil.init)
  %.1.i.epil = select i1 %i.z, i32 %.01923.i.epil.init, i32 %spec.select.i.epil
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.e
  %.020.lcssa.i = phi i32 [ %i.t, %bb.e ], [ %.121.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.121.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.019.lcssa.i = phi i32 [ %i.t, %bb.e ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.020.lcssa.i, ptr %i.aa, align 4, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.019.lcssa.i, ptr %i.ab, align 8, !tbaa !202
  %i.ac = sext i32 %.019.lcssa.i to i64
  %i.ad = sext i32 %.020.lcssa.i to i64
  %i.ae = sub nsw i64 %i.ac, %i.ad                ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.ae, 2147483647
  br i1 %or.cond.i.i, label %bb.f, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.af = trunc nuw nsw i64 %i.ae to i32          ; 2 uses
  %i.ag = add nuw nsw i32 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !204
  %i.ai = lshr i32 %i.ag, 1                       ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !205
  %i.ak = sub nsw i32 0, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !206
  %i.am = and i32 %i.af, 1
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = add nsw i32 %i.ai, -1
  store i32 %i.an, ptr %i.aj, align 8, !tbaa !205
  br label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.01923.i = phi i32 [ %i.t, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i ] ; 2 uses
  %.02022.i = phi i32 [ %i.t, %.lr.ph.preheader.i.new ], [ %.121.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !96 ; 3 uses
  %i.aq = icmp slt i32 %i.ap, %.02022.i
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %.01923.i)
  %.121.i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %.02022.i) ; 2 uses
  %.1.i = select i1 %i.aq, i32 %.01923.i, i32 %spec.select.i ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !96 ; 3 uses
  %i.au = icmp slt i32 %i.at, %.121.i
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 %.1.i)
  %.121.i.1 = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %.121.i) ; 3 uses
  %.1.i.1 = select i1 %i.au, i32 %.1.i, i32 %spec.select.i.1 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit: ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i, %._crit_edge.i, %bb.f, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !158 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %8, i8 0, i64 96, i1 false)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.j

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3
  %.not.i.i.i.i168 = icmp eq i32 %4, 0            ; 9 uses
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.az = shl nuw nsw i64 %i.g, 2
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #18
          to label %.noexc169 unwind label %bb.y  ; 5 uses

.noexc169:                                        ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.g ; 2 uses
  store i32 0, ptr %i.ba, align 4, !tbaa !96
  %i.bc = getelementptr i8, ptr %i.ba, i64 4      ; 3 uses
  %i.bd = add nsw i64 %i.g, -1                    ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc169
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bd, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bc, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

bb.j:                                             ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.g)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge505 unwind label %bb.t

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge505: ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.phi.trans.insert506 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert506, align 16, !tbaa !149
  %.pre508 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !101
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge505
  %i.bg = phi ptr [ %.pre508, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge505 ], [ null, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit ] ; 2 uses
  %i.bh = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge505 ], [ null, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2                 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %i.g
  br i1 %i.bn, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bo = icmp ugt i64 %i.bm, %i.g
  br i1 %i.bo, label %bb.l, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1

end_hunk_0
begin_hunk_1_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176: ; preds = %.noexc181
  %.idx.i.i.i.i.i.i.i177 = shl nuw nsw i64 %i.di, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dh, i8 0, i64 %.idx.i.i.i.i.i.i.i177, i1 false), !tbaa !96
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i.i.i.i.i.i.i177
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176, %.noexc181, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %.sroa.15.0 = phi ptr [ %i.dg, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dg, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %.sroa.0342.0 = phi ptr [ %i.df, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.df, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 18 uses
  %.0.i.i.i.i.i178 = phi ptr [ %i.dk, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dh, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !159 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !209
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !210
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = lshr exact i64 %i.ds, 2                 ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %.lr.ph438, label %.preheader

.lr.ph438:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aw, i64 160 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %wide.trip.count.i189 = zext nneg i32 %4 to i64 ; 11 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ee = ptrtoint ptr %.0.i.i.i.i.i to i64       ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.0351.0 to i64       ; 3 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 10 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ej = icmp sgt i64 %i.eg, 4                   ; 2 uses
  %i.ek = icmp eq i64 %i.eg, 4                    ; 2 uses
  %i.el = icmp ugt i64 %i.eg, 9223372036854775804
  %i.em = ptrtoint ptr %.0.i.i.i.i.i178 to i64    ; 2 uses
  %i.en = ptrtoint ptr %.sroa.0342.0 to i64       ; 8 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 10 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 6 uses
  %i.er = icmp sgt i64 %i.eo, 4                   ; 2 uses
  %i.es = icmp eq i64 %i.eo, 4                    ; 2 uses
  %i.et = icmp ugt i64 %i.eo, 9223372036854775804
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ez = call i32 @llvm.umax.i32(i32 %4, i32 1)
  %i.fa = zext nneg i32 %i.ez to i64              ; 15 uses
  %i.fb = shl nuw nsw i64 %i.fa, 2
  %i.fc = and i64 %i.dt, 2147483647               ; 4 uses
  %i.fd = add nsw i64 %i.fc, -1
  %i.fe = mul nsw i64 %i.fd, %i.g                 ; 2 uses
  %i.ff = shl i64 %i.fe, 2
  %i.fg = add i64 %i.ff, %i.a
  %i.fh = sub i64 %i.en, %i.fg
  %i.fi = shl nuw nsw i64 %i.g, 2
  %i.fj = mul i64 %i.fe, -4
  %i.fk = sub i64 %i.fj, %i.a
  %i.fl = shl nuw nsw i64 %i.fa, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0351.0, i64 %i.fl
  %i.fm = add nsw i64 %i.fc, -1                   ; 2 uses
  %i.fn = mul nsw i64 %i.fm, %i.g
  %i.fo = shl i64 %i.fn, 2
  %i.fp = add i64 %i.fo, %i.a
  %i.fq = sub i64 %i.en, %i.fp
  %i.fr = shl nuw nsw i64 %i.g, 2
  %i.fs = add nsw i64 %i.fc, -2                   ; 2 uses
  %i.ft = mul nsw i64 %i.fs, %i.g
  %i.fu = shl i64 %i.ft, 2
  %i.fv = add i64 %i.fu, %i.a
  %i.fw = sub i64 %i.en, %i.fv
  %i.fx = mul nsw i64 %i.fm, %i.g
  %i.fy = mul i64 %i.fx, -4
  %i.fz = sub i64 %i.fy, %i.a
  %i.ga = mul nsw i64 %i.fs, %i.g
  %i.gb = mul i64 %i.ga, -4
  %i.gc = sub i64 %i.gb, %i.a
  %min.iters.check731 = icmp ult i32 %4, 12
  %n.vec733 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n744 = icmp eq i64 %n.vec733, %wide.trip.count.i189
  %xtraiter783 = and i64 %wide.trip.count.i189, 1
  %lcmp.mod784.not = icmp eq i64 %xtraiter783, 0
  %i.gd = add nsw i64 %wide.trip.count.i189, -1
  %min.iters.check707 = icmp ult i32 %4, 8
  %invariant.op819 = add i64 %i.fq, -1
  %invariant.op821 = add i64 %i.fw, -1
  %n.vec709 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n721 = icmp eq i64 %n.vec709, %wide.trip.count.i189
  %min.iters.check683 = icmp ult i32 %4, 8
  %n.vec685 = and i64 %i.fa, 2147483640           ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec685, %i.fa
  %xtraiter785 = and i64 %i.fa, 3                 ; 2 uses
  %lcmp.mod786.not = icmp eq i64 %xtraiter785, 0
  %min.iters.check670 = icmp ult i32 %4, 4
  %n.vec672 = and i64 %i.fa, 2147483644           ; 3 uses
  %cmp.n678 = icmp eq i64 %n.vec672, %i.fa
  %min.iters.check655 = icmp ult i32 %4, 8
  %i.ge = sub i64 %i.ef, %i.en
  %diff.check646 = icmp ugt i64 %i.ge, -32
  %invariant.op823 = add i64 %i.fh, -1
  %invariant.op825 = add i64 %i.fk, -1
  %n.vec657 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n667 = icmp eq i64 %n.vec657, %wide.trip.count.i189
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.fa, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.fa
  %xtraiter787 = and i64 %i.fa, 1
  %lcmp.mod788.not = icmp eq i64 %xtraiter787, 0
  %i.gf = add nsw i64 %i.fa, -1
  br label %bb.ab

.preheader:                                       ; preds = %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  br i1 %.not.i.i.i.i168, label %._crit_edge441, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader
  %i.gg = load ptr, ptr %8, align 16, !tbaa !101
  %i.gh = zext nneg i32 %4 to i64
  %i.gi = shl nuw nsw i64 %i.gh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gg, i8 0, i64 %i.gi, i1 false), !tbaa !96
  br label %._crit_edge441

bb.y:                                             ; preds = %bb.i, %bb.h
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit283

bb.z:                                             ; preds = %bb.u
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.aa:                                            ; preds = %bb.x
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit281

bb.ab:                                            ; preds = %.lr.ph438, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit
  %indvar647 = phi i64 [ 0, %.lr.ph438 ], [ %indvar.next, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %indvars.iv498 = phi i64 [ %i.fc, %.lr.ph438 ], [ %indvars.iv.next499, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %i.gm = mul i64 %i.fr, %indvar647               ; 4 uses
  %i.gn = add i64 %i.fz, %i.gm
  %i.go = add i64 %i.gc, %i.gm
  %i.gp = mul i64 %i.fi, %indvar647               ; 2 uses
  %indvars.iv.next499 = add nsw i64 %indvars.iv498, -1 ; 8 uses
  %i.gq = load ptr, ptr %i.dl, align 8, !tbaa !159 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !209
  %i.gt = load ptr, ptr %i.gq, align 8, !tbaa !210 ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 2                 ; 2 uses
  %.not.i.i183 = icmp ugt i64 %i.gx, %indvars.iv.next499
  br i1 %.not.i.i183, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv.next499, i64 noundef %i.gx) #20
          to label %.noexc184 unwind label %bb.ag

.noexc184:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next499
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !212 ; 6 uses
  %.not369404 = icmp eq i32 %i.gz, -1
  br i1 %.not369404, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.ha = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !435
  %i.hb = urem i32 %i.gz, 3
  %.not.i.i.i202 = icmp ne i32 %i.hb, 0           ; 2 uses
  %i.hc = add i32 %i.gz, -1
  %i.hd = add i32 %i.gz, 2                        ; 2 uses
  %i.he = icmp ne i32 %i.hd, -1
  %brmerge = or i1 %.not.i.i.i202, %i.he
  %.mux = select i1 %.not.i.i.i202, i32 %i.hc, i32 %i.hd ; 3 uses
  %i.hf = lshr i32 %.mux, 6
  %.zext.i.i.i205 = zext nneg i32 %i.hf to i64
  %i.hg = and i32 %.mux, 63
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = zext i32 %.mux to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211
  %.0144407 = phi i1 [ true, %.lr.ph ], [ %.1145, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 3 uses
  %.0146406 = phi i32 [ 0, %.lr.ph ], [ %.1147, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 5 uses
  %.sroa.0332.0405 = phi i32 [ %i.gz, %.lr.ph ], [ %.sroa.0332.2, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 8 uses
  %i.hk = sext i32 %.0146406 to i64
  %i.hl = getelementptr inbounds [24 x i8], ptr %8, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !101 ; 5 uses
  %i.hn = ptrtoaddr ptr %i.hm to i64              ; 2 uses
  %i.ho = lshr i32 %.sroa.0332.0405, 6
  %.zext.i.i.i = zext nneg i32 %i.ho to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.zext.i.i.i
  %i.hq = and i32 %.sroa.0332.0405, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = shl nuw i64 1, %i.hr
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !128, !noalias !435
  %i.hu = and i64 %i.ht, %i.hs
  %.not.i.i185 = icmp eq i64 %i.hu, 0
  br i1 %.not.i.i185, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ae
  %i.hv = load ptr, ptr %i.dw, align 8, !tbaa !232, !noalias !435
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = zext i32 %.sroa.0332.0405 to i64
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !210, !noalias !436
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hx
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !212, !noalias !436 ; 5 uses
  %i.ib = icmp eq i32 %i.ia, -1
  br i1 %i.ib, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread, label %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ic = zext i32 %i.ia to i64
  %i.id = load ptr, ptr %i.dx, align 8, !tbaa !233, !noalias !437 ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ic
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !235, !noalias !437
  %i.ig = zext i32 %i.if to i64
  %i.ih = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ig
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !96 ; 2 uses
  %i.ik = insertelement <2 x i32> poison, i32 %i.ia, i64 0
  %i.il = shufflevector <2 x i32> %i.ik, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.im = add nuw <2 x i32> %i.il, <i32 0, i32 1>
  %i.in = urem <2 x i32> %i.im, splat (i32 3)
  %i.io = icmp eq <2 x i32> %i.in, zeroinitializer ; 2 uses
  %i.ip = extractelement <2 x i1> %i.io, i64 1
  %spec.select.i.i.i.i.v = select i1 %i.ip, i32 -2, i32 1
  %spec.select.i.i.i.i = add i32 %i.ia, %spec.select.i.i.i.i.v
  %i.iq = zext i32 %spec.select.i.i.i.i to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !235, !noalias !438
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !96 ; 2 uses
  %i.iw = extractelement <2 x i1> %i.io, i64 0
  %.sink.i.i12.i.v.i = select i1 %i.iw, i32 2, i32 -1
  %.sink.i.i12.i.i = add i32 %.sink.i.i12.i.v.i, %i.ia
  %i.ix = zext i32 %.sink.i.i12.i.i to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !235, !noalias !439
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !96 ; 2 uses
  %i.jd = sext i32 %i.ij to i64
  %i.je = icmp sgt i64 %indvars.iv.next499, %i.jd
  %i.jf = sext i32 %i.iv to i64
  %i.jg = icmp sgt i64 %indvars.iv.next499, %i.jf
  %or.cond.i = select i1 %i.je, i1 %i.jg, i1 false
  %i.jh = sext i32 %i.jc to i64
  %i.ji = icmp sgt i64 %indvars.iv.next499, %i.jh
  %or.cond40.i = select i1 %or.cond.i, i1 %i.ji, i1 false
  br i1 %or.cond40.i, label %bb.af, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.af:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i168, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.preheader.i188

.lr.ph.preheader.i188:                            ; preds = %bb.af
  %i.jj = mul nsw i32 %i.jc, %4
  %i.jk = mul nsw i32 %i.iv, %4
  %i.jl = mul nsw i32 %i.ij, %4
  %i.jm = sext i32 %i.jk to i64                   ; 2 uses
  %i.jn = sext i32 %i.jj to i64                   ; 2 uses
  %i.jo = sext i32 %i.jl to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.jm ; 4 uses
  %invariant.gep48.i = getelementptr [4 x i8], ptr %1, i64 %i.jn ; 4 uses
  %invariant.gep50.i = getelementptr [4 x i8], ptr %1, i64 %i.jo ; 4 uses
  br i1 %min.iters.check731, label %.lr.ph.i190.preheader, label %vector.memcheck724

vector.memcheck724:                               ; preds = %.lr.ph.preheader.i188
  %i.jp = sub i64 %i.hn, %i.a                     ; 2 uses
  %i.jq = shl nsw i64 %i.jo, 2
  %i.jr = sub i64 %i.jq, %i.jp
  %diff.check725 = icmp ugt i64 %i.jr, -32
  %i.js = shl nsw i64 %i.jn, 2
  %i.jt = sub i64 %i.js, %i.jp
  %diff.check726 = icmp ugt i64 %i.jt, -32
  %conflict.rdx727 = or i1 %diff.check725, %diff.check726
  %i.ju = shl nsw i64 %i.jm, 2
  %11 = add i64 %i.ju, %i.a
  %i.jv = sub i64 %11, %i.hn
  %diff.check728 = icmp ugt i64 %i.jv, -32
  %conflict.rdx729 = or i1 %conflict.rdx727, %diff.check728
  br i1 %conflict.rdx729, label %.lr.ph.i190.preheader, label %vector.body734

vector.body734:                                   ; preds = %vector.memcheck724, %vector.body734
  %index735 = phi i64 [ %index.next742, %vector.body734 ], [ 0, %vector.memcheck724 ] ; 5 uses
  %i.jw = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index735 ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 16
  %wide.load736 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !96
  %wide.load737 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !96
  %i.jy = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %index735 ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 16
  %wide.load738 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !96
  %wide.load739 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !96
  %i.ka = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %index735 ; 2 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 16
  %wide.load740 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !96
  %wide.load741 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !96
  %i.kc = add <4 x i32> %wide.load738, %wide.load736
  %i.kd = add <4 x i32> %wide.load739, %wide.load737
  %i.ke = sub <4 x i32> %i.kc, %wide.load740
  %i.kf = sub <4 x i32> %i.kd, %wide.load741
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %index735 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store <4 x i32> %i.ke, ptr %i.kg, align 4, !tbaa !96
  store <4 x i32> %i.kf, ptr %i.kh, align 4, !tbaa !96
  %index.next742 = add nuw i64 %index735, 8       ; 2 uses
  %i.ki = icmp eq i64 %index.next742, %n.vec733
  br i1 %i.ki, label %middle.block743, label %vector.body734, !llvm.loop !395

middle.block743:                                  ; preds = %vector.body734
  br i1 %cmp.n744, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i190.preheader

.lr.ph.i190.preheader:                            ; preds = %vector.memcheck724, %.lr.ph.preheader.i188, %middle.block743
  %indvars.iv.i191.ph = phi i64 [ 0, %vector.memcheck724 ], [ 0, %.lr.ph.preheader.i188 ], [ %n.vec733, %middle.block743 ] ; 7 uses
  br i1 %lcmp.mod784.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol

.lr.ph.i190.prol:                                 ; preds = %.lr.ph.i190.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i191.ph
  %i.kj = load i32, ptr %gep.i.prol, align 4, !tbaa !96
  %gep49.i.prol = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i191.ph
  %i.kk = load i32, ptr %gep49.i.prol, align 4, !tbaa !96
  %gep51.i.prol = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i191.ph
  %i.kl = load i32, ptr %gep51.i.prol, align 4, !tbaa !96
  %i.km = add i32 %i.kk, %i.kj
  %i.kn = sub i32 %i.km, %i.kl
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i191.ph
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !96
  %indvars.iv.next.i192.prol = or disjoint i64 %indvars.iv.i191.ph, 1
  br label %.lr.ph.i190.prol.loopexit

.lr.ph.i190.prol.loopexit:                        ; preds = %.lr.ph.i190.prol, %.lr.ph.i190.preheader
  %indvars.iv.i191.unr = phi i64 [ %indvars.iv.i191.ph, %.lr.ph.i190.preheader ], [ %indvars.iv.next.i192.prol, %.lr.ph.i190.prol ]
  %i.kp = icmp eq i64 %indvars.iv.i191.ph, %i.gd
  br i1 %i.kp, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190
  %indvars.iv.i191 = phi i64 [ %indvars.iv.next.i192.1, %.lr.ph.i190 ], [ %indvars.iv.i191.unr, %.lr.ph.i190.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i191
  %i.kq = load i32, ptr %gep.i, align 4, !tbaa !96
  %gep49.i = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i191
  %i.kr = load i32, ptr %gep49.i, align 4, !tbaa !96
  %gep51.i = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i191
  %i.ks = load i32, ptr %gep51.i, align 4, !tbaa !96
  %i.kt = add i32 %i.kr, %i.kq
  %i.ku = sub i32 %i.kt, %i.ks
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i191
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !96
  %indvars.iv.next.i192 = add nuw nsw i64 %indvars.iv.i191, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i192
  %i.kw = load i32, ptr %gep.i.1, align 4, !tbaa !96
  %gep49.i.1 = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.next.i192
  %i.kx = load i32, ptr %gep49.i.1, align 4, !tbaa !96
  %gep51.i.1 = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next.i192
  %i.ky = load i32, ptr %gep51.i.1, align 4, !tbaa !96
  %i.kz = add i32 %i.kx, %i.kw
  %i.la = sub i32 %i.kz, %i.ky
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.next.i192
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !96
  %indvars.iv.next.i192.1 = add nuw nsw i64 %indvars.iv.i191, 2 ; 2 uses
  %exitcond.not.i193.1 = icmp eq i64 %indvars.iv.next.i192.1, %wide.trip.count.i189
  br i1 %exitcond.not.i193.1, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i190, !llvm.loop !396

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190, %middle.block743, %bb.af
  %i.lc = add nsw i32 %.0146406, 1                ; 2 uses
  %i.ld = icmp eq i32 %i.lc, 4
  br i1 %i.ld, label %._crit_edge, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.ag:                                            ; preds = %bb.ac
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread: ; preds = %bb.ae, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %.1147 = phi i32 [ %i.lc, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit ], [ %.0146406, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.0146406, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %.0146406, %bb.ae ] ; 6 uses
  br i1 %.0144407, label %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.aj

_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.lf = add nuw i32 %.sroa.0332.0405, 1         ; 2 uses
  %i.lg = urem i32 %i.lf, 3
  %.not.i.i.i = icmp eq i32 %i.lg, 0
  %i.lh = add i32 %.sroa.0332.0405, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.lh, i32 %i.lf ; 4 uses
  %i.li = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.li, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.lj = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !440
  %i.lk = lshr i32 %spec.select.i.i.i, 6
  %.zext.i.i.i194 = zext nneg i32 %i.lk to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.zext.i.i.i194
  %i.lm = and i32 %spec.select.i.i.i, 63
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = shl nuw i64 1, %i.ln
  %i.lp = load i64, ptr %i.ll, align 8, !tbaa !128, !noalias !440
  %i.lq = and i64 %i.lp, %i.lo
  %.not.i.i195 = icmp eq i64 %i.lq, 0
  br i1 %.not.i.i195, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196: ; preds = %bb.ah
  %i.lr = load ptr, ptr %i.dw, align 8, !tbaa !232, !noalias !440
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lt = zext i32 %spec.select.i.i.i to i64
  %i.lu = load ptr, ptr %i.ls, align 8, !tbaa !210, !noalias !441
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.lt
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !212, !noalias !441 ; 3 uses
  %i.lx = icmp eq i32 %i.lw, -1
  br i1 %i.lx, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196
  %i.ly = add nuw i32 %i.lw, 1                    ; 2 uses
  %i.lz = urem i32 %i.ly, 3
  %.not.i.i1.i = icmp eq i32 %i.lz, 0
  %i.ma = add i32 %i.lw, -2
  %spec.select.i.i2.i = select i1 %.not.i.i1.i, i32 %i.ma, i32 %i.ly
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.aj:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.mb = urem i32 %.sroa.0332.0405, 3
  %.not.i.i.i197 = icmp eq i32 %i.mb, 0
  br i1 %.not.i.i.i197, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.aj
  %i.mc = add i32 %.sroa.0332.0405, -1
  br label %bb.ak

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.aj
  %i.md = add i32 %.sroa.0332.0405, 2             ; 2 uses
  %i.me = icmp eq i32 %i.md, -1
  br i1 %i.me, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i.i9.i = phi i32 [ %i.mc, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.md, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.mf = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !442
  %i.mg = lshr i32 %.sink.i.i9.i, 6
  %.zext.i.i.i198 = zext nneg i32 %i.mg to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %.zext.i.i.i198
  %i.mi = and i32 %.sink.i.i9.i, 63
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = shl nuw i64 1, %i.mj
  %i.ml = load i64, ptr %i.mh, align 8, !tbaa !128, !noalias !442
  %i.mm = and i64 %i.mk, %i.ml
  %.not.i.i199 = icmp eq i64 %i.mm, 0
  br i1 %.not.i.i199, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200: ; preds = %bb.ak
  %i.mn = load ptr, ptr %i.dw, align 8, !tbaa !232, !noalias !442
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.mp = zext i32 %.sink.i.i9.i to i64
  %i.mq = load ptr, ptr %i.mo, align 8, !tbaa !210, !noalias !443
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.mp
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !212, !noalias !443 ; 4 uses
  %i.mt = icmp eq i32 %i.ms, -1
  br i1 %i.mt, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200
  %i.mu = urem i32 %i.ms, 3
  %.not.i.i1.i201 = icmp eq i32 %i.mu, 0
  br i1 %.not.i.i1.i201, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mv = add i32 %i.ms, -1
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.an:                                            ; preds = %bb.al
  %i.mw = add i32 %i.ms, 2
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.ak, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200, %bb.am, %bb.an, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.ah, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196, %bb.ai
  %.sroa.0332.1 = phi i32 [ -1, %bb.ah ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196 ], [ %spec.select.i.i2.i, %bb.ai ], [ -1, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %i.mv, %bb.am ], [ %i.mw, %bb.an ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200 ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %bb.ak ] ; 3 uses
  %i.mx = icmp eq i32 %.sroa.0332.1, %i.gz
  br i1 %i.mx, label %._crit_edge, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.my = icmp eq i32 %.sroa.0332.1, -1
  %or.cond = and i1 %.0144407, %i.my
  br i1 %or.cond, label %bb.ap, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211

bb.ap:                                            ; preds = %bb.ao
  br i1 %brmerge, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i203, label %._crit_edge
end_hunk_1
begin_hunk_2_@_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueILb1EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii
define linkonce_odr noundef zeroext i1 @_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueILb1EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %6 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %7 = alloca %"class.draco::VectorD.151", align 8 ; 8 uses
  %8 = alloca %"class.draco::VectorD.151", align 8 ; 8 uses
  %9 = alloca %"class.draco::VectorD.151", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %1, align 4, !tbaa !212    ; 5 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %i.e = shufflevector <2 x i32> %i.d, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.f = add nuw <2 x i32> %i.e, <i32 0, i32 1>
  %i.g = urem <2 x i32> %i.f, splat (i32 3)
  %i.h = icmp eq <2 x i32> %i.g, zeroinitializer  ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 1
  %spec.select.i.i.v = select i1 %i.i, i32 -2, i32 1
  %spec.select.i.i = add i32 %i.b, %spec.select.i.i.v ; 2 uses
  %i.j = extractelement <2 x i1> %i.h, i64 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.b, -1
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = add i32 %i.b, 2
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sink.i.i187 = phi i32 [ %spec.select.i.i, %bb.c ], [ %spec.select.i.i, %bb.d ], [ -1, %bb.a ]
  %.sink.i.i59 = phi i32 [ %i.k, %bb.c ], [ %i.l, %bb.d ], [ -1, %bb.a ]
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = zext i32 %.sink.i.i187 to i64
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !233, !noalias !490 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !235, !noalias !490
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !160  ; 2 uses
  %i.u = sext i32 %i.r to i64                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !149
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !101  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2                 ; 4 uses
  %.not.i.i60 = icmp ugt i64 %i.ab, %i.u
  br i1 %.not.i.i60, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %i.u, i64 noundef %i.ab) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ac = zext i32 %.sink.i.i59 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !235, !noalias !491
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.u
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !96 ; 4 uses
  %i.ah = sext i32 %i.ae to i64                   ; 3 uses
  %.not.i.i61 = icmp ugt i64 %i.ab, %i.ah
  br i1 %.not.i.i61, label %_ZNKSt6vectorIiSaIiEE2atEm.exit62, label %bb.f

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %i.ah, i64 noundef %i.ab) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit62:                ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !96 ; 3 uses
  %i.ak = icmp slt i32 %i.aj, %3
  %i.al = icmp slt i32 %i.ag, %3                  ; 2 uses
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.g, label %bb.n

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit62
  %i.am = shl nsw i32 %i.ag, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %2, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !96, !noalias !492 ; 3 uses
  %i.aq = sext i32 %i.ap to i64                   ; 3 uses
  %i.ar = getelementptr i8, ptr %i.ao, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !96, !noalias !492 ; 3 uses
  %i.at = sext i32 %i.as to i64                   ; 3 uses
  %i.au = shl nsw i32 %i.aj, 1
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !96, !noalias !493 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %i.aw, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !96, !noalias !493 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %.not.i = icmp eq i32 %i.ax, %i.ap
  %.not.1.i = icmp eq i32 %i.ba, %i.as
  %.not.lcssa.i = select i1 %.not.i, i1 %.not.1.i, i1 false
  br i1 %.not.lcssa.i, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ap, ptr %i.bc, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.as, ptr %i.bd, align 4, !tbaa !96
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !242, !noalias !494
  %i.bg = sext i32 %3 to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !93, !noalias !494 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !494
  %i.bj = load ptr, ptr %0, align 8, !tbaa !241, !noalias !494 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 100
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !91, !range !61, !noalias !495, !noundef !62
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !495
  %i.bp = zext i32 %i.bi to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  %storemerge.i.else.val.i = load i32, ptr %i.bq, align 4, !tbaa !96, !noalias !495
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.h, %.else.i
  %storemerge.i.i = phi i32 [ %i.bi, %bb.h ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !494
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !86, !noalias !494
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !121, !noalias !494
  %i.bt = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.bs, ptr noundef nonnull align 8 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !494
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !242, !noalias !496
  %i.bv = sext i32 %i.ag to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !93, !noalias !496 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !496
  %i.by = load ptr, ptr %0, align 8, !tbaa !241, !noalias !496 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 100
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !91, !range !61, !noalias !497, !noundef !62
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66, label %.else.i63

.else.i63:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !497
  %i.ce = zext i32 %i.bx to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %storemerge.i.else.val.i64 = load i32, ptr %i.cf, align 4, !tbaa !96, !noalias !497
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i63
  %storemerge.i.i65 = phi i32 [ %i.bx, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i64, %.else.i63 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !496
  store i32 %storemerge.i.i65, ptr %5, align 4, !tbaa !86, !noalias !496
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !121, !noalias !496
  %i.ci = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.ch, ptr noundef nonnull align 8 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !496
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.cj = load ptr, ptr %i.be, align 8, !tbaa !242, !noalias !498
  %i.ck = sext i32 %i.aj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !93, !noalias !498 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !498
  %i.cn = load ptr, ptr %0, align 8, !tbaa !241, !noalias !498 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 100
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !91, !range !61, !noalias !499, !noundef !62
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70, label %.else.i67

.else.i67:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !499
  %i.ct = zext i32 %i.cm to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %storemerge.i.else.val.i68 = load i32, ptr %i.cu, align 4, !tbaa !96, !noalias !499
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66, %.else.i67
  %storemerge.i.i69 = phi i32 [ %i.cm, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66 ], [ %storemerge.i.else.val.i68, %.else.i67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !498
  store i32 %storemerge.i.i69, ptr %4, align 4, !tbaa !86, !noalias !498
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !121, !noalias !498
  %i.cx = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.cw, ptr noundef nonnull align 8 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !498
  %i.cy = load i64, ptr %9, align 8, !tbaa !128, !noalias !500
  %i.cz = load i64, ptr %8, align 8, !tbaa !128, !noalias !500 ; 3 uses
  %i.da = sub nsw i64 %i.cy, %i.cz                ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !128, !noalias !500
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !128, !noalias !500 ; 3 uses
  %i.df = sub nsw i64 %i.dc, %i.de                ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !128, !noalias !500
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !128, !noalias !500 ; 3 uses
  %i.dk = sub nsw i64 %i.dh, %i.dj                ; 5 uses
  %i.dl = mul nsw i64 %i.da, %i.da
  %i.dm = mul nsw i64 %i.df, %i.df
  %i.dn = add nuw nsw i64 %i.dm, %i.dl
  %i.do = mul nsw i64 %i.dk, %i.dk
  %i.dp = add nuw nsw i64 %i.dn, %i.do            ; 12 uses
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70
  %i.dq = load i64, ptr %7, align 8, !tbaa !128, !noalias !501 ; 2 uses
  %i.dr = sub nsw i64 %i.dq, %i.cz
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !128, !noalias !501 ; 2 uses
  %i.du = sub nsw i64 %i.dt, %i.de
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !128, !noalias !501 ; 2 uses
  %i.dx = sub nsw i64 %i.dw, %i.dj
  %i.dy = mul nsw i64 %i.dr, %i.da
  %i.dz = mul nsw i64 %i.du, %i.df
  %i.ea = add nsw i64 %i.dz, %i.dy
  %i.eb = mul nsw i64 %i.dx, %i.dk
  %i.ec = add nsw i64 %i.ea, %i.eb                ; 6 uses
  %i.ed = sub nsw i64 %i.ay, %i.aq                ; 3 uses
  %i.ee = sub nsw i64 %i.bb, %i.at                ; 3 uses
  %i.ef = call noundef i64 @llvm.abs.i64(i64 %i.aq, i1 true)
  %i.eg = call noundef i64 @llvm.abs.i64(i64 %i.at, i1 true)
  %.sroa.speculated135 = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %i.eh = udiv i64 9223372036854775807, %i.dp
  %i.ei = icmp samesign ugt i64 %.sroa.speculated135, %i.eh
  br i1 %i.ei, label %.thread190, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ej = call noundef i64 @llvm.abs.i64(i64 %i.ed, i1 true)
  %i.ek = call noundef i64 @llvm.abs.i64(i64 %i.ee, i1 true)
  %.sroa.speculated130 = call i64 @llvm.umax.i64(i64 %i.ej, i64 %i.ek)
  %i.el = call noundef i64 @llvm.abs.i64(i64 %i.ec, i1 true) ; 2 uses
  %i.em = udiv i64 9223372036854775807, %.sroa.speculated130
  %i.en = icmp samesign ugt i64 %i.el, %i.em
  br i1 %i.en, label %.thread190, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eo = mul nsw i64 %i.dp, %i.aq
  %i.ep = mul nsw i64 %i.dp, %i.at
  %i.eq = mul nsw i64 %i.ec, %i.ed
  %i.er = mul nsw i64 %i.ec, %i.ee
  %i.es = add nsw i64 %i.eq, %i.eo                ; 2 uses
  %i.et = add nsw i64 %i.er, %i.ep                ; 2 uses
  %i.eu = call noundef i64 @llvm.abs.i64(i64 %i.da, i1 true)
  %i.ev = call noundef i64 @llvm.abs.i64(i64 %i.df, i1 true)
  %i.ew = call noundef i64 @llvm.abs.i64(i64 %i.dk, i1 true)
  %.sroa.speculated114 = call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.ev)
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.sroa.speculated114, i64 %i.ew)
  %i.ex = udiv i64 9223372036854775807, %.sroa.speculated
  %.not192 = icmp samesign ugt i64 %i.el, %i.ex
  br i1 %.not192, label %.thread190, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ey = mul nsw i64 %i.ec, %i.da
  %i.ez = mul nsw i64 %i.ec, %i.df
  %i.fa = mul nsw i64 %i.ec, %i.dk
  %i.fb = sdiv i64 %i.ey, %i.dp
  %i.fc = sdiv i64 %i.ez, %i.dp
  %i.fd = sdiv i64 %i.fa, %i.dp
  %10 = add i64 %i.cz, %i.fb
  %i.fe = sub i64 %i.dq, %10                      ; 2 uses
  %11 = add i64 %i.de, %i.fc
  %i.ff = sub i64 %i.dt, %11                      ; 2 uses
  %12 = add i64 %i.dj, %i.fd
  %i.fg = sub i64 %i.dw, %12                      ; 2 uses
  %i.fh = mul nsw i64 %i.fe, %i.fe
  %i.fi = mul nsw i64 %i.ff, %i.ff
  %i.fj = add nuw nsw i64 %i.fi, %i.fh
  %i.fk = mul nsw i64 %i.fg, %i.fg
  %i.fl = add nuw nsw i64 %i.fj, %i.fk
  %i.fm = mul i64 %i.fl, %i.dp                    ; 6 uses
  switch i64 %i.fm, label %.lr.ph.i [
    i64 0, label %_ZN5draco7IntSqrtEm.exit
    i64 1, label %.preheader.i.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.018.i = phi i64 [ %i.fn, %.lr.ph.i ], [ 1, %bb.l ]
  %.01317.i = phi i64 [ %i.fo, %.lr.ph.i ], [ %i.fm, %bb.l ] ; 2 uses
  %i.fn = shl i64 %.018.i, 1                      ; 2 uses
  %i.fo = lshr i64 %.01317.i, 2
  %i.fp = icmp ugt i64 %.01317.i, 7
  br i1 %i.fp, label %.lr.ph.i, label %.preheader.i.preheader, !llvm.loop !7

.preheader.i.preheader:                           ; preds = %.lr.ph.i, %bb.l
  %.1.i.ph = phi i64 [ %i.fm, %bb.l ], [ %i.fn, %.lr.ph.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i = phi i64 [ %i.fs, %.preheader.i ], [ %.1.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.fq = udiv i64 %i.fm, %.1.i
  %i.fr = add i64 %i.fq, %.1.i
  %i.fs = lshr i64 %i.fr, 1                       ; 4 uses
  %i.ft = mul i64 %i.fs, %i.fs
  %i.fu = icmp ugt i64 %i.ft, %i.fm
  br i1 %i.fu, label %.preheader.i, label %_ZN5draco7IntSqrtEm.exit, !llvm.loop !8

_ZN5draco7IntSqrtEm.exit:                         ; preds = %.preheader.i, %bb.l
  %.014.i = phi i64 [ %i.fm, %bb.l ], [ %i.fs, %.preheader.i ] ; 2 uses
  %i.fv = mul nsw i64 %.014.i, %i.ee              ; 2 uses
  %i.fw = mul i64 %.014.i, %i.ed                  ; 2 uses
  %i.fx = add nsw i64 %i.fv, %i.es
  %i.fy = sub i64 %i.et, %i.fw
  %i.fz = sdiv i64 %i.fx, %i.dp                   ; 2 uses
  %i.ga = sdiv i64 %i.fy, %i.dp                   ; 2 uses
  %i.gb = sub nsw i64 %i.es, %i.fv
  %i.gc = add i64 %i.fw, %i.et
  %i.gd = sdiv i64 %i.gb, %i.dp                   ; 2 uses
  %i.ge = sdiv i64 %i.gc, %i.dp                   ; 2 uses
  %i.gf = shl nsw i32 %3, 1
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !96, !noalias !502
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gh, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !96, !noalias !502
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = sub nsw i64 %i.gj, %i.fz                ; 2 uses
  %i.go = sub nsw i64 %i.gm, %i.ga                ; 2 uses
  %i.gp = mul nsw i64 %i.gn, %i.gn
  %i.gq = mul nsw i64 %i.go, %i.go
  %i.gr = add nuw nsw i64 %i.gq, %i.gp
  %i.gs = sub nsw i64 %i.gj, %i.gd                ; 2 uses
  %i.gt = sub nsw i64 %i.gm, %i.ge                ; 2 uses
  %i.gu = mul nsw i64 %i.gs, %i.gs
  %i.gv = mul nsw i64 %i.gt, %i.gt
  %i.gw = add nuw nsw i64 %i.gv, %i.gu
  %i.gx = icmp samesign ult i64 %i.gr, %i.gw      ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.223 = select i1 %i.gx, i64 %i.fz, i64 %i.gd
  %.224 = select i1 %i.gx, i64 %i.ga, i64 %i.ge
  call void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %i.gy, i1 noundef zeroext %i.gx)
  %i.gz = trunc i64 %.223 to i32
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.gz, ptr %i.ha, align 8, !tbaa !96
  %i.hb = trunc i64 %.224 to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !96
  br label %.thread190

.thread190:                                       ; preds = %_ZN5draco7IntSqrtEm.exit, %bb.k, %bb.j, %bb.i
  %.352.ph = phi i1 [ true, %_ZN5draco7IntSqrtEm.exit ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit

bb.m:                                             ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE2atEm.exit62
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hd = shl nsw i32 %i.ag, 1
  br label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.n
  %i.he = icmp sgt i32 %3, 0
  br i1 %i.he, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.hf, align 8
  br label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.hg = shl nuw i32 %3, 1
  %i.hh = add i32 %i.hg, -2
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.q, %bb.o
  %.047 = phi i32 [ %i.hd, %bb.o ], [ %i.hh, %bb.q ]
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hj = sext i32 %.047 to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !96
  store i32 %i.hl, ptr %i.hi, align 8, !tbaa !96
  %i.hm = getelementptr [4 x i8], ptr %2, i64 %i.hj
  %i.hn = getelementptr i8, ptr %i.hm, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !96
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit.loopexit, %.thread190, %.thread
  %.6 = phi i1 [ %.352.ph, %.thread190 ], [ true, %.thread ], [ true, %.loopexit.loopexit ], [ true, %.preheader ]
  ret i1 %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !45
  switch i32 %i.c, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.j
    i32 5, label %bb.m
    i32 6, label %bb.p
    i32 7, label %bb.s
    i32 8, label %bb.v
    i32 9, label %bb.z
    i32 10, label %bb.ac
    i32 11, label %bb.af
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated29.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.e)
  %.not30.i = icmp eq i8 %.sroa.speculated29.i, 0
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4, !tbaa !86
  %i.g = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !243
  %i.k = zext i32 %i.f to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !122
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !244  ; 2 uses
  %i.s = icmp ugt ptr %i.r, %i.p
  br i1 %i.s, label %.lr.ph265, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.d:                                             ; preds = %.lr.ph265
  %i.t = getelementptr inbounds nuw i8, ptr %.01731.i264, i64 1 ; 2 uses
  %i.u = icmp ugt ptr %i.r, %i.t
  br i1 %i.u, label %.lr.ph265, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !503

.lr.ph265:                                        ; preds = %.lr.ph.i, %bb.d
  %.01731.i264 = phi ptr [ %i.t, %bb.d ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i263 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.v = load i8, ptr %.01731.i264, align 1, !tbaa !105
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i263
  %i.x = sext i8 %i.v to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !128
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i263, 1 ; 2 uses
  %i.y = load i8, ptr %i.d, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.y)
  %i.z = zext i8 %.sroa.speculated.i to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.z
  br i1 %.not.not.i, label %bb.d, label %.critedge.i, !llvm.loop !503

.critedge.i:                                      ; preds = %.lr.ph265, %bb.c
  %.lcssa.i = phi i8 [ %i.e, %bb.c ], [ %i.y, %.lr.ph265 ] ; 2 uses
  %i.aa = icmp ult i8 %.lcssa.i, %2
  br i1 %i.aa, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.e:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20EncodePredictionDataEPNS_13EncoderBufferE:bb.a
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %.tr29.2 = trunc i64 %i.eh to i32
  %i.ei = shl i32 %.tr29.2, 3
  %i.ej = add i32 %i.ei, %i.ed                    ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, 2
  br i1 %i.ek, label %.preheader.2, label %._crit_edge.2

.preheader.2:                                     ; preds = %bb.n, %.loopexit.2
  %.02132.2.in = phi i32 [ %.02132.2, %.loopexit.2 ], [ %i.ej, %bb.n ] ; 4 uses
  %.02132.2 = add nsw i32 %.02132.2.in, -3        ; 3 uses
  %i.el = load ptr, ptr %i.dh, align 8, !tbaa !174
  %i.em = lshr i32 %.02132.2, 6
  %.zext.2 = zext nneg i32 %i.em to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.zext.2
  %i.eo = and i32 %.02132.2, 63
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = load i64, ptr %i.en, align 8, !tbaa !128
  %i.es = and i64 %i.er, %i.eq
  %i.et = icmp ne i64 %i.es, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.et)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.o:                                             ; preds = %.preheader.2
  %i.eu = add nsw i32 %.02132.2.in, -2            ; 2 uses
  %i.ev = load ptr, ptr %i.dh, align 8, !tbaa !174
  %i.ew = lshr i32 %i.eu, 6
  %.zext.2.1 = zext nneg i32 %i.ew to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.zext.2.1
  %i.ey = and i32 %i.eu, 63
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = load i64, ptr %i.ex, align 8, !tbaa !128
  %i.fc = and i64 %i.fb, %i.fa
  %i.fd = icmp ne i64 %i.fc, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.fd)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.p:                                             ; preds = %bb.o
  %i.fe = add nsw i32 %.02132.2.in, -1            ; 2 uses
  %i.ff = load ptr, ptr %i.dh, align 8, !tbaa !174
  %i.fg = lshr i32 %i.fe, 6
  %.zext.2.2 = zext nneg i32 %i.fg to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.zext.2.2
  %i.fi = and i32 %i.fe, 63
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = load i64, ptr %i.fh, align 8, !tbaa !128
  %i.fm = and i64 %i.fl, %i.fk
  %i.fn = icmp ne i64 %i.fm, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.fn)
          to label %.loopexit.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.loopexit.2:                                      ; preds = %bb.p
  %i.fo = icmp samesign ugt i32 %.02132.2.in, 5
  br i1 %i.fo, label %.preheader.2, label %._crit_edge.2, !llvm.loop !617

._crit_edge.2:                                    ; preds = %.loopexit.2, %bb.n
  invoke void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %1)
          to label %bb.q unwind label %bb.e

bb.q:                                             ; preds = %._crit_edge.2
  call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !174
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !175
  %i.fu = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.tr.3 = trunc i64 %i.fx to i32
  %i.fy = shl i32 %.tr.3, 3
  %i.fz = add i32 %i.fy, %i.ft
  %i.ga = call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.fz, ptr noundef %1) ; 0 uses
  %i.gb = load ptr, ptr %i.fq, align 8, !tbaa !174
  %i.gc = load i32, ptr %i.fs, align 8, !tbaa !175
  %i.gd = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = shl nsw i64 %i.gg, 3
  %i.gi = zext i32 %i.gc to i64
  %i.gj = sub nsw i64 0, %i.gi
  %.not.3 = icmp eq i64 %i.gh, %i.gj
  br i1 %.not.3, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %2)
  invoke void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.t unwind label %bb.e

bb.t:                                             ; preds = %bb.s
  %i.gk = load ptr, ptr %i.fq, align 8, !tbaa !174
  %i.gl = load i32, ptr %i.fs, align 8, !tbaa !175
  %i.gm = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %.tr29.3 = trunc i64 %i.gp to i32
  %i.gq = shl i32 %.tr29.3, 3
  %i.gr = add i32 %i.gq, %i.gl                    ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, 3
  br i1 %i.gs, label %.preheader.3, label %._crit_edge.3

.preheader.3:                                     ; preds = %bb.t, %.loopexit.3
  %.02132.3.in = phi i32 [ %.02132.3, %.loopexit.3 ], [ %i.gr, %bb.t ] ; 5 uses
  %.02132.3 = add nsw i32 %.02132.3.in, -4        ; 3 uses
  %i.gt = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.gu = lshr i32 %.02132.3, 6
  %.zext.3 = zext nneg i32 %i.gu to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.zext.3
  %i.gw = and i32 %.02132.3, 63
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = shl nuw i64 1, %i.gx
  %i.gz = load i64, ptr %i.gv, align 8, !tbaa !128
  %i.ha = and i64 %i.gz, %i.gy
  %i.hb = icmp ne i64 %i.ha, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.hb)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.preheader.3
  %i.hc = add nsw i32 %.02132.3.in, -3            ; 2 uses
  %i.hd = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.he = lshr i32 %i.hc, 6
  %.zext.3.1 = zext nneg i32 %i.he to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %.zext.3.1
  %i.hg = and i32 %i.hc, 63
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = load i64, ptr %i.hf, align 8, !tbaa !128
  %i.hk = and i64 %i.hj, %i.hi
  %i.hl = icmp ne i64 %i.hk, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.hl)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.hm = add nsw i32 %.02132.3.in, -2            ; 2 uses
  %i.hn = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.ho = lshr i32 %i.hm, 6
  %.zext.3.2 = zext nneg i32 %i.ho to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.zext.3.2
  %i.hq = and i32 %i.hm, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = shl nuw i64 1, %i.hr
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !128
  %i.hu = and i64 %i.ht, %i.hs
  %i.hv = icmp ne i64 %i.hu, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.hv)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.hw = add nsw i32 %.02132.3.in, -1            ; 2 uses
  %i.hx = load ptr, ptr %i.fp, align 8, !tbaa !174
  %i.hy = lshr i32 %i.hw, 6
  %.zext.3.3 = zext nneg i32 %i.hy to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %.zext.3.3
  %i.ia = and i32 %i.hw, 63
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = shl nuw i64 1, %i.ib
  %i.id = load i64, ptr %i.hz, align 8, !tbaa !128
  %i.ie = and i64 %i.id, %i.ic
  %i.if = icmp ne i64 %i.ie, 0
  invoke void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %i.if)
          to label %.loopexit.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.3:                                      ; preds = %bb.w
  %i.ig = icmp samesign ugt i32 %.02132.3.in, 7
  br i1 %i.ig, label %.preheader.3, label %._crit_edge.3, !llvm.loop !617

._crit_edge.3:                                    ; preds = %.loopexit.3, %bb.t
  invoke void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %1)
          to label %bb.x unwind label %bb.e

bb.x:                                             ; preds = %._crit_edge.3
  call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !201
  store i32 %i.ii, ptr %i.a, align 4, !tbaa !96
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !119
  %i.il = icmp slt i64 %i.ik, 1
  br i1 %i.il, label %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.i.i, label %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.thread.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 8 uses
  %6 = alloca %"struct.draco::ShannonEntropyTracker::EntropyData", align 8 ; 5 uses
  %7 = alloca %"struct.draco::ShannonEntropyTracker::EntropyData", align 8 ; 5 uses
  %8 = alloca [4 x %"class.std::vector"], align 16 ; 33 uses
  %i.b = alloca [4 x i8], align 1                 ; 9 uses
  %i.c = alloca [4 x i64], align 16               ; 9 uses
  %i.d = alloca [4 x i64], align 16               ; 8 uses
  %9 = alloca %struct.PredictionConfiguration.167, align 8 ; 16 uses
  %10 = alloca %"struct.draco::ShannonEntropyTracker::EntropyData", align 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store i32 %4, ptr %i.e, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = sext i32 %4 to i64                       ; 37 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149  ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !101  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.g
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.p)
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.n, %i.g
  br i1 %i.q, label %bb.d, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i.i.i, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.d
  store ptr %i.r, ptr %i.h, align 8, !tbaa !149
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i

_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i: ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.d, %bb.c, %bb.b
  %i.s = icmp eq i32 %3, 0
  br i1 %i.s, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i
  %i.t = load i32, ptr %1, align 4, !tbaa !96     ; 6 uses
  %i.u = icmp sgt i32 %3, 1
  br i1 %i.u, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %3 to i64
  %i.v = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %xtraiter = and i64 %i.v, 1
  %i.w = icmp eq i32 %3, 2
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.v, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01923.i.epil.init = phi i32 [ %i.t, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.02022.i.epil.init = phi i32 [ %i.t, %.lr.ph.preheader.i ], [ %.121.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod777 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod777)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.y = load i32, ptr %i.x, align 4, !tbaa !96   ; 3 uses
  %i.z = icmp slt i32 %i.y, %.02022.i.epil.init
  %spec.select.i.epil = tail call i32 @llvm.smax.i32(i32 %i.y, i32 %.01923.i.epil.init)
  %.121.i.epil = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %.02022.i.epil.init)
  %.1.i.epil = select i1 %i.z, i32 %.01923.i.epil.init, i32 %spec.select.i.epil
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.e
  %.020.lcssa.i = phi i32 [ %i.t, %bb.e ], [ %.121.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.121.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.019.lcssa.i = phi i32 [ %i.t, %bb.e ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.020.lcssa.i, ptr %i.aa, align 4, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.019.lcssa.i, ptr %i.ab, align 8, !tbaa !202
  %i.ac = sext i32 %.019.lcssa.i to i64
  %i.ad = sext i32 %.020.lcssa.i to i64
  %i.ae = sub nsw i64 %i.ac, %i.ad                ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.ae, 2147483647
  br i1 %or.cond.i.i, label %bb.f, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.af = trunc nuw nsw i64 %i.ae to i32          ; 2 uses
  %i.ag = add nuw nsw i32 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !204
  %i.ai = lshr i32 %i.ag, 1                       ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !205
  %i.ak = sub nsw i32 0, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !206
  %i.am = and i32 %i.af, 1
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = add nsw i32 %i.ai, -1
  store i32 %i.an, ptr %i.aj, align 8, !tbaa !205
  br label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.01923.i = phi i32 [ %i.t, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i ] ; 2 uses
  %.02022.i = phi i32 [ %i.t, %.lr.ph.preheader.i.new ], [ %.121.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !96 ; 3 uses
  %i.aq = icmp slt i32 %i.ap, %.02022.i
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %.01923.i)
  %.121.i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %.02022.i) ; 2 uses
  %.1.i = select i1 %i.aq, i32 %.01923.i, i32 %spec.select.i ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !96 ; 3 uses
  %i.au = icmp slt i32 %i.at, %.121.i
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 %.1.i)
  %.121.i.1 = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %.121.i) ; 3 uses
  %.1.i.1 = select i1 %i.au, i32 %.1.i, i32 %spec.select.i.1 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit: ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i, %._crit_edge.i, %bb.f, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !164 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %8, i8 0, i64 96, i1 false)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.j

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3
  %.not.i.i.i.i168 = icmp eq i32 %4, 0            ; 9 uses
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.az = shl nuw nsw i64 %i.g, 2
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #18
          to label %.noexc169 unwind label %bb.y  ; 5 uses

.noexc169:                                        ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.g ; 2 uses
  store i32 0, ptr %i.ba, align 4, !tbaa !96
  %i.bc = getelementptr i8, ptr %i.ba, i64 4      ; 3 uses
  %i.bd = add nsw i64 %i.g, -1                    ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc169
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bd, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bc, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

bb.j:                                             ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.g)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge499 unwind label %bb.t

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge499: ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.phi.trans.insert500 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert500, align 16, !tbaa !149
  %.pre502 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !101
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge499
  %i.bg = phi ptr [ %.pre502, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge499 ], [ null, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit ] ; 2 uses
  %i.bh = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge499 ], [ null, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2                 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %i.g
  br i1 %i.bn, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bo = icmp ugt i64 %i.bm, %i.g
  br i1 %i.bo, label %bb.l, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1

end_hunk_3
begin_hunk_4_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  store i32 0, ptr %i.df, align 4, !tbaa !96
  %i.dh = getelementptr i8, ptr %i.df, i64 4      ; 3 uses
  %i.di = add nsw i64 %i.g, -1                    ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176: ; preds = %.noexc181
  %.idx.i.i.i.i.i.i.i177 = shl nuw nsw i64 %i.di, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dh, i8 0, i64 %.idx.i.i.i.i.i.i.i177, i1 false), !tbaa !96
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i.i.i.i.i.i.i177
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176, %.noexc181, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %.sroa.15.0 = phi ptr [ %i.dg, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dg, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %.sroa.0335.0 = phi ptr [ %i.df, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.df, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 18 uses
  %.0.i.i.i.i.i178 = phi ptr [ %i.dk, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dh, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !165 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !209
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !210
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = lshr exact i64 %i.ds, 2                 ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %.lr.ph432, label %.preheader

.lr.ph432:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 4 uses
  %wide.trip.count.i187 = zext nneg i32 %4 to i64 ; 11 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ed = ptrtoint ptr %.0.i.i.i.i.i to i64       ; 2 uses
  %i.ee = ptrtoint ptr %.sroa.0344.0 to i64       ; 3 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 10 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ei = icmp sgt i64 %i.ef, 4                   ; 2 uses
  %i.ej = icmp eq i64 %i.ef, 4                    ; 2 uses
  %i.ek = icmp ugt i64 %i.ef, 9223372036854775804
  %i.el = ptrtoint ptr %.0.i.i.i.i.i178 to i64    ; 2 uses
  %i.em = ptrtoint ptr %.sroa.0335.0 to i64       ; 8 uses
  %i.en = sub i64 %i.el, %i.em                    ; 10 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 6 uses
  %i.eq = icmp sgt i64 %i.en, 4                   ; 2 uses
  %i.er = icmp eq i64 %i.en, 4                    ; 2 uses
  %i.es = icmp ugt i64 %i.en, 9223372036854775804
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ey = call i32 @llvm.umax.i32(i32 %4, i32 1)
  %i.ez = zext nneg i32 %i.ey to i64              ; 15 uses
  %i.fa = shl nuw nsw i64 %i.ez, 2
  %i.fb = and i64 %i.dt, 2147483647               ; 4 uses
  %i.fc = add nsw i64 %i.fb, -1
  %i.fd = mul nsw i64 %i.fc, %i.g                 ; 2 uses
  %i.fe = shl i64 %i.fd, 2
  %i.ff = add i64 %i.fe, %i.a
  %i.fg = sub i64 %i.em, %i.ff
  %i.fh = shl nuw nsw i64 %i.g, 2
  %i.fi = mul i64 %i.fd, -4
  %i.fj = sub i64 %i.fi, %i.a
  %i.fk = shl nuw nsw i64 %i.ez, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0344.0, i64 %i.fk
  %i.fl = add nsw i64 %i.fb, -1                   ; 2 uses
  %i.fm = mul nsw i64 %i.fl, %i.g
  %i.fn = shl i64 %i.fm, 2
  %i.fo = add i64 %i.fn, %i.a
  %i.fp = sub i64 %i.em, %i.fo
  %i.fq = shl nuw nsw i64 %i.g, 2
  %i.fr = add nsw i64 %i.fb, -2                   ; 2 uses
  %i.fs = mul nsw i64 %i.fr, %i.g
  %i.ft = shl i64 %i.fs, 2
  %i.fu = add i64 %i.ft, %i.a
  %i.fv = sub i64 %i.em, %i.fu
  %i.fw = mul nsw i64 %i.fl, %i.g
  %i.fx = mul i64 %i.fw, -4
  %i.fy = sub i64 %i.fx, %i.a
  %i.fz = mul nsw i64 %i.fr, %i.g
  %i.ga = mul i64 %i.fz, -4
  %i.gb = sub i64 %i.ga, %i.a
  %min.iters.check726 = icmp ult i32 %4, 12
  %n.vec728 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n739 = icmp eq i64 %n.vec728, %wide.trip.count.i187
  %xtraiter778 = and i64 %wide.trip.count.i187, 1
  %lcmp.mod779.not = icmp eq i64 %xtraiter778, 0
  %i.gc = add nsw i64 %wide.trip.count.i187, -1
  %min.iters.check702 = icmp ult i32 %4, 8
  %invariant.op814 = add i64 %i.fp, -1
  %invariant.op816 = add i64 %i.fv, -1
  %n.vec704 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n716 = icmp eq i64 %n.vec704, %wide.trip.count.i187
  %min.iters.check678 = icmp ult i32 %4, 8
  %n.vec680 = and i64 %i.ez, 2147483640           ; 3 uses
  %cmp.n689 = icmp eq i64 %n.vec680, %i.ez
  %xtraiter780 = and i64 %i.ez, 3                 ; 2 uses
  %lcmp.mod781.not = icmp eq i64 %xtraiter780, 0
  %min.iters.check665 = icmp ult i32 %4, 4
  %n.vec667 = and i64 %i.ez, 2147483644           ; 3 uses
  %cmp.n673 = icmp eq i64 %n.vec667, %i.ez
  %min.iters.check650 = icmp ult i32 %4, 8
  %i.gd = sub i64 %i.ee, %i.em
  %diff.check641 = icmp ugt i64 %i.gd, -32
  %invariant.op818 = add i64 %i.fg, -1
  %invariant.op820 = add i64 %i.fj, -1
  %n.vec652 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n662 = icmp eq i64 %n.vec652, %wide.trip.count.i187
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.ez, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ez
  %xtraiter782 = and i64 %i.ez, 1
  %lcmp.mod783.not = icmp eq i64 %xtraiter782, 0
  %i.ge = add nsw i64 %i.ez, -1
  br label %bb.ab

.preheader:                                       ; preds = %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  br i1 %.not.i.i.i.i168, label %._crit_edge435, label %.lr.ph434

.lr.ph434:                                        ; preds = %.preheader
  %i.gf = load ptr, ptr %8, align 16, !tbaa !101
  %i.gg = zext nneg i32 %4 to i64
  %i.gh = shl nuw nsw i64 %i.gg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gf, i8 0, i64 %i.gh, i1 false), !tbaa !96
  br label %._crit_edge435

bb.y:                                             ; preds = %bb.i, %bb.h
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit276

bb.z:                                             ; preds = %bb.u
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.aa:                                            ; preds = %bb.x
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit274

bb.ab:                                            ; preds = %.lr.ph432, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit
  %indvar642 = phi i64 [ 0, %.lr.ph432 ], [ %indvar.next, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %indvars.iv492 = phi i64 [ %i.fb, %.lr.ph432 ], [ %indvars.iv.next493, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %i.gl = mul i64 %i.fq, %indvar642               ; 4 uses
  %i.gm = add i64 %i.fy, %i.gl
  %i.gn = add i64 %i.gb, %i.gl
  %i.go = mul i64 %i.fh, %indvar642               ; 2 uses
  %indvars.iv.next493 = add nsw i64 %indvars.iv492, -1 ; 8 uses
  %i.gp = load ptr, ptr %i.dl, align 8, !tbaa !165 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !209
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !210 ; 2 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = ashr exact i64 %i.gv, 2                 ; 2 uses
  %.not.i.i183 = icmp ugt i64 %i.gw, %indvars.iv.next493
  br i1 %.not.i.i183, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv.next493, i64 noundef %i.gw) #20
          to label %.noexc184 unwind label %bb.ai

.noexc184:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv.next493
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !212 ; 6 uses
  %.not362398 = icmp eq i32 %i.gy, -1
  br i1 %.not362398, label %._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph: ; preds = %bb.ad
  %i.gz = load ptr, ptr %i.dw, align 8, !tbaa !210, !noalias !666
  %i.ha = urem i32 %i.gy, 3
  %.not.i.i197 = icmp ne i32 %i.ha, 0             ; 2 uses
  %i.hb = add i32 %i.gy, -1
  %i.hc = add i32 %i.gy, 2                        ; 2 uses
  %i.hd = icmp ne i32 %i.hc, -1
  %.mux = select i1 %.not.i.i197, i32 %i.hb, i32 %i.hc
  %i.he = zext i32 %.mux to i64
  %brmerge = or i1 %.not.i.i197, %i.hd
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204
  %.0144401 = phi i1 [ true, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.1145, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 3 uses
  %.0146400 = phi i32 [ 0, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.1147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 4 uses
  %.sroa.0325.0399 = phi i32 [ %i.gy, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.sroa.0325.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 6 uses
  %i.hf = sext i32 %.0146400 to i64
  %i.hg = getelementptr inbounds [24 x i8], ptr %8, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !101 ; 5 uses
  %i.hi = ptrtoaddr ptr %i.hh to i64              ; 2 uses
  %i.hj = zext i32 %.sroa.0325.0399 to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !212, !noalias !666 ; 7 uses
  %i.hm = icmp eq i32 %i.hl, -1
  br i1 %i.hm, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.hn = zext i32 %i.hl to i64
  %i.ho = load ptr, ptr %i.aw, align 8, !tbaa !233, !noalias !667 ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hn
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !235, !noalias !667
  %i.hr = zext i32 %i.hq to i64
  %i.hs = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hr
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !96 ; 2 uses
  %i.hv = add nuw i32 %i.hl, 1                    ; 2 uses
  %i.hw = urem i32 %i.hv, 3
  %.not.i.i.i = icmp eq i32 %i.hw, 0
  %i.hx = add i32 %i.hl, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.hx, i32 %i.hv ; 2 uses
  %i.hy = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.hy, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %i.hz = zext i32 %spec.select.i.i.i to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !235, !noalias !668
  %i.ic = zext i32 %i.ib to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i11.i.i = phi i64 [ %i.ic, %bb.ae ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %storemerge.i11.i.i
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !96 ; 2 uses
  %i.if = urem i32 %i.hl, 3
  %.not.i13.i.i = icmp eq i32 %i.if, 0
  br i1 %.not.i13.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i: ; preds = %bb.af
  %i.ig = add i32 %i.hl, -1
  br label %bb.ag

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %bb.af
  %i.ih = add i32 %i.hl, 2                        ; 2 uses
  %i.ii = icmp eq i32 %i.ih, -1
  br i1 %i.ii, label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i
  %.sink.i1428.i.i = phi i32 [ %i.ig, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i ], [ %i.ih, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ij = zext i32 %.sink.i1428.i.i to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !235, !noalias !669
  %i.im = zext i32 %i.il to i64
  br label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %bb.ag, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i15.i.i = phi i64 [ %i.im, %bb.ag ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %storemerge.i15.i.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !96 ; 2 uses
  %i.ip = sext i32 %i.hu to i64
  %i.iq = icmp sgt i64 %indvars.iv.next493, %i.ip
  %i.ir = sext i32 %i.ie to i64
  %i.is = icmp sgt i64 %indvars.iv.next493, %i.ir
  %or.cond.i = select i1 %i.iq, i1 %i.is, i1 false
  %i.it = sext i32 %i.io to i64
  %i.iu = icmp sgt i64 %indvars.iv.next493, %i.it
  %or.cond40.i = select i1 %or.cond.i, i1 %i.iu, i1 false
  br i1 %or.cond40.i, label %bb.ah, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.ah:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i168, label %.loopexit371, label %.lr.ph.preheader.i186

.lr.ph.preheader.i186:                            ; preds = %bb.ah
  %i.iv = mul nsw i32 %i.io, %4
  %i.iw = mul nsw i32 %i.ie, %4
  %i.ix = mul nsw i32 %i.hu, %4
  %i.iy = sext i32 %i.iw to i64                   ; 2 uses
  %i.iz = sext i32 %i.iv to i64                   ; 2 uses
  %i.ja = sext i32 %i.ix to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.iy ; 4 uses
  %invariant.gep49.i = getelementptr [4 x i8], ptr %1, i64 %i.iz ; 4 uses
  %invariant.gep51.i = getelementptr [4 x i8], ptr %1, i64 %i.ja ; 4 uses
  br i1 %min.iters.check726, label %.lr.ph.i188.preheader, label %vector.memcheck719

vector.memcheck719:                               ; preds = %.lr.ph.preheader.i186
  %i.jb = sub i64 %i.hi, %i.a                     ; 2 uses
  %i.jc = shl nsw i64 %i.ja, 2
  %i.jd = sub i64 %i.jc, %i.jb
  %diff.check720 = icmp ugt i64 %i.jd, -32
  %i.je = shl nsw i64 %i.iz, 2
  %i.jf = sub i64 %i.je, %i.jb
  %diff.check721 = icmp ugt i64 %i.jf, -32
  %conflict.rdx722 = or i1 %diff.check720, %diff.check721
  %i.jg = shl nsw i64 %i.iy, 2
  %11 = add i64 %i.jg, %i.a
  %i.jh = sub i64 %11, %i.hi
  %diff.check723 = icmp ugt i64 %i.jh, -32
  %conflict.rdx724 = or i1 %conflict.rdx722, %diff.check723
  br i1 %conflict.rdx724, label %.lr.ph.i188.preheader, label %vector.body729

vector.body729:                                   ; preds = %vector.memcheck719, %vector.body729
  %index730 = phi i64 [ %index.next737, %vector.body729 ], [ 0, %vector.memcheck719 ] ; 5 uses
  %i.ji = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index730 ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 16
  %wide.load731 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !96
  %wide.load732 = load <4 x i32>, ptr %i.jj, align 4, !tbaa !96
  %i.jk = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %index730 ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 16
  %wide.load733 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !96
  %wide.load734 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !96
  %i.jm = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %index730 ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 16
  %wide.load735 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !96
  %wide.load736 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !96
  %i.jo = add <4 x i32> %wide.load733, %wide.load731
  %i.jp = add <4 x i32> %wide.load734, %wide.load732
  %i.jq = sub <4 x i32> %i.jo, %wide.load735
  %i.jr = sub <4 x i32> %i.jp, %wide.load736
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index730 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store <4 x i32> %i.jq, ptr %i.js, align 4, !tbaa !96
  store <4 x i32> %i.jr, ptr %i.jt, align 4, !tbaa !96
  %index.next737 = add nuw i64 %index730, 8       ; 2 uses
  %i.ju = icmp eq i64 %index.next737, %n.vec728
  br i1 %i.ju, label %middle.block738, label %vector.body729, !llvm.loop !632

middle.block738:                                  ; preds = %vector.body729
  br i1 %cmp.n739, label %.loopexit371, label %.lr.ph.i188.preheader

.lr.ph.i188.preheader:                            ; preds = %vector.memcheck719, %.lr.ph.preheader.i186, %middle.block738
  %indvars.iv.i189.ph = phi i64 [ 0, %vector.memcheck719 ], [ 0, %.lr.ph.preheader.i186 ], [ %n.vec728, %middle.block738 ] ; 7 uses
  br i1 %lcmp.mod779.not, label %.lr.ph.i188.prol.loopexit, label %.lr.ph.i188.prol

.lr.ph.i188.prol:                                 ; preds = %.lr.ph.i188.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i189.ph
  %i.jv = load i32, ptr %gep.i.prol, align 4, !tbaa !96
  %gep50.i.prol = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i189.ph
  %i.jw = load i32, ptr %gep50.i.prol, align 4, !tbaa !96
  %gep52.i.prol = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i189.ph
  %i.jx = load i32, ptr %gep52.i.prol, align 4, !tbaa !96
  %i.jy = add i32 %i.jw, %i.jv
  %i.jz = sub i32 %i.jy, %i.jx
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i189.ph
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !96
  %indvars.iv.next.i190.prol = or disjoint i64 %indvars.iv.i189.ph, 1
  br label %.lr.ph.i188.prol.loopexit

.lr.ph.i188.prol.loopexit:                        ; preds = %.lr.ph.i188.prol, %.lr.ph.i188.preheader
  %indvars.iv.i189.unr = phi i64 [ %indvars.iv.i189.ph, %.lr.ph.i188.preheader ], [ %indvars.iv.next.i190.prol, %.lr.ph.i188.prol ]
  %i.kb = icmp eq i64 %indvars.iv.i189.ph, %i.gc
  br i1 %i.kb, label %.loopexit371, label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %.lr.ph.i188.prol.loopexit, %.lr.ph.i188
  %indvars.iv.i189 = phi i64 [ %indvars.iv.next.i190.1, %.lr.ph.i188 ], [ %indvars.iv.i189.unr, %.lr.ph.i188.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i189
  %i.kc = load i32, ptr %gep.i, align 4, !tbaa !96
  %gep50.i = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i189
  %i.kd = load i32, ptr %gep50.i, align 4, !tbaa !96
  %gep52.i = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i189
  %i.ke = load i32, ptr %gep52.i, align 4, !tbaa !96
  %i.kf = add i32 %i.kd, %i.kc
  %i.kg = sub i32 %i.kf, %i.ke
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i189
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !96
  %indvars.iv.next.i190 = add nuw nsw i64 %indvars.iv.i189, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i190
  %i.ki = load i32, ptr %gep.i.1, align 4, !tbaa !96
  %gep50.i.1 = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.next.i190
  %i.kj = load i32, ptr %gep50.i.1, align 4, !tbaa !96
  %gep52.i.1 = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.next.i190
  %i.kk = load i32, ptr %gep52.i.1, align 4, !tbaa !96
  %i.kl = add i32 %i.kj, %i.ki
  %i.km = sub i32 %i.kl, %i.kk
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next.i190
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !96
  %indvars.iv.next.i190.1 = add nuw nsw i64 %indvars.iv.i189, 2 ; 2 uses
  %exitcond.not.i191.1 = icmp eq i64 %indvars.iv.next.i190.1, %wide.trip.count.i187
  br i1 %exitcond.not.i191.1, label %.loopexit371, label %.lr.ph.i188, !llvm.loop !633

.loopexit371:                                     ; preds = %.lr.ph.i188.prol.loopexit, %.lr.ph.i188, %middle.block738, %bb.ah
  %i.ko = add nsw i32 %.0146400, 1                ; 2 uses
  %i.kp = icmp eq i32 %i.ko, 4
  br i1 %i.kp, label %._crit_edge, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.ai:                                            ; preds = %bb.ac
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %.loopexit371
  %.1147 = phi i32 [ %i.ko, %.loopexit371 ], [ %.0146400, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.0146400, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 5 uses
  br i1 %.0144401, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.ak

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.kr = add nuw i32 %.sroa.0325.0399, 1         ; 2 uses
  %i.ks = urem i32 %i.kr, 3
  %.not.i.i192 = icmp eq i32 %i.ks, 0
  %i.kt = add i32 %.sroa.0325.0399, -2
  %spec.select.i.i = select i1 %.not.i.i192, i32 %i.kt, i32 %i.kr ; 2 uses
  %i.ku = icmp eq i32 %spec.select.i.i, -1
  br i1 %i.ku, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.kv = zext i32 %spec.select.i.i to i64
  %i.kw = load ptr, ptr %i.dw, align 8, !tbaa !210, !noalias !670
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.kv
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !212, !noalias !670 ; 3 uses
  %i.kz = icmp eq i32 %i.ky, -1
  br i1 %i.kz, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193
  %i.la = add nuw i32 %i.ky, 1                    ; 2 uses
  %i.lb = urem i32 %i.la, 3
  %.not.i1.i = icmp eq i32 %i.lb, 0
  %i.lc = add i32 %i.ky, -2
  %spec.select.i2.i = select i1 %.not.i1.i, i32 %i.lc, i32 %i.la
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.ak:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.ld = urem i32 %.sroa.0325.0399, 3
  %.not.i.i194 = icmp eq i32 %i.ld, 0
  br i1 %.not.i.i194, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.ak
  %i.le = add i32 %.sroa.0325.0399, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ak
  %i.lf = add i32 %.sroa.0325.0399, 2             ; 2 uses
  %i.lg = icmp eq i32 %i.lf, -1
  br i1 %i.lg, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.le, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.lf, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.lh = zext i32 %.sink.i9.i to i64
  %i.li = load ptr, ptr %i.dw, align 8, !tbaa !210, !noalias !671
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.lh
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !212, !noalias !671 ; 4 uses
  %i.ll = icmp eq i32 %i.lk, -1
  br i1 %i.ll, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195
  %i.lm = urem i32 %i.lk, 3
  %.not.i1.i196 = icmp eq i32 %i.lm, 0
  br i1 %.not.i1.i196, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ln = add i32 %i.lk, -1
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.an:                                            ; preds = %bb.al
  %i.lo = add i32 %i.lk, 2
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195, %bb.am, %bb.an, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193, %bb.aj
  %.sroa.0325.1 = phi i32 [ -1, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193 ], [ %spec.select.i2.i, %bb.aj ], [ %i.ln, %bb.am ], [ %i.lo, %bb.an ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195 ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.lp = icmp eq i32 %.sroa.0325.1, %i.gy
  br i1 %i.lp, label %._crit_edge, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.lq = icmp eq i32 %.sroa.0325.1, -1
  %or.cond = and i1 %.0144401, %i.lq
  br i1 %or.cond, label %bb.ap, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204

bb.ap:                                            ; preds = %bb.ao
  br i1 %brmerge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199, label %._crit_edge

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199: ; preds = %bb.ap
  %i.lr = load ptr, ptr %i.dw, align 8, !tbaa !210, !noalias !672
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.he
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !212, !noalias !672 ; 4 uses
  %i.lu = icmp eq i32 %i.lt, -1
  br i1 %i.lu, label %._crit_edge, label %bb.aq

bb.aq:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199
  %i.lv = urem i32 %i.lt, 3
  %.not.i1.i201 = icmp eq i32 %i.lv, 0
  br i1 %.not.i1.i201, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lw = add i32 %i.lt, -1
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204

bb.as:                                            ; preds = %bb.aq
  %i.lx = add i32 %i.lt, 2
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204: ; preds = %bb.ar, %bb.as, %bb.ao
  %.sroa.0325.2 = phi i32 [ %.sroa.0325.1, %bb.ao ], [ %i.lw, %bb.ar ], [ %i.lx, %bb.as ] ; 2 uses
  %.1145 = phi i1 [ %.0144401, %bb.ao ], [ false, %bb.ar ], [ false, %bb.as ]
  %.not362 = icmp eq i32 %.sroa.0325.2, -1
  br i1 %.not362, label %._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, !llvm.loop !646

._crit_edge:                                      ; preds = %bb.ap, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %.loopexit371, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204, %bb.ad
  %.2148 = phi i32 [ 0, %bb.ad ], [ %.1147, %bb.ap ], [ %.1147, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199 ], [ %.1147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ], [ 4, %.loopexit371 ], [ %.1147, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
end_hunk_4
begin_hunk_5_@_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueILb1EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii:bb.a
  %8 = alloca %"class.draco::VectorD.151", align 8 ; 8 uses
  %9 = alloca %"class.draco::VectorD.151", align 8 ; 8 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !212    ; 4 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %i.e = shufflevector <2 x i32> %i.d, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.f = add nuw <2 x i32> %i.e, <i32 0, i32 1>
  %i.g = urem <2 x i32> %i.f, splat (i32 3)
  %i.h = icmp eq <2 x i32> %i.g, zeroinitializer  ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 1
  %spec.select.i.v = select i1 %i.i, i32 -2, i32 1
  %spec.select.i = add i32 %i.a, %spec.select.i.v ; 2 uses
  %i.j = extractelement <2 x i1> %i.h, i64 0
  %.sink.i59.v = select i1 %i.j, i32 2, i32 -1
  %.sink.i59 = add i32 %.sink.i59.v, %i.a         ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !164  ; 2 uses
  %i.l = icmp eq i32 %spec.select.i, -1
  br i1 %i.l, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.m = zext i32 %spec.select.i to i64
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !233, !noalias !714
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !235, !noalias !714
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.b
  %storemerge.i = phi i32 [ %i.p, %bb.b ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ] ; 2 uses
  %i.q = icmp eq i32 %.sink.i59, -1
  br i1 %i.q, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61, label %bb.c

bb.c:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.r = zext i32 %.sink.i59 to i64
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !233, !noalias !715
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load i32, ptr %i.t, align 4, !tbaa !235, !noalias !715
  %i.v = sext i32 %i.u to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61: ; preds = %bb.a, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.c
  %storemerge.i195 = phi i32 [ %storemerge.i, %bb.c ], [ %storemerge.i, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ]
  %storemerge.i60 = phi i64 [ %i.v, %bb.c ], [ -1, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !166  ; 2 uses
  %i.y = sext i32 %storemerge.i195 to i64         ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !149
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !101 ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2                 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.af, %i.y
  br i1 %.not.i.i, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %i.y, i64 noundef %i.af) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !96 ; 4 uses
  %.not.i.i62 = icmp ult i64 %storemerge.i60, %i.af
  br i1 %.not.i.i62, label %_ZNKSt6vectorIiSaIiEE2atEm.exit63, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %storemerge.i60, i64 noundef %i.af) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit63:                ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %storemerge.i60
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !96 ; 3 uses
  %i.ak = icmp slt i32 %i.aj, %3
  %i.al = icmp slt i32 %i.ah, %3                  ; 2 uses
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit63
  %i.am = shl nsw i32 %i.ah, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %2, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !96, !noalias !716 ; 3 uses
  %i.aq = sext i32 %i.ap to i64                   ; 3 uses
  %i.ar = getelementptr i8, ptr %i.ao, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !96, !noalias !716 ; 3 uses
  %i.at = sext i32 %i.as to i64                   ; 3 uses
  %i.au = shl nsw i32 %i.aj, 1
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !96, !noalias !717 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %i.aw, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !96, !noalias !717 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %.not.i64 = icmp eq i32 %i.ax, %i.ap
  %.not.1.i = icmp eq i32 %i.ba, %i.as
  %.not.lcssa.i = select i1 %.not.i64, i1 %.not.1.i, i1 false
  br i1 %.not.lcssa.i, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ap, ptr %i.bc, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.as, ptr %i.bd, align 4, !tbaa !96
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !258, !noalias !718
  %i.bg = sext i32 %3 to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !93, !noalias !718 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !718
  %i.bj = load ptr, ptr %0, align 8, !tbaa !257, !noalias !718 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 100
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !91, !range !61, !noalias !719, !noundef !62
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !719
  %i.bp = zext i32 %i.bi to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  %storemerge.i.else.val.i = load i32, ptr %i.bq, align 4, !tbaa !96, !noalias !719
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.g, %.else.i
  %storemerge.i.i = phi i32 [ %i.bi, %bb.g ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !718
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !86, !noalias !718
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !121, !noalias !718
  %i.bt = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.bs, ptr noundef nonnull align 8 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !258, !noalias !720
  %i.bv = sext i32 %i.ah to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !93, !noalias !720 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !720
  %i.by = load ptr, ptr %0, align 8, !tbaa !257, !noalias !720 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 100
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !91, !range !61, !noalias !721, !noundef !62
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68, label %.else.i65

.else.i65:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !721
  %i.ce = zext i32 %i.bx to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %storemerge.i.else.val.i66 = load i32, ptr %i.cf, align 4, !tbaa !96, !noalias !721
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i65
  %storemerge.i.i67 = phi i32 [ %i.bx, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i66, %.else.i65 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !720
  store i32 %storemerge.i.i67, ptr %5, align 4, !tbaa !86, !noalias !720
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !121, !noalias !720
  %i.ci = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.ch, ptr noundef nonnull align 8 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !720
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.cj = load ptr, ptr %i.be, align 8, !tbaa !258, !noalias !722
  %i.ck = sext i32 %i.aj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !93, !noalias !722 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !722
  %i.cn = load ptr, ptr %0, align 8, !tbaa !257, !noalias !722 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 100
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !91, !range !61, !noalias !723, !noundef !62
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72, label %.else.i69

.else.i69:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !723
  %i.ct = zext i32 %i.cm to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %storemerge.i.else.val.i70 = load i32, ptr %i.cu, align 4, !tbaa !96, !noalias !723
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68, %.else.i69
  %storemerge.i.i71 = phi i32 [ %i.cm, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68 ], [ %storemerge.i.else.val.i70, %.else.i69 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !722
  store i32 %storemerge.i.i71, ptr %4, align 4, !tbaa !86, !noalias !722
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !121, !noalias !722
  %i.cx = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.cw, ptr noundef nonnull align 8 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !722
  %i.cy = load i64, ptr %9, align 8, !tbaa !128, !noalias !724
  %i.cz = load i64, ptr %8, align 8, !tbaa !128, !noalias !724 ; 3 uses
  %i.da = sub nsw i64 %i.cy, %i.cz                ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !128, !noalias !724
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !128, !noalias !724 ; 3 uses
  %i.df = sub nsw i64 %i.dc, %i.de                ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !128, !noalias !724
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !128, !noalias !724 ; 3 uses
  %i.dk = sub nsw i64 %i.dh, %i.dj                ; 5 uses
  %i.dl = mul nsw i64 %i.da, %i.da
  %i.dm = mul nsw i64 %i.df, %i.df
  %i.dn = add nuw nsw i64 %i.dm, %i.dl
  %i.do = mul nsw i64 %i.dk, %i.dk
  %i.dp = add nuw nsw i64 %i.dn, %i.do            ; 12 uses
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72
  %i.dq = load i64, ptr %7, align 8, !tbaa !128, !noalias !725 ; 2 uses
  %i.dr = sub nsw i64 %i.dq, %i.cz
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !128, !noalias !725 ; 2 uses
  %i.du = sub nsw i64 %i.dt, %i.de
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !128, !noalias !725 ; 2 uses
  %i.dx = sub nsw i64 %i.dw, %i.dj
  %i.dy = mul nsw i64 %i.dr, %i.da
  %i.dz = mul nsw i64 %i.du, %i.df
  %i.ea = add nsw i64 %i.dz, %i.dy
  %i.eb = mul nsw i64 %i.dx, %i.dk
  %i.ec = add nsw i64 %i.ea, %i.eb                ; 6 uses
  %i.ed = sub nsw i64 %i.ay, %i.aq                ; 3 uses
  %i.ee = sub nsw i64 %i.bb, %i.at                ; 3 uses
  %i.ef = call noundef i64 @llvm.abs.i64(i64 %i.aq, i1 true)
  %i.eg = call noundef i64 @llvm.abs.i64(i64 %i.at, i1 true)
  %.sroa.speculated137 = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %i.eh = udiv i64 9223372036854775807, %i.dp
  %i.ei = icmp samesign ugt i64 %.sroa.speculated137, %i.eh
  br i1 %i.ei, label %.thread198, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ej = call noundef i64 @llvm.abs.i64(i64 %i.ed, i1 true)
  %i.ek = call noundef i64 @llvm.abs.i64(i64 %i.ee, i1 true)
  %.sroa.speculated132 = call i64 @llvm.umax.i64(i64 %i.ej, i64 %i.ek)
  %i.el = call noundef i64 @llvm.abs.i64(i64 %i.ec, i1 true) ; 2 uses
  %i.em = udiv i64 9223372036854775807, %.sroa.speculated132
  %i.en = icmp samesign ugt i64 %i.el, %i.em
  br i1 %i.en, label %.thread198, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eo = mul nsw i64 %i.dp, %i.aq
  %i.ep = mul nsw i64 %i.dp, %i.at
  %i.eq = mul nsw i64 %i.ec, %i.ed
  %i.er = mul nsw i64 %i.ec, %i.ee
  %i.es = add nsw i64 %i.eq, %i.eo                ; 2 uses
  %i.et = add nsw i64 %i.er, %i.ep                ; 2 uses
  %i.eu = call noundef i64 @llvm.abs.i64(i64 %i.da, i1 true)
  %i.ev = call noundef i64 @llvm.abs.i64(i64 %i.df, i1 true)
  %i.ew = call noundef i64 @llvm.abs.i64(i64 %i.dk, i1 true)
  %.sroa.speculated116 = call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.ev)
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.sroa.speculated116, i64 %i.ew)
  %i.ex = udiv i64 9223372036854775807, %.sroa.speculated
  %.not200 = icmp samesign ugt i64 %i.el, %i.ex
  br i1 %.not200, label %.thread198, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ey = mul nsw i64 %i.ec, %i.da
  %i.ez = mul nsw i64 %i.ec, %i.df
  %i.fa = mul nsw i64 %i.ec, %i.dk
  %i.fb = sdiv i64 %i.ey, %i.dp
  %i.fc = sdiv i64 %i.ez, %i.dp
  %i.fd = sdiv i64 %i.fa, %i.dp
  %10 = add i64 %i.cz, %i.fb
  %i.fe = sub i64 %i.dq, %10                      ; 2 uses
  %11 = add i64 %i.de, %i.fc
  %i.ff = sub i64 %i.dt, %11                      ; 2 uses
  %12 = add i64 %i.dj, %i.fd
  %i.fg = sub i64 %i.dw, %12                      ; 2 uses
  %i.fh = mul nsw i64 %i.fe, %i.fe
  %i.fi = mul nsw i64 %i.ff, %i.ff
  %i.fj = add nuw nsw i64 %i.fi, %i.fh
  %i.fk = mul nsw i64 %i.fg, %i.fg
  %i.fl = add nuw nsw i64 %i.fj, %i.fk
  %i.fm = mul i64 %i.fl, %i.dp                    ; 6 uses
  switch i64 %i.fm, label %.lr.ph.i [
    i64 0, label %_ZN5draco7IntSqrtEm.exit
    i64 1, label %.preheader.i.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.018.i = phi i64 [ %i.fn, %.lr.ph.i ], [ 1, %bb.k ]
  %.01317.i = phi i64 [ %i.fo, %.lr.ph.i ], [ %i.fm, %bb.k ] ; 2 uses
  %i.fn = shl i64 %.018.i, 1                      ; 2 uses
  %i.fo = lshr i64 %.01317.i, 2
  %i.fp = icmp ugt i64 %.01317.i, 7
  br i1 %i.fp, label %.lr.ph.i, label %.preheader.i.preheader, !llvm.loop !7

.preheader.i.preheader:                           ; preds = %.lr.ph.i, %bb.k
  %.1.i.ph = phi i64 [ %i.fm, %bb.k ], [ %i.fn, %.lr.ph.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i = phi i64 [ %i.fs, %.preheader.i ], [ %.1.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.fq = udiv i64 %i.fm, %.1.i
  %i.fr = add i64 %i.fq, %.1.i
  %i.fs = lshr i64 %i.fr, 1                       ; 4 uses
  %i.ft = mul i64 %i.fs, %i.fs
  %i.fu = icmp ugt i64 %i.ft, %i.fm
  br i1 %i.fu, label %.preheader.i, label %_ZN5draco7IntSqrtEm.exit, !llvm.loop !8

_ZN5draco7IntSqrtEm.exit:                         ; preds = %.preheader.i, %bb.k
  %.014.i = phi i64 [ %i.fm, %bb.k ], [ %i.fs, %.preheader.i ] ; 2 uses
  %i.fv = mul nsw i64 %.014.i, %i.ee              ; 2 uses
  %i.fw = mul i64 %.014.i, %i.ed                  ; 2 uses
  %i.fx = add nsw i64 %i.fv, %i.es
  %i.fy = sub i64 %i.et, %i.fw
  %i.fz = sdiv i64 %i.fx, %i.dp                   ; 2 uses
  %i.ga = sdiv i64 %i.fy, %i.dp                   ; 2 uses
  %i.gb = sub nsw i64 %i.es, %i.fv
  %i.gc = add i64 %i.fw, %i.et
  %i.gd = sdiv i64 %i.gb, %i.dp                   ; 2 uses
  %i.ge = sdiv i64 %i.gc, %i.dp                   ; 2 uses
  %i.gf = shl nsw i32 %3, 1
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !96, !noalias !726
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gh, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !96, !noalias !726
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = sub nsw i64 %i.gj, %i.fz                ; 2 uses
  %i.go = sub nsw i64 %i.gm, %i.ga                ; 2 uses
  %i.gp = mul nsw i64 %i.gn, %i.gn
  %i.gq = mul nsw i64 %i.go, %i.go
  %i.gr = add nuw nsw i64 %i.gq, %i.gp
  %i.gs = sub nsw i64 %i.gj, %i.gd                ; 2 uses
  %i.gt = sub nsw i64 %i.gm, %i.ge                ; 2 uses
  %i.gu = mul nsw i64 %i.gs, %i.gs
  %i.gv = mul nsw i64 %i.gt, %i.gt
  %i.gw = add nuw nsw i64 %i.gv, %i.gu
  %i.gx = icmp samesign ult i64 %i.gr, %i.gw      ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.229 = select i1 %i.gx, i64 %i.fz, i64 %i.gd
  %.230 = select i1 %i.gx, i64 %i.ga, i64 %i.ge
  call void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %i.gy, i1 noundef zeroext %i.gx)
  %i.gz = trunc i64 %.229 to i32
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.gz, ptr %i.ha, align 8, !tbaa !96
  %i.hb = trunc i64 %.230 to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !96
  br label %.thread198

.thread198:                                       ; preds = %_ZN5draco7IntSqrtEm.exit, %bb.j, %bb.i, %bb.h
  %.352.ph = phi i1 [ true, %_ZN5draco7IntSqrtEm.exit ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit

bb.l:                                             ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNKSt6vectorIiSaIiEE2atEm.exit63
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hd = shl nsw i32 %i.ah, 1
  br label %.loopexit.loopexit

bb.o:                                             ; preds = %bb.m
  %i.he = icmp sgt i32 %3, 0
  br i1 %i.he, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.hf, align 8
  br label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.hg = shl nuw i32 %3, 1
  %i.hh = add i32 %i.hg, -2
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.p, %bb.n
  %.047 = phi i32 [ %i.hd, %bb.n ], [ %i.hh, %bb.p ]
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hj = sext i32 %.047 to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !96
  store i32 %i.hl, ptr %i.hi, align 8, !tbaa !96
  %i.hm = getelementptr [4 x i8], ptr %2, i64 %i.hj
  %i.hn = getelementptr i8, ptr %i.hm, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !96
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit.loopexit, %.thread198, %.thread
  %.6 = phi i1 [ %.352.ph, %.thread198 ], [ true, %.thread ], [ true, %.loopexit.loopexit ], [ true, %.preheader ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #17
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #19, !inline_history !190
  br label %_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEED2Ev.exit

_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #17, !inline_history !727
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #19, !inline_history !728
  br label %_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit

_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE19GetPredictionMethodEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
end_hunk_5
