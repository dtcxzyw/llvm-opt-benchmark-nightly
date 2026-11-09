Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereosgbm?download=true
inline.NumInlined: 570
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK2cv10BufferSGBM7clearLrERKNS_5RangeE:bb.a
  %i.ae = shl i64 %i.y, 1
  %i.af = mul i64 %i.ae, %i.aa
  %i.ag = add i64 %i.ad, %i.af
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.x, i8 0, i64 %i.ag, i1 false)
  br label %bb.c

_ZNK2cv10BufferSGBM8getMinLrEhih.exit:            ; preds = %bb.a
  %i.ah = load i8, ptr %i.b, align 1, !tbaa !167
  %i.ai = zext i8 %i.ah to i64
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !168 ; 3 uses
  %i.ak = mul i64 %i.aj, %i.ai
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !163
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !95
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load i8, ptr %i.e, align 2, !tbaa !166
  %i.ap = zext i8 %i.ao to i32
  %i.aq = trunc i64 %i.aj to i32
  %i.ar = mul i32 %.val, %i.aq
  %i.as = mul i32 %i.ar, %i.ap
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.at
  %i.av = sub nsw i32 %.val11, %.val
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 1
  %i.ay = mul i64 %i.ax, %i.aj
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.au, i8 0, i64 %i.ay, i1 false)
  %i.az = load i32, ptr %1, align 4, !tbaa !87    ; 2 uses
  %i.ba = load i8, ptr %i.b, align 1, !tbaa !167
  %i.bb = zext i8 %i.ba to i64
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !163
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !95
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.bb
  %i.bf = load i8, ptr %i.e, align 2, !tbaa !166
  %i.bg = zext i8 %i.bf to i32
  %i.bh = mul nsw i32 %i.az, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bi
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !86
  %i.bl = sub nsw i32 %i.bk, %i.az
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.bj, i8 0, i64 %i.bn, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK2cv10BufferSGBM8getMinLrEhih.exit
  %.val.1 = load i32, ptr %1, align 4, !tbaa !87  ; 3 uses
  %.val11.1 = load i32, ptr %i.a, align 4         ; 2 uses
  %i.bo = icmp eq i32 %.val.1, -2147483648
  %i.bp = icmp eq i32 %.val11.1, 2147483647
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.d, label %_ZNK2cv10BufferSGBM8getMinLrEhih.exit.1

_ZNK2cv10BufferSGBM8getMinLrEhih.exit.1:          ; preds = %bb.c
  %i.br = load i8, ptr %i.b, align 1, !tbaa !167
  %i.bs = zext i8 %i.br to i64
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !168 ; 3 uses
  %i.bu = mul i64 %i.bt, %i.bs
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !163
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !95
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.bu
  %i.bz = load i8, ptr %i.e, align 2, !tbaa !166
  %i.ca = zext i8 %i.bz to i32
  %i.cb = trunc i64 %i.bt to i32
  %i.cc = mul i32 %.val.1, %i.cb
  %i.cd = mul i32 %i.cc, %i.ca
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.ce
  %i.cg = sub nsw i32 %.val11.1, %.val.1
  %i.ch = sext i32 %i.cg to i64
  %i.ci = shl nsw i64 %i.ch, 1
  %i.cj = mul i64 %i.ci, %i.bt
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.cf, i8 0, i64 %i.cj, i1 false)
  %i.ck = load i32, ptr %1, align 4, !tbaa !87    ; 2 uses
  %i.cl = load i8, ptr %i.b, align 1, !tbaa !167
  %i.cm = zext i8 %i.cl to i64
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !163
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !95
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.cm
  %i.cr = load i8, ptr %i.e, align 2, !tbaa !166
  %i.cs = zext i8 %i.cr to i32
  %i.ct = mul nsw i32 %i.ck, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.cu
  %i.cw = load i32, ptr %i.a, align 4, !tbaa !86
  %i.cx = sub nsw i32 %i.cw, %i.ck
  %i.cy = sext i32 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.cv, i8 0, i64 %i.cz, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !163
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !95
  %i.dd = load i64, ptr %0, align 8, !tbaa !165
  %i.de = load i8, ptr %i.e, align 2, !tbaa !166
  %i.df = zext i8 %i.de to i64
  %i.dg = mul i64 %i.dd, %i.df
  %i.dh = load i8, ptr %i.b, align 1, !tbaa !167
  %i.di = zext i8 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 1
  %i.dk = add i64 %i.dj, %i.dg
  %i.dl = load i64, ptr %i.c, align 8, !tbaa !168
  %i.dm = shl i64 %i.dl, 1
  %i.dn = mul i64 %i.dm, %i.dk
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.dc, i8 0, i64 %i.dn, i1 false)
  %i.do = load ptr, ptr %i.f, align 8, !tbaa !163
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !95
  %i.dr = load i64, ptr %0, align 8, !tbaa !165
  %i.ds = load i8, ptr %i.e, align 2, !tbaa !166
  %i.dt = zext i8 %i.ds to i64
  %i.du = load i8, ptr %i.b, align 1, !tbaa !167
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 2
  %i.dx = shl i64 %i.dr, 1
  %i.dy = mul i64 %i.dx, %i.dt
  %i.dz = add i64 %i.dw, %i.dy
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.dq, i8 0, i64 %i.dz, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK2cv10BufferSGBM8getMinLrEhih.exit.1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv18CalcHorizontalSumsD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv18CalcHorizontalSumsclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %6 = alloca %"class.cv::utils::BufferArea", align 8 ; 12 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !87     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !86   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !161
  %i.i = shl i32 %i.h, 1
  %i.j = add i32 %i.i, 4
  %i.k = sext i32 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr null, ptr %i.c, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %6, i1 noundef zeroext false)
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.k, i16 noundef zeroext 2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !155
  %i.n = sext i32 %i.m to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.n, i16 noundef zeroext 16)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.l, align 4, !tbaa !155
  %i.p = sext i32 %i.o to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.p, i16 noundef zeroext 16)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %6)
          to label %.preheader257 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader257:                                    ; preds = %bb.d
  %.not291 = icmp eq i32 %i.d, %i.f
  br i1 %.not291, label %._crit_edge294, label %.lr.ph293

