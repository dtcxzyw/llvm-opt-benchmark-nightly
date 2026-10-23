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
  %i.ad = icmp sgt i32 %i.d, -1
  br i1 %i.ad, label %.lr.ph293.split, label %bb.f

.lr.ph293.split:                                  ; preds = %.lr.ph293
  %7 = zext nneg i32 %i.d to i64
  br label %bb.e

._crit_edge294:                                   ; preds = %._crit_edge290, %.preheader257
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.e:                                             ; preds = %.lr.ph293.split, %._crit_edge290
  %indvars.iv319 = phi i64 [ %7, %.lr.ph293.split ], [ %indvars.iv.next320, %._crit_edge290 ] ; 3 uses
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !554, !nonnull !70, !align !175 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83 ; 2 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64              ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %9 = load i64, ptr %8, align 8, !tbaa !84
  %10 = mul i64 %9, %indvars.iv319                ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %10 ; 7 uses
  %12 = load ptr, ptr %i.r, align 8, !tbaa !555, !nonnull !70, !align !175 ; 4 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !135    ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %16 = load i8, ptr %15, align 8, !tbaa !169, !range !69, !noundef !70
  %17 = trunc nuw i8 %16 to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = mul i64 %i.aj, %indvars.iv319
  %18 = select i1 %17, i64 %i.ak, i64 0           ; 3 uses
  %19 = getelementptr [2 x i8], ptr %14, i64 %18  ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 64
  %20 = load ptr, ptr %i.al, align 8, !tbaa !170  ; 2 uses
  %21 = getelementptr [2 x i8], ptr %20, i64 %18  ; 7 uses
  %22 = load i32, ptr %i.l, align 4, !tbaa !155   ; 4 uses
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %iter.check, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph293
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

iter.check:                                       ; preds = %bb.e
  %i.as = load i32, ptr %i.s, align 4, !tbaa !158
  %i.at = trunc i32 %i.as to i16                  ; 8 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !95  ; 6 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !95  ; 6 uses
  %wide.trip.count = zext nneg i32 %22 to i64     ; 8 uses
  %min.iters.check407 = icmp ult i32 %22, 4
  br i1 %min.iters.check407, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck401

vector.memcheck401:                               ; preds = %iter.check
  %i.aw = ptrtoaddr ptr %i.av to i64              ; 2 uses
  %i.ax = ptrtoaddr ptr %i.au to i64              ; 2 uses
  %i.ay = add i64 %10, %i.ah
  %i.az = sub i64 %i.ax, %i.ay
  %diff.check = icmp ugt i64 %i.az, -32
  %i.ba = sub i64 %i.ax, %i.aw
  %diff.check402 = icmp ugt i64 %i.ba, -32
  %conflict.rdx403 = or i1 %diff.check, %diff.check402
  %i.bb = add i64 %10, %i.ah
  %i.bc = sub i64 %i.bb, %i.aw
  %diff.check404 = icmp ugt i64 %i.bc, -32
  %conflict.rdx405 = or i1 %conflict.rdx403, %diff.check404
  br i1 %conflict.rdx405, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck401
  %min.iters.check408 = icmp ult i32 %22, 16
  br i1 %min.iters.check408, label %vec.epilog.ph, label %vector.ph409

vector.ph409:                                     ; preds = %vector.main.loop.iter.check
  %i.bd = and i64 %wide.trip.count, 12
  %n.vec410 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splatinsert411 = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %broadcast.splat412 = shufflevector <8 x i16> %broadcast.splatinsert411, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body413

vector.body413:                                   ; preds = %vector.ph409, %vector.body413
  %index414 = phi i64 [ 0, %vector.ph409 ], [ %index.next415, %vector.body413 ] ; 4 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index414 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <8 x i16> %broadcast.splat412, ptr %i.be, align 2, !tbaa !77
  store <8 x i16> %broadcast.splat412, ptr %i.bf, align 2, !tbaa !77
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %index414 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <8 x i16> %broadcast.splat412, ptr %i.bg, align 2, !tbaa !77
  store <8 x i16> %broadcast.splat412, ptr %i.bh, align 2, !tbaa !77
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %index414 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <8 x i16> splat (i16 32767), ptr %i.bi, align 2, !tbaa !77
  store <8 x i16> splat (i16 32767), ptr %i.bj, align 2, !tbaa !77
  %index.next415 = add nuw i64 %index414, 16      ; 2 uses
  %i.bk = icmp eq i64 %index.next415, %n.vec410
  br i1 %i.bk, label %middle.block416, label %vector.body413, !llvm.loop !536

