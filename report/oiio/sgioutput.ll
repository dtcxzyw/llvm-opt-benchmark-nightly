Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/sgioutput?download=true
inline.NumInlined: 2850
inline.NumDeleted: 779
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN11OpenImageIO4v3_19SgiOutput18write_scanline_rleEiPKhRlRSt6vectorIiSaIiEES8_:bb.a
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !52
  %i.ed = icmp eq i8 %i.ea, %i.ec
  br i1 %i.ed, label %.backedge.us217, label %.critedge5.us

.backedge.us217:                                  ; preds = %.split155.us
  %.3122.us218 = add i64 %.3122178.us215, %i.n    ; 3 uses
  %i.ee = icmp ult i64 %.3122.us218, %i.o
  br i1 %i.ee, label %.lr.ph179.split.us214, label %.critedge5.us, !llvm.loop !288

_ZN11OpenImageIO4v3_1L11data_equalsEPKhimm.exit150.us.us: ; preds = %.lr.ph179.us, %.backedge.us.us
  %.3122178.us.us = phi i64 [ %.3122.us.us, %.backedge.us.us ], [ %.3122177.us, %.lr.ph179.us ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.an, i64 %.3122178.us.us
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !52
  %i.eh = icmp eq i8 %i.dx, %i.eg
  br i1 %i.eh, label %.backedge.us.us, label %.critedge5.us

.backedge.us.us:                                  ; preds = %_ZN11OpenImageIO4v3_1L11data_equalsEPKhimm.exit150.us.us
  %.3122.us.us = add i64 %.3122178.us.us, %i.n    ; 3 uses
  %i.ei = icmp ult i64 %.3122.us.us, %i.o
  br i1 %i.ei, label %_ZN11OpenImageIO4v3_1L11data_equalsEPKhimm.exit150.us.us, label %.critedge5.us, !llvm.loop !288

.critedge5.us:                                    ; preds = %.backedge.us217, %.lr.ph179.split.us214, %.split155.us, %.backedge.us.us, %_ZN11OpenImageIO4v3_1L11data_equalsEPKhimm.exit150.us.us, %.preheader.us
  %.3122.lcssa.us = phi i64 [ %.3122177.us, %.preheader.us ], [ %.3122178.us.us, %_ZN11OpenImageIO4v3_1L11data_equalsEPKhimm.exit150.us.us ], [ %.3122.us.us, %.backedge.us.us ], [ %.3122178.us215, %.lr.ph179.split.us214 ], [ %.3122.us218, %.backedge.us217 ], [ %.3122178.us215, %.split155.us ] ; 3 uses
  %i.ej = sub i64 %.3122.lcssa.us, %spec.select.us
  %i.ek = udiv i64 %i.ej, %i.n
  %i.el = trunc i64 %i.ek to i32                  ; 3 uses
  %.not135185.us = icmp eq i32 %i.el, 0
  br i1 %.not135185.us, label %.loopexit159.us, label %.lr.ph188.us

.lr.ph188.us:                                     ; preds = %.critedge5.us
  br i1 %i.ak, label %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us.us, label %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us224

_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us224: ; preds = %.lr.ph188.us, %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us224
  %.1114187.us225 = phi i32 [ %i.en, %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us224 ], [ %i.el, %.lr.ph188.us ] ; 2 uses
  %.3126186.us226 = phi i64 [ %i.fa, %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us224 ], [ %.1124.lcssa.us, %.lr.ph188.us ] ; 2 uses
  %i.em = tail call i32 @llvm.smin.i32(i32 %.1114187.us225, i32 127) ; 3 uses
  %i.en = sub nsw i32 %.1114187.us225, %i.em      ; 2 uses
  %i.eo = load ptr, ptr %i.p, align 8, !tbaa !96
  %i.ep = lshr i32 %i.em, 8
  %i.eq = trunc i32 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.3126186.us226 ; 2 uses
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !52
  %i.es = trunc i32 %i.em to i8
  %i.et = getelementptr i8, ptr %i.er, i64 1
  store i8 %i.es, ptr %i.et, align 1, !tbaa !52
  %i.eu = add i64 %.3126186.us226, %.fr           ; 2 uses
  %i.ev = load ptr, ptr %i.p, align 8, !tbaa !96
  %i.ew = load i8, ptr %i.dv, align 1, !tbaa !52
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eu ; 2 uses
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !52
  %i.ey = load i8, ptr %i.du, align 1, !tbaa !52
  %i.ez = getelementptr i8, ptr %i.ex, i64 1
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !52
  %i.fa = add i64 %i.eu, %.fr                     ; 2 uses
  %.not135.us227 = icmp eq i32 %i.en, 0
  br i1 %.not135.us227, label %.loopexit159.us, label %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us224, !llvm.loop !289

_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us.us: ; preds = %.lr.ph188.us, %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us.us
  %.1114187.us.us = phi i32 [ %i.fc, %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us.us ], [ %i.el, %.lr.ph188.us ] ; 2 uses
  %.3126186.us.us = phi i64 [ %i.fk, %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us.us ], [ %.1124.lcssa.us, %.lr.ph188.us ] ; 2 uses
  %i.fb = tail call i32 @llvm.smin.i32(i32 %.1114187.us.us, i32 127) ; 2 uses
  %i.fc = sub nsw i32 %.1114187.us.us, %i.fb      ; 2 uses
  %i.fd = load ptr, ptr %i.p, align 8, !tbaa !96
  %i.fe = trunc i32 %i.fb to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.3126186.us.us
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !52
  %i.fg = add i64 %.3126186.us.us, %.fr           ; 2 uses
  %i.fh = load ptr, ptr %i.p, align 8, !tbaa !96
  %i.fi = load i8, ptr %i.du, align 1, !tbaa !52
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !52
  %i.fk = add i64 %i.fg, %.fr                     ; 2 uses
  %.not135.us.us = icmp eq i32 %i.fc, 0
  br i1 %.not135.us.us, label %.loopexit159.us, label %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us.us, !llvm.loop !289

.loopexit159.us:                                  ; preds = %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us224, %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us.us, %.critedge5.us
  %.3126.lcssa.us = phi i64 [ %.1124.lcssa.us, %.critedge5.us ], [ %i.fk, %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us.us ], [ %i.fa, %_ZN11OpenImageIO4v3_1L8data_setEPhimPKh.exit152.us224 ] ; 2 uses
  %i.fl = icmp ult i64 %.3122.lcssa.us, %i.o
  br i1 %i.fl, label %bb.e, label %.thread.us

.thread.us:                                       ; preds = %.loopexit159.us, %._crit_edge.us
  %.5.us = phi i64 [ %.1124.lcssa.us, %._crit_edge.us ], [ %.3126.lcssa.us, %.loopexit159.us ] ; 2 uses
  %i.fm = load ptr, ptr %i.p, align 8, !tbaa !96
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.5.us ; 2 uses
  store i8 0, ptr %i.fn, align 1, !tbaa !52
  br i1 %i.ak, label %_ZN11OpenImageIO4v3_1L8data_setEPhims.exit153.us, label %bb.g

bb.g:                                             ; preds = %.thread.us
  %i.fo = getelementptr i8, ptr %i.fn, i64 1
  store i8 0, ptr %i.fo, align 1, !tbaa !52
  br label %_ZN11OpenImageIO4v3_1L8data_setEPhims.exit153.us

_ZN11OpenImageIO4v3_1L8data_setEPhims.exit153.us: ; preds = %.thread.us, %bb.g
  %i.fp = add i64 %.5.us, %.fr                    ; 3 uses
  %i.fq = load i32, ptr %i.al, align 8, !tbaa !101
  %i.fr = trunc i64 %.0131199.us to i32
  %i.fs = mul i32 %i.fq, %i.fr
  %i.ft = add i32 %i.fs, %1
  %i.fu = load i64, ptr %3, align 8, !tbaa !109
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = sext i32 %i.ft to i64                   ; 2 uses
  %i.fx = load ptr, ptr %4, align 8, !tbaa !112
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fw
  store i32 %i.fv, ptr %i.fy, align 4, !tbaa !42
  %i.fz = trunc i64 %i.fp to i32
  %i.ga = load ptr, ptr %5, align 8, !tbaa !112
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.fw
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !42
  %i.gc = load ptr, ptr %i.p, align 8, !tbaa !96
  %i.gd = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.gc, i64 noundef 1, i64 noundef %i.fp) ; 3 uses
  br i1 %i.gd, label %bb.h, label %.critedge139

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_1L8data_setEPhims.exit153.us
  %i.ge = load i64, ptr %3, align 8, !tbaa !109
  %i.gf = add i64 %i.ge, %i.fp
  store i64 %i.gf, ptr %3, align 8, !tbaa !109
  %i.gg = add nuw nsw i64 %.0131199.us, 1         ; 2 uses
  %i.gh = load i32, ptr %i.k, align 4, !tbaa !102
  %i.gi = sext i32 %i.gh to i64
  %.not136.us.not = icmp slt i64 %i.gg, %i.gi
  br i1 %.not136.us.not, label %.lr.ph194.us, label %.critedge139, !llvm.loop !290

