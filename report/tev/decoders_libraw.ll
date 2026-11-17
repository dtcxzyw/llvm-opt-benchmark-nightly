Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/decoders_libraw?download=true
inline.NumInlined: 431
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6LibRaw21pentax_4shot_load_rawEv:bb.a
  %.0.i.1 = phi i32 [ %i.ek, %bb.y ], [ 6, %_ZN6LibRaw5COLOREii.exit ], [ %i.ef, %_ZN6LibRaw3FCFEii.exit.i.1 ], [ %i.ej, %bb.x ]
  store i32 %.0.i.1, ptr %i.ae, align 4, !tbaa !89
  br label %.split79.us

._crit_edge:                                      ; preds = %.lr.ph81, %.split79.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.el = add nuw nsw i32 %.05682, 1              ; 2 uses
  %i.em = load i16, ptr %i.b, align 8, !tbaa !75
  %i.en = zext i16 %i.em to i32
  %i.eo = sub nsw i32 %i.en, %.058
  %i.ep = icmp slt i32 %i.el, %i.eo
  br i1 %i.ep, label %.lr.ph84, label %._crit_edge85, !llvm.loop !117

.lr.ph81:                                         ; preds = %.split79.us, %.lr.ph81
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph81 ], [ 0, %.split79.us ] ; 4 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv99
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !79
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv99
  %i.et = and i64 %indvars.iv99, 1
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !89
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.es, i64 %i.ew
  store i16 %i.er, ptr %i.ex, align 2, !tbaa !79
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.ey = load i16, ptr %i.c, align 2, !tbaa !74
  %i.ez = zext i16 %i.ey to i32
  %i.fa = sub nsw i32 %i.ez, %.057
  %i.fb = sext i32 %i.fa to i64
  %i.fc = icmp slt i64 %indvars.iv.next100, %i.fb
  br i1 %i.fc, label %.lr.ph81, label %._crit_edge, !llvm.loop !118

._crit_edge85:                                    ; preds = %._crit_edge, %bb.s
  %i.fd = add nsw i32 %i.bl, 1
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next103, 4
  br i1 %exitcond105.not, label %.critedge, label %bb.g, !llvm.loop !119

.critedge:                                        ; preds = %._crit_edge85, %bb.j, %bb.o
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !89
  %i.fh = icmp eq i32 %i.fg, 2
  br i1 %i.fh, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.critedge
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 136692
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !89
  %i.fk = icmp eq i32 %i.fj, 2
  br i1 %i.fk, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.z
  %i.fl = load i32, ptr %i.z, align 8, !tbaa !70  ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 136696
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !89
  %i.fo = and i32 %i.fl, 3
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !89
  %i.fs = add i32 %i.fr, %i.fn
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !89
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 136700
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !89
  %i.fv = lshr i32 %i.fl, 2
  %i.fw = and i32 %i.fv, 3
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !89
  %i.ga = add i32 %i.fz, %i.fu
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !89
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 136704
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !89
  %i.gd = lshr i32 %i.fl, 4
  %i.ge = and i32 %i.gd, 3
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.gf ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !89
  %i.gi = add i32 %i.gh, %i.gc
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !89
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 136708
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !89
  %i.gl = lshr i32 %i.fl, 6
  %i.gm = and i32 %i.gl, 3
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.gn ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !89
  %i.gq = add i32 %i.gp, %i.gk
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !89
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.z, %.critedge
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 136692
  store i32 0, ptr %i.gr, align 4, !tbaa !89
  store i32 0, ptr %i.ff, align 8, !tbaa !89
  %i.gs = load i16, ptr %i.c, align 2, !tbaa !74
  %i.gt = zext i16 %i.gs to i32
  %i.gu = shl nuw nsw i32 %i.gt, 3
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.gu, ptr %i.gv, align 8, !tbaa !90
  store i32 0, ptr %i.z, align 8, !tbaa !70
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 193776
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 193792
  store ptr %i.u, ptr %i.gx, align 8, !tbaa !132
  store ptr %i.u, ptr %i.gw, align 8, !tbaa !133
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.s)
  store ptr null, ptr %i.x, align 8, !tbaa !73
  ret void
}

