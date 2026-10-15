Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/image_metadata?download=true
inline.NumInlined: 702
inline.NumDeleted: 307
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3jxl18OpsinInverseMatrix11VisitFieldsEPNS_7VisitorE:bb.a
  %i.ax = tail call i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef f0xC06A2A9F, ptr noundef nonnull %i.at) #13 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %.critedge38

bb.g:                                             ; preds = %.critedge.1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %1, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef f0x402DA088, ptr noundef nonnull %i.az) #13 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.h, label %.critedge38

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bg = load ptr, ptr %1, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef f0x3FF9142D, ptr noundef nonnull %i.bf) #13 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.critedge.2, label %.critedge38

.critedge.2:                                      ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %1, align 8, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call i32 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef f0xBB789536, ptr noundef nonnull %i.bl) #13 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.critedge34, label %.critedge38

.critedge34:                                      ; preds = %.critedge.2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bs = load ptr, ptr %1, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef f0xBB789536, ptr noundef nonnull %i.br) #13 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.critedge34.1, label %.critedge38

.critedge34.1:                                    ; preds = %.critedge34
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load ptr, ptr %1, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef f0xBB789536, ptr noundef nonnull %i.bx) #13 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.critedge34.2, label %.critedge38

.critedge34.2:                                    ; preds = %.critedge34.1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ce = load ptr, ptr %1, align 8, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call i32 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef f0x3F720274, ptr noundef nonnull %i.cd) #13 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.critedge36, label %.critedge38

.critedge36:                                      ; preds = %.critedge34.2
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = load ptr, ptr %1, align 8, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call i32 %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef f0x3F6E10E8, ptr noundef nonnull %i.cj) #13 ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %.critedge36.1, label %.critedge38

.critedge36.1:                                    ; preds = %.critedge36
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cq = load ptr, ptr %1, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef f0x3F733774, ptr noundef nonnull %i.cp) #13 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %.critedge36.2, label %.critedge38

.critedge36.2:                                    ; preds = %.critedge36.1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cw = load ptr, ptr %1, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef 1.450000e-01, ptr noundef nonnull %i.cv) #13
  br label %.critedge38

.critedge38:                                      ; preds = %.critedge36.2, %.preheader45, %bb.c, %bb.d, %.critedge, %bb.e, %bb.f, %.critedge.1, %bb.g, %bb.h, %.critedge.2, %.critedge34, %.critedge34.1, %.critedge34.2, %.critedge36, %.critedge36.1, %bb.b
  %.sroa.039.0 = phi i32 [ 0, %bb.b ], [ %i.ct, %.critedge36.1 ], [ %i.cb, %.critedge34.1 ], [ %i.bj, %bb.h ], [ %i.ch, %.critedge34.2 ], [ %i.cn, %.critedge36 ], [ %i.cz, %.critedge36.2 ], [ %i.bp, %.critedge.2 ], [ %i.bv, %.critedge34 ], [ %i.k, %.preheader45 ], [ %i.t, %bb.c ], [ %i.z, %bb.d ], [ %i.af, %.critedge ], [ %i.al, %bb.e ], [ %i.ar, %bb.f ], [ %i.ax, %.critedge.1 ], [ %i.bd, %bb.g ]
  ret i32 %.sroa.039.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl11ToneMappingC2Ev(ptr noundef nonnull align 8 dereferenceable(28) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl11ToneMappingE, i64 16), ptr %0, align 8, !tbaa !16
  tail call void @_ZN3jxl6Bundle4InitEPNS_6FieldsE(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl11ToneMapping11VisitFieldsEPNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noalias noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a) #13
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0) #13
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef 2.550000e+02, ptr noundef nonnull %i.j) #13 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.p = load float, ptr %i.j, align 4, !tbaa !121
  %i.q = fcmp ugt float %i.p, 0.000000e+00
  br i1 %i.q, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef 0.000000e+00, ptr noundef nonnull %i.r) #13 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.x = load float, ptr %i.r, align 8, !tbaa !122 ; 2 uses
  %i.y = fcmp olt float %i.x, 0.000000e+00
  br i1 %i.y, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load float, ptr %i.j, align 4, !tbaa !121
  %i.aa = fcmp ogt float %i.x, %i.z
  br i1 %i.aa, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false, ptr noundef nonnull %i.ab) #13 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef 0.000000e+00, ptr noundef nonnull %i.ah) #13 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.an = load float, ptr %i.ah, align 8, !tbaa !123 ; 2 uses
  %i.ao = fcmp olt float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i8, ptr %i.ab, align 4, !tbaa !124, !range !20, !noundef !21
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = fcmp ogt float %i.an, 1.000000e+00
  %or.cond = and i1 %i.ar, %i.aq
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.g, %bb.k, %bb.d, %bb.i, %bb.h, %bb.e, %bb.c, %bb.l, %bb.b
  %.sroa.013.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.k ], [ 1, %bb.l ], [ 1, %bb.d ], [ %i.al, %bb.i ], [ %i.af, %bb.h ], [ %i.v, %bb.e ], [ %i.n, %bb.c ], [ 1, %bb.g ], [ 1, %bb.f ]
  ret i32 %.sroa.013.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl17ReadImageMetadataEPNS_9BitReaderEPNS_13ImageMetadataE(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_ZN3jxl6Bundle4ReadEPNS_9BitReaderEPNS_6FieldsE(ptr noundef %0, ptr noundef %1) #13
  ret i32 %i.a
}