middle.block416:                                  ; preds = %vector.body413
  %cmp.n417 = icmp eq i64 %n.vec410, %wide.trip.count
  br i1 %cmp.n417, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block416
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !80

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec410, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec418 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert419 = insertelement <4 x i16> poison, i16 %i.at, i64 0
  %broadcast.splat420 = shufflevector <4 x i16> %broadcast.splatinsert419, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index421 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next422, %vec.epilog.vector.body ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index421
  store <4 x i16> %broadcast.splat420, ptr %i.bl, align 2, !tbaa !77
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %index421
  store <4 x i16> %broadcast.splat420, ptr %i.bm, align 2, !tbaa !77
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %index421
  store <4 x i16> splat (i16 32767), ptr %i.bn, align 2, !tbaa !77
  %index.next422 = add nuw i64 %index421, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next422, %n.vec418
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !537

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n423 = icmp eq i64 %n.vec418, %wide.trip.count
  br i1 %cmp.n423, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck401, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck401 ], [ %n.vec410, %vec.epilog.iter.check ], [ %n.vec418, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.ph
  store i16 %i.at, ptr %i.bp, align 2, !tbaa !77
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %indvars.iv.ph
  store i16 %i.at, ptr %i.bq, align 2, !tbaa !77
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.ph
  store i16 32767, ptr %i.br, align 2, !tbaa !77
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bs = add nsw i64 %wide.trip.count, -1
  %i.bt = icmp eq i64 %indvars.iv.ph, %i.bs
  br i1 %i.bt, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv
  store i16 %i.at, ptr %i.bu, align 2, !tbaa !77
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %indvars.iv
  store i16 %i.at, ptr %i.bv, align 2, !tbaa !77
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv
  store i16 32767, ptr %i.bw, align 2, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.next
  store i16 %i.at, ptr %i.bx, align 2, !tbaa !77
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %indvars.iv.next
  store i16 %i.at, ptr %i.by, align 2, !tbaa !77
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.next
  store i16 32767, ptr %i.bz, align 2, !tbaa !77
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !538

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge268, %bb.l, %bb.a, %bb.b, %bb.c, %bb.d, %bb.i, %bb.f
  %lpad.loopexit.split-lp425 = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block416, %vec.epilog.middle.block, %bb.e
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !95
  %.not.i = icmp eq ptr %i.ca, null
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
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179: ; preds = %bb.k
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !62
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.l:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils10BufferArea9zeroFill_EPPv(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit:  ; preds = %bb.l
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !95  ; 8 uses
  %i.ci = load i32, ptr %i.g, align 8, !tbaa !161 ; 2 uses
  %i.cj = add nsw i32 %i.ci, 3                    ; 3 uses
  %i.ck = load i32, ptr %i.t, align 8, !tbaa !159 ; 5 uses
  %i.cl = add nsw i32 %i.cj, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.cm
  store i16 32767, ptr %i.cn, align 2, !tbaa !77
  %i.co = sext i32 %i.ci to i64
  %i.cp = getelementptr [2 x i8], ptr %i.ch, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 4
  store i16 32767, ptr %i.cq, align 2, !tbaa !77
  %i.cr = sext i32 %i.ck to i64
  %i.cs = getelementptr [2 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 2
  store i16 32767, ptr %i.ct, align 2, !tbaa !77
  store i16 32767, ptr %i.ch, align 2, !tbaa !77
  %i.cu = load i32, ptr %i.u, align 8, !tbaa !162 ; 2 uses
  %.not163264 = icmp eq i32 %i.cu, 0
  br i1 %.not163264, label %._crit_edge268, label %.lr.ph267

.lr.ph267:                                        ; preds = %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit
  %i.cv = load i32, ptr %i.v, align 4, !tbaa !152
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cx = sext i32 %i.cj to i64
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.cx
  %i.cz = load i32, ptr %i.w, align 4, !tbaa !160 ; 2 uses
  %i.da = icmp sgt i32 %i.ck, 0
  %i.db = sext i32 %i.cz to i64                   ; 2 uses
  %i.dc = zext i32 %i.cu to i64                   ; 2 uses
  %i.dd = sext i32 %i.cj to i64
  %wide.trip.count299 = zext i32 %i.ck to i64     ; 4 uses
  %i.de = shl nuw nsw i64 %wide.trip.count299, 1  ; 5 uses
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.de
  %i.df = shl nuw nsw i64 %i.dc, 1
  %i.dg = add nsw i64 %i.df, -2
  %i.dh = mul i64 %i.dg, %i.db
  %i.di = shl i64 %18, 1
  %i.dj = add i64 %i.dh, %i.di
  %i.dk = add i64 %i.dj, %i.de                    ; 2 uses
  %scevgep357 = getelementptr i8, ptr %20, i64 %i.dk ; 5 uses
  %scevgep358 = getelementptr i8, ptr %14, i64 %i.dk ; 2 uses
  %min.iters.check = icmp ult i32 %i.ck, 16
  %stride.check = icmp slt i32 %i.cz, 0
  %bound0379 = icmp ult ptr %21, %scevgep358
  %bound1380 = icmp ult ptr %19, %scevgep357
  %found.conflict381 = and i1 %bound0379, %bound1380
  %n.vec = and i64 %wide.trip.count299, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count299
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph267, %._crit_edge263
  %indvars.iv301 = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next302, %._crit_edge263 ] ; 3 uses
  %.0239265 = phi i16 [ 0, %.lr.ph267 ], [ %.1.lcssa, %._crit_edge263 ]
  %i.dl = sext i16 %.0239265 to i32
  %i.dm = add nsw i32 %i.cv, %i.dl                ; 3 uses
  %i.dn = and i64 %indvars.iv301, 1
  %.not170 = icmp eq i64 %i.dn, 0                 ; 2 uses
  %i.do = select i1 %.not170, ptr %i.cy, ptr %i.cw ; 9 uses
  %i.dp = select i1 %.not170, i64 1, i64 %i.dd    ; 2 uses
  %i.dq = getelementptr [2 x i8], ptr %i.ch, i64 %i.dp ; 7 uses
  %i.dr = mul nsw i64 %indvars.iv301, %i.db       ; 2 uses
  %i.ds = getelementptr inbounds [2 x i8], ptr %19, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds [2 x i8], ptr %21, i64 %i.dr ; 2 uses
  br i1 %i.da, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.m
  %i.du = load i32, ptr %i.x, align 8, !tbaa !151 ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph262
  %i.dv = shl nsw i64 %i.dp, 1
  %scevgep356 = getelementptr i8, ptr %scevgep, i64 %i.dv ; 5 uses
  %scevgep359 = getelementptr i8, ptr %i.do, i64 %i.de ; 2 uses
  %scevgep360 = getelementptr i8, ptr %i.do, i64 -2 ; 3 uses
  %scevgep361 = getelementptr i8, ptr %scevgep360, i64 %i.de ; 2 uses
  %scevgep362 = getelementptr i8, ptr %i.do, i64 2 ; 3 uses
  %scevgep363 = getelementptr i8, ptr %scevgep362, i64 %i.de ; 2 uses
  %bound0 = icmp ult ptr %i.dq, %scevgep357
  %bound1 = icmp ult ptr %21, %scevgep356
  %found.conflict = and i1 %bound0, %bound1
  %i.dw = or i1 %found.conflict, %stride.check
  %bound0364 = icmp ult ptr %i.dq, %scevgep358
  %bound1365 = icmp ult ptr %19, %scevgep356
  %found.conflict366 = and i1 %bound0364, %bound1365
  %conflict.rdx = or i1 %i.dw, %found.conflict366
  %bound0367 = icmp ult ptr %i.dq, %scevgep359
  %bound1368 = icmp ult ptr %i.do, %scevgep356
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %conflict.rdx, %found.conflict369
  %bound0371 = icmp ult ptr %i.dq, %scevgep361
  %bound1372 = icmp ult ptr %scevgep360, %scevgep356
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %conflict.rdx370, %found.conflict373
  %bound0375 = icmp ult ptr %i.dq, %scevgep363
  %bound1376 = icmp ult ptr %scevgep362, %scevgep356
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %conflict.rdx374, %found.conflict377
  %conflict.rdx382 = or i1 %conflict.rdx378, %found.conflict381
  %bound0383 = icmp ult ptr %21, %scevgep359
  %bound1384 = icmp ult ptr %i.do, %scevgep357
  %found.conflict385 = and i1 %bound0383, %bound1384
  %conflict.rdx386 = or i1 %conflict.rdx382, %found.conflict385
  %bound0387 = icmp ult ptr %21, %scevgep361
  %bound1388 = icmp ult ptr %scevgep360, %scevgep357
  %found.conflict389 = and i1 %bound0387, %bound1388
  %conflict.rdx390 = or i1 %conflict.rdx386, %found.conflict389
  %bound0391 = icmp ult ptr %21, %scevgep363
  %bound1392 = icmp ult ptr %scevgep362, %scevgep357
  %found.conflict393 = and i1 %bound0391, %bound1392
  %conflict.rdx394 = or i1 %conflict.rdx390, %found.conflict393
  br i1 %conflict.rdx394, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert395 = insertelement <8 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat396 = shufflevector <8 x i32> %broadcast.splatinsert395, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <8 x i16> [ splat (i16 32767), %vector.ph ], [ %i.ep, %vector.body ]
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %index
  %wide.load = load <8 x i16>, ptr %i.dx, align 2, !tbaa !77, !alias.scope !556
  %i.dy = sext <8 x i16> %wide.load to <8 x i32>
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %index ; 2 uses
  %wide.load397 = load <8 x i16>, ptr %i.dz, align 2, !tbaa !77, !alias.scope !557
  %i.ea = sext <8 x i16> %wide.load397 to <8 x i32>
  %i.eb = getelementptr i8, ptr %i.dz, i64 -2
  %wide.load398 = load <8 x i16>, ptr %i.eb, align 2, !tbaa !77, !alias.scope !558
  %i.ec = sext <8 x i16> %wide.load398 to <8 x i32>
  %i.ed = add nsw <8 x i32> %broadcast.splat, %i.ec
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %index
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %wide.load399 = load <8 x i16>, ptr %i.ef, align 2, !tbaa !77, !alias.scope !559
  %i.eg = sext <8 x i16> %wide.load399 to <8 x i32>
  %i.eh = add nsw <8 x i32> %broadcast.splat, %i.eg
  %i.ei = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat396, <8 x i32> %i.eh)
  %i.ej = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ei, <8 x i32> %i.ed)
  %i.ek = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ej, <8 x i32> %i.ea)
  %i.el = sub <8 x i32> %i.dy, %broadcast.splat396
  %i.em = add <8 x i32> %i.el, %i.ek              ; 2 uses
  %i.en = trunc <8 x i32> %i.em to <8 x i16>      ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %index
  store <8 x i16> %i.en, ptr %i.eo, align 2, !tbaa !77, !alias.scope !560, !noalias !561
  %i.ep = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi, <8 x i16> %i.en) ; 2 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %index ; 2 uses
  %wide.load400 = load <8 x i16>, ptr %i.eq, align 2, !tbaa !77, !alias.scope !562, !noalias !563
  %i.er = sext <8 x i16> %wide.load400 to <8 x i32>
  %i.es = add nsw <8 x i32> %i.em, %i.er
  %i.et = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.es, <8 x i32> splat (i32 -32768))
  %i.eu = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.et, <8 x i32> splat (i32 32767))
  %i.ev = trunc nsw <8 x i32> %i.eu to <8 x i16>
  store <8 x i16> %i.ev, ptr %i.eq, align 2, !tbaa !77, !alias.scope !562, !noalias !563
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %i.ex = call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %i.ep) ; 2 uses
  br i1 %cmp.n, label %._crit_edge263, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph262, %middle.block
  %indvars.iv297.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph262 ], [ %n.vec, %middle.block ]
  %.1259.ph = phi i16 [ 32767, %vector.memcheck ], [ 32767, %.lr.ph262 ], [ %i.ex, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %scalar.ph ], [ %indvars.iv297.ph, %scalar.ph.preheader ] ; 5 uses
  %.1259 = phi i16 [ %.sroa.speculated220, %scalar.ph ], [ %.1259.ph, %scalar.ph.preheader ]
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %indvars.iv297
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !77
  %i.fa = sext i16 %i.ez to i32
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv297 ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !77
  %i.fd = sext i16 %i.fc to i32
  %i.fe = getelementptr i8, ptr %i.fb, i64 -2
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !77
  %i.fg = sext i16 %i.ff to i32
  %i.fh = add nsw i32 %i.du, %i.fg
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 3 uses
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv.next298
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !77
  %i.fk = sext i16 %i.fj to i32
  %i.fl = add nsw i32 %i.du, %i.fk
  %i.fm = call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.fl)
  %i.fn = call i32 @llvm.smin.i32(i32 %i.fm, i32 %i.fh)
  %.sroa.speculated228 = call i32 @llvm.smin.i32(i32 %i.fn, i32 %i.fd)
  %i.fo = sub i32 %i.fa, %i.dm
  %i.fp = add i32 %i.fo, %.sroa.speculated228     ; 2 uses
  %i.fq = trunc i32 %i.fp to i16                  ; 2 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %indvars.iv297
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !77
  %.sroa.speculated220 = call i16 @llvm.smin.i16(i16 %.1259, i16 %i.fq) ; 2 uses
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %indvars.iv297 ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !77
  %i.fu = sext i16 %i.ft to i32
  %i.fv = add nsw i32 %i.fp, %i.fu
  %i.fw = call i32 @llvm.smax.i32(i32 %i.fv, i32 -32768)
  %i.fx = call i32 @llvm.smin.i32(i32 %i.fw, i32 32767)
  %i.fy = trunc nsw i32 %i.fx to i16
  store i16 %i.fy, ptr %i.fs, align 2, !tbaa !77
  %exitcond300.not = icmp eq i64 %indvars.iv.next298, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge263, label %scalar.ph, !llvm.loop !547