.lr.ph293:                                        ; preds = %.preheader257
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 100
  %7 = sext i32 %i.d to i64
  %i.ad = icmp sgt i32 %i.d, -1
  br label %bb.e

._crit_edge294:                                   ; preds = %._crit_edge290, %.preheader257
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.e:                                             ; preds = %.lr.ph293, %._crit_edge290
  %indvars.iv319 = phi i64 [ %7, %.lr.ph293 ], [ %indvars.iv.next320, %._crit_edge290 ] ; 3 uses
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !554, !nonnull !70, !align !175 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83 ; 2 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !84
  %i.ak = mul i64 %i.aj, %indvars.iv319           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 7 uses
  br i1 %i.ad, label %_ZNK2cv10BufferSGBM7getSBufEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv10BufferSGBM7getCBufEi, ptr noundef nonnull @.str.2, i32 noundef 436) #24
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !62
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

_ZNK2cv10BufferSGBM7getSBufEi.exit:               ; preds = %bb.e
  %8 = load ptr, ptr %i.r, align 8, !tbaa !555, !nonnull !70, !align !175 ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !135     ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %12 = load i8, ptr %11, align 8, !tbaa !169, !range !69, !noundef !70
  %13 = trunc nuw i8 %12 to i1
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %15 = load i64, ptr %14, align 8
  %16 = mul i64 %15, %indvars.iv319
  %17 = select i1 %13, i64 %16, i64 0             ; 3 uses
  %18 = getelementptr [2 x i8], ptr %10, i64 %17  ; 4 uses
  %19 = getelementptr inbounds nuw i8, ptr %8, i64 64
  %20 = load ptr, ptr %19, align 8, !tbaa !170    ; 2 uses
  %21 = getelementptr [2 x i8], ptr %20, i64 %17  ; 7 uses
  %22 = load i32, ptr %i.l, align 4, !tbaa !155   ; 4 uses
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %_ZNK2cv10BufferSGBM7getSBufEi.exit
  %i.as = load i32, ptr %i.s, align 4, !tbaa !158
  %i.at = trunc i32 %i.as to i16                  ; 8 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !95  ; 6 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !95  ; 6 uses
  %wide.trip.count = zext nneg i32 %22 to i64     ; 8 uses
  %min.iters.check439 = icmp ult i32 %22, 4
  br i1 %min.iters.check439, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck440

vector.memcheck440:                               ; preds = %iter.check
  %i.aw = ptrtoaddr ptr %i.av to i64              ; 2 uses
  %i.ax = ptrtoaddr ptr %i.au to i64              ; 2 uses
  %i.ay = add i64 %i.ak, %i.ah                    ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay
  %diff.check = icmp ugt i64 %i.az, -32
  %i.ba = sub i64 %i.ax, %i.aw
  %diff.check441 = icmp ugt i64 %i.ba, -32
  %conflict.rdx442 = or i1 %diff.check, %diff.check441
  %i.bb = sub i64 %i.ay, %i.aw
  %diff.check443 = icmp ugt i64 %i.bb, -32
  %conflict.rdx444 = or i1 %conflict.rdx442, %diff.check443
  br i1 %conflict.rdx444, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck440
  %min.iters.check445 = icmp ult i32 %22, 16
  br i1 %min.iters.check445, label %vec.epilog.ph, label %vector.ph446

vector.ph446:                                     ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %wide.trip.count, 12
  %n.vec447 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splatinsert448 = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %broadcast.splat449 = shufflevector <8 x i16> %broadcast.splatinsert448, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body450

