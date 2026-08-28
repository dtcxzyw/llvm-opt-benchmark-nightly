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
  %i.ah = load i8, ptr %i.b, align 1, !tbaa !394
  %i.ai = zext i8 %i.ah to i64
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !395 ; 3 uses
  %i.ak = mul i64 %i.aj, %i.ai
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !384
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !209
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load i8, ptr %i.e, align 2, !tbaa !393
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
  %i.az = load i32, ptr %1, align 4, !tbaa !196   ; 2 uses
  %i.ba = load i8, ptr %i.b, align 1, !tbaa !394
  %i.bb = zext i8 %i.ba to i64
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !384
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !209
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.bb
  %i.bf = load i8, ptr %i.e, align 2, !tbaa !393
  %i.bg = zext i8 %i.bf to i32
  %i.bh = mul nsw i32 %i.az, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bi
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !194
  %i.bl = sub nsw i32 %i.bk, %i.az
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.bj, i8 0, i64 %i.bn, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK2cv10BufferSGBM8getMinLrEhih.exit
  %.val.1 = load i32, ptr %1, align 4, !tbaa !196 ; 3 uses
  %.val11.1 = load i32, ptr %i.a, align 4         ; 2 uses
  %i.bo = icmp eq i32 %.val.1, -2147483648
  %i.bp = icmp eq i32 %.val11.1, 2147483647
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.d, label %_ZNK2cv10BufferSGBM8getMinLrEhih.exit.1

_ZNK2cv10BufferSGBM8getMinLrEhih.exit.1:          ; preds = %bb.c
  %i.br = load i8, ptr %i.b, align 1, !tbaa !394
  %i.bs = zext i8 %i.br to i64
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !395 ; 3 uses
  %i.bu = mul i64 %i.bt, %i.bs
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !384
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !209
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.bu
  %i.bz = load i8, ptr %i.e, align 2, !tbaa !393
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
  %i.ck = load i32, ptr %1, align 4, !tbaa !196   ; 2 uses
  %i.cl = load i8, ptr %i.b, align 1, !tbaa !394
  %i.cm = zext i8 %i.cl to i64
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !384
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !209
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.cm
  %i.cr = load i8, ptr %i.e, align 2, !tbaa !393
  %i.cs = zext i8 %i.cr to i32
  %i.ct = mul nsw i32 %i.ck, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.cu
  %i.cw = load i32, ptr %i.a, align 4, !tbaa !194
  %i.cx = sub nsw i32 %i.cw, %i.ck
  %i.cy = sext i32 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.cv, i8 0, i64 %i.cz, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !384
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !209
  %i.dd = load i64, ptr %0, align 8, !tbaa !392
  %i.de = load i8, ptr %i.e, align 2, !tbaa !393
  %i.df = zext i8 %i.de to i64
  %i.dg = mul i64 %i.dd, %i.df
  %i.dh = load i8, ptr %i.b, align 1, !tbaa !394
  %i.di = zext i8 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 1
  %i.dk = add i64 %i.dj, %i.dg
  %i.dl = load i64, ptr %i.c, align 8, !tbaa !395
  %i.dm = shl i64 %i.dl, 1
  %i.dn = mul i64 %i.dm, %i.dk
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.dc, i8 0, i64 %i.dn, i1 false)
  %i.do = load ptr, ptr %i.f, align 8, !tbaa !384
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !209
  %i.dr = load i64, ptr %0, align 8, !tbaa !392
  %i.ds = load i8, ptr %i.e, align 2, !tbaa !393
  %i.dt = zext i8 %i.ds to i64
  %i.du = load i8, ptr %i.b, align 1, !tbaa !394
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
  %i.d = load i32, ptr %1, align 4, !tbaa !196    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !194  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !382
  %i.i = shl i32 %i.h, 1
  %i.j = add i32 %i.i, 4
  %i.k = sext i32 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr null, ptr %i.c, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %6, i1 noundef zeroext false)
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.k, i16 noundef zeroext 2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !375
  %i.n = sext i32 %i.m to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.n, i16 noundef zeroext 16)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.l, align 4, !tbaa !375
  %i.p = sext i32 %i.o to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.p, i16 noundef zeroext 16)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %6)
          to label %.preheader257 unwind label %bb.e

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
  br i1 %i.ad, label %.lr.ph293.split, label %bb.g

.lr.ph293.split:                                  ; preds = %.lr.ph293
  %7 = zext nneg i32 %i.d to i64
  br label %bb.f

