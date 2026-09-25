Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/PanasonicV6Decompressor?download=true
inline.NumInlined: 336
inline.NumDeleted: 126
begin_hunk_0_@_ZNK8rawspeed23PanasonicV6Decompressor13decompressRowIL_ZNS0_14TwelveBitBlockEEEEvi:bb.a

bb.h:                                             ; preds = %bb.g
  %i.cc = trunc i32 %.139.i to i16
  %i.cd = mul i16 %i.bw, %i.cc                    ; 3 uses
  %i.ce = icmp ult i32 %.137.i, 2048
  br i1 %i.ce, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bz
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !110 ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, %.137.i
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ci = sub nuw i32 %i.cg, %.137.i
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = add i16 %i.cd, %i.cj
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0.i = phi i16 [ %i.ck, %bb.j ], [ %i.cd, %bb.i ], [ %i.cd, %bb.h ]
  %i.cl = zext i16 %.0.i to i32                   ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bz
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !110
  br label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.cn = zext i16 %i.bw to i32                   ; 3 uses
  store i32 %i.cn, ptr %i.ca, align 4, !tbaa !110
  %.not42.i = icmp eq i16 %i.bw, 0
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bz ; 2 uses
  br i1 %.not42.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !110
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !110
  %.pre = and i32 %i.cp, 65535
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.pre-phi = phi i32 [ %.pre, %bb.n ], [ %i.cn, %bb.m ], [ %i.cl, %bb.k ]
  %i.cq = add nsw i32 %.pre-phi, -15              ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 16384
  %i.cs = icmp samesign ult i64 %indvars.iv72, %i.ao
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv72
  %i.cu = trunc nuw nsw i32 %i.cq to i16
  %.sink = select i1 %i.cr, i16 %i.cu, i16 0
  store i16 %.sink, ptr %i.ct, align 2, !tbaa !118
  %i.cv = add nuw nsw i32 %.035.i67, 1            ; 2 uses
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond.not = icmp eq i32 %i.cv, 14
  br i1 %exitcond.not, label %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_14TwelveBitBlockEEEEvRNS_10ByteStreamEii.exit, label %bb.e, !llvm.loop !148

bb.p:                                             ; preds = %bb.d
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  tail call void @__clang_call_terminate(ptr %i.cx) #21
  unreachable

_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_14TwelveBitBlockEEEEvRNS_10ByteStreamEii.exit: ; preds = %bb.o
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.cy = add nuw nsw i32 %.01070, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 14
  %exitcond80.not = icmp eq i32 %i.cy, %i.d
  br i1 %exitcond80.not, label %._crit_edge, label %bb.c, !llvm.loop !149