vector.body450:                                   ; preds = %vector.ph446, %vector.body450
  %index451 = phi i64 [ 0, %vector.ph446 ], [ %index.next452, %vector.body450 ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index451 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <8 x i16> %broadcast.splat449, ptr %i.bd, align 2, !tbaa !77
  store <8 x i16> %broadcast.splat449, ptr %i.be, align 2, !tbaa !77
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %index451 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <8 x i16> %broadcast.splat449, ptr %i.bf, align 2, !tbaa !77
  store <8 x i16> %broadcast.splat449, ptr %i.bg, align 2, !tbaa !77
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %index451 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <8 x i16> splat (i16 32767), ptr %i.bh, align 2, !tbaa !77
  store <8 x i16> splat (i16 32767), ptr %i.bi, align 2, !tbaa !77
  %index.next452 = add nuw i64 %index451, 16      ; 2 uses
  %i.bj = icmp eq i64 %index.next452, %n.vec447
  br i1 %i.bj, label %middle.block453, label %vector.body450, !llvm.loop !536

middle.block453:                                  ; preds = %vector.body450
  %cmp.n454 = icmp eq i64 %n.vec447, %wide.trip.count
  br i1 %cmp.n454, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block453
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !80

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec447, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec455 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert456 = insertelement <4 x i16> poison, i16 %i.at, i64 0
  %broadcast.splat457 = shufflevector <4 x i16> %broadcast.splatinsert456, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index458 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next459, %vec.epilog.vector.body ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index458
  store <4 x i16> %broadcast.splat457, ptr %i.bk, align 2, !tbaa !77
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %index458
  store <4 x i16> %broadcast.splat457, ptr %i.bl, align 2, !tbaa !77
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %index458
  store <4 x i16> splat (i16 32767), ptr %i.bm, align 2, !tbaa !77
  %index.next459 = add nuw i64 %index458, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next459, %n.vec455
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !537

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n460 = icmp eq i64 %n.vec455, %wide.trip.count
  br i1 %cmp.n460, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck440, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck440 ], [ %n.vec447, %vec.epilog.iter.check ], [ %n.vec455, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.ph
  store i16 %i.at, ptr %i.bo, align 2, !tbaa !77
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.ph
  store i16 %i.at, ptr %i.bp, align 2, !tbaa !77
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.ph
  store i16 32767, ptr %i.bq, align 2, !tbaa !77
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.br = add nsw i64 %wide.trip.count, -1
  %i.bs = icmp eq i64 %indvars.iv.ph, %i.br
  br i1 %i.bs, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv
  store i16 %i.at, ptr %i.bt, align 2, !tbaa !77
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv
  store i16 %i.at, ptr %i.bu, align 2, !tbaa !77
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv
  store i16 32767, ptr %i.bv, align 2, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.next
  store i16 %i.at, ptr %i.bw, align 2, !tbaa !77
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.next
  store i16 %i.at, ptr %i.bx, align 2, !tbaa !77
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.next
  store i16 32767, ptr %i.by, align 2, !tbaa !77
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !538

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge268, %bb.l, %bb.a, %bb.b, %bb.c, %bb.d, %bb.i, %bb.f
  %lpad.loopexit.split-lp462 = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block453, %vec.epilog.middle.block, %_ZNK2cv10BufferSGBM7getSBufEi.exit
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !95
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc182 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc182:                                        ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_, ptr noundef nonnull @.str.25, i32 noundef 90) #24
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc182
  unreachable

