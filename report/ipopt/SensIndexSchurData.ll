Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/SensIndexSchurData?download=true
inline.NumInlined: 482
inline.NumDeleted: 195
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5Ipopt14IndexSchurData8MultiplyERKNS_14IteratesVectorERNS_6VectorE:bb.a
bb.o:                                             ; preds = %bb.n
  %i.cr = load ptr, ptr %.0.i3.i, align 8, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i) #17, !inline_history !109
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit38

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit38:      ; preds = %bb.n, %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 233
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !103, !range !102, !noundef !85
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = load ptr, ptr %i.bv, align 8, !tbaa !20
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.02876
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !24
  %i.da = sitofp i32 %i.cz to double              ; 2 uses
  br i1 %i.cw, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit38
  %i.db = getelementptr inbounds nuw i8, ptr %i.ck, i64 216
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !104
  %i.dd = load ptr, ptr %i.ae, align 8, !tbaa !75, !noalias !131
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !79, !noalias !131 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.df, null
  br i1 %.not.i.i39, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i43, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i40

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i43:  ; preds = %bb.p
  %i.dg = load ptr, ptr %i.bu, align 8, !tbaa !82, !noalias !131
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.next
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !83, !noalias !131, !nonnull !85, !noundef !85
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i40

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i40: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i43, %bb.p
  %.0.i3.i41 = phi ptr [ %i.di, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i43 ], [ %i.df, %bb.p ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i3.i41, i64 8 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !8, !noalias !131 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i3.i41, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !86
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !87
  %i.dp = add nsw i32 %i.do, %i.by
  %i.dq = sub i32 %i.dp, %i.ca
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !31
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.02876 ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !31
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.da, double %i.dt, double %i.dv)
  store double %i.dw, ptr %i.du, align 8, !tbaa !31
  store i32 %i.dk, ptr %i.dj, align 8, !tbaa !8
  %i.dx = icmp eq i32 %i.dk, 0
  br i1 %i.dx, label %bb.q, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit47

bb.q:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i40
  %i.dy = load ptr, ptr %.0.i3.i41, align 8, !tbaa !14
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void %i.ea(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i41) #17, !inline_history !109
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit47

bb.r:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit38
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 240
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !134
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.02876 ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !31
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.da, double %i.ec, double %i.ee)
  store double %i.ef, ptr %i.ed, align 8, !tbaa !31
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit47

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit47:      ; preds = %bb.r, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i40, %bb.q
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !8
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !8
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.s, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52

bb.s:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit47
  %i.ek = load ptr, ptr %i.ck, align 8, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  tail call void %i.em(ptr noundef nonnull align 8 dereferenceable(248) %i.ck) #17, !inline_history !135
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit47, %bb.s
  %i.en = add nuw i64 %.02876, 1                  ; 2 uses
  %i.eo = load ptr, ptr %i.br, align 8, !tbaa !16
  %i.ep = load ptr, ptr %i.bq, align 8, !tbaa !20 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2
  %i.eu = icmp ult i64 %i.en, %i.et
  br i1 %i.eu, label %bb.i, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52, %_ZNK5Ipopt14IndexSchurData16GetVectorLengthsERKNS_14IteratesVectorE.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14IndexSchurData13TransMultiplyERKNS_6VectorERNS_14IteratesVectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %1, ptr noundef nonnull align 8 dereferenceable(280) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !67
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef 0) #16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  br label %.preheader74

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 232
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.k = sext i32 %i.ag to i64
  %i.l = icmp slt i32 %i.ag, 0
  %i.m = shl nsw i64 %i.k, 3
  %spec.select = select i1 %i.l, i64 -1, i64 %i.m
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select) #16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !104  ; 2 uses
  %i.q = icmp sgt i32 %i.ag, 0
  br i1 %i.q, label %.lr.ph80.preheader, label %.preheader74

.lr.ph80.preheader:                               ; preds = %._crit_edge
  %i.r = zext nneg i32 %i.ag to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.s, i1 false), !tbaa !31
  br label %.preheader74

