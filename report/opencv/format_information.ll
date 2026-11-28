Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/format_information?download=true
inline.NumInlined: 47
inline.NumDeleted: 23
begin_hunk_0_@_ZN5zxing6qrcode17FormatInformation23decodeFormatInformationEii:bb.a
_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit6: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5zxing6qrcode17FormatInformation25doDecodeFormatInformationEii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.zxing::Ref") align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.zxing::ErrorHandler", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN5zxing12ErrorHandlerC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.a = xor i32 %2, %1                           ; 8 uses
  %i.b = and i32 %i.a, 15
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23
  %i.f = lshr i32 %i.a, 4
  %i.g = and i32 %i.f, 15
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !23
  %i.k = add nsw i32 %i.j, %i.e
  %i.l = lshr i32 %i.a, 8
  %i.m = and i32 %i.l, 15
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23
  %i.q = add nsw i32 %i.k, %i.p
  %i.r = lshr i32 %i.a, 12
  %i.s = and i32 %i.r, 15
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !23
  %i.w = add nsw i32 %i.q, %i.v
  %i.x = lshr i32 %i.a, 16
  %i.y = and i32 %i.x, 15
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !23
  %i.ac = add nsw i32 %i.w, %i.ab
  %i.ad = lshr i32 %i.a, 20
  %i.ae = and i32 %i.ad, 15
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !23
  %i.ai = add nsw i32 %i.ac, %i.ah
  %i.aj = lshr i32 %i.a, 24
  %i.ak = and i32 %i.aj, 15
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !23
  %i.ao = add nsw i32 %i.ai, %i.an
  %i.ap = lshr i32 %i.a, 28
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !23
  %i.at = add nsw i32 %i.ao, %i.as
  %i.au = call i32 @llvm.smin.i32(i32 %i.at, i32 16)
  %i.av = sitofp i32 %i.au to double
  %i.aw = fsub nnan double 1.600000e+01, %i.av
  %i.ax = fmul nnan double %i.aw, 6.250000e-02
  %i.ay = fptrunc double %i.ax to float           ; 2 uses
  %i.az = load i32, ptr @_ZN5zxing6qrcode17FormatInformation28N_FORMAT_INFO_DECODE_LOOKUPSE, align 4, !tbaa !23 ; 2 uses
  %.not5896 = icmp sgt i32 %i.az, 0
  br i1 %.not5896, label %.lr.ph, label %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit65.thread

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %1, %2
  %wide.trip.count112 = zext nneg i32 %i.az to i64 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %.04398.us = phi i32 [ %.144.us, %bb.d ], [ 0, %.lr.ph ]
  %.04697.us = phi i32 [ %.147.us, %bb.d ], [ 2147483647, %.lr.ph ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @_ZN5zxing6qrcode17FormatInformation25FORMAT_INFO_DECODE_LOOKUPE, i64 %indvars.iv109 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, %2
  br i1 %i.bc, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.bd = xor i32 %i.bb, %2                       ; 8 uses
  %i.be = and i32 %i.bd, 15
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !23
  %i.bi = lshr i32 %i.bd, 4
  %i.bj = and i32 %i.bi, 15
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !23
  %i.bn = add nsw i32 %i.bm, %i.bh
  %i.bo = lshr i32 %i.bd, 8
  %i.bp = and i32 %i.bo, 15
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !23
  %i.bt = add nsw i32 %i.bn, %i.bs
  %i.bu = lshr i32 %i.bd, 12
  %i.bv = and i32 %i.bu, 15
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !23
  %i.bz = add nsw i32 %i.bt, %i.by
  %i.ca = lshr i32 %i.bd, 16
  %i.cb = and i32 %i.ca, 15
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !23
  %i.cf = add nsw i32 %i.bz, %i.ce
  %i.cg = lshr i32 %i.bd, 20
  %i.ch = and i32 %i.cg, 15
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !23
  %i.cl = add nsw i32 %i.cf, %i.ck
  %i.cm = lshr i32 %i.bd, 24
  %i.cn = and i32 %i.cm, 15
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !23
  %i.cr = add nsw i32 %i.cl, %i.cq
  %i.cs = lshr i32 %i.bd, 28
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !23
  %i.cw = add nsw i32 %i.cr, %i.cv                ; 2 uses
  %i.cx = icmp slt i32 %i.cw, %.04697.us
  br i1 %i.cx, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.147.us = phi i32 [ %i.cw, %bb.c ], [ %.04697.us, %bb.b ] ; 2 uses
  %.144.us = phi i32 [ %i.cz, %bb.c ], [ %.04398.us, %bb.b ] ; 2 uses
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit65, label %.lr.ph.split.us, !llvm.loop !27

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.lr.ph ] ; 3 uses
  %.04398 = phi i32 [ %.3.ph, %bb.n ], [ 0, %.lr.ph ]
  %.04697 = phi i32 [ %.349.ph, %bb.n ], [ 2147483647, %.lr.ph ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr @_ZN5zxing6qrcode17FormatInformation25FORMAT_INFO_DECODE_LOOKUPE, i64 %indvars.iv ; 3 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !23 ; 4 uses
  %i.dc = icmp eq i32 %i.db, %1
  %i.dd = icmp eq i32 %i.db, %2
  %or.cond = or i1 %i.dc, %i.dd
  br i1 %or.cond, label %.split.us, label %bb.j

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.de = phi i64 [ %indvars.iv109, %.lr.ph.split.us ], [ %indvars.iv, %.lr.ph.split ]
  %i.df = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11
          to label %bb.e unwind label %bb.r       ; 9 uses

bb.e:                                             ; preds = %.split.us
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @_ZN5zxing6qrcode17FormatInformation25FORMAT_INFO_DECODE_LOOKUPE, i64 %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !23 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 6 uses
  store i32 0, ptr %i.dj, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing6qrcode17FormatInformationE, i64 16), ptr %i.df, align 8, !tbaa !12
  %i.dk = lshr i32 %i.di, 3
  %i.dl = and i32 %i.dk, 3
  %i.dm = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5zxing6qrcode20ErrorCorrectionLevel7forBitsEiRNS_12ErrorHandlerE(i32 noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dp = trunc i32 %i.di to i8
  %i.dq = and i8 %i.dp, 7
  store i8 %i.dq, ptr %i.do, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  store float %i.ay, ptr %i.dr, align 4, !tbaa !19
  %i.ds = load ptr, ptr %3, align 8, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = invoke noundef i32 %i.du(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.f unwind label %bb.g, !inline_history !29 ; 0 uses

bb.f:                                             ; preds = %.noexc
  %i.dw = load i32, ptr %i.dj, align 8, !tbaa !10 ; 4 uses
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dj, align 8, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !35
  %.not56 = icmp eq i32 %i.dz, 0
  br i1 %.not56, label %_ZN5zxing3RefINS_6qrcode17FormatInformationEEC2ERKS3_.exit, label %bb.h

bb.g:                                             ; preds = %.noexc, %bb.e
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

_ZN5zxing3RefINS_6qrcode17FormatInformationEEC2ERKS3_.exit: ; preds = %bb.f
  %i.eb = add i32 %i.dw, 2
  store i32 %i.eb, ptr %i.dj, align 8, !tbaa !10
  %i.ec = add i32 %i.dw, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZN5zxing3RefINS_6qrcode17FormatInformationEEC2ERKS3_.exit
  %i.ed = phi i32 [ %i.ec, %_ZN5zxing3RefINS_6qrcode17FormatInformationEEC2ERKS3_.exit ], [ %i.dw, %bb.f ] ; 2 uses
  %storemerge93 = phi ptr [ %i.df, %_ZN5zxing3RefINS_6qrcode17FormatInformationEEC2ERKS3_.exit ], [ null, %bb.f ]
  store ptr %storemerge93, ptr %0, align 8, !tbaa !26
  store i32 %i.ed, ptr %i.dj, align 8, !tbaa !10
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.i, label %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit75

bb.i:                                             ; preds = %bb.h
  store i32 -559026175, ptr %i.dj, align 8, !tbaa !10
  %i.ef = load ptr, ptr %i.df, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(12) %i.df) #10, !inline_history !0
  br label %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit75

bb.j:                                             ; preds = %.lr.ph.split
  %i.ei = xor i32 %i.db, %1                       ; 8 uses
  %i.ej = and i32 %i.ei, 15
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !23
  %i.en = lshr i32 %i.ei, 4
  %i.eo = and i32 %i.en, 15
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !23
  %i.es = add nsw i32 %i.er, %i.em
  %i.et = lshr i32 %i.ei, 8
  %i.eu = and i32 %i.et, 15
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !23
  %i.ey = add nsw i32 %i.es, %i.ex
  %i.ez = lshr i32 %i.ei, 12
  %i.fa = and i32 %i.ez, 15
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !23
  %i.fe = add nsw i32 %i.ey, %i.fd
  %i.ff = lshr i32 %i.ei, 16
  %i.fg = and i32 %i.ff, 15
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !23
  %i.fk = add nsw i32 %i.fe, %i.fj
  %i.fl = lshr i32 %i.ei, 20
  %i.fm = and i32 %i.fl, 15
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !23
  %i.fq = add nsw i32 %i.fk, %i.fp
  %i.fr = lshr i32 %i.ei, 24
  %i.fs = and i32 %i.fr, 15
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !23
  %i.fw = add nsw i32 %i.fq, %i.fv
  %i.fx = lshr i32 %i.ei, 28
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !23
  %i.gb = add nsw i32 %i.fw, %i.ga                ; 2 uses
  %i.gc = icmp slt i32 %i.gb, %.04697
  br i1 %i.gc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gd = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.147 = phi i32 [ %i.gb, %bb.k ], [ %.04697, %bb.j ] ; 2 uses
  %.144 = phi i32 [ %i.ge, %bb.k ], [ %.04398, %bb.j ]
  %i.gf = xor i32 %i.db, %2                       ; 8 uses
  %i.gg = and i32 %i.gf, 15
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !23
  %i.gk = lshr i32 %i.gf, 4
  %i.gl = and i32 %i.gk, 15
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !23
  %i.gp = add nsw i32 %i.go, %i.gj
  %i.gq = lshr i32 %i.gf, 8
  %i.gr = and i32 %i.gq, 15
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !23
  %i.gv = add nsw i32 %i.gp, %i.gu
  %i.gw = lshr i32 %i.gf, 12
  %i.gx = and i32 %i.gw, 15
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !23
  %i.hb = add nsw i32 %i.gv, %i.ha
  %i.hc = lshr i32 %i.gf, 16
  %i.hd = and i32 %i.hc, 15
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !23
  %i.hh = add nsw i32 %i.hb, %i.hg
  %i.hi = lshr i32 %i.gf, 20
  %i.hj = and i32 %i.hi, 15
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !23
  %i.hn = add nsw i32 %i.hh, %i.hm
  %i.ho = lshr i32 %i.gf, 24
  %i.hp = and i32 %i.ho, 15
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !23
  %i.ht = add nsw i32 %i.hn, %i.hs
  %i.hu = lshr i32 %i.gf, 28
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr @_ZN5zxing6qrcode17FormatInformation21BITS_SET_IN_HALF_BYTEE, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !23
  %i.hy = add nsw i32 %i.ht, %i.hx                ; 2 uses
  %i.hz = icmp slt i32 %i.hy, %.147
  br i1 %i.hz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ia = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.349.ph = phi i32 [ %.147, %bb.l ], [ %i.hy, %bb.m ] ; 2 uses
  %.3.ph = phi i32 [ %.144, %bb.l ], [ %i.ib, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count112
  br i1 %exitcond.not, label %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit65, label %.lr.ph.split, !llvm.loop !27

_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit65: ; preds = %bb.n, %bb.d
  %.046.lcssa = phi i32 [ %.147.us, %bb.d ], [ %.349.ph, %bb.n ]
  %.043.lcssa = phi i32 [ %.144.us, %bb.d ], [ %.3.ph, %bb.n ] ; 2 uses
  %i.ic = icmp slt i32 %.046.lcssa, 4
  br i1 %i.ic, label %bb.o, label %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit65.thread

bb.o:                                             ; preds = %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit65
  %i.id = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11
          to label %bb.p unwind label %bb.r       ; 9 uses

bb.p:                                             ; preds = %bb.o
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 6 uses
  store i32 0, ptr %i.ie, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing6qrcode17FormatInformationE, i64 16), ptr %i.id, align 8, !tbaa !12
  %i.if = lshr i32 %.043.lcssa, 3
  %i.ig = and i32 %i.if, 3
  %i.ih = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5zxing6qrcode20ErrorCorrectionLevel7forBitsEiRNS_12ErrorHandlerE(i32 noundef %i.ig, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc66 unwind label %bb.s

.noexc66:                                         ; preds = %bb.p
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !15
  %i.ij = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.ik = trunc i32 %.043.lcssa to i8
  %i.il = and i8 %i.ik, 7
  store i8 %i.il, ptr %i.ij, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 28
  store float %i.ay, ptr %i.im, align 4, !tbaa !19
  %i.in = load ptr, ptr %3, align 8, !tbaa !12
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = invoke noundef i32 %i.ip(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.q unwind label %bb.s, !inline_history !29 ; 0 uses

bb.q:                                             ; preds = %.noexc66
  %i.ir = load i32, ptr %i.ie, align 8, !tbaa !10 ; 4 uses
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.ie, align 8, !tbaa !10
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !35
  %.not59 = icmp eq i32 %i.iu, 0
  br i1 %.not59, label %_ZN5zxing3RefINS_6qrcode17FormatInformationEEC2ERKS3_.exit73, label %bb.t

bb.r:                                             ; preds = %.split.us, %bb.o
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %.noexc66, %bb.p
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

_ZN5zxing3RefINS_6qrcode17FormatInformationEEC2ERKS3_.exit73: ; preds = %bb.q
  %i.ix = add i32 %i.ir, 2
  store i32 %i.ix, ptr %i.ie, align 8, !tbaa !10
  %i.iy = add i32 %i.ir, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %_ZN5zxing3RefINS_6qrcode17FormatInformationEEC2ERKS3_.exit73
  %i.iz = phi i32 [ %i.iy, %_ZN5zxing3RefINS_6qrcode17FormatInformationEEC2ERKS3_.exit73 ], [ %i.ir, %bb.q ] ; 2 uses
  %storemerge = phi ptr [ %i.id, %_ZN5zxing3RefINS_6qrcode17FormatInformationEEC2ERKS3_.exit73 ], [ null, %bb.q ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !26
  store i32 %i.iz, ptr %i.ie, align 8, !tbaa !10
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.u, label %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit75

bb.u:                                             ; preds = %bb.t
  store i32 -559026175, ptr %i.ie, align 8, !tbaa !10
  %i.jb = load ptr, ptr %i.id, align 8, !tbaa !12
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(12) %i.id) #10, !inline_history !0
  br label %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit75

_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit65.thread: ; preds = %bb.a, %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit65
  store ptr null, ptr %0, align 8, !tbaa !26
  br label %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit75

_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit75: ; preds = %bb.i, %bb.h, %bb.u, %bb.t, %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit65.thread
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %3, align 8, !tbaa !12
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !36 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZN5zxing12ErrorHandlerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit75
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !37
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #12
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit

_ZN5zxing12ErrorHandlerD2Ev.exit:                 ; preds = %_ZN5zxing3RefINS_6qrcode17FormatInformationEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void

.sink.split:                                      ; preds = %bb.g, %bb.s
  %.sink = phi ptr [ %i.id, %bb.s ], [ %i.df, %bb.g ]
  %.pn60.pn.ph = phi { ptr, i32 } [ %i.iw, %bb.s ], [ %i.ea, %bb.g ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 32) #12
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.r
  %.pn60.pn = phi { ptr, i32 } [ %i.iv, %bb.r ], [ %.pn60.pn.ph, %.sink.split ]
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %3, align 8, !tbaa !12
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !36 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZN5zxing12ErrorHandlerD2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %bb.v
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !37
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #12
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit78

_ZN5zxing12ErrorHandlerD2Ev.exit78:               ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %.pn60.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN5zxing12ErrorHandlerC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN5zxing6qrcodeeqERKNS0_17FormatInformationES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.e = icmp eq ptr %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i8, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i8, ptr %i.h, align 8
  %i.j = icmp eq i8 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  ret i1 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing7CountedD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing6qrcode17FormatInformationD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSN5zxing7CountedE", !6, i64 8}
!10 = !{!9, !6, i64 8}
!11 = !{!"vtable pointer", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTSN5zxing6qrcode20ErrorCorrectionLevelE", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"_ZTSN5zxing6qrcode17FormatInformationE", !9, i64 0, !14, i64 16, !5, i64 24, !16, i64 28}
!18 = !{!17, !5, i64 24}
!19 = !{!17, !16, i64 28}
!20 = !{!17, !14, i64 16}
!21 = !{}
!22 = !{i64 8}
!23 = !{!6, !6, i64 0}
!24 = !{!"p1 _ZTSN5zxing6qrcode17FormatInformationE", !13, i64 0}
!25 = !{!"_ZTSN5zxing3RefINS_6qrcode17FormatInformationEEE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{ptr @_ZN5zxing6qrcode17FormatInformationC2EifRNS_12ErrorHandlerE}
!30 = !{!"p1 omnipotent char", !13, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!32 = !{!"long", !5, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !32, i64 8, !5, i64 16}
!34 = !{!"_ZTSN5zxing12ErrorHandlerE", !6, i64 8, !6, i64 12, !33, i64 16}
!35 = !{!34, !6, i64 12}
!36 = !{!33, !30, i64 0}
!37 = !{!5, !5, i64 0}
end_hunk_0