declare i32 @_ZN3jxl6Bundle4ReadEPNS_9BitReaderEPNS_6FieldsE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl13ImageMetadata12SetAlphaBitsEjb(ptr noundef nonnull align 8 dereferenceable(417) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.jxl::ExtraChannelInfo", align 8 ; 13 uses
  %i.a = zext i1 %2 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 9 uses
  %.not1516.i = icmp eq ptr %i.c, %i.e            ; 2 uses
  br i1 %.not1516.i, label %_ZN3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.010.017.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 96 ; 2 uses
  %.not15.i = icmp eq ptr %i.h, %i.e
  br i1 %.not15.i, label %_ZN3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %.lr.ph.i

_ZN3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %.sroa.010.017.i, %.lr.ph.i ], [ null, %bb.b ] ; 5 uses
  %i.j = icmp eq i32 %1, 0
  %.not = icmp eq ptr %i.i, null                  ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZN3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit
  br i1 %.not, label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit.thread, label %bb.d

_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit.thread: ; preds = %bb.c
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 96
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %i.o, ptr %i.p, align 8, !tbaa !70
  br label %bb.p

bb.d:                                             ; preds = %bb.c
  br i1 %.not1516.i, label %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEERZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S9_S9_T0_.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.01.05.i.i = phi ptr [ %i.s, %bb.e ], [ %i.c, %bb.d ] ; 3 uses
  %i.q = getelementptr i8, ptr %.sroa.01.05.i.i, i64 12
  %.val.i.i = load i32, ptr %i.q, align 4, !tbaa !36
  %i.r = icmp eq i32 %.val.i.i, 0
  br i1 %i.r, label %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEERZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S9_S9_T0_.exit.i", label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 96 ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, %i.e
  br i1 %.not.i.i, label %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEERZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S9_S9_T0_.exit.i", label %.lr.ph.i.i, !llvm.loop !125