bb.k:                                             ; preds = %.noexc182
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179: ; preds = %bb.k
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !62
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.l:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils10BufferArea9zeroFill_EPPv(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit:  ; preds = %bb.l
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !95  ; 8 uses
  %i.ch = load i32, ptr %i.g, align 8, !tbaa !161 ; 2 uses
  %i.ci = add nsw i32 %i.ch, 3                    ; 3 uses
  %i.cj = load i32, ptr %i.t, align 8, !tbaa !159 ; 5 uses
  %i.ck = add nsw i32 %i.ci, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.cl
  store i16 32767, ptr %i.cm, align 2, !tbaa !77
  %i.cn = sext i32 %i.ch to i64
  %i.co = getelementptr [2 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  store i16 32767, ptr %i.cp, align 2, !tbaa !77
  %i.cq = sext i32 %i.cj to i64
  %i.cr = getelementptr [2 x i8], ptr %i.cg, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 2
  store i16 32767, ptr %i.cs, align 2, !tbaa !77
  store i16 32767, ptr %i.cg, align 2, !tbaa !77
  %i.ct = load i32, ptr %i.u, align 8, !tbaa !162 ; 2 uses
  %.not163264 = icmp eq i32 %i.ct, 0
  br i1 %.not163264, label %._crit_edge268, label %.lr.ph267

.lr.ph267:                                        ; preds = %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit
  %i.cu = load i32, ptr %i.v, align 4, !tbaa !152
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.cw = sext i32 %i.ci to i64
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.cw
  %i.cy = load i32, ptr %i.w, align 4, !tbaa !160 ; 2 uses
  %i.cz = icmp sgt i32 %i.cj, 0
  %i.da = sext i32 %i.cy to i64                   ; 2 uses
  %i.db = zext i32 %i.ct to i64                   ; 2 uses
  %i.dc = sext i32 %i.ci to i64
  %wide.trip.count299 = zext i32 %i.cj to i64     ; 5 uses
  %i.dd = shl nuw nsw i64 %wide.trip.count299, 1  ; 4 uses
  %i.de = shl nuw nsw i64 %i.db, 1
  %i.df = add nsw i64 %i.de, -2
  %i.dg = mul i64 %i.df, %i.da
  %i.dh = shl i64 %17, 1
  %i.di = add i64 %i.dg, %i.dh
  %i.dj = add i64 %i.di, %i.dd                    ; 2 uses
  %scevgep = getelementptr i8, ptr %10, i64 %i.dj ; 2 uses
  %scevgep395 = getelementptr i8, ptr %20, i64 %i.dj ; 5 uses
  %min.iters.check = icmp ult i32 %i.cj, 16
  %stride.check = icmp slt i32 %i.cy, 0
  %bound0411 = icmp ult ptr %21, %scevgep
  %bound1412 = icmp ult ptr %18, %scevgep395
  %found.conflict413 = and i1 %bound0411, %bound1412
  %n.vec = and i64 %wide.trip.count299, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count299
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph267, %._crit_edge263
  %indvars.iv301 = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next302, %._crit_edge263 ] ; 3 uses
  %.0239265 = phi i16 [ 0, %.lr.ph267 ], [ %.1.lcssa, %._crit_edge263 ]
  %i.dk = sext i16 %.0239265 to i32
  %i.dl = add nsw i32 %i.cu, %i.dk                ; 3 uses
  %i.dm = and i64 %indvars.iv301, 1
  %.not170 = icmp eq i64 %i.dm, 0                 ; 2 uses
  %i.dn = select i1 %.not170, ptr %i.cx, ptr %i.cv ; 11 uses
  %i.do = select i1 %.not170, i64 1, i64 %i.dc    ; 2 uses
  %i.dp = getelementptr [2 x i8], ptr %i.cg, i64 %i.do ; 7 uses
  %i.dq = mul nsw i64 %indvars.iv301, %i.da       ; 2 uses
  %i.dr = getelementptr inbounds [2 x i8], ptr %18, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds [2 x i8], ptr %21, i64 %i.dq ; 2 uses
  br i1 %i.cz, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.m
  %i.dt = load i32, ptr %i.x, align 8, !tbaa !151 ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph262
  %i.du = add nsw i64 %i.do, %wide.trip.count299
  %i.dv = shl nsw i64 %i.du, 1
  %i.dw = getelementptr i8, ptr %i.cg, i64 %i.dv  ; 5 uses
  %i.dx = getelementptr i8, ptr %i.dn, i64 %i.dd  ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dn, i64 -2     ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dn, i64 %i.dd
  %i.ea = getelementptr i8, ptr %i.dz, i64 -2     ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dn, i64 2      ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dn, i64 %i.dd
  %i.ed = getelementptr i8, ptr %i.ec, i64 2      ; 2 uses
  %bound0 = icmp ult ptr %i.dp, %scevgep395
  %bound1 = icmp ult ptr %21, %i.dw
  %found.conflict = and i1 %bound0, %bound1
  %i.ee = or i1 %found.conflict, %stride.check
  %bound0396 = icmp ult ptr %i.dp, %scevgep
  %bound1397 = icmp ult ptr %18, %i.dw
  %found.conflict398 = and i1 %bound0396, %bound1397
  %conflict.rdx = or i1 %i.ee, %found.conflict398
  %bound0399 = icmp ult ptr %i.dp, %i.dx
  %bound1400 = icmp ult ptr %i.dn, %i.dw
  %found.conflict401 = and i1 %bound0399, %bound1400
  %conflict.rdx402 = or i1 %conflict.rdx, %found.conflict401
  %bound0403 = icmp ult ptr %i.dp, %i.ea
  %bound1404 = icmp ult ptr %i.dy, %i.dw
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %conflict.rdx402, %found.conflict405
  %bound0407 = icmp ult ptr %i.dp, %i.ed
  %bound1408 = icmp ult ptr %i.eb, %i.dw
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %conflict.rdx406, %found.conflict409
  %conflict.rdx414 = or i1 %conflict.rdx410, %found.conflict413
  %bound0415 = icmp ult ptr %21, %i.dx
  %bound1416 = icmp ult ptr %i.dn, %scevgep395
  %found.conflict417 = and i1 %bound0415, %bound1416
  %conflict.rdx418 = or i1 %conflict.rdx414, %found.conflict417
  %bound0419 = icmp ult ptr %21, %i.ea
  %bound1420 = icmp ult ptr %i.dy, %scevgep395
  %found.conflict421 = and i1 %bound0419, %bound1420
  %conflict.rdx422 = or i1 %conflict.rdx418, %found.conflict421
  %bound0423 = icmp ult ptr %21, %i.ed
  %bound1424 = icmp ult ptr %i.eb, %scevgep395
  %found.conflict425 = and i1 %bound0423, %bound1424
  %conflict.rdx426 = or i1 %conflict.rdx422, %found.conflict425
  br i1 %conflict.rdx426, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.dt, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert427 = insertelement <8 x i32> poison, i32 %i.dl, i64 0
  %broadcast.splat428 = shufflevector <8 x i32> %broadcast.splatinsert427, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <8 x i16> [ splat (i16 32767), %vector.ph ], [ %i.ex, %vector.body ]
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ef, align 2, !tbaa !77, !alias.scope !556
  %i.eg = sext <8 x i16> %wide.load to <8 x i32>
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %index ; 2 uses
  %wide.load429 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !77, !alias.scope !557
  %i.ei = sext <8 x i16> %wide.load429 to <8 x i32>
  %i.ej = getelementptr i8, ptr %i.eh, i64 -2
  %wide.load430 = load <8 x i16>, ptr %i.ej, align 2, !tbaa !77, !alias.scope !558
  %i.ek = sext <8 x i16> %wide.load430 to <8 x i32>
  %i.el = add nsw <8 x i32> %broadcast.splat, %i.ek
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %index
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %wide.load431 = load <8 x i16>, ptr %i.en, align 2, !tbaa !77, !alias.scope !559
  %i.eo = sext <8 x i16> %wide.load431 to <8 x i32>
  %i.ep = add nsw <8 x i32> %broadcast.splat, %i.eo
  %i.eq = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat428, <8 x i32> %i.ep)
  %i.er = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.eq, <8 x i32> %i.el)
  %i.es = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.er, <8 x i32> %i.ei)
  %i.et = sub <8 x i32> %i.eg, %broadcast.splat428
  %i.eu = add <8 x i32> %i.et, %i.es              ; 2 uses
  %i.ev = trunc <8 x i32> %i.eu to <8 x i16>      ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %index
  store <8 x i16> %i.ev, ptr %i.ew, align 2, !tbaa !77, !alias.scope !560, !noalias !561
  %i.ex = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi, <8 x i16> %i.ev) ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %index ; 2 uses
  %wide.load432 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !77, !alias.scope !562, !noalias !563
  %i.ez = sext <8 x i16> %wide.load432 to <8 x i32>
  %i.fa = add nsw <8 x i32> %i.eu, %i.ez
  %i.fb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fa, <8 x i32> splat (i32 -32768))
  %i.fc = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fb, <8 x i32> splat (i32 32767))
  %i.fd = trunc nsw <8 x i32> %i.fc to <8 x i16>
  store <8 x i16> %i.fd, ptr %i.ey, align 2, !tbaa !77, !alias.scope !562, !noalias !563
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %i.ff = call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %i.ex) ; 2 uses
  br i1 %cmp.n, label %._crit_edge263, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph262, %middle.block
  %indvars.iv297.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph262 ], [ %n.vec, %middle.block ]
  %.1259.ph = phi i16 [ 32767, %vector.memcheck ], [ 32767, %.lr.ph262 ], [ %i.ff, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %scalar.ph ], [ %indvars.iv297.ph, %scalar.ph.preheader ] ; 5 uses
  %.1259 = phi i16 [ %.sroa.speculated220, %scalar.ph ], [ %.1259.ph, %scalar.ph.preheader ]
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %indvars.iv297
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !77
  %i.fi = sext i16 %i.fh to i32
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv297 ; 2 uses
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !77
  %i.fl = sext i16 %i.fk to i32
  %i.fm = getelementptr i8, ptr %i.fj, i64 -2
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !77
  %i.fo = sext i16 %i.fn to i32
  %i.fp = add nsw i32 %i.dt, %i.fo
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 3 uses
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv.next298
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !77
  %i.fs = sext i16 %i.fr to i32
  %i.ft = add nsw i32 %i.dt, %i.fs
  %i.fu = call i32 @llvm.smin.i32(i32 %i.dl, i32 %i.ft)
  %i.fv = call i32 @llvm.smin.i32(i32 %i.fu, i32 %i.fp)
  %.sroa.speculated228 = call i32 @llvm.smin.i32(i32 %i.fv, i32 %i.fl)
  %i.fw = sub i32 %i.fi, %i.dl
  %i.fx = add i32 %i.fw, %.sroa.speculated228     ; 2 uses
  %i.fy = trunc i32 %i.fx to i16                  ; 2 uses
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv297
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !77
  %.sroa.speculated220 = call i16 @llvm.smin.i16(i16 %.1259, i16 %i.fy) ; 2 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %indvars.iv297 ; 2 uses
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !77
  %i.gc = sext i16 %i.gb to i32
  %i.gd = add nsw i32 %i.fx, %i.gc
  %i.ge = call i32 @llvm.smax.i32(i32 %i.gd, i32 -32768)
  %i.gf = call i32 @llvm.smin.i32(i32 %i.ge, i32 32767)
  %i.gg = trunc nsw i32 %i.gf to i16
  store i16 %i.gg, ptr %i.ga, align 2, !tbaa !77
  %exitcond300.not = icmp eq i64 %indvars.iv.next298, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge263, label %scalar.ph, !llvm.loop !547