.lr.ph201.split:                                  ; preds = %.lr.ph201
  %i.gj = trunc i64 %.fr to i32                   ; 2 uses
  br i1 %i.ak, label %.thread.us232, label %.thread

.thread.us232:                                    ; preds = %.lr.ph201.split, %bb.i
  %.0131199.us234 = phi i64 [ %i.ha, %bb.i ], [ 0, %.lr.ph201.split ] ; 2 uses
  %i.gk = load ptr, ptr %i.p, align 8, !tbaa !96
  store i8 0, ptr %i.gk, align 1, !tbaa !52
  %i.gl = load i32, ptr %i.al, align 8, !tbaa !101
  %i.gm = trunc i64 %.0131199.us234 to i32
  %i.gn = mul i32 %i.gl, %i.gm
  %i.go = add i32 %i.gn, %1
  %i.gp = load i64, ptr %3, align 8, !tbaa !109
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = sext i32 %i.go to i64                   ; 2 uses
  %i.gs = load ptr, ptr %4, align 8, !tbaa !112
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gr
  store i32 %i.gq, ptr %i.gt, align 4, !tbaa !42
  %i.gu = load ptr, ptr %5, align 8, !tbaa !112
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gr
  store i32 %i.gj, ptr %i.gv, align 4, !tbaa !42
  %i.gw = load ptr, ptr %i.p, align 8, !tbaa !96
  %i.gx = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.gw, i64 noundef 1, i64 noundef %.fr) ; 3 uses
  br i1 %i.gx, label %bb.i, label %.critedge139