declare noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw24hasselblad_full_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !80   ; 2 uses
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %._crit_edge14, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %.pre = load i16, ptr %i.d, align 2, !tbaa !81
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.e = phi i16 [ %i.c, %.preheader.lr.ph ], [ %i.ah, %._crit_edge ]
  %i.f = phi i16 [ %.pre, %.preheader.lr.ph ], [ %i.ai, %._crit_edge ] ; 2 uses
  %.01013 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.aj, %._crit_edge ] ; 4 uses
  %.not15 = icmp eq i16 %i.f, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.g = zext i16 %i.f to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.h = phi i32 [ %i.af, %.lr.ph ], [ %i.g, %.lr.ph.preheader ]
  %.012 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.j = mul nuw nsw i32 %i.h, %.01013
  %i.k = add nuw nsw i32 %i.j, %.012
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.n, i32 noundef 1)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.p = load i16, ptr %i.d, align 2, !tbaa !81
  %i.q = zext i16 %i.p to i32
  %i.r = mul nuw nsw i32 %.01013, %i.q
  %i.s = add nuw nsw i32 %i.r, %.012
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.v, i32 noundef 1)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.x = load i16, ptr %i.d, align 2, !tbaa !81
  %i.y = zext i16 %i.x to i32
  %i.z = mul nuw nsw i32 %.01013, %i.y
  %i.aa = add nuw nsw i32 %i.z, %.012
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ab
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.ac, i32 noundef 1)
  %i.ad = add nuw nsw i32 %.012, 1                ; 2 uses
  %i.ae = load i16, ptr %i.d, align 2, !tbaa !81  ; 2 uses
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  %i.ag = icmp samesign ult i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !134

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre16 = load i16, ptr %i.b, align 4, !tbaa !80
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ah = phi i16 [ %.pre16, %._crit_edge.loopexit ], [ %i.e, %.preheader ] ; 2 uses
  %i.ai = phi i16 [ %i.ae, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.aj = add nuw nsw i32 %.01013, 1              ; 2 uses
  %i.ak = zext i16 %i.ah to i32
  %i.al = icmp samesign ult i32 %i.aj, %i.ak
  br i1 %i.al, label %.preheader, label %._crit_edge14, !llvm.loop !135

._crit_edge14:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw20nikon_14bit_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.c = load i32, ptr %i.b, align 8, !tbaa !70
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 3
  %i.h = select i1 %i.d, i1 %i.g, i1 false        ; 3 uses
  %i.i = select i1 %i.h, i32 3, i32 1             ; 2 uses
  br i1 %i.h, label %.critedge50, label %1

1:                                                ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %1
  %i.j = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 2, ptr %i.j, align 16, !tbaa !72
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

.critedge50:                                      ; preds = %bb.a
  %.old = load ptr, ptr %i.a, align 8, !tbaa !91
  %.not47.old = icmp eq ptr %.old, null
  br i1 %.not47.old, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge50
  %i.k = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 2, ptr %i.k, align 16, !tbaa !72
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

bb.d:                                             ; preds = %1, %.critedge50
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.n = load i16, ptr %i.m, align 2, !tbaa !74
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = mul nuw nsw i32 %i.i, 7
  %i.q = mul nuw nsw i32 %i.p, %i.o
  %i.r = lshr i32 %i.q, 2
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = fmul nnan float %i.s, 6.250000e-02
  %i.u = tail call float @llvm.ceil.f32(float %i.t)
  %i.v = fptoui float %i.u to i32
  %i.w = shl i32 %i.v, 4                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !90   ; 2 uses
  %.not48 = icmp eq i32 %i.y, 0
  %i.z = lshr i32 %i.y, %i.i
  %i.aa = select i1 %.not48, i32 %i.o, i32 %i.z
  %.fr.a = freeze i32 %i.aa                       ; 3 uses
  %i.ab = zext i32 %i.w to i64                    ; 5 uses
  %i.ac = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ab, i64 noundef 1) ; 7 uses
  %i.ad = load i16, ptr %i.l, align 8, !tbaa !75
  %.not72 = icmp eq i16 %i.ad, 0
  br i1 %.not72, label %._crit_edge, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.af = add i32 %.fr.a, -3                      ; 3 uses
  %i.ag = add i32 %i.w, -6
  %i.ah = add i32 %i.w, -20
  %.not77 = icmp eq i32 %i.af, 0                  ; 2 uses
  br i1 %i.h, label %.lr.ph69.split.us, label %.lr.ph69.split

.lr.ph69.split.us:                                ; preds = %.lr.ph69
  br i1 %.not77, label %.critedge.loopexit.us.us, label %.lr.ph69.split.us.split