._crit_edge263:                                   ; preds = %scalar.ph, %middle.block, %bb.m
  %.1.lcssa = phi i16 [ 32767, %bb.m ], [ %i.ff, %middle.block ], [ %.sroa.speculated220, %scalar.ph ]
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %.not163 = icmp eq i64 %indvars.iv.next302, %i.db
  br i1 %.not163, label %._crit_edge268, label %bb.m, !llvm.loop !548

._crit_edge268:                                   ; preds = %._crit_edge263, %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit
  invoke void @_ZN2cv5utils10BufferArea9zeroFill_EPPv(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit197 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit197: ; preds = %._crit_edge268
  %i.gh = load ptr, ptr %i.a, align 8, !tbaa !95  ; 7 uses
  %i.gi = load i32, ptr %i.g, align 8, !tbaa !161 ; 2 uses
  %i.gj = add nsw i32 %i.gi, 3                    ; 3 uses
  %i.gk = load i32, ptr %i.t, align 8, !tbaa !159 ; 6 uses
  %i.gl = add nsw i32 %i.gj, %i.gk
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.gh, i64 %i.gm
  store i16 32767, ptr %i.gn, align 2, !tbaa !77
  %i.go = sext i32 %i.gi to i64
  %i.gp = getelementptr [2 x i8], ptr %i.gh, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 4
  store i16 32767, ptr %i.gq, align 2, !tbaa !77
  %i.gr = sext i32 %i.gk to i64
  %i.gs = getelementptr [2 x i8], ptr %i.gh, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gs, i64 2
  store i16 32767, ptr %i.gt, align 2, !tbaa !77
  store i16 32767, ptr %i.gh, align 2, !tbaa !77
  %i.gu = load i32, ptr %i.u, align 8, !tbaa !162 ; 2 uses
  %.not166282 = icmp eq i32 %i.gu, 0
  br i1 %.not166282, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit197
  %i.gv = load i32, ptr %i.v, align 4, !tbaa !152
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gx = sext i32 %i.gj to i64
  %i.gy = getelementptr inbounds [2 x i8], ptr %i.gh, i64 %i.gx
  %i.gz = load i32, ptr %i.w, align 4, !tbaa !160
  %i.ha = icmp sgt i32 %i.gk, 0
  %i.hb = load ptr, ptr %i.b, align 8
  %i.hc = load ptr, ptr %i.c, align 8
  %i.hd = add nsw i32 %i.gk, -1
  %i.he = sext i32 %i.gu to i64
  %i.hf = sext i32 %i.gz to i64
  %wide.trip.count305 = zext nneg i32 %i.gk to i64
  %wide.trip.count310 = zext nneg i32 %i.gk to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph285, %.thread243
  %indvars.iv312 = phi i64 [ %i.he, %.lr.ph285 ], [ %indvars.iv.next313, %.thread243 ]
  %.2240283 = phi i16 [ 0, %.lr.ph285 ], [ %.3241.lcssa348, %.thread243 ]
  %indvars.iv.next313 = add nsw i64 %indvars.iv312, -1 ; 4 uses
  %i.hg = sext i16 %.2240283 to i32
  %i.hh = add nsw i32 %i.gv, %i.hg                ; 2 uses
  %i.hi = trunc nsw i64 %indvars.iv.next313 to i32 ; 2 uses
  %i.hj = and i32 %i.hi, 1
  %.not169 = icmp eq i32 %i.hj, 0                 ; 2 uses
  %i.hk = select i1 %.not169, ptr %i.gy, ptr %i.gw ; 2 uses
  %narrow248 = select i1 %.not169, i32 1, i32 %i.gj
  %i.hl = sext i32 %narrow248 to i64
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.gh, i64 %i.hl
  %i.hn = mul nsw i64 %indvars.iv.next313, %i.hf  ; 2 uses
  %i.ho = getelementptr inbounds [2 x i8], ptr %18, i64 %i.hn
  %i.hp = getelementptr inbounds [2 x i8], ptr %21, i64 %i.hn ; 4 uses
  br i1 %i.ha, label %.lr.ph274, label %._crit_edge280

.lr.ph274:                                        ; preds = %bb.n
  %i.hq = load i32, ptr %i.x, align 8, !tbaa !151 ; 2 uses
  br label %bb.o

.lr.ph279:                                        ; preds = %bb.o
  %i.hr = load i32, ptr %i.y, align 8, !tbaa !153
  %i.hs = sub nsw i32 100, %i.hr
  %i.ht = sext i16 %spec.select to i32
  %i.hu = mul nsw i32 %i.ht, 100
  %i.hv = sext i16 %spec.select171 to i32         ; 2 uses
  %i.hw = add nsw i32 %i.hv, -2
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph274, %bb.o
  %indvars.iv303 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next304, %bb.o ] ; 6 uses
  %.0272 = phi i16 [ -1, %.lr.ph274 ], [ %spec.select171, %bb.o ]
  %.0140271 = phi i16 [ 32767, %.lr.ph274 ], [ %spec.select, %bb.o ] ; 2 uses
  %.3241269 = phi i16 [ 32767, %.lr.ph274 ], [ %.sroa.speculated206, %bb.o ]
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %indvars.iv303
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !77
  %i.hz = sext i16 %i.hy to i32
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %indvars.iv303 ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !77
  %i.ic = sext i16 %i.ib to i32
  %i.id = getelementptr i8, ptr %i.ia, i64 -2
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !77
  %i.if = sext i16 %i.ie to i32
  %i.ig = add nsw i32 %i.hq, %i.if
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 3 uses
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %indvars.iv.next304
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !77
  %i.ij = sext i16 %i.ii to i32
  %i.ik = add nsw i32 %i.hq, %i.ij
  %i.il = call i32 @llvm.smin.i32(i32 %i.hh, i32 %i.ik)
  %i.im = call i32 @llvm.smin.i32(i32 %i.il, i32 %i.ig)
  %.sroa.speculated212 = call i32 @llvm.smin.i32(i32 %i.im, i32 %i.ic)
  %i.in = sub i32 %i.hz, %i.hh
  %i.io = add i32 %i.in, %.sroa.speculated212     ; 2 uses
  %i.ip = trunc i32 %i.io to i16                  ; 2 uses
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv303
  store i16 %i.ip, ptr %i.iq, align 2, !tbaa !77
  %.sroa.speculated206 = call i16 @llvm.smin.i16(i16 %.3241269, i16 %i.ip) ; 3 uses
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %indvars.iv303 ; 2 uses
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !77
  %i.it = sext i16 %i.is to i32
  %i.iu = add nsw i32 %i.io, %i.it
  %i.iv = call i32 @llvm.smax.i32(i32 %i.iu, i32 -32768)
  %i.iw = call i32 @llvm.smin.i32(i32 %i.iv, i32 32767)
  %i.ix = trunc nsw i32 %i.iw to i16              ; 3 uses
  store i16 %i.ix, ptr %i.ir, align 2, !tbaa !77
  %i.iy = icmp sgt i16 %.0140271, %i.ix
  %i.iz = trunc i64 %indvars.iv303 to i16
  %spec.select = call i16 @llvm.smin.i16(i16 %.0140271, i16 %i.ix) ; 3 uses
  %spec.select171 = select i1 %i.iy, i16 %i.iz, i16 %.0272 ; 3 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count305
  br i1 %exitcond306.not, label %.lr.ph279, label %bb.o, !llvm.loop !549