bb.i:                                             ; preds = %.thread.us232
  %i.gy = load i64, ptr %3, align 8, !tbaa !109
  %i.gz = add i64 %i.gy, %.fr
  store i64 %i.gz, ptr %3, align 8, !tbaa !109
  %i.ha = add nuw nsw i64 %.0131199.us234, 1      ; 2 uses
  %i.hb = load i32, ptr %i.k, align 4, !tbaa !102
  %i.hc = sext i32 %i.hb to i64
  %.not136.us236.not = icmp slt i64 %i.ha, %i.hc
  br i1 %.not136.us236.not, label %.thread.us232, label %.critedge139, !llvm.loop !290

.thread:                                          ; preds = %.lr.ph201.split, %bb.j
  %.0131199 = phi i64 [ %i.hu, %bb.j ], [ 0, %.lr.ph201.split ] ; 2 uses
  %i.hd = load ptr, ptr %i.p, align 8, !tbaa !96  ; 2 uses
  store i8 0, ptr %i.hd, align 1, !tbaa !52
  %i.he = getelementptr i8, ptr %i.hd, i64 1
  store i8 0, ptr %i.he, align 1, !tbaa !52
  %i.hf = load i32, ptr %i.al, align 8, !tbaa !101
  %i.hg = trunc i64 %.0131199 to i32
  %i.hh = mul i32 %i.hf, %i.hg
  %i.hi = add i32 %i.hh, %1
  %i.hj = load i64, ptr %3, align 8, !tbaa !109
  %i.hk = trunc i64 %i.hj to i32
  %i.hl = sext i32 %i.hi to i64                   ; 2 uses
  %i.hm = load ptr, ptr %4, align 8, !tbaa !112
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hl
  store i32 %i.hk, ptr %i.hn, align 4, !tbaa !42
  %i.ho = load ptr, ptr %5, align 8, !tbaa !112
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hl
  store i32 %i.gj, ptr %i.hp, align 4, !tbaa !42
  %i.hq = load ptr, ptr %i.p, align 8, !tbaa !96
  %i.hr = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.hq, i64 noundef 1, i64 noundef %.fr) ; 3 uses
  br i1 %i.hr, label %bb.j, label %.critedge139