._crit_edge263:                                   ; preds = %scalar.ph, %middle.block, %bb.m
  %.1.lcssa = phi i16 [ 32767, %bb.m ], [ %i.ex, %middle.block ], [ %.sroa.speculated220, %scalar.ph ]
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %.not163 = icmp eq i64 %indvars.iv.next302, %i.dc
  br i1 %.not163, label %._crit_edge268, label %bb.m, !llvm.loop !548

._crit_edge268:                                   ; preds = %._crit_edge263, %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit
  invoke void @_ZN2cv5utils10BufferArea9zeroFill_EPPv(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit197 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit197: ; preds = %._crit_edge268
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !95  ; 7 uses
  %i.ga = load i32, ptr %i.g, align 8, !tbaa !161 ; 2 uses
  %i.gb = add nsw i32 %i.ga, 3                    ; 3 uses
  %i.gc = load i32, ptr %i.t, align 8, !tbaa !159 ; 6 uses
  %i.gd = add nsw i32 %i.gb, %i.gc
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.ge
  store i16 32767, ptr %i.gf, align 2, !tbaa !77
  %i.gg = sext i32 %i.ga to i64
  %i.gh = getelementptr [2 x i8], ptr %i.fz, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 4
  store i16 32767, ptr %i.gi, align 2, !tbaa !77
  %i.gj = sext i32 %i.gc to i64
  %i.gk = getelementptr [2 x i8], ptr %i.fz, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.gk, i64 2
  store i16 32767, ptr %i.gl, align 2, !tbaa !77
  store i16 32767, ptr %i.fz, align 2, !tbaa !77
  %i.gm = load i32, ptr %i.u, align 8, !tbaa !162 ; 2 uses
  %.not166282 = icmp eq i32 %i.gm, 0
  br i1 %.not166282, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit197
  %i.gn = load i32, ptr %i.v, align 4, !tbaa !152
  %i.go = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gp = sext i32 %i.gb to i64
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.gp
  %i.gr = load i32, ptr %i.w, align 4, !tbaa !160
  %i.gs = icmp sgt i32 %i.gc, 0
  %i.gt = load ptr, ptr %i.b, align 8
  %i.gu = load ptr, ptr %i.c, align 8
  %i.gv = add nsw i32 %i.gc, -1
  %i.gw = sext i32 %i.gm to i64
  %i.gx = sext i32 %i.gr to i64
  %wide.trip.count305 = zext nneg i32 %i.gc to i64
  %wide.trip.count310 = zext nneg i32 %i.gc to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph285, %.thread243
  %indvars.iv312 = phi i64 [ %i.gw, %.lr.ph285 ], [ %indvars.iv.next313, %.thread243 ]
  %.2240283 = phi i16 [ 0, %.lr.ph285 ], [ %.3241.lcssa348, %.thread243 ]
  %indvars.iv.next313 = add nsw i64 %indvars.iv312, -1 ; 4 uses
  %i.gy = sext i16 %.2240283 to i32
  %i.gz = add nsw i32 %i.gn, %i.gy                ; 2 uses
  %i.ha = trunc nsw i64 %indvars.iv.next313 to i32 ; 2 uses
  %i.hb = and i32 %i.ha, 1
  %.not169 = icmp eq i32 %i.hb, 0                 ; 2 uses
  %i.hc = select i1 %.not169, ptr %i.gq, ptr %i.go ; 2 uses
  %narrow248 = select i1 %.not169, i32 1, i32 %i.gb
  %i.hd = sext i32 %narrow248 to i64
  %i.he = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.hd
  %i.hf = mul nsw i64 %indvars.iv.next313, %i.gx  ; 2 uses
  %i.hg = getelementptr inbounds [2 x i8], ptr %19, i64 %i.hf
  %i.hh = getelementptr inbounds [2 x i8], ptr %21, i64 %i.hf ; 4 uses
  br i1 %i.gs, label %.lr.ph274, label %._crit_edge280

.lr.ph274:                                        ; preds = %bb.n
  %i.hi = load i32, ptr %i.x, align 8, !tbaa !151 ; 2 uses
  br label %bb.o

.lr.ph279:                                        ; preds = %bb.o
  %i.hj = load i32, ptr %i.y, align 8, !tbaa !153
  %i.hk = sub nsw i32 100, %i.hj
  %i.hl = sext i16 %spec.select to i32
  %i.hm = mul nsw i32 %i.hl, 100
  %i.hn = sext i16 %spec.select171 to i32         ; 2 uses
  %i.ho = add nsw i32 %i.hn, -2
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph274, %bb.o
  %indvars.iv303 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next304, %bb.o ] ; 6 uses
  %.0272 = phi i16 [ -1, %.lr.ph274 ], [ %spec.select171, %bb.o ]
  %.0140271 = phi i16 [ 32767, %.lr.ph274 ], [ %spec.select, %bb.o ] ; 2 uses
  %.3241269 = phi i16 [ 32767, %.lr.ph274 ], [ %.sroa.speculated206, %bb.o ]
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %indvars.iv303
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !77
  %i.hr = sext i16 %i.hq to i32
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %indvars.iv303 ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !77
  %i.hu = sext i16 %i.ht to i32
  %i.hv = getelementptr i8, ptr %i.hs, i64 -2
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !77
  %i.hx = sext i16 %i.hw to i32
  %i.hy = add nsw i32 %i.hi, %i.hx
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 3 uses
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %indvars.iv.next304
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !77
  %i.ib = sext i16 %i.ia to i32
  %i.ic = add nsw i32 %i.hi, %i.ib
  %i.id = call i32 @llvm.smin.i32(i32 %i.gz, i32 %i.ic)
  %i.ie = call i32 @llvm.smin.i32(i32 %i.id, i32 %i.hy)
  %.sroa.speculated212 = call i32 @llvm.smin.i32(i32 %i.ie, i32 %i.hu)
  %i.if = sub i32 %i.hr, %i.gz
  %i.ig = add i32 %i.if, %.sroa.speculated212     ; 2 uses
  %i.ih = trunc i32 %i.ig to i16                  ; 2 uses
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %indvars.iv303
  store i16 %i.ih, ptr %i.ii, align 2, !tbaa !77
  %.sroa.speculated206 = call i16 @llvm.smin.i16(i16 %.3241269, i16 %i.ih) ; 3 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %indvars.iv303 ; 2 uses
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !77
  %i.il = sext i16 %i.ik to i32
  %i.im = add nsw i32 %i.ig, %i.il
  %i.in = call i32 @llvm.smax.i32(i32 %i.im, i32 -32768)
  %i.io = call i32 @llvm.smin.i32(i32 %i.in, i32 32767)
  %i.ip = trunc nsw i32 %i.io to i16              ; 3 uses
  store i16 %i.ip, ptr %i.ij, align 2, !tbaa !77
  %i.iq = icmp sgt i16 %.0140271, %i.ip
  %i.ir = trunc i64 %indvars.iv303 to i16
  %spec.select = call i16 @llvm.smin.i16(i16 %.0140271, i16 %i.ip) ; 3 uses
  %spec.select171 = select i1 %i.iq, i16 %i.ir, i16 %.0272 ; 3 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count305
  br i1 %exitcond306.not, label %.lr.ph279, label %bb.o, !llvm.loop !549

