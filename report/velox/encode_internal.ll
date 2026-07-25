inline.NumInlined: 704
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN5arrow7compute15RowTableEncoder14EncodeSelectedEPNS0_12RowTableImplEjPKt:_ZN5arrow6StatusD2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ef, ptr align 1 %i.ek, i64 %i.el, i1 false)
  %indvars.iv.next47.i = or disjoint i64 %indvars.iv46.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next47.i
  %i.en = load i64, ptr %i.em, align 8, !tbaa !24
  %i.eo = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.t, align 4, !tbaa !64  ; 2 uses
  %i.eq = load i32, ptr %i.r, align 8, !tbaa !63
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3
  %i.eu = sub i32 %i.et, %i.ep
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next47.i
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !133
  %i.ex = zext i32 %i.ep to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ex
  %i.ez = zext i16 %i.ew to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fc
  %i.fe = zext i32 %i.eu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %i.fd, i64 %i.fe, i1 false)
  %indvars.iv.next47.i.1 = add nuw nsw i64 %indvars.iv46.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow7compute16EncoderVarBinary14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKt.exit.loopexit.unr-lcssa, label %.lr.ph42.i, !llvm.loop !140

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i55 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i56, %bb.i ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i55
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !24
  %i.fh = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.fg ; 2 uses
  %i.fi = load i32, ptr %i.r, align 8, !tbaa !63
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.ds  ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 -4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3  ; 2 uses
  %i.fo = load i32, ptr %i.s, align 4, !tbaa !62
  %i.fp = sub nsw i32 0, %i.fn
  %i.fq = add nsw i32 %i.fo, -1
  %i.fr = and i32 %i.fq, %i.fp
  %i.fs = add i32 %i.fr, %i.fn                    ; 2 uses
  %i.ft = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fu = sub i32 %i.ft, %i.fs
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i55
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !133
  %i.fx = zext i32 %i.fs to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fx
  %i.fz = zext i16 %i.fw to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.gc
  %i.ge = zext i32 %i.fu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fy, ptr align 1 %i.gd, i64 %i.ge, i1 false)
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i55, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, %wide.trip.count.i54
  br i1 %exitcond.not.i57, label %_ZN5arrow7compute16EncoderVarBinary14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKt.exit, label %bb.i, !llvm.loop !141

_ZN5arrow7compute16EncoderVarBinary14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKt.exit.loopexit.unr-lcssa: ; preds = %.lr.ph42.i
  br i1 %lcmp.mod.not, label %_ZN5arrow7compute16EncoderVarBinary14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKt.exit, label %.lr.ph42.i.epil.preheader

.lr.ph42.i.epil.preheader:                        ; preds = %_ZN5arrow7compute16EncoderVarBinary14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKt.exit.loopexit.unr-lcssa, %.lr.ph42.i.preheader
  %indvars.iv46.i.epil.init = phi i64 [ 0, %.lr.ph42.i.preheader ], [ %indvars.iv.next47.i.1, %_ZN5arrow7compute16EncoderVarBinary14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKt.exit.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod82)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv46.i.epil.init
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !24
  %i.gh = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.t, align 4, !tbaa !64  ; 2 uses
  %i.gj = load i32, ptr %i.r, align 8, !tbaa !63
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = sub i32 %i.gm, %i.gi
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv46.i.epil.init
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !133
  %i.gq = zext i32 %i.gi to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gq
  %i.gs = zext i16 %i.gp to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.gv
  %i.gx = zext i32 %i.gn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gr, ptr align 1 %i.gw, i64 %i.gx, i1 false)
  br label %_ZN5arrow7compute16EncoderVarBinary14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKt.exit