bb.j:                                             ; preds = %.thread
  %i.hs = load i64, ptr %3, align 8, !tbaa !109
  %i.ht = add i64 %i.hs, %.fr
  store i64 %i.ht, ptr %3, align 8, !tbaa !109
  %i.hu = add nuw nsw i64 %.0131199, 1            ; 2 uses
  %i.hv = load i32, ptr %i.k, align 4, !tbaa !102
  %i.hw = sext i32 %i.hv to i64
  %.not136.not = icmp slt i64 %i.hu, %i.hw
  br i1 %.not136.not, label %.thread, label %.critedge139, !llvm.loop !290

.critedge139:                                     ; preds = %_ZN11OpenImageIO4v3_1L8data_setEPhims.exit153.us, %bb.h, %.thread, %bb.j, %.thread.us232, %bb.i, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %.not136.lcssa = phi i1 [ true, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %i.hr, %.thread ], [ %i.gx, %.thread.us232 ], [ %i.gx, %bb.i ], [ %i.hr, %bb.j ], [ %i.gd, %bb.h ], [ %i.gd, %_ZN11OpenImageIO4v3_1L8data_setEPhims.exit153.us ]
  ret i1 %.not136.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19SgiOutput21write_buffered_pixelsEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.28", align 8    ; 9 uses
  %2 = alloca %"class.std::vector.28", align 8    ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !96
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %bb.b, label %bb.c, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 302, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_19SgiOutput21write_buffered_pixelsEv, ptr noundef nonnull @.str.14) #31 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.h, i1 noundef zeroext false) #28 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.k = load i8, ptr %i.j, align 4, !tbaa !93, !range !98, !noundef !99
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !101  ; 2 uses
  br i1 %i.l, label %bb.d, label %.preheader92

.preheader92:                                     ; preds = %bb.c
  %.not4394 = icmp sgt i32 %i.n, 0
  br i1 %.not4394, label %.lr.ph, label %.critedge50

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102
  %i.q = mul nsw i32 %i.p, %i.n                   ; 7 uses
  %i.r = sext i32 %i.q to i64                     ; 6 uses
  %i.s = shl nsw i64 %i.r, 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not91 = icmp eq i32 %i.q, 0
  br i1 %.not91, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit54, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = icmp slt i32 %i.q, 0
  br i1 %i.v, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #32
          to label %.noexc72 unwind label %.thread

.noexc72:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #29
          to label %.noexc73 unwind label %.thread ; 6 uses