.critedge.loopexit.us.us:                         ; preds = %.lr.ph69.split.us, %.critedge.loopexit.us.us
  %.04568.us.us = phi i32 [ %i.an, %.critedge.loopexit.us.us ], [ 0, %.lr.ph69.split.us ]
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !76 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !78
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.ac, i64 noundef 1, i64 noundef %i.ab) ; 0 uses
  %i.an = add nuw nsw i32 %.04568.us.us, 1        ; 2 uses
  %i.ao = load i16, ptr %i.l, align 8, !tbaa !75
  %i.ap = zext i16 %i.ao to i32
  %i.aq = icmp samesign ult i32 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.loopexit.us.us, label %._crit_edge, !llvm.loop !136

.lr.ph69.split.us.split:                          ; preds = %.lr.ph69.split.us, %.critedge.loopexit.us
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %.critedge.loopexit.us ], [ 0, %.lr.ph69.split.us ] ; 2 uses
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !76 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.ac, i64 noundef 1, i64 noundef %i.ab)
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.ax = trunc nuw nsw i64 %indvars.iv83 to i32
  %i.ay = mul i32 %.fr.a, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.az
  %i.bb = add i32 %i.av, -20                      ; 2 uses
  %invariant.umin63.us = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.bb)
  %.not78.a = icmp eq i32 %i.bb, 0
  br i1 %.not78.a, label %.critedge.loopexit.us, label %.lr.ph67.us