bb.p:                                             ; preds = %.lr.ph279, %bb.q
  %indvars.iv307 = phi i64 [ 0, %.lr.ph279 ], [ %indvars.iv.next308, %bb.q ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %indvars.iv307
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !77
  %i.jc = sext i16 %i.jb to i32
  %i.jd = mul nsw i32 %i.hs, %i.jc
  %i.je = icmp slt i32 %i.jd, %i.hu
  %indvars309 = trunc i64 %indvars.iv307 to i32
  %i.jf = sub i32 %i.hw, %indvars309
  %i.jg = icmp ult i32 %i.jf, -3
  %or.cond = select i1 %i.je, i1 %i.jg, i1 false
  br i1 %or.cond, label %.thread243, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count310
  br i1 %exitcond311.not, label %._crit_edge280, label %bb.p, !llvm.loop !550

._crit_edge280:                                   ; preds = %bb.q, %bb.n
  %.0.lcssa353 = phi i16 [ -1, %bb.n ], [ %spec.select171, %bb.q ] ; 3 uses
  %.0140.lcssa351 = phi i16 [ 32767, %bb.n ], [ %spec.select, %bb.q ] ; 2 uses
  %.3241.lcssa349 = phi i16 [ 32767, %bb.n ], [ %.sroa.speculated206, %bb.q ]
  %.pre-phi = phi i32 [ -1, %bb.n ], [ %i.hv, %bb.q ] ; 5 uses
  %i.jh = load i32, ptr %i.z, align 8, !tbaa !156
  %i.ji = add nsw i32 %i.jh, %i.hi                ; 2 uses
  %i.jj = load i32, ptr %i.aa, align 8, !tbaa !150 ; 3 uses
  %i.jk = add i32 %i.jj, %.pre-phi
  %i.jl = sub i32 %i.ji, %i.jk
  %i.jm = sext i32 %i.jl to i64                   ; 2 uses
  %i.jn = getelementptr inbounds [2 x i8], ptr %i.hb, i64 %i.jm ; 2 uses
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !77
  %i.jp = icmp sgt i16 %i.jo, %.0140.lcssa351
  br i1 %i.jp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge280
  store i16 %.0140.lcssa351, ptr %i.jn, align 2, !tbaa !77
  %i.jq = trunc i32 %i.jj to i16
  %i.jr = add i16 %.0.lcssa353, %i.jq
  %i.js = getelementptr inbounds [2 x i8], ptr %i.hc, i64 %i.jm
  store i16 %i.jr, ptr %i.js, align 2, !tbaa !77
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge280
  %i.jt = icmp sgt i16 %.0.lcssa353, 0
  %i.ju = icmp sgt i32 %i.hd, %.pre-phi
  %or.cond245 = select i1 %i.jt, i1 %i.ju, i1 false
  br i1 %or.cond245, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.jv = zext nneg i16 %.0.lcssa353 to i64
  %i.jw = getelementptr [2 x i8], ptr %i.hp, i64 %i.jv ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 -2
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !77
  %i.jz = sext i16 %i.jy to i32                   ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !77
  %i.kc = sext i16 %i.kb to i32                   ; 2 uses
  %i.kd = add nsw i32 %i.kc, %i.jz
  %i.ke = zext nneg i32 %.pre-phi to i64
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !77
  %i.kh = sext i16 %i.kg to i32
  %i.ki = shl nsw i32 %i.kh, 1
  %i.kj = sub nsw i32 %i.kd, %i.ki
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.kj, i32 1) ; 2 uses
  %i.kk = shl nuw nsw i32 %.pre-phi, 4
  %i.kl = sub nsw i32 %i.jz, %i.kc
  %i.km = shl nsw i32 %i.kl, 4
  %i.kn = add nsw i32 %.sroa.speculated, %i.km
  %i.ko = shl nuw nsw i32 %.sroa.speculated, 1
  %i.kp = sdiv i32 %i.kn, %i.ko
  %i.kq = add nsw i32 %i.kp, %i.kk
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.kr = shl nsw i32 %.pre-phi, 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3 = phi i32 [ %i.kq, %bb.t ], [ %i.kr, %bb.u ]
  %i.ks = shl nsw i32 %i.jj, 4
  %i.kt = add nsw i32 %.3, %i.ks
  %i.ku = trunc i32 %i.kt to i16
  %i.kv = sext i32 %i.ji to i64
  %i.kw = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.kv
  store i16 %i.ku, ptr %i.kw, align 2, !tbaa !77
  br label %.thread243

