Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_frame?download=true
inline.NumInlined: 3528
inline.NumDeleted: 1999
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3jxl12FrameDecoder9InitFrameEPNS_9BitReaderEPNS_11ImageBundleEb:bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 0, ptr %i.eh, align 8, !tbaa !508
  br label %bb.q

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 0, ptr %i.ei, align 8, !tbaa !508
  br label %bb.p

.lr.ph.split.us:                                  ; preds = %bb.p
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.eq
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !247
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.eq ; 2 uses
  store i64 %i.el, ptr %i.em, align 8, !tbaa !293
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 %i.eq, ptr %i.en, align 8, !tbaa !508
  %i.eo = add i64 %i.ep, %i.el                    ; 2 uses
  %.not44.us = icmp ult i64 %i.eo, %i.ep
  br i1 %.not44.us, label %.loopexit.loopexit, label %bb.p, !llvm.loop !497

bb.p:                                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %i.ep = phi i64 [ %i.ed, %.lr.ph.split.us.preheader ], [ %i.eo, %.lr.ph.split.us ] ; 4 uses
  %.04168.us103 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.eq, %.lr.ph.split.us ]
  %i.eq = add nuw i64 %.04168.us103, 1            ; 5 uses
  %exitcond71.not = icmp eq i64 %i.eq, %.0.i
  br i1 %exitcond71.not, label %.critedge.sink.split, label %.lr.ph.split.us, !llvm.loop !497

.lr.ph.split:                                     ; preds = %bb.q
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fc
  %i.es = load i32, ptr %i.er, align 4, !tbaa !247
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.fc
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !293
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.fc
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !247
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.fc, ptr %i.ez, align 8, !tbaa !508
  %i.fa = add i64 %i.fb, %i.et                    ; 2 uses
  %.not44 = icmp ult i64 %i.fa, %i.fb
  br i1 %.not44, label %.loopexit.loopexit88, label %bb.q, !llvm.loop !497

bb.q:                                             ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %i.fb = phi i64 [ %i.ed, %.lr.ph.split.preheader ], [ %i.fa, %.lr.ph.split ] ; 4 uses
  %.04168102 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.fc, %.lr.ph.split ]
  %i.fc = add nuw i64 %.04168102, 1               ; 6 uses
  %exitcond.not = icmp eq i64 %i.fc, %.0.i
  br i1 %exitcond.not, label %.critedge.sink.split, label %.lr.ph.split, !llvm.loop !497

.critedge.sink.split:                             ; preds = %bb.q, %bb.p
  %.lcssa92.sink = phi i64 [ %i.ep, %bb.p ], [ %i.fb, %bb.q ] ; 2 uses
  store i64 %.lcssa92.sink, ptr %i.dy, align 8, !tbaa !507
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZNSt3__16vectorIN3jxl12FrameDecoder8TocEntryENS_9allocatorIS3_EEE6resizeEm.exit
  %i.fd = phi i64 [ 0, %_ZNSt3__16vectorIN3jxl12FrameDecoder8TocEntryENS_9allocatorIS3_EEE6resizeEm.exit ], [ %.lcssa92.sink, %.critedge.sink.split ]
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !238
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !240
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !241
  %i.fn = add i64 %i.fk, %i.fm
  %i.fo = shl i64 %i.fn, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !246
  %i.fr = sub i64 %i.fo, %i.fq                    ; 2 uses
  %i.fs = and i64 %i.fr, 7
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %.critedge
  %i.fu = load ptr, ptr %i.dk, align 8, !tbaa !253
  %i.fv = load ptr, ptr %i.dl, align 8, !tbaa !254
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fx = lshr exact i64 %i.fr, 3
  %i.fy = xor i64 %i.fx, -1
  %i.fz = icmp ugt i64 %i.fd, %i.fy
  br i1 %i.fz, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gb = call noundef zeroext i1 @_ZNK3jxl22YCbCrChromaSubsampling5Is444Ev(ptr noundef nonnull align 8 dereferenceable(22) %i.ga) #22
  br i1 %i.gb, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !320
  %i.ge = and i64 %i.gd, 128
  %.not46 = icmp eq i64 %i.ge, 0
  br i1 %.not46, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !321
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph.split.us
  store i64 %i.ep, ptr %i.dy, align 8, !tbaa !507
  br label %.loopexit