.noexc73:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.w, align 4, !tbaa !42
  %i.x = add nsw i64 %i.r, -1                     ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i80, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc73
  %i.z = getelementptr i8, ptr %i.w, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.x, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !42
  br label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i80

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i80: ; preds = %.noexc73, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  store ptr %i.w, ptr %1, align 8, !tbaa !112
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.r ; 4 uses
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !297
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !298
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #29
          to label %.noexc89 unwind label %.thread ; 5 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i80
  store i32 0, ptr %i.ad, align 4, !tbaa !42
  %3 = add nsw i64 %i.r, -1                       ; 2 uses
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i84, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i82

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i82: ; preds = %.noexc89
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.idx.i.i.i.i.i31.i83 = shl nuw nsw i64 %3, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %.idx.i.i.i.i.i31.i83, i1 false), !tbaa !42
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i84

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i84: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i82, %.noexc89
  store ptr %i.ad, ptr %2, align 8, !tbaa !112
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.r ; 3 uses
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !297
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !298
  %i.ag = ptrtoint ptr %i.af to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit54

_ZNSt6vectorIiSaIiEE6resizeEm.exit54:             ; preds = %bb.d, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i84
  %i.ah = phi ptr [ %i.w, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i84 ], [ null, %bb.d ] ; 10 uses
  %i.ai = phi ptr [ %i.aa, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i84 ], [ null, %bb.d ] ; 4 uses
  %i.aj = phi i64 [ %i.ag, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i84 ], [ 0, %bb.d ] ; 3 uses
  %i.ak = phi ptr [ %i.ad, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i84 ], [ null, %bb.d ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.al = shl nuw nsw i64 %i.r, 3
  %i.am = add nuw nsw i64 %i.al, 512              ; 2 uses
  store i64 %i.am, ptr %i.a, align 8, !tbaa !109
  %i.an = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.am, i32 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit54
  %i.ao = load i32, ptr %i.m, align 8, !tbaa !101
  %.not4496 = icmp sgt i32 %i.ao, 0
  br i1 %.not4496, label %.lr.ph98, label %.critedge

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.ap = load i32, ptr %i.m, align 8, !tbaa !101
  %i.aq = sext i32 %i.ap to i64
  %.not44 = icmp slt i64 %indvars.iv.next102, %i.aq
  br i1 %.not44, label %.lr.ph98, label %.critedge, !llvm.loop !291

.thread:                                          ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i80
  %i.ar = phi ptr [ %i.aa, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i80 ], [ null, %bb.f ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i ]
  %i.as = phi ptr [ %i.w, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i80 ], [ null, %bb.f ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i ]
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit65

.lr.ph98:                                         ; preds = %.preheader, %bb.g
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %bb.g ], [ 0, %.preheader ] ; 3 uses
  %i.au = mul i64 %i.i, %indvars.iv101
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %i.ax = trunc nuw nsw i64 %indvars.iv101 to i32
  %i.ay = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19SgiOutput18write_scanline_rleEiPKhRlRSt6vectorIiSaIiEES8_(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.ax, ptr noundef nonnull %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph98, %_ZNSt6vectorIiSaIiEE6resizeEm.exit54, %.critedge, %_ZN11OpenImageIO4v3_111swap_endianIiEEvPT_i.exit61, %bb.k
  %lpad.loopexit.split-lp132 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not.i.i.i64 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIiSaIiEED2Ev.exit65, label %bb.l

bb.h:                                             ; preds = %.lr.ph98
  br i1 %i.ay, label %bb.g, label %.critedge48

.critedge:                                        ; preds = %bb.g, %.preheader
  %i.az = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 512, i32 noundef 0)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %.critedge
  %i.ba = icmp sgt i32 %i.q, 0
  br i1 %i.ba, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_111swap_endianIiEEvPT_i.exit61

.lr.ph.preheader.i:                               ; preds = %bb.i
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 6 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bb, align 4, !tbaa !42
  %wide.load118 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !42
  %i.bd = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.be = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load118)
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !42
  store <4 x i32> %i.be, ptr %i.bc, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph.i57.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !42
  %i.bi = tail call noundef i32 @llvm.bswap.i32(i32 %i.bh)
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !42
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i57.preheader, label %.lr.ph.i, !llvm.loop !293