._crit_edge294:                                   ; preds = %._crit_edge290, %.preheader257
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %.lr.ph293.split, %._crit_edge290
  %indvars.iv318 = phi i64 [ %7, %.lr.ph293.split ], [ %indvars.iv.next319, %._crit_edge290 ] ; 3 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !533, !nonnull !71, !align !476 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !165 ; 2 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %9 = load i64, ptr %8, align 8, !tbaa !166
  %10 = mul i64 %9, %indvars.iv318                ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.ah, i64 %10 ; 7 uses
  %12 = load ptr, ptr %i.r, align 8, !tbaa !534, !nonnull !71, !align !476 ; 4 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !347    ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %16 = load i8, ptr %15, align 8, !tbaa !397, !range !70, !noundef !71
  %17 = trunc nuw i8 %16 to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = mul i64 %i.ak, %indvars.iv318
  %18 = select i1 %17, i64 %i.al, i64 0           ; 3 uses
  %19 = getelementptr [2 x i8], ptr %14, i64 %18  ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 64
  %20 = load ptr, ptr %i.am, align 8, !tbaa !398  ; 2 uses
  %21 = getelementptr [2 x i8], ptr %20, i64 %18  ; 7 uses
  %22 = load i32, ptr %i.l, align 4, !tbaa !375   ; 4 uses
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %iter.check, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph293
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv10BufferSGBM7getCBufEi, ptr noundef nonnull @.str.2, i32 noundef 436) #24
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc
  unreachable

bb.i:                                             ; preds = %.noexc
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %4, align 8, !tbaa !66    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !62
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

iter.check:                                       ; preds = %bb.f
  %i.at = load i32, ptr %i.s, align 4, !tbaa !379
  %i.au = trunc i32 %i.at to i16                  ; 8 uses
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !209 ; 6 uses
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !209 ; 6 uses
  %wide.trip.count = zext nneg i32 %22 to i64     ; 8 uses
  %min.iters.check412 = icmp ult i32 %22, 4
  br i1 %min.iters.check412, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck406

vector.memcheck406:                               ; preds = %iter.check
  %i.ax = ptrtoaddr ptr %i.aw to i64              ; 2 uses
  %i.ay = ptrtoaddr ptr %i.av to i64              ; 2 uses
  %i.az = add i64 %10, %i.ai
  %i.ba = sub i64 %i.ay, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  %i.bb = sub i64 %i.ay, %i.ax
  %diff.check407 = icmp ugt i64 %i.bb, -32
  %conflict.rdx408 = or i1 %diff.check, %diff.check407
  %i.bc = add i64 %10, %i.ai
  %i.bd = sub i64 %i.bc, %i.ax
  %diff.check409 = icmp ugt i64 %i.bd, -32
  %conflict.rdx410 = or i1 %conflict.rdx408, %diff.check409
  br i1 %conflict.rdx410, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck406
  %min.iters.check413 = icmp ult i32 %22, 16
  br i1 %min.iters.check413, label %vec.epilog.ph, label %vector.ph414

vector.ph414:                                     ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %wide.trip.count, 12
  %n.vec415 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splatinsert416 = insertelement <8 x i16> poison, i16 %i.au, i64 0
  %broadcast.splat417 = shufflevector <8 x i16> %broadcast.splatinsert416, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %vector.ph414
  %index419 = phi i64 [ 0, %vector.ph414 ], [ %index.next420, %vector.body418 ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %index419 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <8 x i16> %broadcast.splat417, ptr %i.bf, align 2, !tbaa !80
  store <8 x i16> %broadcast.splat417, ptr %i.bg, align 2, !tbaa !80
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %index419 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <8 x i16> %broadcast.splat417, ptr %i.bh, align 2, !tbaa !80
  store <8 x i16> %broadcast.splat417, ptr %i.bi, align 2, !tbaa !80
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %index419 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <8 x i16> splat (i16 32767), ptr %i.bj, align 2, !tbaa !80
  store <8 x i16> splat (i16 32767), ptr %i.bk, align 2, !tbaa !80
  %index.next420 = add nuw i64 %index419, 16      ; 2 uses
  %i.bl = icmp eq i64 %index.next420, %n.vec415
  br i1 %i.bl, label %middle.block421, label %vector.body418, !llvm.loop !535

middle.block421:                                  ; preds = %vector.body418
  %cmp.n422 = icmp eq i64 %n.vec415, %wide.trip.count
  br i1 %cmp.n422, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block421
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec415, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec423 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert424 = insertelement <4 x i16> poison, i16 %i.au, i64 0
  %broadcast.splat425 = shufflevector <4 x i16> %broadcast.splatinsert424, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index426 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next427, %vec.epilog.vector.body ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %index426
  store <4 x i16> %broadcast.splat425, ptr %i.bm, align 2, !tbaa !80
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %index426
  store <4 x i16> %broadcast.splat425, ptr %i.bn, align 2, !tbaa !80
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %index426
  store <4 x i16> splat (i16 32767), ptr %i.bo, align 2, !tbaa !80
  %index.next427 = add nuw i64 %index426, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next427, %n.vec423
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !536

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n428 = icmp eq i64 %n.vec423, %wide.trip.count
  br i1 %cmp.n428, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck406, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck406 ], [ %n.vec415, %vec.epilog.iter.check ], [ %n.vec423, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.ph
  store i16 %i.au, ptr %i.bq, align 2, !tbaa !80
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %indvars.iv.ph
  store i16 %i.au, ptr %i.br, align 2, !tbaa !80
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.ph
  store i16 32767, ptr %i.bs, align 2, !tbaa !80
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bt = add nsw i64 %wide.trip.count, -1
  %i.bu = icmp eq i64 %indvars.iv.ph, %i.bt
  br i1 %i.bu, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv
  store i16 %i.au, ptr %i.bv, align 2, !tbaa !80
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %indvars.iv
  store i16 %i.au, ptr %i.bw, align 2, !tbaa !80
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv
  store i16 32767, ptr %i.bx, align 2, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.next
  store i16 %i.au, ptr %i.by, align 2, !tbaa !80
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %indvars.iv.next
  store i16 %i.au, ptr %i.bz, align 2, !tbaa !80
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.next
  store i16 32767, ptr %i.ca, align 2, !tbaa !80
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !537

bb.j:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.n, %._crit_edge268
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block421, %vec.epilog.middle.block, %bb.f
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !209
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc182 unwind label %.loopexit.split-lp

.noexc182:                                        ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_, ptr noundef nonnull @.str.25, i32 noundef 90) #24
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc182
  unreachable