"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEERZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S9_S9_T0_.exit.i": ; preds = %bb.e, %.lr.ph.i.i, %bb.d
  %.sroa.01.0.lcssa.i.i = phi ptr [ %i.c, %bb.d ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ], [ %i.s, %bb.e ] ; 5 uses
  %.not.i22 = icmp eq ptr %.sroa.01.0.lcssa.i.i, %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa.i.i, i64 96 ; 2 uses
  %.not1213.i = icmp eq ptr %i.t, %i.e
  %or.cond.i = select i1 %.not.i22, i1 true, i1 %.not1213.i
  br i1 %or.cond.i, label %"_ZNSt3__19remove_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEEZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S8_S8_T0_.exit", label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEERZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S9_S9_T0_.exit.i", %bb.h
  %i.u = phi ptr [ %i.ar, %bb.h ], [ %i.t, %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEERZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S9_S9_T0_.exit.i" ] ; 2 uses
  %.sroa.0.015.i = phi ptr [ %i.u, %bb.h ], [ %.sroa.01.0.lcssa.i.i, %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEERZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S9_S9_T0_.exit.i" ] ; 7 uses
  %.sroa.09.014.i = phi ptr [ %.sroa.09.1.i, %bb.h ], [ %.sroa.01.0.lcssa.i.i, %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEERZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S9_S9_T0_.exit.i" ] ; 8 uses
  %i.v = getelementptr i8, ptr %.sroa.0.015.i, i64 108
  %.val.i = load i32, ptr %i.v, align 4, !tbaa !36
  %i.w = icmp eq i32 %.val.i, 0
  br i1 %i.w, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i23
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 104
  %i.z = load i64, ptr %i.y, align 8
  store i64 %i.z, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.ab, i64 12, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 136
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 40
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 48 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = trunc i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = load i64, ptr %i.af, align 8
  %i.al = and i64 %i.ak, -2
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.al) #16
  br label %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i

_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i:          ; preds = %bb.g, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 144 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !tbaa.struct !71
  store i8 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 145
  store i8 0, ptr %i.an, align 1, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 96
  br label %bb.h

bb.h:                                             ; preds = %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i, %.lr.ph.i23
  %.sroa.09.1.i = phi ptr [ %.sroa.09.014.i, %.lr.ph.i23 ], [ %i.aq, %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %.not12.i = icmp eq ptr %i.ar, %i.e
  br i1 %.not12.i, label %"_ZNSt3__19remove_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEEZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S8_S8_T0_.exit.loopexit", label %.lr.ph.i23, !llvm.loop !126

"_ZNSt3__19remove_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEEZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S8_S8_T0_.exit.loopexit": ; preds = %bb.h
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !68
  %.pre30 = load ptr, ptr %i.b, align 8, !tbaa !69
  br label %"_ZNSt3__19remove_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEEZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S8_S8_T0_.exit"

"_ZNSt3__19remove_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEEZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S8_S8_T0_.exit": ; preds = %"_ZNSt3__19remove_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEEZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S8_S8_T0_.exit.loopexit", %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEERZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S9_S9_T0_.exit.i"
  %i.as = phi ptr [ %i.c, %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEERZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S9_S9_T0_.exit.i" ], [ %.pre30, %"_ZNSt3__19remove_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEEZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S8_S8_T0_.exit.loopexit" ] ; 2 uses
  %i.at = phi ptr [ %i.e, %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEERZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S9_S9_T0_.exit.i" ], [ %.pre, %"_ZNSt3__19remove_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEEZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S8_S8_T0_.exit.loopexit" ] ; 6 uses
  %.sroa.09.2.i = phi ptr [ %.sroa.01.0.lcssa.i.i, %"_ZNSt3__17find_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEERZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S9_S9_T0_.exit.i" ], [ %.sroa.09.1.i, %"_ZNSt3__19remove_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEEZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S8_S8_T0_.exit.loopexit" ] ; 2 uses
  %i.au = ptrtoint ptr %.sroa.09.2.i to i64       ; 3 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw ; 4 uses
  %.not.i24 = icmp eq ptr %.sroa.09.2.i, %i.at
  br i1 %.not.i24, label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit, label %bb.i

bb.i:                                             ; preds = %"_ZNSt3__19remove_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEEZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S8_S8_T0_.exit"
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = sub i64 %i.ay, %i.au
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 %i.az ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.at
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl16ExtraChannelInfoES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.bv, %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i ], [ %i.ax, %bb.i ] ; 7 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.bu, %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i ], [ %i.ba, %bb.i ] ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.be, ptr noundef nonnull align 8 dereferenceable(12) %i.bf, i64 12, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 40
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 48 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 8
  %i.bl = trunc i8 %i.bk to i1
  br i1 %i.bl, label %bb.j, label %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !35
  %i.bo = load i64, ptr %i.bj, align 8
  %i.bp = and i64 %i.bo, -2
  tail call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bp) #16
  br label %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i

_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !tbaa.struct !71
  store i8 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 49
  store i8 0, ptr %i.br, align 1, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.at
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl16ExtraChannelInfoES3_EET0_T_S5_S4_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZNSt3__14moveB8nn180100IPN3jxl16ExtraChannelInfoES3_EET0_T_S5_S4_.exit.loopexit.i: ; preds = %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !68
  br label %_ZNSt3__14moveB8nn180100IPN3jxl16ExtraChannelInfoES3_EET0_T_S5_S4_.exit.i

_ZNSt3__14moveB8nn180100IPN3jxl16ExtraChannelInfoES3_EET0_T_S5_S4_.exit.i: ; preds = %_ZNSt3__14moveB8nn180100IPN3jxl16ExtraChannelInfoES3_EET0_T_S5_S4_.exit.loopexit.i, %bb.i
  %i.bw = phi ptr [ %i.at, %bb.i ], [ %.pre.i, %_ZNSt3__14moveB8nn180100IPN3jxl16ExtraChannelInfoES3_EET0_T_S5_S4_.exit.loopexit.i ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.bv, %_ZNSt3__14moveB8nn180100IPN3jxl16ExtraChannelInfoES3_EET0_T_S5_S4_.exit.loopexit.i ]
  %i.bx = ptrtoint ptr %storemerge.lcssa.i.i.i.i.i.i to i64
  %i.by = sub i64 %i.bx, %i.au
  %i.bz = getelementptr inbounds i8, ptr %i.ax, i64 %i.by ; 4 uses
  %.not6.i.i.i = icmp eq ptr %i.bz, %i.bw
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14moveB8nn180100IPN3jxl16ExtraChannelInfoES3_EET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i ], [ %i.bw, %_ZNSt3__14moveB8nn180100IPN3jxl16ExtraChannelInfoES3_EET0_T_S5_S4_.exit.i ]
  %i.ca = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -96 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ca) #13, !inline_history !127
  %.not.i.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt3__14moveB8nn180100IPN3jxl16ExtraChannelInfoES3_EET0_T_S5_S4_.exit.i
  store ptr %i.bz, ptr %i.d, align 8, !tbaa !68
  br label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit

