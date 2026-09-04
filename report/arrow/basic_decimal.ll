Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/basic_decimal?download=true
inline.NumInlined: 502
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5arrow15BasicDecimal256mLERKS0_:bb.a
  %i.bv = mul i64 %.sroa.10.0.i10, %.sroa.0.0.i
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  store i64 %i.ak, ptr %0, align 8
  store i64 %i.ba, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i64 %i.bm, ptr %.sroa.8.0..sroa_idx.i, align 8
  store i64 %i.bw, ptr %i.a, align 8, !tbaa !7
  br i1 %isneg, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17
  %i.bx = sub i64 0, %i.ak
  store i64 %i.bx, ptr %0, align 8, !tbaa !9
  %i.by = icmp eq i64 %i.ak, 0
  %i.bz = zext i1 %i.by to i64                    ; 2 uses
  %i.ca = xor i64 %i.ba, -1
  %i.cb = add i64 %i.ca, %i.bz                    ; 2 uses
  store i64 %i.cb, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !9
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 %i.bz, i64 0       ; 2 uses
  %i.ce = xor i64 %i.bm, -1
  %i.cf = add i64 %i.cd, %i.ce                    ; 2 uses
  store i64 %i.cf, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !9
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = select i1 %i.cg, i64 %i.cd, i64 0
  %i.ci = xor i64 %i.bw, -1
  %i.cj = add i64 %i.ch, %i.ci
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 3) i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.2", align 8     ; 13 uses
  %5 = alloca %"struct.std::array.2", align 8     ; 13 uses
  %6 = alloca %"struct.std::array.2", align 8     ; 13 uses
  %i.a = alloca [65 x i32], align 16              ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal256", align 8 ; 13 uses
  %8 = alloca %"class.arrow::BasicDecimal256", align 8 ; 13 uses
  %i.b = alloca [65 x i32], align 16              ; 23 uses
  %i.c = alloca [64 x i32], align 16              ; 22 uses
  %i.d = alloca [64 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.b, align 16, !tbaa !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = icmp slt i64 %i.g, 0                     ; 5 uses
  %.035.i.i.i.i.lcssa.sroa.gep180.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.035.i.i.i.i.lcssa.sroa.gep181.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.035.i.i.i.i.lcssa.sroa.gep182 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.035.i.i.i.lcssa.sroa.gep183.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.035.i.i.i.lcssa.sroa.gep184.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.035.i.i.i.lcssa.sroa.gep185 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.035.i.i144.i.lcssa.sroa.gep186.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.035.i.i144.i.lcssa.sroa.gep187.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.035.i.i144.i.lcssa.sroa.gep188 = getelementptr inbounds nuw i8, ptr %4, i64 24
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %8, align 8, !tbaa !9      ; 2 uses
  %i.j = sub i64 0, %i.i
  store i64 %i.j, ptr %8, align 8, !tbaa !9
  %i.k = icmp eq i64 %i.i, 0
  %i.l = zext i1 %i.k to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9
  %i.o = xor i64 %i.n, -1
  %i.p = add i64 %i.l, %i.o                       ; 2 uses
  store i64 %i.p, ptr %i.m, align 8, !tbaa !9
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 %i.l, i64 0          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9
  %i.u = xor i64 %i.t, -1
  %i.v = add i64 %i.r, %i.u                       ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !tbaa !9
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 %i.r, i64 0
  %i.y = xor i64 %i.g, -1
  %i.z = add nuw i64 %i.x, %i.y                   ; 2 uses
  store i64 %i.z, ptr %i.f, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = phi i64 [ %i.z, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.01827.lcssa.i.i.i = phi i64 [ 3, %bb.c ], [ 2, %bb.e ], [ 1, %bb.f ] ; 2 uses
  %.lcssa30.i.i.i = phi i64 [ %i.aa, %bb.c ], [ %i.ad, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  %.not21.i.i.i = icmp ugt i64 %.lcssa30.i.i.i, 4294967295
  br i1 %.not21.i.i.i, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.i.i

.thread.i.i:                                      ; preds = %bb.g
  %.not21.i6.i.i = icmp ugt i64 %i.ag, 4294967295
  br i1 %.not21.i6.i.i, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.thread.i.i
  %i.ab = trunc nuw i64 %i.ag to i32
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !9  ; 2 uses
  %.not.1.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.1.i.i.i, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9  ; 2 uses
  %.not.2.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.2.i.i.i, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ag = load i64, ptr %8, align 8, !tbaa !9     ; 3 uses
  %.not.3.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.3.i.i.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i, label %.thread.i.i

.loopexit.i.i.i:                                  ; preds = %bb.d
  %i.ah = trunc nuw i64 %.lcssa30.i.i.i to i32
  store i32 %i.ah, ptr %i.e, align 4, !tbaa !6
  %i.ai = add nsw i64 %.01827.lcssa.i.i.i, -1
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit.i.i.i, %.thread.i.i, %bb.d
  %.140.i.i.i = phi i64 [ %i.ai, %.loopexit.i.i.i ], [ %.01827.lcssa.i.i.i, %bb.d ], [ 0, %.thread.i.i ] ; 4 uses
  %.01939.i.i.i = phi i64 [ 1, %.loopexit.i.i.i ], [ 0, %bb.d ], [ 0, %.thread.i.i ] ; 3 uses
  %i.aj = add nsw i64 %.140.i.i.i, 1              ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.aj, -4                      ; 4 uses
  %i.ak = sub nsw i64 %.140.i.i.i, %n.vec
  %i.al = shl nsw i64 %n.vec, 1
  %i.am = or disjoint i64 %.01939.i.i.i, %i.al    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = sub i64 %.140.i.i.i, %index
  %i.ao = shl nuw i64 %index, 1
  %i.ap = or disjoint i64 %.01939.i.i.i, %i.ao    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.an ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ar, align 8, !tbaa !9 ; 2 uses
  %wide.load84 = load <2 x i64>, ptr %i.as, align 8, !tbaa !9 ; 2 uses
  %i.at = lshr <2 x i64> %wide.load, splat (i64 32)
  %i.au = shufflevector <2 x i64> %i.at, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.av = lshr <2 x i64> %wide.load84, splat (i64 32)
  %i.aw = shufflevector <2 x i64> %i.av, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ap
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ap
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = shufflevector <2 x i64> %i.au, <2 x i64> %wide.load, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %interleaved.vec = trunc <4 x i64> %i.ba to <4 x i32>
  store <4 x i32> %interleaved.vec, ptr %i.ax, align 4, !tbaa !6
  %i.bb = shufflevector <2 x i64> %i.aw, <2 x i64> %wide.load84, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %interleaved.vec86 = trunc <4 x i64> %i.bb to <4 x i32>
  store <4 x i32> %interleaved.vec86, ptr %i.az, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.029.i.i.i.ph = phi i64 [ %.140.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.ak, %middle.block ]
  %.12028.i.i.i.ph = phi i64 [ %.01939.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.029.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i ], [ %.029.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.12028.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i ], [ %.12028.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.029.i.i.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !9  ; 2 uses
  %i.bf = lshr i64 %i.be, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.12028.i.i.i ; 2 uses
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !6
  %i.bi = trunc i64 %i.be to i32
  %i.bj = add nuw nsw i64 %.12028.i.i.i, 2        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !6
  %i.bl = add nsw i64 %.029.i.i.i, -1
  %.not44.i.i.i = icmp eq i64 %.029.i.i.i, 0
  br i1 %.not44.i.i.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i, label %.lr.ph.i.i.i, !llvm.loop !38

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.g, %.loopexit.i.thread.i.i
  %.120.lcssa.i.i.i = phi i64 [ 1, %.loopexit.i.thread.i.i ], [ 0, %bb.g ], [ %i.am, %middle.block ], [ %i.bj, %.lr.ph.i.i.i ] ; 27 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.bm = add i64 %.120.lcssa.i.i.i, 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !9  ; 3 uses
  %i.bp = icmp slt i64 %i.bo, 0                   ; 3 uses
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i
  %i.bq = load i64, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.br = sub i64 0, %i.bq
  store i64 %i.br, ptr %7, align 8, !tbaa !9
  %i.bs = icmp eq i64 %i.bq, 0
  %i.bt = zext i1 %i.bs to i64                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !9
  %i.bw = xor i64 %i.bv, -1
  %i.bx = add i64 %i.bt, %i.bw                    ; 2 uses
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !9
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.by, i64 %i.bt, i64 0       ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !9
  %i.cc = xor i64 %i.cb, -1
  %i.cd = add i64 %i.bz, %i.cc                    ; 2 uses
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !9
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 %i.bz, i64 0
  %i.cg = xor i64 %i.bo, -1
  %i.ch = add nuw i64 %i.cf, %i.cg                ; 2 uses
  store i64 %i.ch, ptr %i.bn, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i
  %i.ci = phi i64 [ %i.ch, %bb.h ], [ %i.bo, %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i ] ; 2 uses
  %.not.i.i99.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i99.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.01827.lcssa.i.i100.i = phi i64 [ 3, %bb.i ], [ 2, %bb.k ], [ 1, %bb.l ] ; 2 uses
  %.lcssa30.i.i101.i = phi i64 [ %i.ci, %bb.i ], [ %i.cl, %bb.k ], [ %i.cn, %bb.l ] ; 2 uses
  %.not21.i.i102.i = icmp ugt i64 %.lcssa30.i.i101.i, 4294967295
  br i1 %.not21.i.i102.i, label %.lr.ph.preheader.i.i104.i, label %.loopexit.i.i103.i

.thread.i115.i:                                   ; preds = %bb.m
  %.not21.i6.i116.i = icmp ugt i64 %i.co, 4294967295
  br i1 %.not21.i6.i116.i, label %.lr.ph.preheader.i.i104.i, label %.loopexit.i.thread.i117.i

.loopexit.i.thread.i117.i:                        ; preds = %.thread.i115.i
  %i.cj = trunc nuw i64 %i.co to i32
  store i32 %i.cj, ptr %i.c, align 16, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i

bb.k:                                             ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !9  ; 2 uses
  %.not.1.i.i112.i = icmp eq i64 %i.cl, 0
  br i1 %.not.1.i.i112.i, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !9  ; 2 uses
  %.not.2.i.i113.i = icmp eq i64 %i.cn, 0
  br i1 %.not.2.i.i113.i, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.co = load i64, ptr %7, align 8, !tbaa !9     ; 3 uses
  %.not.3.i.i114.i = icmp eq i64 %i.co, 0
  br i1 %.not.3.i.i114.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i, label %.thread.i115.i

.loopexit.i.i103.i:                               ; preds = %bb.j
  %i.cp = trunc nuw i64 %.lcssa30.i.i101.i to i32
  store i32 %i.cp, ptr %i.c, align 16, !tbaa !6
  %i.cq = add nsw i64 %.01827.lcssa.i.i100.i, -1
  br label %.lr.ph.preheader.i.i104.i

.lr.ph.preheader.i.i104.i:                        ; preds = %.loopexit.i.i103.i, %.thread.i115.i, %bb.j
  %.140.i.i105.i = phi i64 [ %i.cq, %.loopexit.i.i103.i ], [ %.01827.lcssa.i.i100.i, %bb.j ], [ 0, %.thread.i115.i ] ; 4 uses
  %.01939.i.i106.i = phi i64 [ 1, %.loopexit.i.i103.i ], [ 0, %bb.j ], [ 0, %.thread.i115.i ] ; 3 uses
  %i.cr = add nsw i64 %.140.i.i105.i, 1           ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.cr, 4
  br i1 %min.iters.check89, label %.lr.ph.i.i107.i.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.preheader.i.i104.i
  %n.vec91 = and i64 %i.cr, -4                    ; 4 uses
  %i.cs = sub nsw i64 %.140.i.i105.i, %n.vec91
  %i.ct = shl nsw i64 %n.vec91, 1
  %i.cu = or disjoint i64 %.01939.i.i106.i, %i.ct ; 2 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next100, %vector.body92 ] ; 3 uses
  %i.cv = sub i64 %.140.i.i105.i, %index93
  %i.cw = shl nuw i64 %index93, 1
  %i.cx = or disjoint i64 %.01939.i.i106.i, %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.cv ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -24
  %wide.load94.a = load <2 x i64>, ptr %i.cz, align 8, !tbaa !9 ; 2 uses
  %wide.load95 = load <2 x i64>, ptr %i.da, align 8, !tbaa !9 ; 2 uses
  %i.db = lshr <2 x i64> %wide.load94.a, splat (i64 32)
  %i.dc = shufflevector <2 x i64> %i.db, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.dd = lshr <2 x i64> %wide.load95, splat (i64 32)
  %i.de = shufflevector <2 x i64> %i.dd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cx
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cx
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = shufflevector <2 x i64> %i.dc, <2 x i64> %wide.load94.a, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %interleaved.vec98.a = trunc <4 x i64> %i.di to <4 x i32>
  store <4 x i32> %interleaved.vec98.a, ptr %i.df, align 4, !tbaa !6
  %i.dj = shufflevector <2 x i64> %i.de, <2 x i64> %wide.load95, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %interleaved.vec99 = trunc <4 x i64> %i.dj to <4 x i32>
  store <4 x i32> %interleaved.vec99, ptr %i.dh, align 4, !tbaa !6
  %index.next100 = add nuw i64 %index93, 4        ; 2 uses
  %i.dk = icmp eq i64 %index.next100, %n.vec91
  br i1 %i.dk, label %middle.block101, label %vector.body92, !llvm.loop !39

middle.block101:                                  ; preds = %vector.body92
  %cmp.n102 = icmp eq i64 %i.cr, %n.vec91
  br i1 %cmp.n102, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i, label %.lr.ph.i.i107.i.preheader

.lr.ph.i.i107.i.preheader:                        ; preds = %.lr.ph.preheader.i.i104.i, %middle.block101
  %.029.i.i108.i.ph = phi i64 [ %.140.i.i105.i, %.lr.ph.preheader.i.i104.i ], [ %i.cs, %middle.block101 ]
  %.12028.i.i109.i.ph = phi i64 [ %.01939.i.i106.i, %.lr.ph.preheader.i.i104.i ], [ %i.cu, %middle.block101 ]
  br label %.lr.ph.i.i107.i

.lr.ph.i.i107.i:                                  ; preds = %.lr.ph.i.i107.i.preheader, %.lr.ph.i.i107.i
  %.029.i.i108.i = phi i64 [ %i.dt, %.lr.ph.i.i107.i ], [ %.029.i.i108.i.ph, %.lr.ph.i.i107.i.preheader ] ; 3 uses
  %.12028.i.i109.i = phi i64 [ %i.dr, %.lr.ph.i.i107.i ], [ %.12028.i.i109.i.ph, %.lr.ph.i.i107.i.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.029.i.i108.i
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !9  ; 2 uses
  %i.dn = lshr i64 %i.dm, 32
  %i.do = trunc nuw i64 %i.dn to i32
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.12028.i.i109.i ; 2 uses
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !6
  %i.dq = trunc i64 %i.dm to i32
  %i.dr = add nuw nsw i64 %.12028.i.i109.i, 2     ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.dq, ptr %i.ds, align 4, !tbaa !6
  %i.dt = add nsw i64 %.029.i.i108.i, -1
  %.not44.i.i110.i = icmp eq i64 %.029.i.i108.i, 0
  br i1 %.not44.i.i110.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i, label %.lr.ph.i.i107.i, !llvm.loop !40

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i: ; preds = %.lr.ph.i.i107.i, %middle.block101, %bb.m, %.loopexit.i.thread.i117.i
  %.120.lcssa.i.i111.i = phi i64 [ 1, %.loopexit.i.thread.i117.i ], [ 0, %bb.m ], [ %i.cu, %middle.block101 ], [ %i.dr, %.lr.ph.i.i107.i ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %.not.not.i = icmp slt i64 %.120.lcssa.i.i.i, %.120.lcssa.i.i111.i
  br i1 %.not.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.o:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i
  switch i64 %.120.lcssa.i.i111.i, label %bb.z [
    i64 0, label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit
    i64 1, label %.lr.ph.i.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.du = load i32, ptr %i.c, align 16, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  br label %bb.u

._crit_edge.i.i:                                  ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %9 = add i64 %.120.lcssa.i.i.i, -8              ; 2 uses
  %i.dw = icmp sgt i64 %9, -1
  br i1 %i.dw, label %.lr.ph.i.i.i.i, label %.lr.ph37.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dx = add nsw i64 %.02533.i.i.i.i, -1
  %i.dy = icmp sgt i64 %.02533.i.i.i.i, 0
  br i1 %i.dy, label %.lr.ph.i.i.i.i, label %.lr.ph37.i.i.i.i, !llvm.loop !41

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i, %bb.p
  %.02533.i.i.i.i = phi i64 [ %i.dx, %bb.p ], [ %9, %._crit_edge.i.i ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.02533.i.i.i.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !6
  %.not.i.i.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i

.preheader.i.i.i.i:                               ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %.thread.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.035.i.i.i.i.lcssa, %.thread.i.i.i.i ], [ 1, %bb.q ], [ 2, %bb.r ], [ 3, %bb.s ], [ 4, %bb.t ] ; 2 uses
  %i.eb = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 4
  br i1 %i.eb, label %.lr.ph39.preheader.i.i.i.i, label %bb.v

.lr.ph39.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.ec = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 3    ; 2 uses
  %scevgep.i.i.i.i = getelementptr i8, ptr %6, i64 %i.ec
  %i.ed = sub nuw nsw i64 32, %i.ec
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.ed, i1 false)
  br label %bb.v

.lr.ph37.i.i.i.i:                                 ; preds = %._crit_edge.i.i, %bb.p
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.120.lcssa.i.i.i ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !6
  %i.eg = zext i32 %i.ef to i64                   ; 2 uses
  %i.eh = icmp eq i64 %.120.lcssa.i.i.i, 0
  br i1 %i.eh, label %.thread.i.i.i.i, label %bb.q

.thread.i.i.i.i:                                  ; preds = %.lr.ph37.i.i.i.i.3, %.lr.ph37.i.i.i.i.2, %.lr.ph37.i.i.i.i.1, %.lr.ph37.i.i.i.i
  %.035.i.i.i.i.lcssa.sroa.phi = phi ptr [ %6, %.lr.ph37.i.i.i.i ], [ %.035.i.i.i.i.lcssa.sroa.gep180.a, %.lr.ph37.i.i.i.i.1 ], [ %.035.i.i.i.i.lcssa.sroa.gep181.a, %.lr.ph37.i.i.i.i.2 ], [ %.035.i.i.i.i.lcssa.sroa.gep182, %.lr.ph37.i.i.i.i.3 ]
  %.035.i.i.i.i.lcssa = phi i64 [ 1, %.lr.ph37.i.i.i.i ], [ 2, %.lr.ph37.i.i.i.i.1 ], [ 3, %.lr.ph37.i.i.i.i.2 ], [ 4, %.lr.ph37.i.i.i.i.3 ]
  %.lcssa165 = phi i64 [ %i.eg, %.lr.ph37.i.i.i.i ], [ %i.eq, %.lr.ph37.i.i.i.i.1 ], [ %i.fb, %.lr.ph37.i.i.i.i.2 ], [ %i.fm, %.lr.ph37.i.i.i.i.3 ]
  store i64 %.lcssa165, ptr %.035.i.i.i.i.lcssa.sroa.phi, align 8
  br label %.preheader.i.i.i.i

bb.q:                                             ; preds = %.lr.ph37.i.i.i.i
  %i.ei = add nsw i64 %.120.lcssa.i.i.i, -2       ; 3 uses
  %i.ej = getelementptr i8, ptr %i.ee, i64 -4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !6
  %i.el = zext i32 %i.ek to i64
  %i.em = shl nuw i64 %i.el, 32
  %i.en = or disjoint i64 %i.em, %i.eg
  store i64 %i.en, ptr %6, align 8
  %.not = icmp eq i64 %.120.lcssa.i.i.i, 1
  br i1 %.not, label %.preheader.i.i.i.i, label %.lr.ph37.i.i.i.i.1

.lr.ph37.i.i.i.i.1:                               ; preds = %bb.q
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ei ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !6
  %i.eq = zext i32 %i.ep to i64                   ; 2 uses
  %i.er = icmp eq i64 %i.ei, 0
  br i1 %i.er, label %.thread.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph37.i.i.i.i.1
  %i.es = add nsw i64 %.120.lcssa.i.i.i, -4       ; 3 uses
  %i.et = getelementptr i8, ptr %i.eo, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !6
  %i.ev = zext i32 %i.eu to i64
  %i.ew = shl nuw i64 %i.ev, 32
  %i.ex = or disjoint i64 %i.ew, %i.eq
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ex, ptr %i.ey, align 8
  %.not189.a = icmp eq i64 %i.ei, 1
  br i1 %.not189.a, label %.preheader.i.i.i.i, label %.lr.ph37.i.i.i.i.2

.lr.ph37.i.i.i.i.2:                               ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.es ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !6
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = icmp eq i64 %i.es, 0
  br i1 %i.fc, label %.thread.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph37.i.i.i.i.2
  %i.fd = getelementptr i8, ptr %i.ez, i64 -4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !6
  %i.ff = zext i32 %i.fe to i64
  %i.fg = shl nuw i64 %i.ff, 32
  %i.fh = or disjoint i64 %i.fg, %i.fb
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.fh, ptr %i.fi, align 8
  %.not190.a = icmp eq i64 %i.es, 1
  br i1 %.not190.a, label %.preheader.i.i.i.i, label %.lr.ph37.i.i.i.i.3

.lr.ph37.i.i.i.i.3:                               ; preds = %bb.s
  %i.fj = add nsw i64 %.120.lcssa.i.i.i, -6       ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fj ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !6
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = icmp eq i64 %i.fj, 0
  br i1 %i.fn, label %.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph37.i.i.i.i.3
  %i.fo = getelementptr i8, ptr %i.fk, i64 -4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !6
  %i.fq = zext i32 %i.fp to i64
  %i.fr = shl nuw i64 %i.fq, 32
  %i.fs = or disjoint i64 %i.fr, %i.fm
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.fs, ptr %i.ft, align 8
  br label %.preheader.i.i.i.i

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i
  %.032.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gd, %bb.u ] ; 4 uses
  %.02231.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gc, %bb.u ]
  %i.fu = shl nuw i64 %.02231.i.i, 32
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.032.i.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !6
  %i.fx = zext i32 %i.fw to i64
  %i.fy = or disjoint i64 %i.fu, %i.fx            ; 2 uses
  %i.fz = udiv i64 %i.fy, %i.dv
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.032.i.i
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !6
  %i.gc = urem i64 %i.fy, %i.dv                   ; 2 uses
  %i.gd = add nuw nsw i64 %.032.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.032.i.i, %.120.lcssa.i.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.u, !llvm.loop !42

bb.v:                                             ; preds = %.lr.ph39.preheader.i.i.i.i, %.preheader.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, i8 0, i64 24, i1 false)
  store i64 %i.gc, ptr %3, align 8
  %i.ge = xor i1 %i.h, %i.bp
  br i1 %i.ge, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gf = load i64, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.gg = sub i64 0, %i.gf
  store i64 %i.gg, ptr %2, align 8, !tbaa !9
  %i.gh = icmp eq i64 %i.gf, 0
  %i.gi = zext i1 %i.gh to i64                    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !9
  %i.gl = xor i64 %i.gk, -1
  %i.gm = add i64 %i.gi, %i.gl                    ; 2 uses
  store i64 %i.gm, ptr %i.gj, align 8, !tbaa !9
  %i.gn = icmp eq i64 %i.gm, 0
  %i.go = select i1 %i.gn, i64 %i.gi, i64 0       ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !9
  %i.gr = xor i64 %i.gq, -1
  %i.gs = add i64 %i.go, %i.gr                    ; 2 uses
  store i64 %i.gs, ptr %i.gp, align 8, !tbaa !9
  %i.gt = icmp eq i64 %i.gs, 0
  %i.gu = select i1 %i.gt, i64 %i.go, i64 0
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !9
  %i.gx = xor i64 %i.gw, -1
  %i.gy = add i64 %i.gu, %i.gx
  store i64 %i.gy, ptr %i.gv, align 8, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.h, label %bb.y, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.y:                                             ; preds = %bb.x
  %i.gz = load i64, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ha = sub i64 0, %i.gz
  store i64 %i.ha, ptr %3, align 8, !tbaa !9
  %i.hb = icmp eq i64 %i.gz, 0
  %i.hc = zext i1 %i.hb to i64                    ; 2 uses
  %i.hd = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !9
  %i.he = xor i64 %i.hd, -1
  %i.hf = add i64 %i.hc, %i.he                    ; 2 uses
  store i64 %i.hf, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !9
  %i.hg = icmp eq i64 %i.hf, 0
  %i.hh = select i1 %i.hg, i64 %i.hc, i64 0       ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !9
  %i.hk = xor i64 %i.hj, -1
  %i.hl = add i64 %i.hh, %i.hk                    ; 2 uses
  store i64 %i.hl, ptr %i.hi, align 8, !tbaa !9
  %i.hm = icmp eq i64 %i.hl, 0
  %i.hn = select i1 %i.hm, i64 %i.hh, i64 0
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !9
  %i.hq = xor i64 %i.hp, -1
  %i.hr = add i64 %i.hn, %i.hq
  store i64 %i.hr, ptr %i.ho, align 8, !tbaa !9
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i: ; preds = %bb.y, %bb.x, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i
  %.023.i.i = phi i32 [ 2, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i ], [ 0, %bb.x ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.z:                                             ; preds = %bb.o
  %i.hs = sub i64 %i.bm, %.120.lcssa.i.i111.i     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.ht = load i32, ptr %i.c, align 16, !tbaa !6  ; 3 uses
  %i.hu = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ht, i1 false) ; 13 uses
  %i.hv = icmp sgt i64 %.120.lcssa.i.i111.i, 0    ; 2 uses
  %i.hw = icmp ne i32 %i.hu, 0                    ; 3 uses
  %or.cond.i.i = and i1 %i.hv, %i.hw
  br i1 %or.cond.i.i, label %.lr.ph.i120.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.i

.lr.ph.i120.i:                                    ; preds = %bb.z
  %i.hx = add nsw i64 %.120.lcssa.i.i111.i, -1    ; 4 uses
  %i.hy = sub nuw nsw i32 32, %i.hu               ; 2 uses
  %min.iters.check106 = icmp ult i64 %.120.lcssa.i.i111.i, 9
  br i1 %min.iters.check106, label %scalar.ph105.preheader, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.i120.i
  %n.vec108 = and i64 %i.hx, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hy, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert109 = insertelement <4 x i32> poison, i32 %i.hu, i64 0
  %broadcast.splat110 = shufflevector <4 x i32> %broadcast.splatinsert109, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.ht, i64 3
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph107
  %index112 = phi i64 [ 0, %vector.ph107 ], [ %index.next115, %vector.body111 ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph107 ], [ %wide.load114, %vector.body111 ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index112 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index112 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 20
  %wide.load113.a = load <4 x i32>, ptr %i.ib, align 4, !tbaa !6 ; 3 uses
  %wide.load114 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !6 ; 4 uses
  %i.id = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load113.a, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ie = shufflevector <4 x i32> %wide.load113.a, <4 x i32> %wide.load114, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.if = shl <4 x i32> %i.id, %broadcast.splat110
  %i.ig = shl <4 x i32> %i.ie, %broadcast.splat110
  %i.ih = lshr <4 x i32> %wide.load113.a, %broadcast.splat
  %i.ii = lshr <4 x i32> %wide.load114, %broadcast.splat
  %i.ij = or disjoint <4 x i32> %i.ih, %i.if
  %i.ik = or disjoint <4 x i32> %i.ii, %i.ig
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store <4 x i32> %i.ij, ptr %i.hz, align 16, !tbaa !6
  store <4 x i32> %i.ik, ptr %i.il, align 16, !tbaa !6
  %index.next115 = add nuw i64 %index112, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.im, label %middle.block116, label %vector.body111, !llvm.loop !43

middle.block116:                                  ; preds = %vector.body111
  %vector.recur.extract = extractelement <4 x i32> %wide.load114, i64 3
  %cmp.n117 = icmp eq i64 %i.hx, %n.vec108
  br i1 %cmp.n117, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph105.preheader

scalar.ph105.preheader:                           ; preds = %.lr.ph.i120.i, %middle.block116
  %.ph164 = phi i32 [ %i.ht, %.lr.ph.i120.i ], [ %vector.recur.extract, %middle.block116 ]
  %.019.i.i.ph = phi i64 [ 0, %.lr.ph.i120.i ], [ %n.vec108, %middle.block116 ]
  br label %scalar.ph105

_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i:    ; preds = %scalar.ph105, %middle.block116
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hx ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !6
  %i.ip = shl i32 %i.io, %i.hu
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !6
  br label %.preheader.i123.i

scalar.ph105:                                     ; preds = %scalar.ph105.preheader, %scalar.ph105
  %i.iq = phi i32 [ %i.iv, %scalar.ph105 ], [ %.ph164, %scalar.ph105.preheader ]
  %.019.i.i = phi i64 [ %i.it, %scalar.ph105 ], [ %.019.i.i.ph, %scalar.ph105.preheader ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.019.i.i
  %i.is = shl i32 %i.iq, %i.hu
  %i.it = add nuw nsw i64 %.019.i.i, 1            ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !6  ; 2 uses
  %i.iw = lshr i32 %i.iv, %i.hy
  %i.ix = or disjoint i32 %i.iw, %i.is
  store i32 %i.ix, ptr %i.ir, align 4, !tbaa !6
  %exitcond.not.i121.i = icmp eq i64 %i.it, %i.hx
  br i1 %exitcond.not.i121.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph105, !llvm.loop !44

_ZN5arrowL14ShiftArrayLeftEPjll.exit.i:           ; preds = %bb.z
  br i1 %i.hw, label %.preheader.i123.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i

.preheader.i123.i:                                ; preds = %_ZN5arrowL14ShiftArrayLeftEPjll.exit.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  %i.iy = icmp sgt i64 %.120.lcssa.i.i.i, 0
  br i1 %i.iy, label %.lr.ph.i125.i, label %._crit_edge.i124.i

.lr.ph.i125.i:                                    ; preds = %.preheader.i123.i
  %i.iz = sub nuw nsw i32 32, %i.hu               ; 2 uses
  %min.iters.check120 = icmp ult i64 %.120.lcssa.i.i.i, 8
  br i1 %min.iters.check120, label %scalar.ph119.preheader, label %vector.ph121

vector.ph121:                                     ; preds = %.lr.ph.i125.i
  %n.vec122 = and i64 %.120.lcssa.i.i.i, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert123 = insertelement <4 x i32> poison, i32 %i.iz, i64 0
  %broadcast.splat124 = shufflevector <4 x i32> %broadcast.splatinsert123, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert125 = insertelement <4 x i32> poison, i32 %i.hu, i64 0
  %broadcast.splat126 = shufflevector <4 x i32> %broadcast.splatinsert125, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph121
  %index128 = phi i64 [ 0, %vector.ph121 ], [ %index.next132, %vector.body127 ] ; 3 uses
  %vector.recur129 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph121 ], [ %wide.load131, %vector.body127 ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index128 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index128 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 20
  %wide.load130.a = load <4 x i32>, ptr %i.jc, align 4, !tbaa !6 ; 3 uses
  %wide.load131 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !6 ; 4 uses
  %i.je = shufflevector <4 x i32> %vector.recur129, <4 x i32> %wide.load130.a, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jf = shufflevector <4 x i32> %wide.load130.a, <4 x i32> %wide.load131, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jg = shl <4 x i32> %i.je, %broadcast.splat126
  %i.jh = shl <4 x i32> %i.jf, %broadcast.splat126
  %i.ji = lshr <4 x i32> %wide.load130.a, %broadcast.splat124
  %i.jj = lshr <4 x i32> %wide.load131, %broadcast.splat124
  %i.jk = or disjoint <4 x i32> %i.ji, %i.jg
  %i.jl = or disjoint <4 x i32> %i.jj, %i.jh
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store <4 x i32> %i.jk, ptr %i.ja, align 16, !tbaa !6
  store <4 x i32> %i.jl, ptr %i.jm, align 16, !tbaa !6
  %index.next132 = add nuw i64 %index128, 8       ; 2 uses
  %i.jn = icmp eq i64 %index.next132, %n.vec122
  br i1 %i.jn, label %middle.block133, label %vector.body127, !llvm.loop !45

middle.block133:                                  ; preds = %vector.body127
  %vector.recur.extract134 = extractelement <4 x i32> %wide.load131, i64 3
  %cmp.n135 = icmp eq i64 %.120.lcssa.i.i.i, %n.vec122
  br i1 %cmp.n135, label %._crit_edge.i124.i, label %scalar.ph119.preheader

scalar.ph119.preheader:                           ; preds = %.lr.ph.i125.i, %middle.block133
  %.ph = phi i32 [ 0, %.lr.ph.i125.i ], [ %vector.recur.extract134, %middle.block133 ]
  %.019.i127.i.ph = phi i64 [ 0, %.lr.ph.i125.i ], [ %n.vec122, %middle.block133 ]
  br label %scalar.ph119

._crit_edge.i124.i:                               ; preds = %scalar.ph119, %middle.block133, %.preheader.i123.i
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.120.lcssa.i.i.i ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !6
  %i.jq = shl i32 %i.jp, %i.hu
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !6
  br label %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i

scalar.ph119:                                     ; preds = %scalar.ph119.preheader, %scalar.ph119
  %i.jr = phi i32 [ %i.jw, %scalar.ph119 ], [ %.ph, %scalar.ph119.preheader ]
  %.019.i127.i = phi i64 [ %i.ju, %scalar.ph119 ], [ %.019.i127.i.ph, %scalar.ph119.preheader ] ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.019.i127.i
  %i.jt = shl i32 %i.jr, %i.hu
  %i.ju = add nuw nsw i64 %.019.i127.i, 1         ; 3 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !6  ; 2 uses
  %i.jx = lshr i32 %i.jw, %i.iz
  %i.jy = or disjoint i32 %i.jx, %i.jt
  store i32 %i.jy, ptr %i.js, align 4, !tbaa !6
  %exitcond.not.i128.i = icmp eq i64 %i.ju, %.120.lcssa.i.i.i
  br i1 %exitcond.not.i128.i, label %._crit_edge.i124.i, label %scalar.ph119, !llvm.loop !46

_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i:        ; preds = %._crit_edge.i124.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.i
  %i.jz = icmp sgt i64 %i.hs, 0
  br i1 %i.jz, label %.lr.ph185.i, label %._crit_edge186.i

.lr.ph185.i:                                      ; preds = %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i
  %i.ka = load i32, ptr %i.c, align 16, !tbaa !6  ; 5 uses
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !6
  %i.ke = zext i32 %i.kd to i64
  %i.kf = add i64 %.120.lcssa.i.i111.i, -1        ; 6 uses
  %xtraiter = and i64 %.120.lcssa.i.i111.i, 1
  %i.kg = icmp eq i64 %i.kf, 0
  %unroll_iter = and i64 %.120.lcssa.i.i111.i, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod173 = trunc i64 %.120.lcssa.i.i111.i to i1
  %xtraiter174 = and i64 %.120.lcssa.i.i111.i, 1
  %i.kh = icmp eq i64 %i.kf, 0
  %unroll_iter178 = and i64 %.120.lcssa.i.i111.i, 9223372036854775806
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  %lcmp.mod177 = trunc i64 %.120.lcssa.i.i111.i to i1
  br label %bb.af

._crit_edge186.i:                                 ; preds = %._crit_edge.thread.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i
  br i1 %i.hw, label %.preheader.i131.i, label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i

.preheader.i131.i:                                ; preds = %._crit_edge186.i
  %i.ki = icmp sgt i64 %.120.lcssa.i.i.i, 0
  br i1 %i.ki, label %.lr.ph.i133.i, label %._crit_edge.i132.i

.lr.ph.i133.i:                                    ; preds = %.preheader.i131.i
  %i.kj = sub nuw nsw i32 32, %i.hu               ; 2 uses
  %min.iters.check139 = icmp ult i64 %.120.lcssa.i.i.i, 8
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph.i133.i
  %n.vec141 = and i64 %.120.lcssa.i.i.i, 9223372036854775800 ; 3 uses
  %i.kk = sub i64 %i.bm, %n.vec141
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.kj, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %i.hu, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph140
  %index147 = phi i64 [ 0, %vector.ph140 ], [ %index.next152, %vector.body146 ] ; 2 uses
  %i.kl = sub i64 %i.bm, %index147                ; 2 uses
  %i.km = getelementptr [4 x i8], ptr %i.b, i64 %i.kl ; 2 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 -16    ; 2 uses
  %i.ko = getelementptr i8, ptr %i.km, i64 -32    ; 2 uses
  %wide.load148.a = load <4 x i32>, ptr %i.kn, align 4, !tbaa !6
  %wide.load149.a = load <4 x i32>, ptr %i.ko, align 4, !tbaa !6
  %i.kp = lshr <4 x i32> %wide.load148.a, %broadcast.splat145
  %i.kq = lshr <4 x i32> %wide.load149.a, %broadcast.splat145
  %i.kr = getelementptr [4 x i8], ptr %i.b, i64 %i.kl ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 -20
  %i.kt = getelementptr i8, ptr %i.kr, i64 -36
  %wide.load150.a = load <4 x i32>, ptr %i.ks, align 4, !tbaa !6
  %wide.load151 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !6
  %i.ku = shl <4 x i32> %wide.load150.a, %broadcast.splat143
  %i.kv = shl <4 x i32> %wide.load151, %broadcast.splat143
  %i.kw = or disjoint <4 x i32> %i.ku, %i.kp
  %i.kx = or disjoint <4 x i32> %i.kv, %i.kq
  store <4 x i32> %i.kw, ptr %i.kn, align 4, !tbaa !6
  store <4 x i32> %i.kx, ptr %i.ko, align 4, !tbaa !6
  %index.next152 = add nuw i64 %index147, 8       ; 2 uses
  %i.ky = icmp eq i64 %index.next152, %n.vec141
  br i1 %i.ky, label %middle.block153, label %vector.body146, !llvm.loop !47

middle.block153:                                  ; preds = %vector.body146
  %cmp.n154 = icmp eq i64 %.120.lcssa.i.i.i, %n.vec141
  br i1 %cmp.n154, label %._crit_edge.i132.i, label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %.lr.ph.i133.i, %middle.block153
  %.0.in17.i.i.ph = phi i64 [ %i.bm, %.lr.ph.i133.i ], [ %i.kk, %middle.block153 ]
  br label %scalar.ph138

._crit_edge.i132.i:                               ; preds = %scalar.ph138, %middle.block153, %.preheader.i131.i
  %i.kz = load i32, ptr %i.b, align 16, !tbaa !6
  %i.la = lshr i32 %i.kz, %i.hu
  store i32 %i.la, ptr %i.b, align 16, !tbaa !6
  br label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %.0.in17.i.i = phi i64 [ %.0.i.i, %scalar.ph138 ], [ %.0.in17.i.i.ph, %scalar.ph138.preheader ] ; 3 uses
  %.0.i.i = add nsw i64 %.0.in17.i.i, -1          ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i.i ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !6
  %i.ld = lshr i32 %i.lc, %i.hu
  %i.le = getelementptr [4 x i8], ptr %i.b, i64 %.0.in17.i.i
  %i.lf = getelementptr i8, ptr %i.le, i64 -8
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !6
  %i.lh = shl i32 %i.lg, %i.kj
  %i.li = or disjoint i32 %i.lh, %i.ld
  store i32 %i.li, ptr %i.lb, align 4, !tbaa !6
  %i.lj = icmp samesign ugt i64 %.0.in17.i.i, 2
  br i1 %i.lj, label %scalar.ph138, label %._crit_edge.i132.i, !llvm.loop !48

_ZN5arrowL15ShiftArrayRightEPjll.exit.i:          ; preds = %._crit_edge.i132.i, %._crit_edge186.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %10 = add i64 %i.hs, -9                         ; 2 uses
  %i.lk = icmp sgt i64 %10, -1
  br i1 %i.lk, label %.lr.ph.i.i135.i, label %.lr.ph37.preheader.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i135.i
  %i.ll = add nsw i64 %.02533.i.i.i, -1
  %i.lm = icmp sgt i64 %.02533.i.i.i, 0
  br i1 %i.lm, label %.lr.ph.i.i135.i, label %.lr.ph37.preheader.i.i.i, !llvm.loop !41

.lr.ph.i.i135.i:                                  ; preds = %_ZN5arrowL15ShiftArrayRightEPjll.exit.i, %bb.aa
  %.02533.i.i.i = phi i64 [ %i.ll, %bb.aa ], [ %10, %_ZN5arrowL15ShiftArrayRightEPjll.exit.i ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02533.i.i.i
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !6
  %.not.i.i136.i = icmp eq i32 %i.lo, 0
  br i1 %.not.i.i136.i, label %bb.aa, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i

.lr.ph37.preheader.i.i.i:                         ; preds = %bb.aa, %_ZN5arrowL15ShiftArrayRightEPjll.exit.i
  %i.lp = add nsw i64 %i.hs, -1                   ; 3 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.lp ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !6
  %i.ls = zext i32 %i.lr to i64                   ; 2 uses
  %i.lt = icmp eq i64 %i.lp, 0
  br i1 %i.lt, label %.thread.i.i.i, label %bb.ab

.preheader.i.i.i:                                 ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae, %.thread.i.i.i
  %.0.lcssa.i.i.i = phi i64 [ %.035.i.i.i.lcssa, %.thread.i.i.i ], [ 1, %bb.ab ], [ 2, %bb.ac ], [ 3, %bb.ad ], [ 4, %bb.ae ] ; 2 uses
  %i.lu = icmp samesign ult i64 %.0.lcssa.i.i.i, 4
  br i1 %i.lu, label %.lr.ph39.preheader.i.i.i, label %bb.al

.lr.ph39.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  %i.lv = shl nuw nsw i64 %.0.lcssa.i.i.i, 3      ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %5, i64 %i.lv
  %i.lw = sub nuw nsw i64 32, %i.lv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.lw, i1 false)
  br label %bb.al

.thread.i.i.i:                                    ; preds = %.lr.ph37.i.i.i.3, %.lr.ph37.i.i.i.2, %.lr.ph37.i.i.i.1, %.lr.ph37.preheader.i.i.i
  %.035.i.i.i.lcssa.sroa.phi = phi ptr [ %5, %.lr.ph37.preheader.i.i.i ], [ %.035.i.i.i.lcssa.sroa.gep183.a, %.lr.ph37.i.i.i.1 ], [ %.035.i.i.i.lcssa.sroa.gep184.a, %.lr.ph37.i.i.i.2 ], [ %.035.i.i.i.lcssa.sroa.gep185, %.lr.ph37.i.i.i.3 ]
  %.035.i.i.i.lcssa = phi i64 [ 1, %.lr.ph37.preheader.i.i.i ], [ 2, %.lr.ph37.i.i.i.1 ], [ 3, %.lr.ph37.i.i.i.2 ], [ 4, %.lr.ph37.i.i.i.3 ]
  %.lcssa159 = phi i64 [ %i.ls, %.lr.ph37.preheader.i.i.i ], [ %i.mf, %.lr.ph37.i.i.i.1 ], [ %i.mq, %.lr.ph37.i.i.i.2 ], [ %i.nb, %.lr.ph37.i.i.i.3 ]
  store i64 %.lcssa159, ptr %.035.i.i.i.lcssa.sroa.phi, align 8
  br label %.preheader.i.i.i

bb.ab:                                            ; preds = %.lr.ph37.preheader.i.i.i
  %i.lx = add nsw i64 %i.hs, -3                   ; 3 uses
  %i.ly = getelementptr i8, ptr %i.lq, i64 -4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !6
  %i.ma = zext i32 %i.lz to i64
  %i.mb = shl nuw i64 %i.ma, 32
  %i.mc = or disjoint i64 %i.mb, %i.ls
  store i64 %i.mc, ptr %5, align 8
  %.not191.a = icmp eq i64 %i.lp, 1
  br i1 %.not191.a, label %.preheader.i.i.i, label %.lr.ph37.i.i.i.1

.lr.ph37.i.i.i.1:                                 ; preds = %bb.ab
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.lx ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !6
  %i.mf = zext i32 %i.me to i64                   ; 2 uses
  %i.mg = icmp eq i64 %i.lx, 0
  br i1 %i.mg, label %.thread.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph37.i.i.i.1
  %i.mh = add nsw i64 %i.hs, -5                   ; 3 uses
  %i.mi = getelementptr i8, ptr %i.md, i64 -4
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !6
  %i.mk = zext i32 %i.mj to i64
  %i.ml = shl nuw i64 %i.mk, 32
  %i.mm = or disjoint i64 %i.ml, %i.mf
  %i.mn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.mm, ptr %i.mn, align 8
  %.not192.a = icmp eq i64 %i.lx, 1
  br i1 %.not192.a, label %.preheader.i.i.i, label %.lr.ph37.i.i.i.2

.lr.ph37.i.i.i.2:                                 ; preds = %bb.ac
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.mh ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !6
  %i.mq = zext i32 %i.mp to i64                   ; 2 uses
  %i.mr = icmp eq i64 %i.mh, 0
  br i1 %i.mr, label %.thread.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph37.i.i.i.2
  %i.ms = getelementptr i8, ptr %i.mo, i64 -4
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !6
  %i.mu = zext i32 %i.mt to i64
  %i.mv = shl nuw i64 %i.mu, 32
  %i.mw = or disjoint i64 %i.mv, %i.mq
  %i.mx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.mw, ptr %i.mx, align 8
  %.not193.a = icmp eq i64 %i.mh, 1
  br i1 %.not193.a, label %.preheader.i.i.i, label %.lr.ph37.i.i.i.3

.lr.ph37.i.i.i.3:                                 ; preds = %bb.ad
  %i.my = add nsw i64 %i.hs, -7                   ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.my ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !6
  %i.nb = zext i32 %i.na to i64                   ; 2 uses
  %i.nc = icmp eq i64 %i.my, 0
  br i1 %i.nc, label %.thread.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph37.i.i.i.3
  %i.nd = getelementptr i8, ptr %i.mz, i64 -4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !6
  %i.nf = zext i32 %i.ne to i64
  %i.ng = shl nuw i64 %i.nf, 32
  %i.nh = or disjoint i64 %i.ng, %i.nb
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.nh, ptr %i.ni, align 8
  br label %.preheader.i.i.i

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i: ; preds = %.lr.ph.i.i135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN5arrowL16FixDivisionSignsINS_15BasicDecimal256EEEvPT_S3_bb.exit.i

bb.af:                                            ; preds = %._crit_edge.thread.i, %.lr.ph185.i
  %.090184.i = phi i64 [ 0, %.lr.ph185.i ], [ %i.nl, %._crit_edge.thread.i ] ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.090184.i ; 10 uses
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !6  ; 4 uses
  %i.nl = add nuw nsw i64 %.090184.i, 1           ; 3 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !6  ; 2 uses
  %.not98.i = icmp eq i32 %i.nk, %i.ka
  br i1 %.not98.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.no = zext i32 %i.nn to i64
  %i.np = zext i32 %i.nk to i64
  %i.nq = shl nuw i64 %i.np, 32
  %i.nr = or disjoint i64 %i.nq, %i.no
  %i.ns = udiv i64 %i.nr, %i.kb
  %i.nt = trunc i64 %i.ns to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.088.i = phi i32 [ %i.nt, %bb.ag ], [ -1, %bb.af ] ; 2 uses
  %i.nu = mul i32 %.088.i, %i.ka
  %i.nv = sub i32 %i.nn, %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !6
  %i.ny = zext i32 %i.nx to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %.189.i = phi i32 [ %.088.i, %bb.ah ], [ %i.of, %bb.aj ] ; 3 uses
  %.087.i = phi i32 [ %i.nv, %bb.ah ], [ %i.og, %bb.aj ] ; 2 uses
  %i.nz = zext i32 %.189.i to i64
  %i.oa = mul nuw i64 %i.nz, %i.ke
  %i.ob = zext i32 %.087.i to i64
  %i.oc = shl nuw i64 %i.ob, 32
  %i.od = or disjoint i64 %i.oc, %i.ny
  %i.oe = icmp ugt i64 %i.oa, %i.od
  br i1 %i.oe, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.of = add i32 %.189.i, -1                     ; 2 uses
  %i.og = add i32 %.087.i, %i.ka                  ; 2 uses
  %i.oh = icmp ult i32 %i.og, %i.ka
  br i1 %i.oh, label %bb.ak, label %bb.ai, !llvm.loop !49

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2.i = phi i32 [ %i.of, %bb.aj ], [ %.189.i, %bb.ai ] ; 4 uses
  br i1 %i.hv, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.ak
  %i.oi = zext i32 %.2.i to i64                   ; 3 uses
  br i1 %i.kg, label %.epil.preheader, label %.lr.ph.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.084177.i.epil.init = phi i64 [ %i.kf, %.lr.ph.i ], [ %i.qa, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.085176.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %spec.select.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.084177.i.epil.init
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !6
  %i.ol = zext i32 %i.ok to i64
  %i.om = mul nuw i64 %i.ol, %i.oi
  %i.on = add nuw i64 %i.om, %.085176.i.epil.init ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.084177.i.epil.init
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 4 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !6  ; 2 uses
  %i.or = trunc i64 %i.on to i32                  ; 2 uses
  %i.os = sub i32 %i.oq, %i.or
  store i32 %i.os, ptr %i.op, align 4, !tbaa !6
  %i.ot = lshr i64 %i.on, 32
  %i.ou = icmp ult i32 %i.oq, %i.or
  %i.ov = zext i1 %i.ou to i64
  %spec.select.i.epil = add nuw nsw i64 %i.ot, %i.ov
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %spec.select.i.lcssa = phi i64 [ %spec.select.i.1, %._crit_edge.i.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ]
  %i.ow = trunc i64 %spec.select.i.lcssa to i32   ; 2 uses
  %i.ox = sub i32 %i.nk, %i.ow                    ; 2 uses
  store i32 %i.ox, ptr %i.nj, align 4, !tbaa !6
  %i.oy = icmp ult i32 %i.nk, %i.ow
  br i1 %i.oy, label %.lr.ph181.i.preheader, label %._crit_edge.thread.i

.lr.ph181.i.preheader:                            ; preds = %._crit_edge.i
  br i1 %i.kh, label %.lr.ph181.i.epil.preheader, label %.lr.ph181.i

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.084177.i = phi i64 [ %i.qa, %.lr.ph.i.new ], [ %i.kf, %.lr.ph.i ] ; 4 uses
  %.085176.i = phi i64 [ %spec.select.i.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.084177.i
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !6
  %i.pb = zext i32 %i.pa to i64
  %i.pc = mul nuw i64 %i.pb, %i.oi
  %i.pd = add nuw i64 %i.pc, %.085176.i           ; 2 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.084177.i
end_hunk_0