bb.p:                                             ; preds = %.lr.ph279, %bb.q
  %indvars.iv307 = phi i64 [ 0, %.lr.ph279 ], [ %indvars.iv.next308, %bb.q ] ; 3 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %indvars.iv307
  %i.it = load i16, ptr %i.is, align 2, !tbaa !77
  %i.iu = sext i16 %i.it to i32
  %i.iv = mul nsw i32 %i.hk, %i.iu
  %i.iw = icmp slt i32 %i.iv, %i.hm
  %indvars309 = trunc i64 %indvars.iv307 to i32
  %i.ix = sub i32 %i.ho, %indvars309
  %i.iy = icmp ult i32 %i.ix, -3
  %or.cond = select i1 %i.iw, i1 %i.iy, i1 false
  br i1 %or.cond, label %.thread243, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count310
  br i1 %exitcond311.not, label %._crit_edge280, label %bb.p, !llvm.loop !550

._crit_edge280:                                   ; preds = %bb.q, %bb.n
  %.0.lcssa353 = phi i16 [ -1, %bb.n ], [ %spec.select171, %bb.q ] ; 3 uses
  %.0140.lcssa351 = phi i16 [ 32767, %bb.n ], [ %spec.select, %bb.q ] ; 2 uses
  %.3241.lcssa349 = phi i16 [ 32767, %bb.n ], [ %.sroa.speculated206, %bb.q ]
  %.pre-phi = phi i32 [ -1, %bb.n ], [ %i.hn, %bb.q ] ; 5 uses
  %i.iz = load i32, ptr %i.z, align 8, !tbaa !156
  %i.ja = add nsw i32 %i.iz, %i.ha                ; 2 uses
  %i.jb = load i32, ptr %i.aa, align 8, !tbaa !150 ; 3 uses
  %i.jc = add i32 %i.jb, %.pre-phi
  %i.jd = sub i32 %i.ja, %i.jc
  %i.je = sext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds [2 x i8], ptr %i.gt, i64 %i.je ; 2 uses
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !77
  %i.jh = icmp sgt i16 %i.jg, %.0140.lcssa351
  br i1 %i.jh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge280
  store i16 %.0140.lcssa351, ptr %i.jf, align 2, !tbaa !77
  %i.ji = trunc i32 %i.jb to i16
  %i.jj = add i16 %.0.lcssa353, %i.ji
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.gu, i64 %i.je
  store i16 %i.jj, ptr %i.jk, align 2, !tbaa !77
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge280
  %i.jl = icmp sgt i16 %.0.lcssa353, 0
  %i.jm = icmp sgt i32 %i.gv, %.pre-phi
  %or.cond245 = select i1 %i.jl, i1 %i.jm, i1 false
  br i1 %or.cond245, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.jn = zext nneg i16 %.0.lcssa353 to i64
  %i.jo = getelementptr [2 x i8], ptr %i.hh, i64 %i.jn ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 -2
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !77
  %i.jr = sext i16 %i.jq to i32                   ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 2
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !77
  %i.ju = sext i16 %i.jt to i32                   ; 2 uses
  %i.jv = add nsw i32 %i.ju, %i.jr
  %i.jw = zext nneg i32 %.pre-phi to i64
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.jw
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !77
  %i.jz = sext i16 %i.jy to i32
  %i.ka = shl nsw i32 %i.jz, 1
  %i.kb = sub nsw i32 %i.jv, %i.ka
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.kb, i32 1) ; 2 uses
  %i.kc = shl nuw nsw i32 %.pre-phi, 4
  %i.kd = sub nsw i32 %i.jr, %i.ju
  %i.ke = shl nsw i32 %i.kd, 4
  %i.kf = add nsw i32 %.sroa.speculated, %i.ke
  %i.kg = shl nuw nsw i32 %.sroa.speculated, 1
  %i.kh = sdiv i32 %i.kf, %i.kg
  %i.ki = add nsw i32 %i.kh, %i.kc
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.kj = shl nsw i32 %.pre-phi, 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3 = phi i32 [ %i.ki, %bb.t ], [ %i.kj, %bb.u ]
  %i.kk = shl nsw i32 %i.jb, 4
  %i.kl = add nsw i32 %.3, %i.kk
  %i.km = trunc i32 %i.kl to i16
  %i.kn = sext i32 %i.ja to i64
  %i.ko = getelementptr inbounds [2 x i8], ptr %11, i64 %i.kn
  store i16 %i.km, ptr %i.ko, align 2, !tbaa !77
  br label %.thread243