bb.k:                                             ; preds = %_ZN3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit
  br i1 %.not, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl16ExtraChannelInfoE, i64 16), ptr %3, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl8BitDepthE, i64 16), ptr %i.cd, align 8, !tbaa !16
  call void @_ZN3jxl6Bundle4InitEPNS_6FieldsE(ptr noundef nonnull align 8 dereferenceable(20) %i.cd) #13
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false)
  call void @_ZN3jxl6Bundle4InitEPNS_6FieldsE(ptr noundef nonnull align 8 dereferenceable(96) %3) #13
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !36
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %1, ptr %i.cg, align 4, !tbaa !128
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %i.ch, align 8, !tbaa !34
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i8 %i.a, ptr %i.ci, align 8, !tbaa !129
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.ck = call ptr @_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE6insertENS_11__wrap_iterIPKS2_EERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cj, ptr noundef nonnull align 8 dereferenceable(96) %3) #15 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl16ExtraChannelInfoE, i64 16), ptr %3, align 8, !tbaa !16
  %i.cl = load i8, ptr %i.ce, align 8
  %i.cm = trunc i8 %i.cl to i1
  br i1 %i.cm, label %bb.m, label %_ZN3jxl16ExtraChannelInfoD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !35
  %i.cp = load i64, ptr %i.ce, align 8
  %i.cq = and i64 %i.cp, -2
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cq) #16, !inline_history !72
  br label %_ZN3jxl16ExtraChannelInfoD2Ev.exit

_ZN3jxl16ExtraChannelInfoD2Ev.exit:               ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.pre31 = load ptr, ptr %i.d, align 8, !tbaa !68
  br label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit

bb.n:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %1, ptr %i.cr, align 4, !tbaa !128
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 0, ptr %i.cs, align 8, !tbaa !130
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 0, ptr %i.ct, align 8, !tbaa !131
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i8 %i.a, ptr %i.cu, align 8, !tbaa !129
  br label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit

_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit: ; preds = %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i, %"_ZNSt3__19remove_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEEZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S8_S8_T0_.exit", %_ZN3jxl16ExtraChannelInfoD2Ev.exit, %bb.n
  %i.cv = phi ptr [ %i.bz, %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit.i ], [ %i.at, %"_ZNSt3__19remove_ifB8nn180100INS_11__wrap_iterIPN3jxl16ExtraChannelInfoEEEZNS2_13ImageMetadata12SetAlphaBitsEjbE3$_0EET_S8_S8_T0_.exit" ], [ %.pre31, %_ZN3jxl16ExtraChannelInfoD2Ev.exit ], [ %i.e, %bb.n ]
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 96
  %i.db = trunc i64 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !70
  %i.dd = icmp ugt i32 %1, 12
  br i1 %i.dd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.de, align 8, !tbaa !132
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit.thread, %bb.o, %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE6insertENS_11__wrap_iterIPKS2_EERS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__1::__split_buffer", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 24 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 2 uses
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %1, %i.g
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl16ExtraChannelInfoE, i64 16), ptr %i.g, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8
  store i64 %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl8BitDepthE, i64 16), ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr noundef nonnull align 8 dereferenceable(12) %i.q, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !34
  store i32 %i.t, ptr %i.r, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !71
  br label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE22__construct_one_at_endB8nn180100IJRKS2_EEEvDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !35
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.z, i64 noundef %i.ab) #15
  br label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE22__construct_one_at_endB8nn180100IJRKS2_EEEvDpOT_.exit