.lr.ph.i57.preheader:                             ; preds = %.lr.ph.i, %middle.block
  %min.iters.check120 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check120, label %.lr.ph.i57.preheader131, label %vector.ph121

vector.ph121:                                     ; preds = %.lr.ph.i57.preheader
  %n.vec122 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next127, %vector.body123 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index124 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load125 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !42
  %wide.load126 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !42
  %i.bl = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load125)
  %i.bm = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load126)
  store <4 x i32> %i.bl, ptr %i.bj, align 4, !tbaa !42
  store <4 x i32> %i.bm, ptr %i.bk, align 4, !tbaa !42
  %index.next127 = add nuw i64 %index124, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.bn, label %middle.block128, label %vector.body123, !llvm.loop !294

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %n.vec122, %wide.trip.count.i
  br i1 %cmp.n129, label %_ZN11OpenImageIO4v3_111swap_endianIiEEvPT_i.exit61, label %.lr.ph.i57.preheader131

.lr.ph.i57.preheader131:                          ; preds = %.lr.ph.i57.preheader, %middle.block128
  %indvars.iv.i58.ph = phi i64 [ 0, %.lr.ph.i57.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.preheader131, %.lr.ph.i57
  %indvars.iv.i58 = phi i64 [ %indvars.iv.next.i59, %.lr.ph.i57 ], [ %indvars.iv.i58.ph, %.lr.ph.i57.preheader131 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i58 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !42
  %i.bq = tail call noundef i32 @llvm.bswap.i32(i32 %i.bp)
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !42
  %indvars.iv.next.i59 = add nuw nsw i64 %indvars.iv.i58, 1 ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %indvars.iv.next.i59, %wide.trip.count.i
  br i1 %exitcond.not.i60, label %_ZN11OpenImageIO4v3_111swap_endianIiEEvPT_i.exit61, label %.lr.ph.i57, !llvm.loop !295

_ZN11OpenImageIO4v3_111swap_endianIiEEvPT_i.exit61: ; preds = %.lr.ph.i57, %middle.block128, %bb.i
  %i.br = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.ah, i64 noundef 1, i64 noundef %i.s)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIiEEvPT_i.exit61
  br i1 %i.br, label %bb.k, label %.critedge48

bb.k:                                             ; preds = %bb.j
  %i.bs = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.ak, i64 noundef 1, i64 noundef %i.s)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIiSaIiEED2Ev.exit63:                  ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bt = ptrtoint ptr %i.ak to i64
  %i.bu = sub i64 %i.aj, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bu) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.bv = ptrtoint ptr %i.ai to i64
  %i.bw = ptrtoint ptr %i.ah to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.bx) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %i.bs, label %.critedge50, label %.loopexit93

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.by = ptrtoint ptr %i.ak to i64
  %i.bz = sub i64 %i.aj, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bz) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit65

_ZNSt6vectorIiSaIiEED2Ev.exit65:                  ; preds = %.thread, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.pn.pn117 = phi { ptr, i32 } [ %i.at, %.thread ], [ %lpad.loopexit.split-lp132, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp132, %bb.l ]
  %i.ca = phi ptr [ %i.as, %.thread ], [ %i.ah, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ah, %bb.l ] ; 3 uses
  %i.cb = phi ptr [ %i.ar, %.thread ], [ %i.ai, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ai, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.not.i.i.i66 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIiSaIiEED2Ev.exit67, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit65
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ce) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit67

_ZNSt6vectorIiSaIiEED2Ev.exit67:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit65, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn.pn117

bb.n:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cf = load i32, ptr %i.m, align 8, !tbaa !101
  %i.cg = sext i32 %i.cf to i64
  %.not43 = icmp slt i64 %indvars.iv.next, %i.cg
  br i1 %.not43, label %.lr.ph, label %.critedge50, !llvm.loop !296