.lr.ph67.us:                                      ; preds = %.lr.ph69.split.us.split, %.lr.ph67.us
  %.066.us = phi i32 [ %i.gw, %.lr.ph67.us ], [ 0, %.lr.ph69.split.us.split ] ; 2 uses
  %.04265.us = phi i32 [ %i.gv, %.lr.ph67.us ], [ 0, %.lr.ph69.split.us.split ] ; 2 uses
  %i.bc = zext i32 %.04265.us to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bc ; 21 uses
  %i.be = zext i32 %.066.us to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.be ; 12 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !84
  %i.bi = and i8 %i.bh, 63
  %i.bj = zext nneg i8 %i.bi to i16
  %i.bk = shl nuw nsw i16 %i.bj, 8
  %i.bl = load i8, ptr %i.bd, align 1, !tbaa !84
  %i.bm = zext i8 %i.bl to i16
  %i.bn = or disjoint i16 %i.bk, %i.bm
  store i16 %i.bn, ptr %i.bf, align 2, !tbaa !79
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 3 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !84
  %i.bq = and i8 %i.bp, 15
  %i.br = zext nneg i8 %i.bq to i16
  %i.bs = shl nuw nsw i16 %i.br, 10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !84
  %i.bv = zext i8 %i.bu to i16
  %i.bw = shl nuw nsw i16 %i.bv, 2
  %i.bx = or disjoint i16 %i.bs, %i.bw
  %i.by = load i8, ptr %i.bg, align 1, !tbaa !84
  %i.bz = lshr i8 %i.by, 6
  %i.ca = zext nneg i8 %i.bz to i16
  %i.cb = or disjoint i16 %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !79
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 5 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !84
  %i.cf = and i8 %i.ce, 3
  %i.cg = zext nneg i8 %i.cf to i16
  %i.ch = shl nuw nsw i16 %i.cg, 12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !84
  %i.ck = zext i8 %i.cj to i16
  %i.cl = shl nuw nsw i16 %i.ck, 4
  %i.cm = or disjoint i16 %i.ch, %i.cl
  %i.cn = load i8, ptr %i.bo, align 1, !tbaa !84
  %i.co = lshr i8 %i.cn, 4
  %i.cp = zext nneg i8 %i.co to i16
  %i.cq = or disjoint i16 %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !79
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !84
  %i.cu = zext i8 %i.ct to i16
  %i.cv = shl nuw nsw i16 %i.cu, 6
  %i.cw = load i8, ptr %i.cd, align 1, !tbaa !84
  %i.cx = lshr i8 %i.cw, 2
  %i.cy = zext nneg i8 %i.cx to i16
  %i.cz = or disjoint i16 %i.cv, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !79
  %i.db = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !84
  %i.dd = and i8 %i.dc, 63
  %i.de = zext nneg i8 %i.dd to i16
  %i.df = shl nuw nsw i16 %i.de, 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bd, i64 7
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !84
  %i.di = zext i8 %i.dh to i16
  %i.dj = or disjoint i16 %i.df, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !79
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bd, i64 10 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !84
  %i.dn = and i8 %i.dm, 15
  %i.do = zext nneg i8 %i.dn to i16
  %i.dp = shl nuw nsw i16 %i.do, 10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !84
  %i.ds = zext i8 %i.dr to i16
  %i.dt = shl nuw nsw i16 %i.ds, 2
  %i.du = or disjoint i16 %i.dp, %i.dt
  %i.dv = load i8, ptr %i.db, align 1, !tbaa !84
  %i.dw = lshr i8 %i.dv, 6
  %i.dx = zext nneg i8 %i.dw to i16
  %i.dy = or disjoint i16 %i.du, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !79
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bd, i64 12 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !84
  %i.ec = and i8 %i.eb, 3
  %i.ed = zext nneg i8 %i.ec to i16
  %i.ee = shl nuw nsw i16 %i.ed, 12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bd, i64 11
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !84
  %i.eh = zext i8 %i.eg to i16
  %i.ei = shl nuw nsw i16 %i.eh, 4
  %i.ej = or disjoint i16 %i.ee, %i.ei
  %i.ek = load i8, ptr %i.dl, align 1, !tbaa !84
  %i.el = lshr i8 %i.ek, 4
  %i.em = zext nneg i8 %i.el to i16
  %i.en = or disjoint i16 %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !79
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bd, i64 13
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !84
  %i.er = zext i8 %i.eq to i16
  %i.es = shl nuw nsw i16 %i.er, 6
  %i.et = load i8, ptr %i.ea, align 1, !tbaa !84
  %i.eu = lshr i8 %i.et, 2
  %i.ev = zext nneg i8 %i.eu to i16
  %i.ew = or disjoint i16 %i.es, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bf, i64 18
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !79
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bd, i64 15 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !84
  %i.fa = and i8 %i.ez, 63
  %i.fb = zext nneg i8 %i.fa to i16
  %i.fc = shl nuw nsw i16 %i.fb, 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !84
  %i.ff = zext i8 %i.fe to i16
  %i.fg = or disjoint i16 %i.fc, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !79
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bd, i64 17 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !84
  %i.fk = and i8 %i.fj, 15
  %i.fl = zext nneg i8 %i.fk to i16
  %i.fm = shl nuw nsw i16 %i.fl, 10
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !84
  %i.fp = zext i8 %i.fo to i16
  %i.fq = shl nuw nsw i16 %i.fp, 2
  %i.fr = or disjoint i16 %i.fm, %i.fq
  %i.fs = load i8, ptr %i.ey, align 1, !tbaa !84
  %i.ft = lshr i8 %i.fs, 6
  %i.fu = zext nneg i8 %i.ft to i16
  %i.fv = or disjoint i16 %i.fr, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !79
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bd, i64 19 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !84
  %i.fz = and i8 %i.fy, 3
  %i.ga = zext nneg i8 %i.fz to i16
  %i.gb = shl nuw nsw i16 %i.ga, 12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bd, i64 18
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !84
  %i.ge = zext i8 %i.gd to i16
  %i.gf = shl nuw nsw i16 %i.ge, 4
  %i.gg = or disjoint i16 %i.gb, %i.gf
  %i.gh = load i8, ptr %i.fi, align 1, !tbaa !84
  %i.gi = lshr i8 %i.gh, 4
  %i.gj = zext nneg i8 %i.gi to i16
  %i.gk = or disjoint i16 %i.gg, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bf, i64 26
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !79
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !84
  %i.go = zext i8 %i.gn to i16
  %i.gp = shl nuw nsw i16 %i.go, 6
  %i.gq = load i8, ptr %i.fx, align 1, !tbaa !84
  %i.gr = lshr i8 %i.gq, 2
  %i.gs = zext nneg i8 %i.gr to i16
  %i.gt = or disjoint i16 %i.gp, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !79
  %i.gv = add i32 %.04265.us, 21                  ; 2 uses
  %i.gw = add i32 %.066.us, 4                     ; 2 uses
  %i.gx = icmp ult i32 %i.gw, %i.af
  %i.gy = icmp ult i32 %i.gv, %invariant.umin63.us
  %or.cond57.us = and i1 %i.gx, %i.gy
  br i1 %or.cond57.us, label %.lr.ph67.us, label %.critedge.loopexit.us, !llvm.loop !137