bb.q:                                             ; preds = %bb.b
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  tail call void @__clang_call_terminate(ptr %i.da) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8rawspeed23PanasonicV6Decompressor13decompressRowIL_ZNS0_16FourteenBitBlockEEEEvi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.rawspeed::(anonymous namespace)::pana_cs6_page_decoder.66", align 16 ; 8 uses
  %3 = alloca %"struct.std::array.57", align 8    ; 4 uses
  %4 = alloca %"struct.std::array.57", align 8    ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !112  ; 3 uses
  %i.d = sdiv i32 %i.c, 11                        ; 3 uses
  %i.e = shl nsw i32 %i.d, 4                      ; 3 uses
  %i.f = mul nsw i32 %i.e, %1                     ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22, !noalias !158 ; 3 uses
  %i.l = zext i32 %i.k to i64
  %.not.i.i = icmp samesign ugt i64 %i.i, %i.l
  br i1 %.not.i.i, label %bb.b, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #11
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit:  ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21, !noalias !158
  %i.o = icmp sgt i32 %i.k, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i32 %i.f, %i.e
  %i.q = icmp samesign ule i32 %i.p, %i.k
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.g
  %i.s = icmp sgt i32 %i.c, -11
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp sgt i32 %i.c, 10
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113, !noalias !159
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.x = load i32, ptr %i.w, align 8, !tbaa !99, !noalias !159
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.z = load i32, ptr %i.y, align 8, !tbaa !114, !noalias !159
  %i.aa = mul nsw i32 %i.z, %i.x                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !115, !noalias !159
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !116, !noalias !159
  %i.af = ashr i32 %i.ae, 1                       ; 3 uses
  %i.ag = icmp ne i32 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp sge i32 %i.af, %i.aa
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = icmp samesign ult i32 %1, %i.ac
  %i.am = mul nuw nsw i32 %i.af, %1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.an
  %i.ap = zext nneg i32 %i.aa to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit
  %indvars.iv69 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next70, %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit ] ; 2 uses
  %.01065 = phi i32 [ 0, %.lr.ph ], [ %i.dv, %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %exitcond74.not = icmp eq i32 %.01065, %i.d
  br i1 %exitcond74.not, label %bb.d, label %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #11
          to label %.noexc11 unwind label %bb.o

.noexc11:                                         ; preds = %bb.d
  unreachable

_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv69 ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %i.aq, align 1 ; 3 uses
  %i.ar = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i, 14
  %i.as = trunc i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i16
  %i.at = lshr i16 %i.as, 4
  %i.au = and i16 %i.at, 1023
  store i16 %i.au, ptr %i.ai, align 2, !tbaa !118
  %i.av = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i, 24
  %i.aw = trunc i32 %i.ar to i16
  %i.ax = and i16 %i.aw, 1023
  store i16 %i.ax, ptr %i.aj, align 8, !tbaa !118
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ba = load <2 x i32>, ptr %i.ay, align 1      ; 2 uses
  %i.bb = extractelement <2 x i32> %i.ba, i64 0   ; 3 uses
  %i.bc = shl i32 %i.bb, 8
  %.masked.i = and i32 %i.bc, 768
  %i.bd = or disjoint i32 %.masked.i, %i.av
  %i.be = lshr i32 %i.bb, 14
  %i.bf = trunc i32 %i.be to i16
  %i.bg = insertelement <4 x i16> poison, i16 %i.bf, i64 0
  %i.bh = trunc i32 %i.bb to i16
  %i.bi = insertelement <4 x i16> %i.bg, i16 %i.bh, i64 1
  %i.bj = trunc nuw nsw i32 %i.bd to i16
  %i.bk = insertelement <4 x i16> %i.bi, i16 %i.bj, i64 3
  %i.bl = shufflevector <4 x i16> %i.bk, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.bm = lshr <4 x i16> %i.bl, <i16 0, i16 4, i16 2, i16 0>
  %i.bn = and <4 x i16> %i.bm, <i16 1023, i16 1023, i16 3, i16 -1>
  store <4 x i16> %i.bn, ptr %i.ak, align 16, !tbaa !118
  %i.bo = load <2 x i32>, ptr %i.az, align 1      ; 3 uses
  %i.bp = lshr <2 x i32> %i.ba, splat (i32 24)
  %i.bq = shl <2 x i32> %i.bo, splat (i32 8)
  %i.br = and <2 x i32> %i.bq, splat (i32 768)
  %i.bs = or disjoint <2 x i32> %i.br, %i.bp      ; 2 uses
  %i.bt = bitcast <2 x i32> %i.bs to <4 x i16>
  %i.bu = shufflevector <4 x i16> %i.bt, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %5 = extractelement <2 x i32> %i.bo, i64 0      ; 2 uses
  %i.bv = trunc i32 %5 to i16
  %6 = lshr i32 %5, 14
  %i.bw = trunc i32 %6 to i16
  %i.bx = shufflevector <2 x i32> %i.bo, <2 x i32> %i.bs, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.by = lshr <4 x i32> %i.bx, <i32 18, i32 4, i32 0, i32 0>
  %i.bz = trunc <4 x i32> %i.by to <4 x i16>
  %i.ca = shufflevector <4 x i16> %i.bz, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cb = insertelement <8 x i16> %i.ca, i16 %i.bw, i64 4
  %i.cc = insertelement <8 x i16> %i.cb, i16 %i.bv, i64 5
  %i.cd = shufflevector <8 x i16> %i.cc, <8 x i16> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 8>
  %i.ce = shufflevector <8 x i16> %i.cd, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 5, i32 7>
  %i.cf = lshr <8 x i16> %i.ce, <i16 0, i16 0, i16 2, i16 0, i16 0, i16 4, i16 2, i16 0>
  %i.cg = and <8 x i16> %i.cf, <i16 -1, i16 16383, i16 3, i16 -1, i16 1023, i16 1023, i16 3, i16 -1>
  store <8 x i16> %i.cg, ptr %2, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i64 0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i64 0, ptr %4, align 8
  tail call void @llvm.assume(i1 %i.al)
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit, %_ZNK8rawspeed10Array2DRefItEclEii.exit.i
  %indvars.iv67 = phi i64 [ %indvars.iv, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit ], [ %indvars.iv.next68, %_ZNK8rawspeed10Array2DRefItEclEii.exit.i ] ; 3 uses
  %.035.i62 = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit ], [ %i.ds, %_ZNK8rawspeed10Array2DRefItEclEii.exit.i ] ; 3 uses
  %.036.i61 = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit ], [ %.137.i, %_ZNK8rawspeed10Array2DRefItEclEii.exit.i ]
  %.038.i60 = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit ], [ %.139.i, %_ZNK8rawspeed10Array2DRefItEclEii.exit.i ]
  %i.ch = phi i8 [ 0, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit ], [ %i.cw, %_ZNK8rawspeed10Array2DRefItEclEii.exit.i ] ; 3 uses
  %.lhs.trunc = trunc nuw nsw i32 %.035.i62 to i8
  %i.ci = urem i8 %.lhs.trunc, 3
  %i.cj = icmp eq i8 %i.ci, 2
  br i1 %i.cj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !118 ; 2 uses
  %i.cn = add nuw i8 %i.ch, 1
  %i.co = icmp eq i16 %i.cm, 3
  %spec.store.select.i = select i1 %i.co, i16 4, i16 %i.cm
  %i.cp = zext i16 %spec.store.select.i to i32    ; 2 uses
  %i.cq = shl i32 512, %i.cp
  %i.cr = shl nuw i32 1, %i.cp
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cs = phi i8 [ %i.cn, %bb.f ], [ %i.ch, %bb.e ] ; 2 uses
  %.139.i = phi i32 [ %i.cr, %bb.f ], [ %.038.i60, %bb.e ] ; 2 uses
  %.137.i = phi i32 [ %i.cq, %bb.f ], [ %.036.i61, %bb.e ] ; 4 uses
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !118 ; 3 uses
  %i.cw = add nuw i8 %i.cs, 1
  %i.cx = and i32 %.035.i62, 1
  %i.cy = zext nneg i32 %i.cx to i64              ; 4 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !110
  %.not.i = icmp eq i32 %i.da, 0
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.db = trunc i32 %.139.i to i16
  %i.dc = mul i16 %i.cv, %i.db                    ; 3 uses
  %i.dd = icmp ult i32 %.137.i, 8192
  br i1 %i.dd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cy
  %i.df = load i32, ptr %i.de, align 4, !tbaa !110 ; 2 uses
  %i.dg = icmp ugt i32 %i.df, %.137.i
  br i1 %i.dg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dh = sub nuw i32 %i.df, %.137.i
  %i.di = trunc i32 %i.dh to i16
  %i.dj = add i16 %i.dc, %i.di
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0.i = phi i16 [ %i.dj, %bb.j ], [ %i.dc, %bb.i ], [ %i.dc, %bb.h ]
  %i.dk = zext i16 %.0.i to i32                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cy
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !110
  br label %_ZNK8rawspeed10Array2DRefItEclEii.exit.i