.loopexit.loopexit88:                             ; preds = %.lr.ph.split
  store i64 %i.fb, ptr %i.dy, align 8, !tbaa !507
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit88, %.loopexit.loopexit, %bb.v, %bb.s, %bb.r, %.critedge, %_ZN3jxlL13NumTocEntriesEmmm.exit, %bb.w
  %.sroa.057.2 = phi i32 [ %i.de, %_ZN3jxlL13NumTocEntriesEmmm.exit ], [ 1, %.critedge ], [ 1, %bb.r ], [ 0, %bb.w ], [ 1, %bb.s ], [ 1, %bb.v ], [ 1, %.loopexit.loopexit ], [ 1, %.loopexit.loopexit88 ]
  %i.gi = load ptr, ptr %8, align 8, !tbaa !248   ; 4 uses
  %.not.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.gj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !249
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !310
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gi to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.go) #25
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit: ; preds = %.loopexit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.gp = load ptr, ptr %7, align 8, !tbaa !248   ; 4 uses
  %.not.i.i49 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i49, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit50, label %bb.y

bb.y:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !249
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !310
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gp to i64
  %i.gv = sub i64 %i.gt, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gv) #25
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit50

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit50: ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.g, %_ZN3jxl15DequantMatricesD2Ev.exit, %bb.a, %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit50
  %.sroa.057.3 = phi i32 [ 1, %bb.a ], [ %.sroa.057.2, %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit50 ], [ 1, %_ZN3jxl15DequantMatricesD2Ev.exit ], [ %i.at, %bb.g ]
  ret i32 %.sroa.057.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl12FrameDecoder15InitFrameOutputEv(ptr noundef nonnull align 8 dereferenceable(1528) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::__1::array.292", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !98
  %i.d = tail call i32 @_ZN3jxl27InitializePassesSharedStateERKNS_11FrameHeaderEPNS_17PassesSharedStateEb(ptr noundef nonnull align 8 dereferenceable(576) %i.b, ptr noundef %i.c, i1 noundef zeroext false) #21 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !98
  %i.g = tail call i32 @_ZN3jxl18PassesDecoderState4InitERKNS_11FrameHeaderE(ptr noundef nonnull align 8 dereferenceable(4552) %i.f, ptr noundef nonnull align 8 dereferenceable(576) %i.b) #22 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 904
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.j, ptr noundef nonnull align 8 dereferenceable(144) %i.i, i64 144, i1 false), !tbaa.struct !312
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !297
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !322  ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.p = load i32, ptr %i.o, align 4, !tbaa !321
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 144 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !327
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !328
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = sdiv exact i64 %i.x, 48                  ; 2 uses
  %i.z = and i64 %i.y, -3
  %or.cond.not = icmp eq i64 %i.z, 1
  br i1 %or.cond.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !311
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 41
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !510, !range !298, !noundef !299
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.af = icmp ne i64 %i.x, 48                    ; 2 uses
  %.sroa.9.0.i = select i1 %i.af, i32 2, i32 0
  %.sroa.03.0.insert.insert.i = zext i1 %i.af to i64
  store i64 %.sroa.03.0.insert.insert.i, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sroa.9.0.i, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ah = load <2 x i64>, ptr %i.i, align 8, !tbaa !255
  %i.ai = trunc <2 x i64> %i.ah to <2 x i32>
  store <2 x i32> %i.ai, ptr %i.ag, align 8, !tbaa !247
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 109
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt3__16vectorIsNS_9allocatorIsEEE6resizeEm.exit
  %.046 = phi i64 [ 0, %bb.g ], [ %i.cr, %_ZNSt3__16vectorIsNS_9allocatorIsEEE6resizeEm.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.046
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !247
  %i.al = sext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !328
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %i.al ; 6 uses
  %i.ao = load i64, ptr %2, align 8, !tbaa !511
  %i.ap = load i8, ptr %3, align 4, !tbaa !342
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.046 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !247
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kHShiftE, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !307
  %i.aw = zext i8 %i.av to i64
  %i.ax = sub nsw i64 %i.aq, %i.aw
  %i.ay = lshr i64 %i.ao, %i.ax                   ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !512
  %i.bb = load i64, ptr %5, align 8, !tbaa !513
  %i.bc = load i8, ptr %6, align 1, !tbaa !348
  %i.bd = zext i8 %i.bc to i64
  %i.be = load i32, ptr %i.ar, align 4, !tbaa !247
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kVShiftE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !307
  %i.bi = zext i8 %i.bh to i64
  %i.bj = sub nsw i64 %i.bd, %i.bi
  %i.bk = lshr i64 %i.bb, %i.bj                   ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !514
  %i.bn = load i32, ptr %i.ar, align 4, !tbaa !247
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kHShiftE, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !307
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !515
  %i.bu = load i32, ptr %i.ar, align 4, !tbaa !247
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN3jxl22YCbCrChromaSubsampling7kVShiftE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !307
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = shl nuw i32 1, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !516
  %i.cb = and i64 %i.bk, 4294967295
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.cd = shl i64 %i.ay, 6
  %i.ce = and i64 %i.cd, 274877906880
  %i.cf = mul i64 %i.ce, %i.cb                    ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !349
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !350 ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 1                 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %i.cf
  br i1 %i.cn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.co = sub nuw i64 %i.cf, %i.cm
  tail call void @_ZNSt3__16vectorIsNS_9allocatorIsEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 noundef %i.co) #22
  br label %_ZNSt3__16vectorIsNS_9allocatorIsEEE6resizeEm.exit