.critedge.loopexit.us:                            ; preds = %.lr.ph67.us, %.lr.ph69.split.us.split
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.gz = load i16, ptr %i.l, align 8, !tbaa !75
  %i.ha = zext i16 %i.gz to i64
  %i.hb = icmp samesign ult i64 %indvars.iv.next84, %i.ha
  br i1 %i.hb, label %.lr.ph69.split.us.split, label %._crit_edge, !llvm.loop !136

.lr.ph69.split:                                   ; preds = %.lr.ph69
  br i1 %.not77, label %.critedge.loopexit59.us, label %.lr.ph69.split.split

.critedge.loopexit59.us:                          ; preds = %.lr.ph69.split, %.critedge.loopexit59.us
  %.04568.us70 = phi i32 [ %i.hh, %.critedge.loopexit59.us ], [ 0, %.lr.ph69.split ]
  %i.hc = load ptr, ptr %i.ae, align 8, !tbaa !76 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !78
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = tail call noundef i32 %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %i.hc, ptr noundef %i.ac, i64 noundef 1, i64 noundef %i.ab) ; 0 uses
  %i.hh = add nuw nsw i32 %.04568.us70, 1         ; 2 uses
  %i.hi = load i16, ptr %i.l, align 8, !tbaa !75
  %i.hj = zext i16 %i.hi to i32
  %i.hk = icmp samesign ult i32 %i.hh, %i.hj
  br i1 %i.hk, label %.critedge.loopexit59.us, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %.critedge.loopexit59, %.critedge.loopexit59.us, %.critedge.loopexit.us, %.critedge.loopexit.us.us, %bb.d
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.ac)
  ret void

.lr.ph69.split.split:                             ; preds = %.lr.ph69.split, %.critedge.loopexit59
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.loopexit59 ], [ 0, %.lr.ph69.split ] ; 2 uses
  %i.hl = load ptr, ptr %i.ae, align 8, !tbaa !76 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !78
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = tail call noundef i32 %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef %i.ac, i64 noundef 1, i64 noundef %i.ab)
  %i.hq = load ptr, ptr %4, align 8, !tbaa !73
  %i.hr = trunc nuw nsw i64 %indvars.iv to i32
  %i.hs = mul i32 %.fr.a, %i.hr
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.ht
  %i.hv = add i32 %i.hp, -6                       ; 2 uses
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %i.hv)
  %.not75 = icmp eq i32 %i.hv, 0
  br i1 %.not75, label %.critedge.loopexit59, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph69.split.split, %.lr.ph
  %.04362 = phi i32 [ %i.jw, %.lr.ph ], [ 0, %.lr.ph69.split.split ] ; 2 uses
  %.04461 = phi i32 [ %i.jv, %.lr.ph ], [ 0, %.lr.ph69.split.split ] ; 2 uses
  %i.hw = zext i32 %.04461 to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.hw ; 7 uses
  %i.hy = zext i32 %.04362 to i64
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %i.hy ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 6
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !84
  %i.ic = zext i8 %i.ib to i16
  %i.id = shl nuw nsw i16 %i.ic, 6
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 5 ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !84
  %i.ig = lshr i8 %i.if, 2
  %i.ih = zext nneg i8 %i.ig to i16
  %i.ii = or disjoint i16 %i.id, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 6
  store i16 %i.ii, ptr %i.ij, align 2, !tbaa !79
  %i.ik = load i8, ptr %i.ie, align 1, !tbaa !84
  %i.il = and i8 %i.ik, 3
  %i.im = zext nneg i8 %i.il to i16
  %i.in = shl nuw nsw i16 %i.im, 12
  %i.io = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !84
  %i.iq = zext i8 %i.ip to i16
  %i.ir = shl nuw nsw i16 %i.iq, 4
  %i.is = or disjoint i16 %i.in, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.hx, i64 3 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !84
  %i.iv = lshr i8 %i.iu, 4
  %i.iw = zext nneg i8 %i.iv to i16
  %i.ix = or disjoint i16 %i.is, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !79
  %i.iz = load i8, ptr %i.it, align 1, !tbaa !84
  %i.ja = and i8 %i.iz, 15
  %i.jb = zext nneg i8 %i.ja to i16
  %i.jc = shl nuw nsw i16 %i.jb, 10
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !84
  %i.jf = zext i8 %i.je to i16
  %i.jg = shl nuw nsw i16 %i.jf, 2
  %i.jh = or disjoint i16 %i.jc, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hx, i64 1 ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !84
  %i.jk = lshr i8 %i.jj, 6
  %i.jl = zext nneg i8 %i.jk to i16
  %i.jm = or disjoint i16 %i.jh, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  store i16 %i.jm, ptr %i.jn, align 2, !tbaa !79
  %i.jo = load i8, ptr %i.ji, align 1, !tbaa !84
  %i.jp = and i8 %i.jo, 63
  %i.jq = zext nneg i8 %i.jp to i16
  %i.jr = shl nuw nsw i16 %i.jq, 8
  %i.js = load i8, ptr %i.hx, align 1, !tbaa !84
  %i.jt = zext i8 %i.js to i16
  %i.ju = or disjoint i16 %i.jr, %i.jt
  store i16 %i.ju, ptr %i.hz, align 2, !tbaa !79
  %i.jv = add i32 %.04461, 7                      ; 2 uses
  %i.jw = add i32 %.04362, 4                      ; 2 uses
  %i.jx = icmp ult i32 %i.jw, %i.af
  %i.jy = icmp ult i32 %i.jv, %invariant.umin
  %or.cond53 = and i1 %i.jx, %i.jy
  br i1 %or.cond53, label %.lr.ph, label %.critedge.loopexit59, !llvm.loop !138

