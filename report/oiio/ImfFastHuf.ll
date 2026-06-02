inline.NumInlined: 69
inline.NumDeleted: 43
begin_hunk_0
@_ZTIN7Iex_3_38InputExcE = external constant ptr
@.str.1 = private unnamed_addr constant [56 x i8] c"Error decoding Huffman table (Run beyond end of table).\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Huffman decode error (Invalid symbol in header).\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Huffman decode error (Overrun).\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"Error choosing Huffman decoder implementation (insufficient number of bits).\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Huffman decode error (Decoded an invalid symbol).\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Huffman decode error (RLE code with no previous symbol).\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"Huffman decode error (Symbol run beyond expected output buffer length).\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Huffman decode error (Invalid RLE length)\00", align 1
@.str.9 = private unnamed_addr constant [85 x i8] c"Huffman decode error (Compressed data remains after filling expected output buffer).\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoderC1ERPKciiii = hidden unnamed_addr alias void (ptr, ptr, i32, i32, i32, i32), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoderC2ERPKciiii
@_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoderD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoderD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoderC2ERPKciiii(ptr noundef nonnull align 8 captures(none) dereferenceable(21456) initializes((0, 10), (16, 24)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [59 x i64], align 16              ; 6 uses
  %i.b = alloca [59 x i64], align 16              ; 12 uses
  %i.c = alloca [59 x i64], align 16              ; 16 uses
  %i.d = alloca [59 x i64], align 16              ; 6 uses
  store i32 %5, ptr %0, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 0, ptr %i.e, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i8 -1, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 5 uses
  store i8 0, ptr %i.g, align 1, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr null, ptr %i.h, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.c, i8 0, i64 472, i1 false), !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.a, i8 -1, i64 472, i1 false), !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.b, i8 0, i64 472, i1 false), !tbaa !16
  %i.i = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.j = sext i32 %4 to i64
  %.not203 = icmp ugt i32 %3, %4
  br i1 %.not203, label %.preheader166, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = sext i32 %3 to i64
  %i.l = sext i32 %2 to i64                       ; 2 uses
  %i.m = add nsw i32 %4, 1
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  br label %bb.b

.preheader166.loopexit:                           ; preds = %bb.ak
  %.promoted.pre = load i32, ptr %i.e, align 4, !tbaa !12
  %i.o = load <24 x i64>, ptr %i.c, align 16, !tbaa !16
  %i.p = tail call i64 @llvm.vector.reduce.add.v24i64(<24 x i64> %i.o)
  %i.q = trunc i64 %i.p to i32
  %op.rdx = add i32 %.promoted.pre, %i.q
  br label %.preheader166

.preheader166:                                    ; preds = %.preheader166.loopexit, %bb.a
  %.0159.lcssa = phi ptr [ %i.i, %bb.a ], [ %.1160, %.preheader166.loopexit ]
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.13.1, %.preheader166.loopexit ] ; 4 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.9.1, %.preheader166.loopexit ] ; 2 uses
  %.sroa.0148.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0148.1, %.preheader166.loopexit ] ; 8 uses
  %i.r = phi i32 [ 0, %bb.a ], [ %op.rdx, %.preheader166.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.t = load <32 x i64>, ptr %i.s, align 16, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.v = load i64, ptr %i.u, align 16, !tbaa !16
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16
  %i.z = trunc i64 %i.y to i32
  %i.aa = tail call i64 @llvm.vector.reduce.add.v32i64(<32 x i64> %i.t)
  %i.ab = trunc i64 %i.aa to i32
  %op.rdx400 = add i32 %i.ab, %i.w
  %op.rdx401 = add i32 %i.r, %i.z
  %op.rdx402 = add i32 %op.rdx400, %op.rdx401
  store i32 %op.rdx402, ptr %i.e, align 4, !tbaa !12
  store ptr %.0159.lcssa, ptr %1, align 8, !tbaa !17
  %i.ac = load i8, ptr %i.g, align 1, !tbaa !14   ; 5 uses
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 8
  %i.ag = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #16
          to label %bb.al unwind label %bb.am     ; 12 uses

bb.b:                                             ; preds = %.lr.ph, %bb.ak
  %.pre334 = phi i8 [ -1, %.lr.ph ], [ %.pre335, %bb.ak ] ; 5 uses
  %i.ah = phi i8 [ -1, %.lr.ph ], [ %i.dr, %bb.ak ] ; 4 uses
  %.078210 = phi i64 [ %i.k, %.lr.ph ], [ %i.ds, %bb.ak ] ; 7 uses
  %.sroa.0148.0209 = phi ptr [ null, %.lr.ph ], [ %.sroa.0148.1, %bb.ak ] ; 18 uses
  %.sroa.9.0208 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.1, %bb.ak ] ; 9 uses
  %.sroa.13.0207 = phi ptr [ null, %.lr.ph ], [ %.sroa.13.1, %bb.ak ] ; 13 uses
  %.0155206 = phi i32 [ 0, %.lr.ph ], [ %.1156, %bb.ak ] ; 3 uses
  %.0157205 = phi i64 [ 0, %.lr.ph ], [ %.1158, %bb.ak ] ; 2 uses
  %.0159204 = phi ptr [ %i.i, %.lr.ph ], [ %.1160, %bb.ak ] ; 3 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !17
  %i.aj = ptrtoint ptr %.0159204 to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %.not111 = icmp slt i64 %i.al, %i.l
  br i1 %.not111, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #17
          to label %bb.bd unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.am) #15
  br label %bb.ba