bb.b:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.t = phi ptr [ %i.b, %.lr.ph ], [ %i.al, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ] ; 3 uses
  %.04776 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ]
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !75, !noalias !137
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79, !noalias !137 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i:    ; preds = %bb.b
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !82, !noalias !137
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83, !noalias !137, !nonnull !85, !noundef !85
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, %bb.b
  %.0.i3.i = phi ptr [ %i.z, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i ], [ %i.w, %bb.b ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !8, !noalias !137
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !87
  %.fr109 = freeze i32 %i.af
  %i.ag = add i32 %.fr109, %.04776                ; 5 uses
  %i.ah = icmp eq i32 %i.ab, 0
  br i1 %i.ah, label %bb.c, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.c:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i
  %i.ai = load ptr, ptr %.0.i3.i, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i) #17, !inline_history !109
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i, %bb.c
  %i.al = phi ptr [ %i.t, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !67
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !140

.preheader74:                                     ; preds = %.thread, %.lr.ph80.preheader, %._crit_edge
  %i.aq = phi ptr [ %i.h, %.thread ], [ %i.p, %.lr.ph80.preheader ], [ %i.p, %._crit_edge ] ; 3 uses
  %i.ar = phi ptr [ %i.f, %.thread ], [ %i.n, %.lr.ph80.preheader ], [ %i.n, %._crit_edge ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !16 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !20 ; 5 uses
  %.not = icmp eq ptr %i.au, %i.av
  br i1 %.not, label %.preheader, label %.lr.ph82

.lr.ph82:                                         ; preds = %.preheader74
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = ashr exact i64 %i.ay, 2                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20 ; 3 uses
  %i.bc = icmp eq i64 %i.ay, 4
  br i1 %i.bc, label %.epil.preheader, label %.lr.ph82.new

.lr.ph82.new:                                     ; preds = %.lr.ph82
  %unroll_iter = and i64 %i.az, -2
  br label %bb.d

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.d
  %lcmp.mod.not = trunc i64 %i.az to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph82
  %.04181.epil.init = phi i64 [ 0, %.lr.ph82 ], [ %i.ct, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod114 = trunc i64 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod114)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.04181.epil.init
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !24
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.04181.epil.init
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !24
  %i.bh = sitofp i32 %i.bg to double
  %sext.epil = shl i64 %.04181.epil.init, 32
  %i.bi = ashr exact i64 %sext.epil, 29
  %i.bj = getelementptr inbounds i8, ptr %i.aq, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !31
  %i.bl = sext i32 %i.be to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.bl ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !31
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bk, double %i.bn)
  store double %i.bo, ptr %i.bm, align 8, !tbaa !31
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader74
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !67
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph82.new
  %.04181 = phi i64 [ 0, %.lr.ph82.new ], [ %i.ct, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph82.new ], [ %niter.next.1, %bb.d ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.04181
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !24
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.04181
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !24
  %i.by = sitofp i32 %i.bx to double
  %sext = shl i64 %.04181, 32
  %i.bz = ashr exact i64 %sext, 29
  %i.ca = getelementptr inbounds i8, ptr %i.aq, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !31
  %i.cc = sext i32 %i.bv to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.cc ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !31
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.by, double %i.cb, double %i.ce)
  store double %i.cf, ptr %i.cd, align 8, !tbaa !31
  %i.cg = or disjoint i64 %.04181, 1              ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !24
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cg
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !24
  %i.cl = sitofp i32 %i.ck to double
  %sext.1 = shl i64 %i.cg, 32
  %i.cm = ashr exact i64 %sext.1, 29
  %i.cn = getelementptr inbounds i8, ptr %i.aq, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !31
  %i.cp = sext i32 %i.ci to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.cp ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !31
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.co, double %i.cr)
  store double %i.cs, ptr %i.cq, align 8, !tbaa !31
  %i.ct = add nuw i64 %.04181, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.d, !llvm.loop !141