bb.m:                                             ; preds = %.noexc182
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %2, align 8, !tbaa !66    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179: ; preds = %bb.m
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !62
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.n:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils10BufferArea9zeroFill_EPPv(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit unwind label %.loopexit

_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit:  ; preds = %bb.n
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !209 ; 8 uses
  %i.ck = load i32, ptr %i.g, align 8, !tbaa !382 ; 2 uses
  %i.cl = add nsw i32 %i.ck, 3                    ; 3 uses
  %i.cm = load i32, ptr %i.t, align 8, !tbaa !380 ; 5 uses
  %i.cn = add nsw i32 %i.cl, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.co
  store i16 32767, ptr %i.cp, align 2, !tbaa !80
  %i.cq = sext i32 %i.ck to i64
  %i.cr = getelementptr [2 x i8], ptr %i.cj, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  store i16 32767, ptr %i.cs, align 2, !tbaa !80
  %i.ct = sext i32 %i.cm to i64
  %i.cu = getelementptr [2 x i8], ptr %i.cj, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 2
  store i16 32767, ptr %i.cv, align 2, !tbaa !80
  store i16 32767, ptr %i.cj, align 2, !tbaa !80
  %i.cw = load i32, ptr %i.u, align 8, !tbaa !383 ; 2 uses
  %.not163264 = icmp eq i32 %i.cw, 0
  br i1 %.not163264, label %._crit_edge268, label %.lr.ph267

.lr.ph267:                                        ; preds = %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit
  %i.cx = load i32, ptr %i.v, align 4, !tbaa !371
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cz = sext i32 %i.cl to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.cz
  %i.db = load i32, ptr %i.w, align 4, !tbaa !381 ; 2 uses
  %i.dc = icmp sgt i32 %i.cm, 0
  %i.dd = sext i32 %i.db to i64                   ; 2 uses
  %i.de = zext i32 %i.cw to i64                   ; 2 uses
  %i.df = sext i32 %i.cl to i64
  %wide.trip.count298 = zext i32 %i.cm to i64     ; 4 uses
  %i.dg = shl nuw nsw i64 %wide.trip.count298, 1  ; 5 uses
  %scevgep = getelementptr i8, ptr %i.cj, i64 %i.dg
  %i.dh = shl nuw nsw i64 %i.de, 1
  %i.di = add nsw i64 %i.dh, -2
  %i.dj = mul i64 %i.di, %i.dd
  %i.dk = shl i64 %18, 1
  %i.dl = add i64 %i.dj, %i.dk
  %i.dm = add i64 %i.dl, %i.dg                    ; 2 uses
  %scevgep356 = getelementptr i8, ptr %20, i64 %i.dm ; 5 uses
  %scevgep357 = getelementptr i8, ptr %14, i64 %i.dm ; 2 uses
  %min.iters.check = icmp ult i32 %i.cm, 16
  %stride.check366 = icmp slt i32 %i.db, 0
  %bound0379 = icmp ult ptr %21, %scevgep357
  %bound1380 = icmp ult ptr %19, %scevgep356
  %found.conflict381 = and i1 %bound0379, %bound1380
  %n.vec = and i64 %wide.trip.count298, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count298
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph267, %._crit_edge263
  %indvars.iv300 = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next301, %._crit_edge263 ] ; 3 uses
  %.0239265 = phi i16 [ 0, %.lr.ph267 ], [ %.1.lcssa, %._crit_edge263 ]
  %i.dn = sext i16 %.0239265 to i32
  %i.do = add nsw i32 %i.cx, %i.dn                ; 3 uses
  %i.dp = and i64 %indvars.iv300, 1
  %.not170 = icmp eq i64 %i.dp, 0                 ; 2 uses
  %i.dq = select i1 %.not170, ptr %i.da, ptr %i.cy ; 9 uses
  %i.dr = select i1 %.not170, i64 1, i64 %i.df    ; 2 uses
  %i.ds = getelementptr [2 x i8], ptr %i.cj, i64 %i.dr ; 7 uses
  %i.dt = mul nsw i64 %indvars.iv300, %i.dd       ; 2 uses
  %i.du = getelementptr inbounds [2 x i8], ptr %19, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds [2 x i8], ptr %21, i64 %i.dt ; 2 uses
  br i1 %i.dc, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.o
  %i.dw = load i32, ptr %i.x, align 8, !tbaa !370 ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph262
  %i.dx = shl nsw i64 %i.dr, 1
  %scevgep355 = getelementptr i8, ptr %scevgep, i64 %i.dx ; 5 uses
  %scevgep358 = getelementptr i8, ptr %i.dq, i64 %i.dg ; 2 uses
  %scevgep359 = getelementptr i8, ptr %i.dq, i64 -2 ; 3 uses
  %scevgep360 = getelementptr i8, ptr %scevgep359, i64 %i.dg ; 2 uses
  %scevgep361 = getelementptr i8, ptr %i.dq, i64 2 ; 3 uses
  %scevgep362 = getelementptr i8, ptr %scevgep361, i64 %i.dg ; 2 uses
  %bound0 = icmp ult ptr %i.ds, %scevgep356
  %bound1 = icmp ult ptr %21, %scevgep355
  %found.conflict = and i1 %bound0, %bound1
  %bound0363 = icmp ult ptr %i.ds, %scevgep357
  %bound1364 = icmp ult ptr %19, %scevgep355
  %found.conflict365 = and i1 %bound0363, %bound1364
  %i.dy = or i1 %found.conflict365, %stride.check366
  %conflict.rdx = or i1 %found.conflict, %i.dy
  %bound0367 = icmp ult ptr %i.ds, %scevgep358
  %bound1368 = icmp ult ptr %i.dq, %scevgep355
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %conflict.rdx, %found.conflict369
  %bound0371 = icmp ult ptr %i.ds, %scevgep360
  %bound1372 = icmp ult ptr %scevgep359, %scevgep355
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %conflict.rdx370, %found.conflict373
  %bound0375 = icmp ult ptr %i.ds, %scevgep362
  %bound1376 = icmp ult ptr %scevgep361, %scevgep355
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %conflict.rdx374, %found.conflict377
  %conflict.rdx384 = or i1 %found.conflict381, %conflict.rdx378
  %bound0385 = icmp ult ptr %21, %scevgep358
  %bound1386 = icmp ult ptr %i.dq, %scevgep356
  %found.conflict387 = and i1 %bound0385, %bound1386
  %conflict.rdx389 = or i1 %found.conflict387, %conflict.rdx384
  %bound0390 = icmp ult ptr %21, %scevgep360
  %bound1391 = icmp ult ptr %scevgep359, %scevgep356
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx394 = or i1 %found.conflict392, %conflict.rdx389
  %bound0395 = icmp ult ptr %21, %scevgep362
  %bound1396 = icmp ult ptr %scevgep361, %scevgep356
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx399 = or i1 %found.conflict397, %conflict.rdx394
  br i1 %conflict.rdx399, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.dw, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert400 = insertelement <8 x i32> poison, i32 %i.do, i64 0
  %broadcast.splat401 = shufflevector <8 x i32> %broadcast.splatinsert400, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <8 x i16> [ splat (i16 32767), %vector.ph ], [ %i.er, %vector.body ]
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %index
  %wide.load = load <8 x i16>, ptr %i.dz, align 2, !tbaa !80, !alias.scope !538
  %i.ea = sext <8 x i16> %wide.load to <8 x i32>
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %index ; 2 uses
  %wide.load402 = load <8 x i16>, ptr %i.eb, align 2, !tbaa !80, !alias.scope !541
  %i.ec = sext <8 x i16> %wide.load402 to <8 x i32>
  %i.ed = getelementptr i8, ptr %i.eb, i64 -2
  %wide.load403 = load <8 x i16>, ptr %i.ed, align 2, !tbaa !80, !alias.scope !543
  %i.ee = sext <8 x i16> %wide.load403 to <8 x i32>
  %i.ef = add nsw <8 x i32> %broadcast.splat, %i.ee
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %index
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %wide.load404 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !80, !alias.scope !545
  %i.ei = sext <8 x i16> %wide.load404 to <8 x i32>
  %i.ej = add nsw <8 x i32> %broadcast.splat, %i.ei
  %i.ek = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat401, <8 x i32> %i.ej)
  %i.el = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ek, <8 x i32> %i.ef)
  %i.em = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.el, <8 x i32> %i.ec)
  %i.en = sub <8 x i32> %i.ea, %broadcast.splat401
  %i.eo = add <8 x i32> %i.en, %i.em              ; 2 uses
  %i.ep = trunc <8 x i32> %i.eo to <8 x i16>      ; 2 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %index
  store <8 x i16> %i.ep, ptr %i.eq, align 2, !tbaa !80, !alias.scope !547, !noalias !549
  %i.er = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi, <8 x i16> %i.ep) ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %index ; 2 uses
  %wide.load405 = load <8 x i16>, ptr %i.es, align 2, !tbaa !80, !alias.scope !551, !noalias !552
  %i.et = sext <8 x i16> %wide.load405 to <8 x i32>
  %i.eu = add nsw <8 x i32> %i.eo, %i.et
  %i.ev = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eu, <8 x i32> splat (i32 -32768))
  %i.ew = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ev, <8 x i32> splat (i32 32767))
  %i.ex = trunc nsw <8 x i32> %i.ew to <8 x i16>
  store <8 x i16> %i.ex, ptr %i.es, align 2, !tbaa !80, !alias.scope !551, !noalias !552
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !553