bb.f:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.g:                                             ; preds = %bb.b
  %i.ap = icmp slt i32 %.0155206, 6
  br i1 %i.ap, label %.lr.ph.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.aq = phi i32 [ %i.ay, %.lr.ph.i ], [ %.0155206, %bb.g ] ; 2 uses
  %i.ar = phi i64 [ %i.ax, %.lr.ph.i ], [ %.0157205, %bb.g ]
  %i.as = phi ptr [ %i.au, %.lr.ph.i ], [ %.0159204, %bb.g ] ; 2 uses
  %i.at = shl i64 %i.ar, 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.as, align 1, !tbaa !19
  %i.aw = zext i8 %i.av to i64
  %i.ax = or disjoint i64 %i.at, %i.aw            ; 2 uses
  %i.ay = add nsw i32 %i.aq, 8                    ; 2 uses
  %i.az = icmp slt i32 %i.aq, -2
  br i1 %i.az, label %.lr.ph.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit, !llvm.loop !20

_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit: ; preds = %.lr.ph.i, %bb.g
  %.2161 = phi ptr [ %.0159204, %bb.g ], [ %i.au, %.lr.ph.i ] ; 6 uses
  %.2 = phi i64 [ %.0157205, %bb.g ], [ %i.ax, %.lr.ph.i ] ; 6 uses
  %.lcssa.i = phi i32 [ %.0155206, %bb.g ], [ %i.ay, %.lr.ph.i ] ; 2 uses
  %i.ba = add nsw i32 %.lcssa.i, -6               ; 6 uses
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = lshr i64 %.2, %i.bb
  %i.bd = and i64 %i.bc, 63                       ; 10 uses
  %i.be = icmp eq i64 %i.bd, 63
  br i1 %i.be, label %bb.h, label %bb.s

bb.h:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit
  %i.bf = ptrtoint ptr %.2161 to i64
  %i.bg = sub i64 %i.bf, %i.ak
  %.not116 = icmp slt i64 %i.bg, %i.l
  br i1 %.not116, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, ptr noundef nonnull @.str)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #17
          to label %bb.bd unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.l:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bh) #15
  br label %bb.ba

bb.m:                                             ; preds = %bb.h
  %i.bk = icmp samesign ult i32 %.lcssa.i, 14
  br i1 %i.bk, label %.lr.ph.i131, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit132

.lr.ph.i131:                                      ; preds = %bb.m, %.lr.ph.i131
  %i.bl = phi i32 [ %i.bt, %.lr.ph.i131 ], [ %i.ba, %bb.m ] ; 2 uses
  %i.bm = phi i64 [ %i.bs, %.lr.ph.i131 ], [ %.2, %bb.m ]
  %i.bn = phi ptr [ %i.bp, %.lr.ph.i131 ], [ %.2161, %bb.m ] ; 2 uses
  %i.bo = shl i64 %i.bm, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !19
  %i.br = zext i8 %i.bq to i64
  %i.bs = or disjoint i64 %i.bo, %i.br            ; 2 uses
  %i.bt = add nsw i32 %i.bl, 8                    ; 2 uses
  %i.bu = icmp slt i32 %i.bl, 0
  br i1 %i.bu, label %.lr.ph.i131, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit132, !llvm.loop !20