_ZN5arrow7compute16EncoderVarBinary14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKt.exit: ; preds = %bb.i, %.lr.ph42.i.epil.preheader, %_ZN5arrow7compute16EncoderVarBinary14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKt.exit.loopexit.unr-lcssa, %.preheader38.i, %.preheader.i
  %i.gy = add nuw i64 %.061, 1                    ; 2 uses
  %i.gz = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.ha = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = sdiv exact i64 %i.hd, 72
  %i.hf = icmp ult i64 %i.gy, %i.he
  br i1 %i.hf, label %bb.f, label %._crit_edge64, !llvm.loop !142

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit50, %_ZN5arrow6StatusD2Ev.exit46, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow7compute12EncoderNulls14EncodeSelectedEPNS0_12RowTableImplERKSt6vectorINS0_14KeyColumnArrayESaIS5_EEjPKt.exit
  ret void
}

declare void @_ZN5arrow7compute12RowTableImpl5CleanEv(ptr noundef nonnull align 8 dereferenceable(209)) local_unnamed_addr #1

declare void @_ZN5arrow7compute12RowTableImpl11AppendEmptyEjl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(209), i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute14EncoderOffsets21GetRowOffsetsSelectedEPNS0_12RowTableImplERKSt6vectorINS0_14KeyColumnArrayESaIS5_EEjPKt(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !88, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 4 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN5arrow7compute12RowTableImpl15mutable_offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.g = load i8, ptr %i.f, align 1, !tbaa !67, !range !28, !noundef !29
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i8, ptr %i.i, align 8, !range !28
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 %i.k, i1 false, !prof !78
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !78
  br label %_ZN5arrow7compute12RowTableImpl15mutable_offsetsEv.exit

_ZN5arrow7compute12RowTableImpl15mutable_offsetsEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.c ], [ null, %bb.b ] ; 10 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow7compute12RowTableImpl15mutable_offsetsEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !64
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %wide.trip.count = zext i32 %3 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.s, align 8, !tbaa !24
  store <2 x i64> %broadcast.splat, ptr %i.t, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader78.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader78.thread:                              ; preds = %scalar.ph, %middle.block
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 2 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !15     ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 72
  %.not96122 = icmp eq ptr %i.w, %i.x
  br i1 %.not96122, label %.lr.ph95, label %.lr.ph85.split.us.preheader

.lr.ph85.split.us.preheader:                      ; preds = %.preheader78.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28
  %wide.trip.count110 = zext i32 %3 to i64        ; 3 uses
  %xtraiter = and i64 %wide.trip.count110, 1
  %i.ad = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count110, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod123 = trunc i32 %3 to i1
  br label %.lr.ph85.split.us