middle.block:                                     ; preds = %vector.body
  %i.ez = call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %i.er) ; 2 uses
  br i1 %cmp.n, label %._crit_edge263, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph262, %middle.block
  %indvars.iv296.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph262 ], [ %n.vec, %middle.block ]
  %.1259.ph = phi i16 [ 32767, %vector.memcheck ], [ 32767, %.lr.ph262 ], [ %i.ez, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv296 = phi i64 [ %indvars.iv.next297, %scalar.ph ], [ %indvars.iv296.ph, %scalar.ph.preheader ] ; 5 uses
  %.1259 = phi i16 [ %.sroa.speculated220, %scalar.ph ], [ %.1259.ph, %scalar.ph.preheader ]
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv296
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !80
  %i.fc = sext i16 %i.fb to i32
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %indvars.iv296 ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !80
  %i.ff = sext i16 %i.fe to i32
  %i.fg = getelementptr i8, ptr %i.fd, i64 -2
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !80
  %i.fi = sext i16 %i.fh to i32
  %i.fj = add nsw i32 %i.dw, %i.fi
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 3 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %indvars.iv.next297
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !80
  %i.fm = sext i16 %i.fl to i32
  %i.fn = add nsw i32 %i.dw, %i.fm
  %i.fo = call i32 @llvm.smin.i32(i32 %i.do, i32 %i.fn)
  %i.fp = call i32 @llvm.smin.i32(i32 %i.fo, i32 %i.fj)
  %.sroa.speculated228 = call i32 @llvm.smin.i32(i32 %i.fp, i32 %i.ff)
  %i.fq = sub i32 %i.fc, %i.do
  %i.fr = add i32 %i.fq, %.sroa.speculated228     ; 2 uses
  %i.fs = trunc i32 %i.fr to i16                  ; 2 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %indvars.iv296
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !80
  %.sroa.speculated220 = call i16 @llvm.smin.i16(i16 %.1259, i16 %i.fs) ; 2 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv296 ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !80
  %i.fw = sext i16 %i.fv to i32
  %i.fx = add nsw i32 %i.fr, %i.fw
  %i.fy = call i32 @llvm.smax.i32(i32 %i.fx, i32 -32768)
  %i.fz = call i32 @llvm.smin.i32(i32 %i.fy, i32 32767)
  %i.ga = trunc nsw i32 %i.fz to i16
  store i16 %i.ga, ptr %i.fu, align 2, !tbaa !80
  %exitcond299.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count298
  br i1 %exitcond299.not, label %._crit_edge263, label %scalar.ph, !llvm.loop !554

._crit_edge263:                                   ; preds = %scalar.ph, %middle.block, %bb.o
  %.1.lcssa = phi i16 [ 32767, %bb.o ], [ %i.ez, %middle.block ], [ %.sroa.speculated220, %scalar.ph ]
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %.not163 = icmp eq i64 %indvars.iv.next301, %i.de
  br i1 %.not163, label %._crit_edge268, label %bb.o, !llvm.loop !555

._crit_edge268:                                   ; preds = %._crit_edge263, %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit
  invoke void @_ZN2cv5utils10BufferArea9zeroFill_EPPv(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit197 unwind label %.loopexit

_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit197: ; preds = %._crit_edge268
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !209 ; 7 uses
  %i.gc = load i32, ptr %i.g, align 8, !tbaa !382 ; 2 uses
  %i.gd = add nsw i32 %i.gc, 3                    ; 3 uses
  %i.ge = load i32, ptr %i.t, align 8, !tbaa !380 ; 6 uses
  %i.gf = add nsw i32 %i.gd, %i.ge
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [2 x i8], ptr %i.gb, i64 %i.gg
  store i16 32767, ptr %i.gh, align 2, !tbaa !80
  %i.gi = sext i32 %i.gc to i64
  %i.gj = getelementptr [2 x i8], ptr %i.gb, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 4
  store i16 32767, ptr %i.gk, align 2, !tbaa !80
  %i.gl = sext i32 %i.ge to i64
  %i.gm = getelementptr [2 x i8], ptr %i.gb, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 2
  store i16 32767, ptr %i.gn, align 2, !tbaa !80
  store i16 32767, ptr %i.gb, align 2, !tbaa !80
  %i.go = load i32, ptr %i.u, align 8, !tbaa !383 ; 2 uses
  %.not166282 = icmp eq i32 %i.go, 0
  br i1 %.not166282, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit197
  %i.gp = load i32, ptr %i.v, align 4, !tbaa !371
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  %i.gr = sext i32 %i.gd to i64
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.gb, i64 %i.gr
  %i.gt = load i32, ptr %i.w, align 4, !tbaa !381
  %i.gu = icmp sgt i32 %i.ge, 0
  %i.gv = load ptr, ptr %i.b, align 8
  %i.gw = load ptr, ptr %i.c, align 8
  %i.gx = add nsw i32 %i.ge, -1
  %i.gy = sext i32 %i.go to i64
  %i.gz = sext i32 %i.gt to i64
  %wide.trip.count304 = zext nneg i32 %i.ge to i64
  %wide.trip.count309 = zext nneg i32 %i.ge to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph285, %.thread243
  %indvars.iv311 = phi i64 [ %i.gy, %.lr.ph285 ], [ %indvars.iv.next312, %.thread243 ]
  %.2240283 = phi i16 [ 0, %.lr.ph285 ], [ %.3241.lcssa347, %.thread243 ]
  %indvars.iv.next312 = add nsw i64 %indvars.iv311, -1 ; 4 uses
  %i.ha = sext i16 %.2240283 to i32
  %i.hb = add nsw i32 %i.gp, %i.ha                ; 2 uses
  %i.hc = trunc nsw i64 %indvars.iv.next312 to i32 ; 2 uses
  %i.hd = and i32 %i.hc, 1
  %.not169 = icmp eq i32 %i.hd, 0                 ; 2 uses
  %i.he = select i1 %.not169, ptr %i.gs, ptr %i.gq ; 2 uses
  %narrow248 = select i1 %.not169, i32 1, i32 %i.gd
  %i.hf = sext i32 %narrow248 to i64
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.gb, i64 %i.hf
  %i.hh = mul nsw i64 %indvars.iv.next312, %i.gz  ; 2 uses
  %i.hi = getelementptr inbounds [2 x i8], ptr %19, i64 %i.hh
  %i.hj = getelementptr inbounds [2 x i8], ptr %21, i64 %i.hh ; 4 uses
  br i1 %i.gu, label %.lr.ph274, label %._crit_edge280

.lr.ph274:                                        ; preds = %bb.p
  %i.hk = load i32, ptr %i.x, align 8, !tbaa !370 ; 2 uses
  br label %bb.q

.lr.ph279:                                        ; preds = %bb.q
  %i.hl = load i32, ptr %i.y, align 8, !tbaa !372
  %i.hm = sub nsw i32 100, %i.hl
  %i.hn = sext i16 %spec.select to i32
  %i.ho = mul nsw i32 %i.hn, 100
  %i.hp = sext i16 %spec.select171 to i32         ; 2 uses
  %i.hq = add nsw i32 %i.hp, -2
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph274, %bb.q
  %indvars.iv302 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next303, %bb.q ] ; 6 uses
  %.0272 = phi i16 [ -1, %.lr.ph274 ], [ %spec.select171, %bb.q ]
  %.0140271 = phi i16 [ 32767, %.lr.ph274 ], [ %spec.select, %bb.q ] ; 2 uses
  %.3241269 = phi i16 [ 32767, %.lr.ph274 ], [ %.sroa.speculated206, %bb.q ]
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %indvars.iv302
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !80
  %i.ht = sext i16 %i.hs to i32
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %indvars.iv302 ; 2 uses
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !80
  %i.hw = sext i16 %i.hv to i32
  %i.hx = getelementptr i8, ptr %i.hu, i64 -2
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !80
  %i.hz = sext i16 %i.hy to i32
  %i.ia = add nsw i32 %i.hk, %i.hz
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 3 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %indvars.iv.next303
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !80
  %i.id = sext i16 %i.ic to i32
  %i.ie = add nsw i32 %i.hk, %i.id
  %i.if = call i32 @llvm.smin.i32(i32 %i.hb, i32 %i.ie)
  %i.ig = call i32 @llvm.smin.i32(i32 %i.if, i32 %i.ia)
  %.sroa.speculated212 = call i32 @llvm.smin.i32(i32 %i.ig, i32 %i.hw)
  %i.ih = sub i32 %i.ht, %i.hb
  %i.ii = add i32 %i.ih, %.sroa.speculated212     ; 2 uses
  %i.ij = trunc i32 %i.ii to i16                  ; 2 uses
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %indvars.iv302
  store i16 %i.ij, ptr %i.ik, align 2, !tbaa !80
  %.sroa.speculated206 = call i16 @llvm.smin.i16(i16 %.3241269, i16 %i.ij) ; 3 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %indvars.iv302 ; 2 uses
  %i.im = load i16, ptr %i.il, align 2, !tbaa !80
  %i.in = sext i16 %i.im to i32
  %i.io = add nsw i32 %i.ii, %i.in
  %i.ip = call i32 @llvm.smax.i32(i32 %i.io, i32 -32768)
  %i.iq = call i32 @llvm.smin.i32(i32 %i.ip, i32 32767)
  %i.ir = trunc nsw i32 %i.iq to i16              ; 3 uses
  store i16 %i.ir, ptr %i.il, align 2, !tbaa !80
  %i.is = icmp sgt i16 %.0140271, %i.ir
  %i.it = trunc i64 %indvars.iv302 to i16
  %spec.select = call i16 @llvm.smin.i16(i16 %.0140271, i16 %i.ir) ; 3 uses
  %spec.select171 = select i1 %i.is, i16 %i.it, i16 %.0272 ; 3 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count304
  br i1 %exitcond305.not, label %.lr.ph279, label %bb.q, !llvm.loop !556

bb.r:                                             ; preds = %.lr.ph279, %bb.s
  %indvars.iv306 = phi i64 [ 0, %.lr.ph279 ], [ %indvars.iv.next307, %bb.s ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %indvars.iv306
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !80
  %i.iw = sext i16 %i.iv to i32
  %i.ix = mul nsw i32 %i.hm, %i.iw
  %i.iy = icmp slt i32 %i.ix, %i.ho
  %indvars308 = trunc i64 %indvars.iv306 to i32
  %i.iz = sub i32 %i.hq, %indvars308
  %i.ja = icmp ult i32 %i.iz, -3
  %or.cond = select i1 %i.iy, i1 %i.ja, i1 false
  br i1 %or.cond, label %.thread243, label %bb.s

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %exitcond310.not = icmp eq i64 %indvars.iv.next307, %wide.trip.count309
  br i1 %exitcond310.not, label %._crit_edge280, label %bb.r, !llvm.loop !557

._crit_edge280:                                   ; preds = %bb.s, %bb.p
  %.0.lcssa352 = phi i16 [ -1, %bb.p ], [ %spec.select171, %bb.s ] ; 3 uses
  %.0140.lcssa350 = phi i16 [ 32767, %bb.p ], [ %spec.select, %bb.s ] ; 2 uses
  %.3241.lcssa348 = phi i16 [ 32767, %bb.p ], [ %.sroa.speculated206, %bb.s ]
  %.pre-phi = phi i32 [ -1, %bb.p ], [ %i.hp, %bb.s ] ; 5 uses
  %i.jb = load i32, ptr %i.z, align 8, !tbaa !376
  %i.jc = add nsw i32 %i.jb, %i.hc                ; 2 uses
  %i.jd = load i32, ptr %i.aa, align 8, !tbaa !367 ; 3 uses
  %i.je = add i32 %i.jd, %.pre-phi
  %i.jf = sub i32 %i.jc, %i.je
  %i.jg = sext i32 %i.jf to i64                   ; 2 uses
  %i.jh = getelementptr inbounds [2 x i8], ptr %i.gv, i64 %i.jg ; 2 uses
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !80
  %i.jj = icmp sgt i16 %i.ji, %.0140.lcssa350
  br i1 %i.jj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge280
  store i16 %.0140.lcssa350, ptr %i.jh, align 2, !tbaa !80
  %i.jk = trunc i32 %i.jd to i16
  %i.jl = add i16 %.0.lcssa352, %i.jk
  %i.jm = getelementptr inbounds [2 x i8], ptr %i.gw, i64 %i.jg
  store i16 %i.jl, ptr %i.jm, align 2, !tbaa !80
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge280
  %i.jn = icmp sgt i16 %.0.lcssa352, 0
  %i.jo = icmp sgt i32 %i.gx, %.pre-phi
  %or.cond245 = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond245, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.jp = zext nneg i16 %.0.lcssa352 to i64
  %i.jq = getelementptr [2 x i8], ptr %i.hj, i64 %i.jp ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 -2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !80
  %i.jt = sext i16 %i.js to i32                   ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 2
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !80
  %i.jw = sext i16 %i.jv to i32                   ; 2 uses
  %i.jx = add nsw i32 %i.jw, %i.jt
  %i.jy = zext nneg i32 %.pre-phi to i64
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %i.jy
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !80
  %i.kb = sext i16 %i.ka to i32
  %i.kc = shl nsw i32 %i.kb, 1
  %i.kd = sub nsw i32 %i.jx, %i.kc
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.kd, i32 1) ; 2 uses
  %i.ke = shl nuw nsw i32 %.pre-phi, 4
  %i.kf = sub nsw i32 %i.jt, %i.jw
  %i.kg = shl nsw i32 %i.kf, 4
  %i.kh = add nsw i32 %.sroa.speculated, %i.kg
  %i.ki = shl nuw nsw i32 %.sroa.speculated, 1
  %i.kj = sdiv i32 %i.kh, %i.ki
  %i.kk = add nsw i32 %i.kj, %i.ke
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.kl = shl nsw i32 %.pre-phi, 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3 = phi i32 [ %i.kk, %bb.v ], [ %i.kl, %bb.w ]
  %i.km = shl nsw i32 %i.jd, 4
  %i.kn = add nsw i32 %.3, %i.km
  %i.ko = trunc i32 %i.kn to i16
  %i.kp = sext i32 %i.jc to i64
  %i.kq = getelementptr inbounds [2 x i8], ptr %11, i64 %i.kp
  store i16 %i.ko, ptr %i.kq, align 2, !tbaa !80
  br label %.thread243

.thread243:                                       ; preds = %bb.r, %bb.x
  %.3241.lcssa347 = phi i16 [ %.3241.lcssa348, %bb.x ], [ %.sroa.speculated206, %bb.r ]
  %.not166 = icmp eq i64 %indvars.iv.next312, 0
  br i1 %.not166, label %._crit_edge286, label %bb.p, !llvm.loop !558

._crit_edge286:                                   ; preds = %.thread243, %_ZN2cv5utils10BufferArea8zeroFillIsEEvRPT_.exit197
  %i.kr = load i32, ptr %i.z, align 8, !tbaa !376 ; 2 uses
  %i.ks = load i32, ptr %i.ab, align 4, !tbaa !377 ; 2 uses
  %i.kt = icmp slt i32 %i.kr, %i.ks
  br i1 %i.kt, label %.lr.ph289, label %._crit_edge290

.lr.ph289:                                        ; preds = %._crit_edge286
  %i.ku = load i32, ptr %i.s, align 4, !tbaa !379 ; 2 uses
  %i.kv = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.kw = trunc i32 %i.ku to i16
  %i.kx = sext i32 %i.kr to i64
  %wide.trip.count316 = sext i32 %i.ks to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph289, %bb.ag
  %indvars.iv313 = phi i64 [ %i.kx, %.lr.ph289 ], [ %indvars.iv.next314, %bb.ag ] ; 3 uses
  %i.ky = getelementptr inbounds [2 x i8], ptr %11, i64 %indvars.iv313 ; 2 uses
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !80
  %i.la = sext i16 %i.kz to i32                   ; 3 uses
  %i.lb = icmp eq i32 %i.ku, %i.la
  br i1 %i.lb, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.lc = ashr i32 %i.la, 4                       ; 2 uses
  %i.ld = add nsw i32 %i.la, 15
  %i.le = ashr i32 %i.ld, 4                       ; 2 uses
  %i.lf = trunc nsw i64 %indvars.iv313 to i32     ; 2 uses
  %i.lg = sub nsw i32 %i.lf, %i.lc                ; 3 uses
  %i.lh = sub nsw i32 %i.lf, %i.le                ; 3 uses
  %i.li = icmp sgt i32 %i.lg, -1
  br i1 %i.li, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.lj = load i32, ptr %i.l, align 4, !tbaa !375 ; 2 uses
  %i.lk = icmp slt i32 %i.lg, %i.lj
  br i1 %i.lk, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ll = zext nneg i32 %i.lg to i64
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %i.ll
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !80
  %i.lo = sext i16 %i.ln to i32                   ; 2 uses
  %i.lp = load i32, ptr %i.aa, align 8, !tbaa !367 ; 2 uses
  %.not167 = icmp sgt i32 %i.lp, %i.lo
  br i1 %.not167, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lq = sub nsw i32 %i.lo, %i.lc
  %i.lr = call i32 @llvm.abs.i32(i32 %i.lq, i1 true)
  %i.ls = load i32, ptr %i.ac, align 4, !tbaa !373 ; 2 uses
  %i.lt = icmp sgt i32 %i.lr, %i.ls
  %i.lu = icmp sgt i32 %i.lh, -1
  %i.lv = icmp slt i32 %i.lh, %i.lj
  %i.lw = and i1 %i.lu, %i.lv
  %or.cond172 = select i1 %i.lt, i1 %i.lw, i1 false
  br i1 %or.cond172, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.lx = zext nneg i32 %i.lh to i64
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %i.lx
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !80
  %i.ma = sext i16 %i.lz to i32                   ; 2 uses
  %.not168 = icmp sgt i32 %i.lp, %i.ma
  br i1 %.not168, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mb = sub nsw i32 %i.ma, %i.le
  %i.mc = call i32 @llvm.abs.i32(i32 %i.mb, i1 true)
  %i.md = icmp sgt i32 %i.mc, %i.ls
  br i1 %i.md, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i16 %i.kw, ptr %i.ky, align 2, !tbaa !80
  br label %bb.ag

bb.ag:                                            ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.y
  %indvars.iv.next314 = add nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count316
  br i1 %exitcond317.not, label %._crit_edge290, label %bb.y, !llvm.loop !559

._crit_edge290:                                   ; preds = %bb.ag, %._crit_edge286
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %i.me = trunc nsw i64 %indvars.iv.next319 to i32
  %.not = icmp eq i32 %i.f, %i.me
  br i1 %.not, label %._crit_edge294, label %bb.f, !llvm.loop !560

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cb, %bb.j ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
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
  store i64 %i.l, ptr %0, align 8, !tbaa !79
  %i.m = shl nsw i32 %5, 1
  %i.n = add nsw i32 %i.m, 2
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !78
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.l, i16 noundef zeroext 16)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %0, align 8, !tbaa !79
  %i.s = load i64, ptr %i.p, align 8, !tbaa !78
  %i.t = mul i64 %i.s, %i.r
  invoke void @_ZN2cv5utils10BufferArea8allocateIsEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.t, i16 noundef zeroext 16)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %0, align 8, !tbaa !79
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
  %i.af = load i64, ptr %0, align 8, !tbaa !79    ; 9 uses
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.ag = trunc i32 %6 to i16                     ; 3 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !72  ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.af, 16
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

end_hunk_0