_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit132: ; preds = %.lr.ph.i131, %bb.m
  %.3162 = phi ptr [ %.2161, %bb.m ], [ %i.bp, %.lr.ph.i131 ]
  %.3 = phi i64 [ %.2, %bb.m ], [ %i.bs, %.lr.ph.i131 ] ; 2 uses
  %.lcssa.i128 = phi i32 [ %i.ba, %bb.m ], [ %i.bt, %.lr.ph.i131 ]
  %i.bv = add nsw i32 %.lcssa.i128, -8            ; 2 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = lshr i64 %.3, %i.bw
  %6 = shl i64 %i.bx, 32
  %i.by = and i64 %6, 1095216660480               ; 2 uses
  %sext117 = add nuw nsw i64 %i.by, 25769803776
  %7 = lshr exact i64 %sext117, 32
  %i.bz = add i64 %7, %.078210
  %i.ca = icmp ugt i64 %i.bz, %i.n
  br i1 %i.ca, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit132
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.cb, ptr noundef nonnull @.str.1)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #17
          to label %bb.bd unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.q:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cb) #15
  br label %bb.ba

bb.r:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit132
  %sext118 = add nuw nsw i64 %i.by, 21474836480
  %8 = lshr exact i64 %sext118, 32
  %i.ce = add i64 %8, %.078210
  br label %bb.ak

bb.s:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit
  %i.cf = icmp samesign ugt i64 %i.bd, 58
  br i1 %i.cf, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.cg = shl nuw nsw i64 %i.bd, 32               ; 2 uses
  %sext = add nsw i64 %i.cg, -244813135872
  %i.ch = lshr exact i64 %sext, 32
  %i.ci = add i64 %i.ch, %.078210
  %i.cj = icmp ugt i64 %i.ci, %i.n
  br i1 %i.cj, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ck, ptr noundef nonnull @.str.1)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.ck, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #17
          to label %bb.bd unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ck) #15
  br label %bb.ba

bb.x:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.y:                                             ; preds = %bb.t
  %sext113 = add nsw i64 %i.cg, -249108103168
  %i.cn = lshr exact i64 %sext113, 32
  %i.co = add i64 %i.cn, %.078210
  br label %bb.ak

bb.z:                                             ; preds = %bb.s
  %.not112 = icmp eq i64 %i.bd, 0
  br i1 %.not112, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = shl i64 %.078210, 6
  %i.cq = or disjoint i64 %i.bd, %i.cp            ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.9.0208, %.sroa.13.0207
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.cq, ptr %.sroa.9.0208, align 8, !tbaa !16
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cr = ptrtoint ptr %.sroa.9.0208 to i64
  %i.cs = ptrtoint ptr %.sroa.0148.0209 to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 6 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.ad, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.ad
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.cv = ashr exact i64 %i.ct, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #16
          to label %.noexc133 unwind label %.loopexit ; 4 uses