.lr.ph:                                           ; preds = %.preheader92, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.preheader92 ] ; 3 uses
  %i.ch = mul i64 %i.i, %indvars.iv
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  %i.ck = trunc nuw nsw i64 %indvars.iv to i32
  %i.cl = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_19SgiOutput18write_scanline_rawEiPKh(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.ck, ptr noundef nonnull %i.cj)
  br i1 %i.cl, label %bb.n, label %.loopexit93

.critedge50:                                      ; preds = %bb.n, %.preheader92, %_ZNSt6vectorIiSaIiEED2Ev.exit63
  br label %.loopexit93

.critedge48:                                      ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not.i.i.i68 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIiSaIiEED2Ev.exit69, label %bb.o

bb.o:                                             ; preds = %.critedge48
  %i.cm = ptrtoint ptr %i.ak to i64
  %i.cn = sub i64 %i.aj, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.cn) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit69

_ZNSt6vectorIiSaIiEED2Ev.exit69:                  ; preds = %.critedge48, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.not.i.i.i70 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorIiSaIiEED2Ev.exit71, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit69
  %i.co = ptrtoint ptr %i.ai to i64
  %i.cp = ptrtoint ptr %i.ah to i64
  %i.cq = sub i64 %i.co, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.cq) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit71

_ZNSt6vectorIiSaIiEED2Ev.exit71:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit69, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit93

.loopexit93:                                      ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit71, %_ZNSt6vectorIiSaIiEED2Ev.exit63, %.critedge50
  %.7 = phi i1 [ true, %.critedge50 ], [ false, %_ZNSt6vectorIiSaIiEED2Ev.exit63 ], [ false, %_ZNSt6vectorIiSaIiEED2Ev.exit71 ], [ false, %.lr.ph ]
  ret i1 %.7
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19SgiOutput5closeEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ImageOutput14ioproxy_openedEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !94
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !96   ; 2 uses
  %.not6 = icmp eq ptr %i.f, %i.g
  br i1 %.not6, label %bb.d, label %bb.e, !prof !113

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 364, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_19SgiOutput5closeEv, ptr noundef nonnull @.str.14) #31 ; 0 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !96
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %.pre, %bb.d ], [ %i.g, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !299  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !101
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload = load i64, ptr %i.p, align 8
  %i.q = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_scanlinesEiiiNS0_8TypeDescEPKvll(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.l, i32 noundef %i.o, i32 noundef 0, i64 %.sroa.0.0.copyload, ptr noundef nonnull %i.j, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
  br i1 %i.q, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.b, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.s = load i8, ptr %i.r, align 4, !tbaa !93, !range !98, !noundef !99
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.u = load i32, ptr %i.b, align 8, !tbaa !94
  %.not7 = icmp eq i32 %i.u, 0
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %i.v = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_19SgiOutput21write_buffered_pixelsEv(ptr noundef nonnull align 8 dereferenceable(272) %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.1 = phi i1 [ %i.v, %bb.g ], [ true, %bb.f ], [ false, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !96   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.h
  store ptr %i.x, ptr %i.y, align 8, !tbaa !95
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.h, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !116
  %i.ac = icmp eq ptr %i.ab, %i.x
  br i1 %i.ac, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.ad = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIhSaIhEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #28 ; 0 uses
  br label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit:       ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE5clearEv.exit, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %.1, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %.1, %bb.i ]
  tail call void @_ZN11OpenImageIO4v3_111ImageOutput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(272) %0)
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ImageOutput14ioproxy_openedEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_scanlinesEiiiNS0_8TypeDescEPKvll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef, ptr noundef dead_on_return, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !302
  %i.b = load ptr, ptr %2, align 8, !tbaa !56, !noalias !302
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51, !noalias !302
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %3, align 16, !noalias !302
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %.sroa_idx3.i, align 8, !noalias !302
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 13, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !302
  %i.f = load ptr, ptr %5, align 8, !tbaa !56
  store ptr %i.f, ptr %4, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  store i64 %i.i, ptr %i.g, align 8, !tbaa !55
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %5, align 8, !tbaa !56     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !52
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
end_hunk_0