bb.l:                                             ; preds = %bb.g
  %i.dm = zext i16 %i.cv to i32                   ; 3 uses
  store i32 %i.dm, ptr %i.cz, align 4, !tbaa !110
  %.not42.i = icmp eq i16 %i.cv, 0
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cy ; 2 uses
  br i1 %.not42.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !110
  br label %_ZNK8rawspeed10Array2DRefItEclEii.exit.i

bb.n:                                             ; preds = %bb.l
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !110
  %.pre = and i32 %i.do, 65535
  br label %_ZNK8rawspeed10Array2DRefItEclEii.exit.i

_ZNK8rawspeed10Array2DRefItEclEii.exit.i:         ; preds = %bb.n, %bb.m, %bb.k
  %.pre-phi = phi i32 [ %.pre, %bb.n ], [ %i.dm, %bb.m ], [ %i.dk, %bb.k ]
  %i.dp = add nsw i32 %.pre-phi, -15
  %i.dq = icmp samesign ult i64 %indvars.iv67, %i.ap
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv67
  %.sink80 = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 65536)
  %.sink = trunc i32 %.sink80 to i16
  store i16 %.sink, ptr %i.dr, align 2, !tbaa !118
  %i.ds = add nuw nsw i32 %.035.i62, 1            ; 2 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond.not = icmp eq i32 %i.ds, 11
  br i1 %exitcond.not, label %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit, label %bb.e, !llvm.loop !156

bb.o:                                             ; preds = %bb.d
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  tail call void @__clang_call_terminate(ptr %i.du) #21
  unreachable

_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit: ; preds = %_ZNK8rawspeed10Array2DRefItEclEii.exit.i
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.dv = add nuw nsw i32 %.01065, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 11
  %exitcond75.not = icmp eq i32 %i.dv, %i.d
  br i1 %exitcond75.not, label %._crit_edge, label %bb.c, !llvm.loop !157

bb.p:                                             ; preds = %bb.b
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  tail call void @__clang_call_terminate(ptr %i.dx) #21
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold noreturn }
attributes #12 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !107, file: !102, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!14 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !12, i64 0}
!17 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !14, i64 8}
!18 = !{!17, !16, i64 0}
!19 = !{!"p1 omnipotent char", !12, i64 0}
!20 = !{!"_ZTSN8rawspeed6BufferE", !19, i64 0, !9, i64 8}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !9, i64 8}
!23 = !{!"_ZTSN8rawspeed10EndiannessE", !8, i64 0}
!24 = !{!"_ZTSN8rawspeed10DataBufferE", !20, i64 0, !23, i64 12}
!25 = !{!"_ZTSN8rawspeed10ByteStreamE", !24, i64 0, !9, i64 16}
!26 = !{!"_ZTSSt10shared_ptrIN8rawspeed12RawImageDataEE", !17, i64 0}
!27 = !{!"_ZTSN8rawspeed8RawImageE", !26, i64 0}
!28 = !{!"_ZTSN8rawspeed23PanasonicV6DecompressorE", !27, i64 0, !25, i64 16, !9, i64 40}
!29 = !{!28, !9, i64 40}
end_hunk_0