.critedge.loopexit59:                             ; preds = %.lr.ph, %.lr.ph69.split.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jz = load i16, ptr %i.l, align 8, !tbaa !75
  %i.ka = zext i16 %i.jz to i64
  %i.kb = icmp samesign ult i64 %indvars.iv.next, %i.ka
  br i1 %i.kb, label %.lr.ph69.split.split, label %._crit_edge, !llvm.loop !136
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #4

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19fuji_14bit_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.c = load i16, ptr %i.b, align 2, !tbaa !74
  %i.d = zext i16 %i.c to i32                     ; 2 uses
  %i.e = mul nuw nsw i32 %i.d, 7
  %i.f = lshr i32 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !90   ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  %i.i = lshr i32 %i.h, 1
  %i.j = select i1 %.not, i32 %i.d, i32 %i.i      ; 3 uses
  %i.k = zext nneg i32 %i.f to i64                ; 2 uses
  %i.l = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.k, i64 noundef 1) ; 6 uses
  %i.m = load i16, ptr %i.a, align 8, !tbaa !75
  %.not61 = icmp eq i16 %i.m, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.p = add nsw i32 %i.j, -3                     ; 2 uses
  %i.q = add nsw i32 %i.f, -6
  %i.r = icmp ne i32 %i.p, 0
  %i.s = add nsw i32 %i.j, -15                    ; 2 uses
  %i.t = add nsw i32 %i.f, -27
  %i.u = icmp ne i32 %i.s, 0
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge, %bb.a
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.l)
  ret void

bb.b:                                             ; preds = %.lr.ph60, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.l, i64 noundef 1, i64 noundef %i.k) ; 5 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = mul i32 %i.j, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = urem i32 %i.z, 28
  %.not42 = icmp eq i32 %i.af, 0
  br i1 %.not42, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.ag = add i32 %i.z, -27
  %invariant.umin54 = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.ag) ; 2 uses
  %i.ah = icmp ne i32 %invariant.umin54, 0
  %or.cond4955 = select i1 %i.u, i1 %i.ah, i1 false
  br i1 %or.cond4955, label %.lr.ph58, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ai = lshr i32 %i.z, 2                        ; 2 uses
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZL9swab32arrPjj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.ai to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.z, 32
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 1073741816 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aj, align 4, !tbaa !89
  %wide.load68 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !89
  %i.al = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.am = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load68)
  store <4 x i32> %i.al, ptr %i.aj, align 4, !tbaa !89
  store <4 x i32> %i.am, ptr %i.ak, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZL9swab32arrPjj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !89
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !89
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL9swab32arrPjj.exit, label %.lr.ph.i, !llvm.loop !140

_ZL9swab32arrPjj.exit:                            ; preds = %.lr.ph.i, %middle.block, %bb.c
  %i.ar = add i32 %i.z, -6
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ar) ; 2 uses
  %i.as = icmp ne i32 %invariant.umin, 0
  %or.cond4551 = select i1 %i.r, i1 %i.as, i1 false
  br i1 %or.cond4551, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZL9swab32arrPjj.exit, %.lr.ph
  %.03853 = phi i32 [ %i.ct, %.lr.ph ], [ 0, %_ZL9swab32arrPjj.exit ] ; 2 uses
end_hunk_0