_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE22__construct_one_at_endB8nn180100IJRKS2_EEEvDpOT_.exit: ; preds = %bb.d, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !68
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.ag = ptrtoint ptr %i.g to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.e, i64 %i.ai ; 7 uses
  %i.ak = icmp ult ptr %i.aj, %i.g
  br i1 %i.ak, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl16ExtraChannelInfoE, i64 16), ptr %i.g, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  store i64 %i.ao, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl8BitDepthE, i64 16), ptr %i.ap, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aq, ptr noundef nonnull align 8 dereferenceable(12) %i.ar, i64 12, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.au = load i32, ptr %i.at, align 8, !tbaa !34
  store i32 %i.au, ptr %i.as, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader, %bb.f
  %.sroa.4.0.lcssa.i = phi ptr [ %i.g, %bb.f ], [ %i.al, %.lr.ph.i.preheader ]
  store ptr %.sroa.4.0.lcssa.i, ptr %i.f, align 8, !tbaa !68
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.g, %i.af
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i, %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.az, %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i ], [ %i.aj, %._crit_edge.i ] ; 7 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.ba, %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i ], [ %i.g, %._crit_edge.i ] ; 7 uses
  %i.az = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -96 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -96
  %i.bb = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -88
  %i.bc = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -88
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -72
  %i.bf = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.be, ptr noundef nonnull align 8 dereferenceable(12) %i.bf, i64 12, i1 false)
  %i.bg = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -56
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !34
  %i.bi = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -56
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !34
  %i.bj = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -48 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 8
  %i.bl = trunc i8 %i.bk to i1
  br i1 %i.bl, label %bb.g, label %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bm = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !35
  %i.bo = load i64, ptr %i.bj, align 8
  %i.bp = and i64 %i.bo, -2
  tail call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bp) #16
  br label %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i

_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.bq = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !tbaa.struct !71
  store i8 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -47
  store i8 0, ptr %i.br, align 1, !tbaa !35
  %i.bs = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -24
  %i.bt = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %1, %i.az
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !133

_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit: ; preds = %_ZN3jxl16ExtraChannelInfoaSEOS0_.exit.i.i.i.i.i.i, %._crit_edge.i
  %.not = icmp ugt ptr %1, %2
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.bv = icmp ult ptr %2, %i.bu
  %spec.select.idx = select i1 %i.bv, i64 96, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.idx
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit
  %.017 = phi ptr [ %2, %_ZNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit ], [ %spec.select, %bb.h ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %i.by = load i64, ptr %i.bx, align 8
  store i64 %i.by, ptr %i.bw, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %.017, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bz, ptr noundef nonnull align 8 dereferenceable(12) %i.ca, i64 12, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %.017, i64 40
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %.017, i64 48
  %i.cg = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.cf) #13 ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ci = getelementptr inbounds nuw i8, ptr %.017, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.cj = ptrtoint ptr %i.g to i64
  %i.ck = sub i64 %i.cj, %i.c
  %i.cl = sdiv exact i64 %i.ck, 96
  %i.cm = add nsw i64 %i.cl, 1                    ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, 192153584101141162
  br i1 %i.cn, label %bb.k, label %_ZNKSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNKSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  unreachable

_ZNKSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit: ; preds = %bb.j
  %i.co = ptrtoint ptr %i.i to i64
  %i.cp = sub i64 %i.co, %i.c
  %i.cq = sdiv exact i64 %i.cp, 96                ; 2 uses
  %.not.i = icmp ult i64 %i.cq, 96076792050570581
  %i.cr = shl nuw nsw i64 %i.cq, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.cm)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 192153584101141162 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 32
end_hunk_0