.thread243:                                       ; preds = %bb.p, %bb.v
  %.3241.lcssa348 = phi i16 [ %.3241.lcssa349, %bb.v ], [ %.sroa.speculated206, %bb.p ]
  %.not166 = icmp eq i64 %indvars.iv.next313, 0
  br i1 %.not166, label %._crit_edge286, label %bb.n, !llvm.loop !551

._crit_edge286:                                   ; preds = %.thread243, %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit197
  %i.kx = load i32, ptr %i.z, align 8, !tbaa !156 ; 2 uses
  %i.ky = load i32, ptr %i.ab, align 4, !tbaa !157 ; 2 uses
  %i.kz = icmp slt i32 %i.kx, %i.ky
  br i1 %i.kz, label %.lr.ph289, label %._crit_edge290

.lr.ph289:                                        ; preds = %._crit_edge286
  %i.la = load i32, ptr %i.s, align 4, !tbaa !158 ; 2 uses
  %i.lb = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.lc = trunc i32 %i.la to i16
  %i.ld = sext i32 %i.kx to i64
  %wide.trip.count317 = sext i32 %i.ky to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph289, %bb.ae
  %indvars.iv314 = phi i64 [ %i.ld, %.lr.ph289 ], [ %indvars.iv.next315, %bb.ae ] ; 3 uses
  %i.le = getelementptr inbounds [2 x i8], ptr %i.al, i64 %indvars.iv314 ; 2 uses
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !77
  %i.lg = sext i16 %i.lf to i32                   ; 3 uses
  %i.lh = icmp eq i32 %i.la, %i.lg
  br i1 %i.lh, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.li = ashr i32 %i.lg, 4                       ; 2 uses
  %i.lj = add nsw i32 %i.lg, 15
  %i.lk = ashr i32 %i.lj, 4                       ; 2 uses
  %i.ll = trunc nsw i64 %indvars.iv314 to i32     ; 2 uses
  %i.lm = sub nsw i32 %i.ll, %i.li                ; 3 uses
  %i.ln = sub nsw i32 %i.ll, %i.lk                ; 3 uses
  %i.lo = icmp sgt i32 %i.lm, -1
  br i1 %i.lo, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.lp = load i32, ptr %i.l, align 4, !tbaa !155 ; 2 uses
  %i.lq = icmp slt i32 %i.lm, %i.lp
  br i1 %i.lq, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.lr = zext nneg i32 %i.lm to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.lr
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !77
  %i.lu = sext i16 %i.lt to i32                   ; 2 uses
  %i.lv = load i32, ptr %i.aa, align 8, !tbaa !150 ; 2 uses
  %.not167 = icmp sgt i32 %i.lv, %i.lu
  br i1 %.not167, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lw = sub nsw i32 %i.lu, %i.li
  %i.lx = call i32 @llvm.abs.i32(i32 %i.lw, i1 true)
  %i.ly = load i32, ptr %i.ac, align 4, !tbaa !154 ; 2 uses
  %i.lz = icmp sgt i32 %i.lx, %i.ly
  %i.ma = icmp sgt i32 %i.ln, -1
  %i.mb = icmp slt i32 %i.ln, %i.lp
  %i.mc = and i1 %i.ma, %i.mb
  %or.cond172 = select i1 %i.lz, i1 %i.mc, i1 false
  br i1 %or.cond172, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.md = zext nneg i32 %i.ln to i64
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.md
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !77
  %i.mg = sext i16 %i.mf to i32                   ; 2 uses
  %.not168 = icmp sgt i32 %i.lv, %i.mg
  br i1 %.not168, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mh = sub nsw i32 %i.mg, %i.lk
  %i.mi = call i32 @llvm.abs.i32(i32 %i.mh, i1 true)
  %i.mj = icmp sgt i32 %i.mi, %i.ly
  br i1 %i.mj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i16 %i.lc, ptr %i.le, align 2, !tbaa !77
  br label %bb.ae