bb.j:                                             ; preds = %bb.h
  %i.cp = icmp ugt i64 %i.cm, %i.cf
  br i1 %i.cp, label %bb.k, label %_ZNSt3__16vectorIsNS_9allocatorIsEEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.cf
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !349
  br label %_ZNSt3__16vectorIsNS_9allocatorIsEEE6resizeEm.exit

_ZNSt3__16vectorIsNS_9allocatorIsEEE6resizeEm.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.cr = add nuw i64 %.046, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !509

._crit_edge:                                      ; preds = %_ZNSt3__16vectorIsNS_9allocatorIsEEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.c
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1448
  store i8 0, ptr %i.cs, align 8, !tbaa !351
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1449
  store i8 0, ptr %i.ct, align 1, !tbaa !352
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store i8 0, ptr %i.cu, align 8, !tbaa !234
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1450
  store i8 0, ptr %i.cv, align 2, !tbaa !232
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store i64 0, ptr %i.cw, align 8, !tbaa !233
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !353
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !354
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.db = load i64, ptr %i.da, align 8, !tbaa !319 ; 2 uses
  %.not43 = icmp eq i64 %i.db, 0
  br i1 %.not43, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 noundef %i.db) #22
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %bb.l, %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !353
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !354
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !314 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !307
  %.not44 = icmp eq i64 %i.dg, 0
  br i1 %.not44, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEmRKh.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef %i.dg, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #22
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEmRKh.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEmRKh.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !353
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !354
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !254 ; 2 uses
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !253 ; 2 uses
  %.not45 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not45, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit31, label %bb.o