.lr.ph85.split.us:                                ; preds = %.lr.ph85.split.us.preheader, %..loopexit_crit_edge.us
  %.07284.us = phi i64 [ %i.bu, %..loopexit_crit_edge.us ], [ 0, %.lr.ph85.split.us.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %i.x, i64 %.07284.us ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !26, !range !28, !noundef !29
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %..loopexit_crit_edge.us, label %.lr.ph81.us

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph81.us.new.a
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph81.us
  %indvars.iv102.epil.init = phi i64 [ 0, %.lr.ph81.us ], [ %indvars.iv.next103.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod123)
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv102.epil.init
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !133
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !3
  %i.ap = sub i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv102.epil.init ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24 ; 2 uses
  %i.as = sub nsw i64 0, %i.ar
  %i.at = and i64 %i.cb, %i.as
  %i.au = zext i32 %i.ap to i64
  %i.av = add i64 %i.ar, %i.au
  %i.aw = add i64 %i.av, %i.at
  store i64 %i.aw, ptr %i.aq, align 8, !tbaa !24
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %.not.us = icmp eq ptr %i.ax, null
  br i1 %.not.us, label %..loopexit_crit_edge.us, label %.preheader.us

bb.d:                                             ; preds = %.preheader.us, %5
  %indvars.iv107 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next108, %5 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv107
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !133 ; 2 uses
  %i.ba = zext i16 %i.az to i32
  %i.bb = add i32 %i.bw, %i.ba                    ; 2 uses
  %i.bc = lshr i32 %i.bb, 3
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !21
  %i.bg = trunc i32 %i.bb to i8
  %i.bh = and i8 %i.bg, 7
  %i.bi = lshr i8 %i.bf, %i.bh
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = zext i16 %i.az to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bp = sub i32 %i.bn, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv107 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bt = sub nsw i64 %i.bs, %i.bq
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !24
  br label %5

5:                                                ; preds = %bb.e, %bb.d
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %..loopexit_crit_edge.us, label %bb.d, !llvm.loop !144

.lr.ph81.us.new.a:                                ; preds = %.lr.ph81.us, %.lr.ph81.us.new.a
  %indvars.iv102 = phi i64 [ %indvars.iv.next103.1, %.lr.ph81.us.new.a ], [ 0, %.lr.ph81.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1.a, %.lr.ph81.us.new.a ], [ 0, %.lr.ph81.us ]
  %6 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv102
  %7 = load i16, ptr %6, align 2, !tbaa !133
  %8 = zext i16 %7 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %8 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !3
  %13 = sub i32 %11, %12
  %14 = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv102 ; 2 uses
  %15 = load i64, ptr %14, align 8, !tbaa !24     ; 2 uses
  %16 = sub nsw i64 0, %15
  %17 = and i64 %i.cb, %16
  %18 = zext i32 %13 to i64
  %19 = add i64 %15, %18
  %20 = add i64 %19, %17
  store i64 %20, ptr %14, align 8, !tbaa !24
  %indvars.iv.next103 = or disjoint i64 %indvars.iv102, 1 ; 2 uses
  %21 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next103
  %22 = load i16, ptr %21, align 2, !tbaa !133
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %23 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %26 = load i32, ptr %25, align 4, !tbaa !3
  %27 = load i32, ptr %24, align 4, !tbaa !3
  %28 = sub i32 %26, %27
  %29 = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv.next103 ; 2 uses
  %30 = load i64, ptr %29, align 8, !tbaa !24     ; 2 uses
  %31 = sub nsw i64 0, %30
  %32 = and i64 %i.cb, %31
  %33 = zext i32 %28 to i64
  %34 = add i64 %30, %33
  %35 = add i64 %34, %32
  store i64 %35, ptr %29, align 8, !tbaa !24
  %indvars.iv.next103.1 = add nuw nsw i64 %indvars.iv102, 2 ; 2 uses
  %niter.next.1.a = add i64 %niter, 2             ; 2 uses
  %niter.ncmp.1.a = icmp eq i64 %niter.next.1.a, %unroll_iter
  br i1 %niter.ncmp.1.a, label %._crit_edge.us.unr-lcssa, label %.lr.ph81.us.new.a, !llvm.loop !145

..loopexit_crit_edge.us:                          ; preds = %5, %._crit_edge.us, %.lr.ph85.split.us
  %i.bu = add nuw i64 %.07284.us, 1               ; 2 uses
  %exitcond112.not = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond112.not, label %.lr.ph95, label %.lr.ph85.split.us, !llvm.loop !146

.preheader.us:                                    ; preds = %._crit_edge.us
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !3
  br label %bb.d

.lr.ph81.us:                                      ; preds = %.lr.ph85.split.us
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32 ; 4 uses
  %i.bz = load i32, ptr %i.ac, align 4, !tbaa !62
  %i.ca = add nsw i32 %i.bz, -1
  %i.cb = sext i32 %i.ca to i64                   ; 3 uses
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph81.us.new.a

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv
  store i64 %i.r, ptr %i.cc, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader78.thread, label %scalar.ph, !llvm.loop !147

.lr.ph95:                                         ; preds = %..loopexit_crit_edge.us, %.preheader78.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !148
  %i.cf = add nsw i32 %i.ce, -1
  %i.cg = sext i32 %i.cf to i64                   ; 3 uses
  %wide.trip.count116 = zext i32 %3 to i64        ; 2 uses
  %xtraiter125 = and i64 %wide.trip.count, 1
  %i.ch = icmp eq i32 %3, 1
  br i1 %i.ch, label %.epil.preheader124, label %.lr.ph95.new

.lr.ph95.new:                                     ; preds = %.lr.ph95
  %unroll_iter129 = and i64 %wide.trip.count, 4294967294
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %._crit_edge, label %.epil.preheader124

.epil.preheader124:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph95
  %indvars.iv113.epil.init = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next114.1, %._crit_edge.loopexit.unr-lcssa ]
  %.07393.epil.init = phi i64 [ 0, %.lr.ph95 ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod128 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv113.epil.init ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !24 ; 2 uses
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = and i64 %i.ck, %i.cg
  store i64 %.07393.epil.init, ptr %i.ci, align 8, !tbaa !24
  %i.cm = add i64 %i.cj, %.07393.epil.init
  %i.cn = add i64 %i.cm, %i.cl
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader124, %._crit_edge.loopexit.unr-lcssa, %_ZN5arrow7compute12RowTableImpl15mutable_offsetsEv.exit
  %.pre-phi = phi i64 [ 0, %_ZN5arrow7compute12RowTableImpl15mutable_offsetsEv.exit ], [ %wide.trip.count116, %._crit_edge.loopexit.unr-lcssa ], [ %wide.trip.count116, %.epil.preheader124 ]
  %.073.lcssa = phi i64 [ 0, %_ZN5arrow7compute12RowTableImpl15mutable_offsetsEv.exit ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ], [ %i.cn, %.epil.preheader124 ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %.pre-phi
  store i64 %.073.lcssa, ptr %i.co, align 8, !tbaa !24
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph95.new
  %indvars.iv113 = phi i64 [ 0, %.lr.ph95.new ], [ %indvars.iv.next114.1, %bb.f ] ; 3 uses
  %.07393 = phi i64 [ 0, %.lr.ph95.new ], [ %i.db, %bb.f ] ; 2 uses
  %niter130 = phi i64 [ 0, %.lr.ph95.new ], [ %niter130.next.1, %bb.f ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv113 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !24 ; 2 uses
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = and i64 %i.cr, %i.cg
  store i64 %.07393, ptr %i.cp, align 8, !tbaa !24
  %i.ct = add i64 %i.cq, %.07393
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv113
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !24 ; 2 uses
  %i.cy = sub nsw i64 0, %i.cx
  %i.cz = and i64 %i.cy, %i.cg
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !24
  %i.da = add i64 %i.cx, %i.cu
  %i.db = add i64 %i.da, %i.cz                    ; 3 uses
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %niter130.next.1 = add i64 %niter130, 2         ; 2 uses
  %niter130.ncmp.1 = icmp eq i64 %niter130.next.1, %unroll_iter129
  br i1 %niter130.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !149

bb.g:                                             ; preds = %bb.a, %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute13EncoderBinary14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKt(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.b = load i8, ptr %i.a, align 1, !tbaa !41, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZN5arrow7compute13EncoderBinary17EncodeSelectedImpIZNS1_14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKtE3$_0ZNS1_14EncodeSelectedEjS4_S7_jS9_E3$_1EEvjS4_S7_jS9_T_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42   ; 11 uses
  switch i32 %i.e, label %bb.dg [
    i32 0, label %bb.c
    i32 1, label %bb.w
    i32 2, label %bb.ar
    i32 4, label %bb.bo
    i32 8, label %bb.cj
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !88, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !64   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 4 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN5arrow7compute12RowTableImpl12mutable_dataEi.exit.i, label %bb.e, !prof !59

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %i.s = load i8, ptr %i.r, align 1, !tbaa !67, !range !28, !noundef !29
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load i8, ptr %i.u, align 8, !range !28
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.t, i1 %i.w, i1 false, !prof !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %i.x, ptr %i.z, ptr null, !prof !78
  br label %_ZN5arrow7compute12RowTableImpl12mutable_dataEi.exit.i

_ZN5arrow7compute12RowTableImpl12mutable_dataEi.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.aa, %bb.e ], [ null, %bb.d ]
  %i.ab = zext i32 %0 to i64                      ; 2 uses
  %.not92.i = icmp eq i32 %3, 0                   ; 2 uses
  br i1 %.not92.i, label %._crit_edge86.i, label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %_ZN5arrow7compute12RowTableImpl12mutable_dataEi.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ab ; 2 uses
  %i.ad = zext i32 %i.m to i64                    ; 2 uses
  %wide.trip.count104.i = zext i32 %3 to i64      ; 2 uses
  %xtraiter409 = and i64 %wide.trip.count104.i, 1
  %i.ae = icmp eq i32 %3, 1
  br i1 %i.ae, label %.epil.preheader408, label %.lr.ph85.i.new

.lr.ph85.i.new:                                   ; preds = %.lr.ph85.i
  %unroll_iter413 = and i64 %wide.trip.count104.i, 4294967294
  br label %bb.f

._crit_edge86.i.loopexit.unr-lcssa:               ; preds = %bb.f
  %lcmp.mod411.not = icmp eq i64 %xtraiter409, 0
  br i1 %lcmp.mod411.not, label %._crit_edge86.i, label %.epil.preheader408

.epil.preheader408:                               ; preds = %._crit_edge86.i.loopexit.unr-lcssa, %.lr.ph85.i
  %indvars.iv101.i.epil.init = phi i64 [ 0, %.lr.ph85.i ], [ %indvars.iv.next102.i.1, %._crit_edge86.i.loopexit.unr-lcssa ]
  %.084.i.epil.init = phi ptr [ %i.ac, %.lr.ph85.i ], [ %i.bv, %._crit_edge86.i.loopexit.unr-lcssa ]
  %lcmp.mod412 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod412)
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv101.i.epil.init
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !133
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add nsw i32 %i.h, %i.ah                 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !21
  %i.an = trunc i32 %i.ai to i8
  %i.ao = and i8 %i.an, 7
  %i.ap = lshr i8 %i.am, %i.ao
  %i.aq = and i8 %i.ap, 1
  %i.ar = sub nsw i8 0, %i.aq
  store i8 %i.ar, ptr %.084.i.epil.init, align 1, !tbaa !21
  br label %._crit_edge86.i

._crit_edge86.i:                                  ; preds = %.epil.preheader408, %._crit_edge86.i.loopexit.unr-lcssa, %_ZN5arrow7compute12RowTableImpl12mutable_dataEi.exit.i
  %i.as = load ptr, ptr %2, align 8, !tbaa !32    ; 4 uses
  %.not64.i = icmp eq ptr %i.as, null
  br i1 %.not64.i, label %"_ZN5arrow7compute13EncoderBinary17EncodeSelectedImpIZNS1_14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKtE3$_0ZNS1_14EncodeSelectedEjS4_S7_jS9_E3$_1EEvjS4_S7_jS9_T_T0_.exit", label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph85.i.new
  %indvars.iv101.i = phi i64 [ 0, %.lr.ph85.i.new ], [ %indvars.iv.next102.i.1, %bb.f ] ; 3 uses
  %.084.i = phi ptr [ %i.ac, %.lr.ph85.i.new ], [ %i.bv, %bb.f ] ; 2 uses
  %niter414 = phi i64 [ 0, %.lr.ph85.i.new ], [ %niter414.next.1, %bb.f ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv101.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !133
  %i.av = zext i16 %i.au to i32
  %i.aw = add nsw i32 %i.h, %i.av                 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !21
  %i.bb = trunc i32 %i.aw to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = lshr i8 %i.ba, %i.bc
  %i.be = and i8 %i.bd, 1
  %i.bf = sub nsw i8 0, %i.be
  store i8 %i.bf, ptr %.084.i, align 1, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %.084.i, i64 %i.ad ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv101.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !133
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add nsw i32 %i.h, %i.bk                 ; 2 uses
end_hunk_0