bb.e:                                             ; preds = %.lr.ph85, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit65
  %indvars.iv93 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next94, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit65 ] ; 3 uses
  %.04083 = phi i32 [ 0, %.lr.ph85 ], [ %i.fb, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit65 ] ; 2 uses
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(265) %2), !noalias !142
  %i.cu = load ptr, ptr %i.bt, align 8, !tbaa !75, !noalias !142
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv93
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !79, !noalias !142 ; 6 uses
  %.not.i.i.i54 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i54, label %._crit_edge96, label %bb.f

._crit_edge96:                                    ; preds = %bb.e
  %.pre97 = load i32, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !8
  %i.cx = add nsw i32 %.pre97, -1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !8, !noalias !142 ; 2 uses
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 8, !tbaa !8, !noalias !142
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge96, %bb.f
  %i.db = phi i32 [ %i.cx, %._crit_edge96 ], [ %i.cz, %bb.f ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !86
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !87 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %i.db, ptr %i.dg, align 8, !tbaa !8
  %i.dh = icmp eq i32 %i.db, 0
  br i1 %i.dh, label %bb.h, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.di = load ptr, ptr %i.cw, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(205) %i.cw) #17, !inline_history !110
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit:         ; preds = %bb.g, %bb.h
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(265) %2), !noalias !145
  %i.dl = load ptr, ptr %i.bt, align 8, !tbaa !75, !noalias !145
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv93
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !79, !noalias !145 ; 10 uses
  %.not.i.i.i56 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i56, label %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit57, label %bb.i

bb.i:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !8, !noalias !145
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !8, !noalias !145
  br label %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit57

_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit57: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit, %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  %i.dr = tail call ptr @__dynamic_cast(ptr nonnull %i.dn, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #17 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 232 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !98, !range !102, !noundef !85
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 233 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !range !102
  %i.dx = trunc nuw i8 %i.dw to i1
  %or.cond.i = select i1 %i.du, i1 %i.dx, i1 false
  br i1 %or.cond.i, label %bb.j, label %.noexc

bb.j:                                             ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit57
  invoke void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %i.dr)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.j, %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit57
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %i.dr)
          to label %.noexc58 unwind label %bb.m

.noexc58:                                         ; preds = %.noexc
  store i8 1, ptr %i.ds, align 8, !tbaa !98
  store i8 0, ptr %i.dv, align 1, !tbaa !103
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 216 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !104 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.k, label %_ZN5Ipopt11DenseVector6ValuesEv.exit

bb.k:                                             ; preds = %.noexc58
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 208
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !105
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !87 ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %bb.l, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.eg = zext nneg i32 %i.ee to i64
  %i.eh = shl nuw nsw i64 %i.eg, 3
  %i.ei = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eh) #16
          to label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i unwind label %bb.m

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi ptr [ null, %bb.k ], [ %i.ei, %bb.l ] ; 2 uses
  store ptr %.0.i.i.i, ptr %i.dy, align 8, !tbaa !104
  br label %_ZN5Ipopt11DenseVector6ValuesEv.exit

bb.m:                                             ; preds = %bb.j, %.noexc, %bb.l
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !8
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %i.ek, align 8, !tbaa !8
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.n, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit63

bb.n:                                             ; preds = %bb.m
  %i.eo = load ptr, ptr %i.dn, align 8, !tbaa !14
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  tail call void %i.eq(ptr noundef nonnull align 8 dereferenceable(205) %i.dn) #17, !inline_history !110
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit63

_ZN5Ipopt11DenseVector6ValuesEv.exit:             ; preds = %.noexc58, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i
  %i.er = phi ptr [ %i.dz, %.noexc58 ], [ %.0.i.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !8
  %i.eu = add nsw i32 %i.et, -1                   ; 2 uses
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !8
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.o, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit65

bb.o:                                             ; preds = %_ZN5Ipopt11DenseVector6ValuesEv.exit
  %i.ew = load ptr, ptr %i.dn, align 8, !tbaa !14
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
end_hunk_0