.noexc133:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.ct ; 2 uses
  store i64 %i.cq, ptr %i.dc, align 8, !tbaa !16
  %i.dd = icmp sgt i64 %i.ct, 0
  br i1 %i.dd, label %bb.ae, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ae:                                            ; preds = %.noexc133
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.db, ptr align 8 %.sroa.0148.0209, i64 %i.ct, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ae, %.noexc133
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0148.0209, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0148.0209, i64 noundef %i.ct) #18
  %.pre.pre = load i8, ptr %i.f, align 8, !tbaa !13
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %.pre = phi i8 [ %.pre.pre, %bb.af ], [ %.pre334, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.ab
  %.pre337 = phi i8 [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.pre334, %bb.ab ]
  %i.df = phi i8 [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ah, %bb.ab ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %i.de, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0207, %bb.ab ]
  %.pn = phi ptr [ %i.dc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.9.0208, %bb.ab ]
  %.sroa.0148.2 = phi ptr [ %i.db, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0148.0209, %bb.ab ]
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.dg = zext i8 %i.df to i64
  %i.dh = icmp samesign ult i64 %i.bd, %i.dg
  br i1 %i.dh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.di = trunc nuw nsw i64 %i.bd to i8           ; 3 uses
  store i8 %i.di, ptr %i.f, align 8, !tbaa !13
  br label %bb.ah

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ah:                                            ; preds = %bb.ag, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.pre336 = phi i8 [ %i.di, %bb.ag ], [ %.pre337, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %i.dj = phi i8 [ %i.di, %bb.ag ], [ %i.df, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %i.dk = load i8, ptr %i.g, align 1, !tbaa !14
  %i.dl = zext i8 %i.dk to i64
  %i.dm = icmp samesign ugt i64 %i.bd, %i.dl
  br i1 %i.dm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dn = trunc nuw nsw i64 %i.bd to i8
  store i8 %i.dn, ptr %i.g, align 1, !tbaa !14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bd ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !16
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.y, %bb.aj, %bb.z, %bb.r
  %.pre335 = phi i8 [ %.pre334, %bb.r ], [ %.pre334, %bb.y ], [ %.pre334, %bb.z ], [ %.pre336, %bb.aj ]
  %i.dr = phi i8 [ %i.ah, %bb.r ], [ %i.ah, %bb.y ], [ %i.ah, %bb.z ], [ %i.dj, %bb.aj ]
  %.1160 = phi ptr [ %.3162, %bb.r ], [ %.2161, %bb.y ], [ %.2161, %bb.z ], [ %.2161, %bb.aj ] ; 2 uses
  %.1158 = phi i64 [ %.3, %bb.r ], [ %.2, %bb.y ], [ %.2, %bb.z ], [ %.2, %bb.aj ]
  %.1156 = phi i32 [ %i.bv, %bb.r ], [ %i.ba, %bb.y ], [ %i.ba, %bb.z ], [ %i.ba, %bb.aj ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0207, %bb.r ], [ %.sroa.13.0207, %bb.y ], [ %.sroa.13.0207, %bb.z ], [ %.sroa.13.2, %bb.aj ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0208, %bb.r ], [ %.sroa.9.0208, %bb.y ], [ %.sroa.9.0208, %bb.z ], [ %.sroa.9.2, %bb.aj ] ; 2 uses
  %.sroa.0148.1 = phi ptr [ %.sroa.0148.0209, %bb.r ], [ %.sroa.0148.0209, %bb.y ], [ %.sroa.0148.0209, %bb.z ], [ %.sroa.0148.2, %bb.aj ] ; 2 uses
  %.1 = phi i64 [ %i.ce, %bb.r ], [ %i.co, %bb.y ], [ %.078210, %bb.z ], [ %.078210, %bb.aj ]
  %i.ds = add i64 %.1, 1                          ; 2 uses
  %.not = icmp ugt i64 %i.ds, %i.j
  br i1 %.not, label %.preheader166.loopexit, label %bb.b, !llvm.loop !22

bb.al:                                            ; preds = %.preheader166
  %i.dt = load i8, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.du = zext i8 %i.ac to i32                    ; 2 uses
  %.not103216 = icmp ugt i8 %i.dt, %i.ac
  br i1 %.not103216, label %._crit_edge228, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %bb.al
  %i.dv = zext i8 %i.dt to i64                    ; 7 uses
  %i.dw = zext i8 %i.ac to i64                    ; 5 uses
  %i.dx = add nuw nsw i32 %i.du, 1
  %wide.trip.count = zext nneg i32 %i.dx to i64
  %i.dy = add nuw nsw i64 %i.dw, 1
  %i.dz = sub nsw i64 %i.dy, %i.dv                ; 3 uses
  %min.iters.check = icmp ult i64 %i.dz, 2
  br i1 %min.iters.check, label %.lr.ph218.preheader403, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph218.preheader
  %n.vec = and i64 %i.dz, -2                      ; 3 uses
  %i.ea = add nsw i64 %n.vec, %i.dv
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dw, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert398 = insertelement <2 x i64> poison, i64 %i.dv, i64 0
  %broadcast.splat399 = shufflevector <2 x i64> %broadcast.splatinsert398, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i64> %broadcast.splat399, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.eb = add i64 %index, %i.dv                   ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.eb
  %wide.load = load <2 x i64>, ptr %i.ec, align 8, !tbaa !16
  %i.ed = uitofp <2 x i64> %wide.load to <2 x double>
  %i.ee = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.ef = shl <2 x i64> splat (i64 2), %i.ee
end_hunk_0