bb.ae:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.w
  %indvars.iv.next315 = add nsw i64 %indvars.iv314, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next315, %wide.trip.count317
  br i1 %exitcond318.not, label %._crit_edge290, label %bb.w, !llvm.loop !552

._crit_edge290:                                   ; preds = %bb.ae, %._crit_edge286
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.mk = trunc nsw i64 %indvars.iv.next320 to i32
  %.not = icmp eq i32 %i.f, %i.mk
  br i1 %.not, label %._crit_edge294, label %bb.e, !llvm.loop !553

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180
  %.pn.pn = phi { ptr, i32 } [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit.split-lp462, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN2cv5utils10BufferArea9zeroFill_EPPv(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #10

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #20

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14BufferSGBM3WayC2Eiiiiii(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  tail call void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %i.j, i1 noundef zeroext false)
  %i.k = mul nsw i32 %4, %1
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  store i64 %i.l, ptr %0, align 8, !tbaa !75
  %i.m = shl nsw i32 %5, 1
  %i.n = add nsw i32 %i.m, 2
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !74
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.l, i16 noundef zeroext 16)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %0, align 8, !tbaa !75
  %i.s = load i64, ptr %i.p, align 8, !tbaa !74
  %i.t = mul i64 %i.s, %i.r
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.t, i16 noundef zeroext 16)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %0, align 8, !tbaa !75
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.u, i16 noundef zeroext 16)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.v = shl nsw i32 %3, 2
  %i.w = or disjoint i32 %i.v, 2
  %i.x = mul nsw i32 %i.w, %2
  %i.y = sext i32 %i.x to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.y, i16 noundef zeroext 16)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.z = add nsw i32 %1, 2                        ; 2 uses
  %i.aa = mul nsw i32 %4, %i.z
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.ab, i16 noundef zeroext 16)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.ab, i16 noundef zeroext 16)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ac = sext i32 %i.z to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.ac, i16 noundef zeroext 16)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ad = sext i32 %4 to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %i.ad, i16 noundef zeroext 16)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ae = sext i32 %2 to i64                      ; 2 uses
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.ae, i16 noundef zeroext 16)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.ae, i16 noundef zeroext 16)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %i.j)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5utils10BufferArea8zeroFillEv(ptr noundef nonnull align 8 dereferenceable(41) %i.j)
          to label %.preheader unwind label %bb.m

.preheader:                                       ; preds = %bb.l
  %i.af = load i64, ptr %0, align 8, !tbaa !75    ; 9 uses
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.ag = trunc i32 %6 to i16                     ; 3 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !73  ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.af, 16
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

end_hunk_0