.thread243:                                       ; preds = %bb.p, %bb.v
  %.3241.lcssa348 = phi i16 [ %.3241.lcssa349, %bb.v ], [ %.sroa.speculated206, %bb.p ]
  %.not166 = icmp eq i64 %indvars.iv.next313, 0
  br i1 %.not166, label %._crit_edge286, label %bb.n, !llvm.loop !551

._crit_edge286:                                   ; preds = %.thread243, %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit197
  %i.kp = load i32, ptr %i.z, align 8, !tbaa !156 ; 2 uses
  %i.kq = load i32, ptr %i.ab, align 4, !tbaa !157 ; 2 uses
  %i.kr = icmp slt i32 %i.kp, %i.kq
  br i1 %i.kr, label %.lr.ph289, label %._crit_edge290

.lr.ph289:                                        ; preds = %._crit_edge286
  %i.ks = load i32, ptr %i.s, align 4, !tbaa !158 ; 2 uses
  %i.kt = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ku = trunc i32 %i.ks to i16
  %i.kv = sext i32 %i.kp to i64
  %wide.trip.count317 = sext i32 %i.kq to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph289, %bb.ae
  %indvars.iv314 = phi i64 [ %i.kv, %.lr.ph289 ], [ %indvars.iv.next315, %bb.ae ] ; 3 uses
  %i.kw = getelementptr inbounds [2 x i8], ptr %11, i64 %indvars.iv314 ; 2 uses
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !77
  %i.ky = sext i16 %i.kx to i32                   ; 3 uses
  %i.kz = icmp eq i32 %i.ks, %i.ky
  br i1 %i.kz, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.la = ashr i32 %i.ky, 4                       ; 2 uses
  %i.lb = add nsw i32 %i.ky, 15
  %i.lc = ashr i32 %i.lb, 4                       ; 2 uses
  %i.ld = trunc nsw i64 %indvars.iv314 to i32     ; 2 uses
  %i.le = sub nsw i32 %i.ld, %i.la                ; 3 uses
  %i.lf = sub nsw i32 %i.ld, %i.lc                ; 3 uses
  %i.lg = icmp sgt i32 %i.le, -1
  br i1 %i.lg, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.lh = load i32, ptr %i.l, align 4, !tbaa !155 ; 2 uses
  %i.li = icmp slt i32 %i.le, %i.lh
  br i1 %i.li, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.lj = zext nneg i32 %i.le to i64
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %i.lj
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !77
  %i.lm = sext i16 %i.ll to i32                   ; 2 uses
  %i.ln = load i32, ptr %i.aa, align 8, !tbaa !150 ; 2 uses
  %.not167 = icmp sgt i32 %i.ln, %i.lm
  br i1 %.not167, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lo = sub nsw i32 %i.lm, %i.la
  %i.lp = call i32 @llvm.abs.i32(i32 %i.lo, i1 true)
  %i.lq = load i32, ptr %i.ac, align 4, !tbaa !154 ; 2 uses
  %i.lr = icmp sgt i32 %i.lp, %i.lq
  %i.ls = icmp sgt i32 %i.lf, -1
  %i.lt = icmp slt i32 %i.lf, %i.lh
  %i.lu = and i1 %i.ls, %i.lt
  %or.cond172 = select i1 %i.lr, i1 %i.lu, i1 false
  br i1 %or.cond172, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.lv = zext nneg i32 %i.lf to i64
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %i.lv
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !77
  %i.ly = sext i16 %i.lx to i32                   ; 2 uses
  %.not168 = icmp sgt i32 %i.ln, %i.ly
  br i1 %.not168, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lz = sub nsw i32 %i.ly, %i.lc
  %i.ma = call i32 @llvm.abs.i32(i32 %i.lz, i1 true)
  %i.mb = icmp sgt i32 %i.ma, %i.lq
  br i1 %i.mb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i16 %i.ku, ptr %i.kw, align 2, !tbaa !77
  br label %bb.ae

bb.ae:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.w
  %indvars.iv.next315 = add nsw i64 %indvars.iv314, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next315, %wide.trip.count317
  br i1 %exitcond318.not, label %._crit_edge290, label %bb.w, !llvm.loop !552

._crit_edge290:                                   ; preds = %bb.ae, %._crit_edge286
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.mc = trunc nsw i64 %indvars.iv.next320 to i32
  %.not = icmp eq i32 %i.f, %i.mc
  br i1 %.not, label %._crit_edge294, label %bb.e, !llvm.loop !553

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180
  %.pn.pn = phi { ptr, i32 } [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit.split-lp425, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
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