bb.o:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEmRKh.exit
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = sub i64 %i.dp, %i.do
  %i.dr = ashr exact i64 %i.dq, 4
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 noundef %i.dr) #22
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit31

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit31: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEmRKh.exit, %bb.o
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1465
  store i8 0, ptr %i.ds, align 1, !tbaa !235
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit31
  %.sroa.034.1 = phi i32 [ %i.g, %bb.b ], [ 0, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit31 ], [ 1, %bb.d ], [ %i.d, %bb.a ], [ 1, %bb.e ], [ 1, %bb.f ]
  ret i32 %.sroa.034.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl12FrameDecoder15ProcessSectionsEPKNS0_11SectionInfoEmPNS0_13SectionStatusE(ptr noundef nonnull align 8 dereferenceable(1528) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.jxl::ThreadPool", align 8   ; 6 uses
  %5 = alloca %"class.jxl::ThreadPool::RunCallState", align 8 ; 6 uses
  %6 = alloca %"class.jxl::ThreadPool", align 8   ; 5 uses
  %7 = alloca %class.anon.482, align 1            ; 4 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %8 = alloca %"class.std::__1::vector.175", align 8 ; 12 uses
  %9 = alloca %"class.std::__1::vector.349", align 8 ; 18 uses
  %10 = alloca %"class.std::__1::vector.175", align 8 ; 8 uses
  %11 = alloca %"class.std::__1::vector.175", align 8 ; 14 uses
  %12 = alloca %class.anon, align 8               ; 10 uses
  %13 = alloca %class.anon.356, align 8           ; 5 uses
  %14 = alloca %class.anon.357, align 8           ; 10 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !262
  store i64 %2, ptr %i.b, align 8, !tbaa !255
  store ptr %3, ptr %i.c, align 8, !tbaa !291
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.cb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i64 %2, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.preheader, label %_ZNSt3__14fillB8nn180100IPN3jxl12FrameDecoder13SectionStatusES3_EEvT_S5_RKT0_.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %2, 9223372036854775800        ; 3 uses
  %i.f = shl i64 %n.vec, 2
  %i.g = getelementptr i8, ptr %3, i64 %i.f
  %i.h = and i64 %2, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %3, i64 %i.i  ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !tbaa !290
  store <4 x i32> splat (i32 1), ptr %i.j, align 4, !tbaa !290
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !517

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZNSt3__14fillB8nn180100IPN3jxl12FrameDecoder13SectionStatusES3_EEvT_S5_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %middle.block, %.lr.ph.i.i.i.i.preheader
  %.07.i.i.i.i.ph = phi ptr [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.g, %middle.block ] ; 7 uses
  %.056.i.i.i.i.ph = phi i64 [ %2, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %middle.block ] ; 6 uses
  store i32 1, ptr %.07.i.i.i.i.ph, align 4, !tbaa !290
  %i.l = icmp samesign ugt i64 %.056.i.i.i.i.ph, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.1, label %_ZNSt3__14fillB8nn180100IPN3jxl12FrameDecoder13SectionStatusES3_EEvT_S5_RKT0_.exit

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.ph, i64 4
  store i32 1, ptr %i.m, align 4, !tbaa !290
  %.not298 = icmp eq i64 %.056.i.i.i.i.ph, 2
  br i1 %.not298, label %_ZNSt3__14fillB8nn180100IPN3jxl12FrameDecoder13SectionStatusES3_EEvT_S5_RKT0_.exit, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.n = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.ph, i64 8
  store i32 1, ptr %i.n, align 4, !tbaa !290
  %i.o = icmp samesign ugt i64 %.056.i.i.i.i.ph, 3
  br i1 %i.o, label %.lr.ph.i.i.i.i.3, label %_ZNSt3__14fillB8nn180100IPN3jxl12FrameDecoder13SectionStatusES3_EEvT_S5_RKT0_.exit

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.ph, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !290
  %.not299 = icmp eq i64 %.056.i.i.i.i.ph, 4
  br i1 %.not299, label %_ZNSt3__14fillB8nn180100IPN3jxl12FrameDecoder13SectionStatusES3_EEvT_S5_RKT0_.exit, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.ph, i64 16
  store i32 1, ptr %i.q, align 4, !tbaa !290
  %i.r = icmp samesign ugt i64 %.056.i.i.i.i.ph, 5
  br i1 %i.r, label %.lr.ph.i.i.i.i.5, label %_ZNSt3__14fillB8nn180100IPN3jxl12FrameDecoder13SectionStatusES3_EEvT_S5_RKT0_.exit

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph.i.i.i.i.4
  %i.s = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.ph, i64 20
  store i32 1, ptr %i.s, align 4, !tbaa !290
  %i.t = icmp eq i64 %.056.i.i.i.i.ph, 7
  br i1 %i.t, label %.lr.ph.i.i.i.i.6, label %_ZNSt3__14fillB8nn180100IPN3jxl12FrameDecoder13SectionStatusES3_EEvT_S5_RKT0_.exit

.lr.ph.i.i.i.i.6:                                 ; preds = %.lr.ph.i.i.i.i.5
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.ph, i64 24
  store i32 1, ptr %i.u, align 4, !tbaa !290
  br label %_ZNSt3__14fillB8nn180100IPN3jxl12FrameDecoder13SectionStatusES3_EEvT_S5_RKT0_.exit

_ZNSt3__14fillB8nn180100IPN3jxl12FrameDecoder13SectionStatusES3_EEvT_S5_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %.lr.ph.i.i.i.i.6, %middle.block, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !319  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %i.w, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorImNS_9allocatorImEEEC2EmRKm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__14fillB8nn180100IPN3jxl12FrameDecoder13SectionStatusES3_EEvT_S5_RKT0_.exit
  %i.z = icmp ugt i64 %i.w, 2305843009213693951
  br i1 %i.z, label %bb.d, label %.lr.ph.preheader.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZNKSt3__16vectorImNS_9allocatorImEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #24
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.aa = shl nuw i64 %i.w, 3                     ; 3 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #23 ; 5 uses
  store ptr %i.ab, ptr %8, align 8, !tbaa !357
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.w
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !358
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa ; 2 uses
  %i.ae = add i64 %i.aa, -8                       ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol
end_hunk_0
