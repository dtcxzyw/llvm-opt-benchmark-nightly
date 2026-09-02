Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Conv?download=true
inline.NumInlined: 3501
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN10fast_float19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES1_i:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.067.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.12.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i64 @_ZN5folly6detail15str_to_floatingIfEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call i64 @_ZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) #25
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr { i64, double } @_ZN5folly6detail15str_to_floatingIdEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call { i64, double } @_ZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) #25
  ret { i64, double } %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr i24 @_ZN5folly6detail9digits_toIcEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !71      ; 2 uses
  %i.b = sext i8 %i.a to i32
  %isdigittmp.i = add nsw i32 %i.b, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ], !prof !98

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.065.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.372.ph = phi ptr [ %i.c, %bb.d ], [ %0, %bb.a ] ; 7 uses
  %.sroa.065.1.ph = phi i8 [ %.sroa.065.0, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %.372.ph to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = icmp ugt i64 %i.f, 2
  br i1 %i.g, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult ptr %.372.ph, %1
  br i1 %i.h, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.i = load i8, ptr %.372.ph, align 1, !tbaa !71
  %i.j = icmp eq i8 %i.i, 48
  br i1 %i.j, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.g
  %storemerge127 = getelementptr inbounds nuw i8, ptr %.372.ph, i64 1 ; 2 uses
  %i.k = icmp eq ptr %storemerge127, %1
  br i1 %i.k, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %.lr.ph129

.preheader:                                       ; preds = %.lr.ph129
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge128, i64 1 ; 2 uses
  %i.l = icmp eq ptr %storemerge, %1
  br i1 %i.l, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %.lr.ph129, !llvm.loop !454

.lr.ph129:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge128 = phi ptr [ %storemerge, %.preheader ], [ %storemerge127, %.preheader.preheader ] ; 5 uses
  %i.m = load i8, ptr %storemerge128, align 1, !tbaa !71
  %.not54 = icmp eq i8 %i.m, 48
  br i1 %.not54, label %.preheader, label %bb.h, !llvm.loop !454

bb.h:                                             ; preds = %.lr.ph129
  %i.n = ptrtoint ptr %storemerge128 to i64
  %i.o = sub i64 %i.d, %i.n                       ; 3 uses
  %i.p = icmp ugt i64 %i.o, 2
  br i1 %i.p, label %.thread, label %._crit_edge

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.04282 = phi i64 [ %i.o, %bb.h ], [ %i.f, %bb.g ], [ %i.f, %bb.f ]
  %.081 = phi ptr [ %storemerge128, %bb.h ], [ %.372.ph, %bb.g ], [ %.372.ph, %bb.f ] ; 6 uses
  %.not55 = icmp eq i64 %.04282, 3
  br i1 %.not55, label %sub_0, label %bb.i

sub_0:                                            ; preds = %.thread
  %i.q = load i8, ptr %.081, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -50                    ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.t = getelementptr inbounds nuw i8, ptr %.081, i64 1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -53                    ; 2 uses
  %.not95 = icmp eq i32 %i.w, 0
  br i1 %.not95, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.x = getelementptr inbounds nuw i8, ptr %.081, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -53
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.ab = phi i32 [ %i.s, %sub_0 ], [ %i.w, %sub_1 ], [ %i.aa, %sub_2 ]
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %.tail
  %i.ad = add nuw nsw i8 %.sroa.065.1.ph, 7
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit

bb.j:                                             ; preds = %.tail
  %.pre = ptrtoint ptr %.081 to i64
  %.pre101 = sub i64 %i.d, %.pre                  ; 2 uses
  %i.ae = icmp sgt i64 %.pre101, 3
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.03892 = phi i8 [ %i.bi, %bb.k ], [ 0, %bb.j ]
  %.291 = phi ptr [ %i.bj, %bb.k ], [ %.081, %bb.j ] ; 5 uses
  %i.af = load i8, ptr %.291, align 1, !tbaa !71
  %i.ag = sext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !99
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.291, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !71
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !99
  %i.ap = zext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %.291, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !71
  %i.as = sext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !99
  %i.av = zext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %.291, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !71
  %i.ay = sext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !99
  %i.bb = zext i16 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.ap, %i.aj
  %i.bd = add nuw nsw i32 %i.bc, %i.av
  %i.be = add nuw nsw i32 %i.bd, %i.bb            ; 2 uses
  %i.bf = icmp samesign ugt i32 %i.be, 9999
  br i1 %i.bf, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bg = shl i8 %.03892, 4
  %i.bh = trunc i32 %i.be to i8
  %i.bi = add i8 %i.bg, %i.bh                     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.291, i64 4 ; 3 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.d, %i.bk                     ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 3
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !455

._crit_edge:                                      ; preds = %bb.k, %bb.e, %bb.h, %bb.j
  %.143116 = phi i64 [ 3, %bb.j ], [ 3, %bb.h ], [ %i.f, %bb.e ], [ 3, %bb.k ]
  %.2.lcssa = phi ptr [ %.081, %bb.j ], [ %storemerge128, %bb.h ], [ %.372.ph, %bb.e ], [ %i.bj, %bb.k ] ; 6 uses
  %.038.lcssa = phi i8 [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.e ], [ %i.bi, %bb.k ] ; 4 uses
  %.lcssa = phi i64 [ %.pre101, %bb.j ], [ %i.o, %bb.h ], [ %i.f, %bb.e ], [ %i.bl, %bb.k ]
  switch i64 %.lcssa, label %bb.o [
    i64 3, label %bb.l
    i64 2, label %bb.m
    i64 1, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge
  %i.bn = load i8, ptr %.2.lcssa, align 1, !tbaa !71
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !99
  %i.br = zext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !71
  %i.bu = sext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !99
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !71
  %i.ca = sext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !99
  %i.cd = zext i16 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.bx, %i.br
  %i.cf = add nuw nsw i32 %i.ce, %i.cd            ; 2 uses
  %i.cg = icmp samesign ugt i32 %i.cf, 9999
  %2 = mul i8 %.038.lcssa, -24
  %3 = trunc i32 %i.cf to i8
  %4 = add i8 %2, %3
  br i1 %i.cg, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.p

bb.m:                                             ; preds = %._crit_edge
  %i.ch = load i8, ptr %.2.lcssa, align 1, !tbaa !71
  %i.ci = sext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !99
  %i.cl = zext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !71
  %i.co = sext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !99
  %i.cr = zext i16 %i.cq to i32
  %i.cs = add nuw nsw i32 %i.cr, %i.cl            ; 2 uses
  %i.ct = icmp samesign ugt i32 %i.cs, 9999
  %5 = mul i8 %.038.lcssa, 100
  %6 = trunc i32 %i.cs to i8
  %7 = add i8 %5, %6
  br i1 %i.ct, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.p

bb.n:                                             ; preds = %._crit_edge
  %i.cu = load i8, ptr %.2.lcssa, align 1, !tbaa !71
  %i.cv = sext i8 %i.cu to i64                    ; 2 uses
  %i.cw = add nsw i64 %i.cv, -58
  %i.cx = icmp ult i64 %i.cw, -10
  br i1 %i.cx, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %.thread83

.thread83:                                        ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cv
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !99
  %i.da = trunc i16 %i.cz to i8
  %i.db = mul i8 %.038.lcssa, 10
  %i.dc = add i8 %i.db, %i.da
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.dd = icmp eq i64 %.143116, 0
  br i1 %i.dd, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.p

bb.p:                                             ; preds = %.thread83, %bb.m, %bb.l, %bb.o
  %.5 = phi i8 [ %.038.lcssa, %bb.o ], [ %4, %bb.l ], [ %7, %bb.m ], [ %i.dc, %.thread83 ] ; 3 uses
  %i.de = trunc nuw i8 %.sroa.065.1.ph to i1
  br i1 %i.de, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.df = sub i8 0, %.5                           ; 2 uses
  %i.dg = icmp sgt i8 %i.df, 0
  br i1 %i.dg, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.s, !prof !73

bb.r:                                             ; preds = %bb.p
  %i.dh = icmp slt i8 %.5, 0
  br i1 %i.dh, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.s, !prof !73

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i57 = phi i8 [ %i.df, %bb.q ], [ %.5, %bb.r ]
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit: ; preds = %.preheader, %.lr.ph, %.preheader.preheader, %bb.q, %bb.r, %bb.s, %bb.n, %bb.m, %bb.l, %bb.o, %bb.b, %bb.i
  %.sroa.7.0 = phi i8 [ 6, %bb.b ], [ %i.ad, %bb.i ], [ 2, %bb.o ], [ 0, %.preheader.preheader ], [ 5, %bb.n ], [ 7, %bb.r ], [ 5, %bb.l ], [ 5, %bb.m ], [ 8, %bb.q ], [ 0, %bb.s ], [ 5, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.071.0 = phi i8 [ 2, %bb.b ], [ 2, %bb.i ], [ 2, %bb.o ], [ 1, %.preheader.preheader ], [ 2, %bb.n ], [ 2, %bb.r ], [ 2, %bb.l ], [ 2, %bb.m ], [ 2, %bb.q ], [ 1, %bb.s ], [ 2, %.lr.ph ], [ 1, %.preheader ]
  %.sroa.12.0 = phi i8 [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.o ], [ 0, %.preheader.preheader ], [ 0, %bb.n ], [ 0, %bb.r ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.q ], [ %.0.i57, %bb.s ], [ 0, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.12.0.insert.ext = zext i8 %.sroa.12.0 to i24
  %.sroa.12.0.insert.shift = shl nuw i24 %.sroa.12.0.insert.ext, 16
  %.sroa.7.0.insert.ext = zext nneg i8 %.sroa.7.0 to i24
  %.sroa.7.0.insert.shift = shl nuw nsw i24 %.sroa.7.0.insert.ext, 8
  %.sroa.7.0.insert.insert = or disjoint i24 %.sroa.12.0.insert.shift, %.sroa.7.0.insert.shift
  %.sroa.071.0.insert.ext = zext nneg i8 %.sroa.071.0 to i24
  %.sroa.071.0.insert.insert = or disjoint i24 %.sroa.7.0.insert.insert, %.sroa.071.0.insert.ext
  ret i24 %.sroa.071.0.insert.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr i24 @_ZN5folly6detail9digits_toIaEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !71      ; 2 uses
  %i.b = sext i8 %i.a to i32
  %isdigittmp.i = add nsw i32 %i.b, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ], !prof !98

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.065.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.372.ph = phi ptr [ %i.c, %bb.d ], [ %0, %bb.a ] ; 7 uses
  %.sroa.065.1.ph = phi i8 [ %.sroa.065.0, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %.372.ph to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = icmp ugt i64 %i.f, 2
  br i1 %i.g, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult ptr %.372.ph, %1
  br i1 %i.h, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.i = load i8, ptr %.372.ph, align 1, !tbaa !71
  %i.j = icmp eq i8 %i.i, 48
  br i1 %i.j, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.g
  %storemerge127 = getelementptr inbounds nuw i8, ptr %.372.ph, i64 1 ; 2 uses
  %i.k = icmp eq ptr %storemerge127, %1
  br i1 %i.k, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %.lr.ph129

.preheader:                                       ; preds = %.lr.ph129
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge128, i64 1 ; 2 uses
  %i.l = icmp eq ptr %storemerge, %1
  br i1 %i.l, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %.lr.ph129, !llvm.loop !456

.lr.ph129:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge128 = phi ptr [ %storemerge, %.preheader ], [ %storemerge127, %.preheader.preheader ] ; 5 uses
  %i.m = load i8, ptr %storemerge128, align 1, !tbaa !71
  %.not54 = icmp eq i8 %i.m, 48
  br i1 %.not54, label %.preheader, label %bb.h, !llvm.loop !456

bb.h:                                             ; preds = %.lr.ph129
  %i.n = ptrtoint ptr %storemerge128 to i64
  %i.o = sub i64 %i.d, %i.n                       ; 3 uses
  %i.p = icmp ugt i64 %i.o, 2
  br i1 %i.p, label %.thread, label %._crit_edge

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.04282 = phi i64 [ %i.o, %bb.h ], [ %i.f, %bb.g ], [ %i.f, %bb.f ]
  %.081 = phi ptr [ %storemerge128, %bb.h ], [ %.372.ph, %bb.g ], [ %.372.ph, %bb.f ] ; 6 uses
  %.not55 = icmp eq i64 %.04282, 3
  br i1 %.not55, label %sub_0, label %bb.i

sub_0:                                            ; preds = %.thread
  %i.q = load i8, ptr %.081, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -50                    ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.t = getelementptr inbounds nuw i8, ptr %.081, i64 1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -53                    ; 2 uses
  %.not95 = icmp eq i32 %i.w, 0
  br i1 %.not95, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.x = getelementptr inbounds nuw i8, ptr %.081, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -53
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.ab = phi i32 [ %i.s, %sub_0 ], [ %i.w, %sub_1 ], [ %i.aa, %sub_2 ]
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %.tail
  %i.ad = add nuw nsw i8 %.sroa.065.1.ph, 7
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit

bb.j:                                             ; preds = %.tail
  %.pre = ptrtoint ptr %.081 to i64
  %.pre101 = sub i64 %i.d, %.pre                  ; 2 uses
  %i.ae = icmp sgt i64 %.pre101, 3
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.03892 = phi i8 [ %i.bi, %bb.k ], [ 0, %bb.j ]
  %.291 = phi ptr [ %i.bj, %bb.k ], [ %.081, %bb.j ] ; 5 uses
  %i.af = load i8, ptr %.291, align 1, !tbaa !71
  %i.ag = sext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !99
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.291, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !71
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !99
  %i.ap = zext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %.291, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !71
  %i.as = sext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !99
  %i.av = zext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %.291, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !71
  %i.ay = sext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !99
  %i.bb = zext i16 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.ap, %i.aj
  %i.bd = add nuw nsw i32 %i.bc, %i.av
  %i.be = add nuw nsw i32 %i.bd, %i.bb            ; 2 uses
  %i.bf = icmp samesign ugt i32 %i.be, 9999
  br i1 %i.bf, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bg = shl i8 %.03892, 4
  %i.bh = trunc i32 %i.be to i8
  %i.bi = add i8 %i.bg, %i.bh                     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.291, i64 4 ; 3 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.d, %i.bk                     ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 3
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !457

._crit_edge:                                      ; preds = %bb.k, %bb.e, %bb.h, %bb.j
  %.143116 = phi i64 [ 3, %bb.j ], [ 3, %bb.h ], [ %i.f, %bb.e ], [ 3, %bb.k ]
  %.2.lcssa = phi ptr [ %.081, %bb.j ], [ %storemerge128, %bb.h ], [ %.372.ph, %bb.e ], [ %i.bj, %bb.k ] ; 6 uses
  %.038.lcssa = phi i8 [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.e ], [ %i.bi, %bb.k ] ; 4 uses
  %.lcssa = phi i64 [ %.pre101, %bb.j ], [ %i.o, %bb.h ], [ %i.f, %bb.e ], [ %i.bl, %bb.k ]
  switch i64 %.lcssa, label %bb.o [
    i64 3, label %bb.l
    i64 2, label %bb.m
    i64 1, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge
  %i.bn = load i8, ptr %.2.lcssa, align 1, !tbaa !71
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !99
  %i.br = zext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !71
  %i.bu = sext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !99
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !71
  %i.ca = sext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !99
  %i.cd = zext i16 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.bx, %i.br
  %i.cf = add nuw nsw i32 %i.ce, %i.cd            ; 2 uses
  %i.cg = icmp samesign ugt i32 %i.cf, 9999
  %2 = mul i8 %.038.lcssa, -24
  %3 = trunc i32 %i.cf to i8
  %4 = add i8 %2, %3
  br i1 %i.cg, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %bb.p

bb.m:                                             ; preds = %._crit_edge
  %i.ch = load i8, ptr %.2.lcssa, align 1, !tbaa !71
  %i.ci = sext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !99
  %i.cl = zext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !71
  %i.co = sext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !99
  %i.cr = zext i16 %i.cq to i32
  %i.cs = add nuw nsw i32 %i.cr, %i.cl            ; 2 uses
  %i.ct = icmp samesign ugt i32 %i.cs, 9999
  %5 = mul i8 %.038.lcssa, 100
  %6 = trunc i32 %i.cs to i8
  %7 = add i8 %5, %6
  br i1 %i.ct, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %bb.p

bb.n:                                             ; preds = %._crit_edge
  %i.cu = load i8, ptr %.2.lcssa, align 1, !tbaa !71
  %i.cv = sext i8 %i.cu to i64                    ; 2 uses
  %i.cw = add nsw i64 %i.cv, -58
  %i.cx = icmp ult i64 %i.cw, -10
  br i1 %i.cx, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %.thread83

.thread83:                                        ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cv
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !99
  %i.da = trunc i16 %i.cz to i8
  %i.db = mul i8 %.038.lcssa, 10
  %i.dc = add i8 %i.db, %i.da
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.dd = icmp eq i64 %.143116, 0
  br i1 %i.dd, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %bb.p

bb.p:                                             ; preds = %.thread83, %bb.m, %bb.l, %bb.o
  %.5 = phi i8 [ %.038.lcssa, %bb.o ], [ %4, %bb.l ], [ %7, %bb.m ], [ %i.dc, %.thread83 ] ; 3 uses
  %i.de = trunc nuw i8 %.sroa.065.1.ph to i1
  br i1 %i.de, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.df = sub i8 0, %.5                           ; 2 uses
  %i.dg = icmp sgt i8 %i.df, 0
  br i1 %i.dg, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %bb.s, !prof !73

bb.r:                                             ; preds = %bb.p
  %i.dh = icmp slt i8 %.5, 0
  br i1 %i.dh, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %bb.s, !prof !73

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i57 = phi i8 [ %i.df, %bb.q ], [ %.5, %bb.r ]
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit: ; preds = %.preheader, %.lr.ph, %.preheader.preheader, %bb.q, %bb.r, %bb.s, %bb.n, %bb.m, %bb.l, %bb.o, %bb.b, %bb.i
  %.sroa.7.0 = phi i8 [ 6, %bb.b ], [ %i.ad, %bb.i ], [ 2, %bb.o ], [ 0, %.preheader.preheader ], [ 5, %bb.n ], [ 7, %bb.r ], [ 5, %bb.l ], [ 5, %bb.m ], [ 8, %bb.q ], [ 0, %bb.s ], [ 5, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.071.0 = phi i8 [ 2, %bb.b ], [ 2, %bb.i ], [ 2, %bb.o ], [ 1, %.preheader.preheader ], [ 2, %bb.n ], [ 2, %bb.r ], [ 2, %bb.l ], [ 2, %bb.m ], [ 2, %bb.q ], [ 1, %bb.s ], [ 2, %.lr.ph ], [ 1, %.preheader ]
  %.sroa.12.0 = phi i8 [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.o ], [ 0, %.preheader.preheader ], [ 0, %bb.n ], [ 0, %bb.r ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.q ], [ %.0.i57, %bb.s ], [ 0, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.12.0.insert.ext = zext i8 %.sroa.12.0 to i24
  %.sroa.12.0.insert.shift = shl nuw i24 %.sroa.12.0.insert.ext, 16
  %.sroa.7.0.insert.ext = zext nneg i8 %.sroa.7.0 to i24
  %.sroa.7.0.insert.shift = shl nuw nsw i24 %.sroa.7.0.insert.ext, 8
  %.sroa.7.0.insert.insert = or disjoint i24 %.sroa.12.0.insert.shift, %.sroa.7.0.insert.shift
  %.sroa.071.0.insert.ext = zext nneg i8 %.sroa.071.0 to i24
  %.sroa.071.0.insert.insert = or disjoint i24 %.sroa.7.0.insert.insert, %.sroa.071.0.insert.ext
  ret i24 %.sroa.071.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr i24 @_ZN5folly6detail9digits_toIhEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult ptr %0, %1
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %0, align 1, !tbaa !71
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.c
  %storemerge115 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = icmp eq ptr %storemerge115, %1
  br i1 %i.h, label %.loopexit, label %.lr.ph117

.preheader:                                       ; preds = %.lr.ph117
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge116, i64 1 ; 2 uses
  %i.i = icmp eq ptr %storemerge, %1
  br i1 %i.i, label %.loopexit, label %.lr.ph117, !llvm.loop !458

.lr.ph117:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge116 = phi ptr [ %storemerge, %.preheader ], [ %storemerge115, %.preheader.preheader ] ; 5 uses
  %i.j = load i8, ptr %storemerge116, align 1, !tbaa !71
  %.not = icmp eq i8 %i.j, 48
  br i1 %.not, label %.preheader, label %bb.d, !llvm.loop !458

bb.d:                                             ; preds = %.lr.ph117
  %i.k = ptrtoint ptr %storemerge116 to i64
  %i.l = sub i64 %i.a, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 2
  br i1 %i.m, label %.thread, label %._crit_edge

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.04268 = phi i64 [ %i.l, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  %.067 = phi ptr [ %storemerge116, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ] ; 6 uses
  %.not54 = icmp eq i64 %.04268, 3
  br i1 %.not54, label %sub_0, label %.loopexit

sub_0:                                            ; preds = %.thread
  %i.n = load i8, ptr %.067, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = add nsw i32 %i.o, -50                    ; 2 uses
  %.not81 = icmp eq i32 %i.p, 0
  br i1 %.not81, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.q = getelementptr inbounds nuw i8, ptr %.067, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = add nsw i32 %i.s, -53                    ; 2 uses
  %.not82 = icmp eq i32 %i.t, 0
  br i1 %.not82, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.u = getelementptr inbounds nuw i8, ptr %.067, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -53
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.y = phi i32 [ %i.p, %sub_0 ], [ %i.t, %sub_1 ], [ %i.x, %sub_2 ]
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.tail
  %.pre = ptrtoint ptr %.067 to i64
  %.pre88 = sub i64 %i.a, %.pre                   ; 2 uses
  %i.aa = icmp sgt i64 %.pre88, 3
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.03878 = phi i8 [ %i.be, %bb.f ], [ 0, %bb.e ]
  %.277 = phi ptr [ %i.bf, %bb.f ], [ %.067, %bb.e ] ; 5 uses
  %i.ab = load i8, ptr %.277, align 1, !tbaa !71
  %i.ac = sext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !99
  %i.af = zext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %.277, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !71
  %i.ai = sext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !99
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.277, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !71
  %i.ao = sext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !99
  %i.ar = zext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.277, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !71
  %i.au = sext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !99
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.al, %i.af
  %i.az = add nuw nsw i32 %i.ay, %i.ar
  %i.ba = add nuw nsw i32 %i.az, %i.ax            ; 2 uses
  %i.bb = icmp samesign ugt i32 %i.ba, 9999
  br i1 %i.bb, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bc = shl i8 %.03878, 4
  %i.bd = trunc i32 %i.ba to i8
  %i.be = add i8 %i.bc, %i.bd                     ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.277, i64 4 ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.a, %i.bg                     ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 3
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !459

._crit_edge:                                      ; preds = %bb.f, %bb.a, %bb.d, %bb.e
  %.143104 = phi i64 [ 3, %bb.e ], [ 3, %bb.d ], [ %i.c, %bb.a ], [ 3, %bb.f ]
  %.2.lcssa = phi ptr [ %.067, %bb.e ], [ %storemerge116, %bb.d ], [ %0, %bb.a ], [ %i.bf, %bb.f ] ; 6 uses
  %.038.lcssa = phi i8 [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.a ], [ %i.be, %bb.f ] ; 4 uses
  %.lcssa = phi i64 [ %.pre88, %bb.e ], [ %i.l, %bb.d ], [ %i.c, %bb.a ], [ %i.bh, %bb.f ]
  switch i64 %.lcssa, label %bb.j [
    i64 3, label %bb.g
    i64 2, label %bb.h
    i64 1, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge
  %i.bj = load i8, ptr %.2.lcssa, align 1, !tbaa !71
  %i.bk = sext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !99
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !71
  %i.bq = sext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !99
  %i.bt = zext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !71
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !99
  %i.bz = zext i16 %i.by to i32
  %i.ca = add nuw nsw i32 %i.bt, %i.bn
  %i.cb = add nuw nsw i32 %i.ca, %i.bz            ; 2 uses
  %i.cc = icmp samesign ugt i32 %i.cb, 9999
  %2 = mul i8 %.038.lcssa, -24
  %3 = trunc i32 %i.cb to i8
  %4 = add i8 %2, %3
  br i1 %i.cc, label %.loopexit, label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %i.cd = load i8, ptr %.2.lcssa, align 1, !tbaa !71
  %i.ce = sext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !99
  %i.ch = zext i16 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !71
  %i.ck = sext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !99
  %i.cn = zext i16 %i.cm to i32
  %i.co = add nuw nsw i32 %i.cn, %i.ch            ; 2 uses
  %i.cp = icmp samesign ugt i32 %i.co, 9999
  %5 = mul i8 %.038.lcssa, 100
  %6 = trunc i32 %i.co to i8
  %7 = add i8 %5, %6
  br i1 %i.cp, label %.loopexit, label %bb.k

bb.i:                                             ; preds = %._crit_edge
  %i.cq = load i8, ptr %.2.lcssa, align 1, !tbaa !71
  %i.cr = sext i8 %i.cq to i64                    ; 2 uses
  %i.cs = add nsw i64 %i.cr, -58
  %i.ct = icmp ult i64 %i.cs, -10
  br i1 %i.ct, label %.loopexit, label %.thread69

.thread69:                                        ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cr
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !99
  %i.cw = trunc i16 %i.cv to i8
  %i.cx = mul i8 %.038.lcssa, 10
  %i.cy = add i8 %i.cx, %i.cw
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.cz = icmp eq i64 %.143104, 0
  br i1 %i.cz, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.thread69, %bb.h, %bb.g, %bb.j
  %.5 = phi i8 [ %.038.lcssa, %bb.j ], [ %4, %bb.g ], [ %7, %bb.h ], [ %i.cy, %.thread69 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.lr.ph, %.preheader.preheader, %bb.i, %bb.h, %bb.g, %bb.j, %.tail, %.thread, %bb.k
  %.sroa.064.0 = phi i8 [ 1, %bb.k ], [ 1, %.preheader.preheader ], [ 2, %bb.j ], [ 2, %.tail ], [ 2, %.thread ], [ 2, %bb.i ], [ 2, %bb.g ], [ 2, %bb.h ], [ 2, %.lr.ph ], [ 1, %.preheader ]
  %.sroa.6.0 = phi i8 [ 0, %bb.k ], [ 0, %.preheader.preheader ], [ 2, %bb.j ], [ 7, %.tail ], [ 7, %.thread ], [ 5, %bb.i ], [ 5, %bb.g ], [ 5, %bb.h ], [ 5, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.10.0 = phi i8 [ %.5, %bb.k ], [ 0, %.preheader.preheader ], [ 0, %bb.j ], [ 0, %.tail ], [ 0, %.thread ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.10.0.insert.ext = zext i8 %.sroa.10.0 to i24
  %.sroa.10.0.insert.shift = shl nuw i24 %.sroa.10.0.insert.ext, 16
  %.sroa.6.0.insert.ext = zext nneg i8 %.sroa.6.0 to i24
  %.sroa.6.0.insert.shift = shl nuw nsw i24 %.sroa.6.0.insert.ext, 8
  %.sroa.6.0.insert.insert = or disjoint i24 %.sroa.10.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.064.0.insert.ext = zext nneg i8 %.sroa.064.0 to i24
  %.sroa.064.0.insert.insert = or disjoint i24 %.sroa.6.0.insert.insert, %.sroa.064.0.insert.ext
  ret i24 %.sroa.064.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr i32 @_ZN5folly6detail9digits_toIsEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !71      ; 2 uses
  %i.b = sext i8 %i.a to i32
  %isdigittmp.i = add nsw i32 %i.b, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ], !prof !98

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.064.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.374.ph = phi ptr [ %i.c, %bb.d ], [ %0, %bb.a ] ; 7 uses
  %.sroa.064.1.ph = phi i8 [ %.sroa.064.0, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %.374.ph to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = icmp ugt i64 %i.f, 4
  br i1 %i.g, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult ptr %.374.ph, %1
  br i1 %i.h, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.i = load i8, ptr %.374.ph, align 1, !tbaa !71
  %i.j = icmp eq i8 %i.i, 48
  br i1 %i.j, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.g
  %storemerge121 = getelementptr inbounds nuw i8, ptr %.374.ph, i64 1 ; 2 uses
  %i.k = icmp eq ptr %storemerge121, %1
  br i1 %i.k, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %.lr.ph123

.preheader:                                       ; preds = %.lr.ph123
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge122, i64 1 ; 2 uses
  %i.l = icmp eq ptr %storemerge, %1
  br i1 %i.l, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %.lr.ph123, !llvm.loop !460

.lr.ph123:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge122 = phi ptr [ %storemerge, %.preheader ], [ %storemerge121, %.preheader.preheader ] ; 5 uses
  %i.m = load i8, ptr %storemerge122, align 1, !tbaa !71
  %.not53 = icmp eq i8 %i.m, 48
  br i1 %.not53, label %.preheader, label %bb.h, !llvm.loop !460

bb.h:                                             ; preds = %.lr.ph123
  %i.n = ptrtoint ptr %storemerge122 to i64
  %i.o = sub i64 %i.d, %i.n                       ; 3 uses
  %i.p = icmp ugt i64 %i.o, 4
  br i1 %i.p, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.03784 = phi i64 [ %i.o, %bb.h ], [ %i.f, %bb.g ], [ %i.f, %bb.f ]
  %.07183 = phi ptr [ %storemerge122, %bb.h ], [ %.374.ph, %bb.g ], [ %.374.ph, %bb.f ] ; 3 uses
  %.not54 = icmp eq i64 %.03784, 5
  br i1 %.not54, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.q = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.07183, ptr noundef nonnull dereferenceable(6) @.str.4, i64 noundef 5) #28
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %._crit_edge102

._crit_edge102:                                   ; preds = %bb.i
  %.pre = ptrtoint ptr %.07183 to i64
  %.pre103 = sub i64 %i.d, %.pre
  br label %bb.k

bb.j:                                             ; preds = %.thread, %bb.i
  %i.s = add nuw nsw i8 %.sroa.064.1.ph, 7
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit

bb.k:                                             ; preds = %._crit_edge102, %bb.h, %bb.e
  %.pre-phi104 = phi i64 [ %.pre103, %._crit_edge102 ], [ %i.o, %bb.h ], [ %i.f, %bb.e ] ; 2 uses
  %.172 = phi ptr [ %.07183, %._crit_edge102 ], [ %storemerge122, %bb.h ], [ %.374.ph, %bb.e ] ; 2 uses
  %.138 = phi i64 [ 5, %._crit_edge102 ], [ 5, %bb.h ], [ %i.f, %bb.e ]
  %i.t = icmp sgt i64 %.pre-phi104, 3
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.094 = phi i16 [ %i.ax, %bb.l ], [ 0, %bb.k ]
  %.27393 = phi ptr [ %i.ay, %bb.l ], [ %.172, %bb.k ] ; 5 uses
  %i.u = load i8, ptr %.27393, align 1, !tbaa !71
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !99
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.27393, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !71
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !99
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.27393, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !71
  %i.ah = sext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !99
  %i.ak = zext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.27393, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !71
  %i.an = sext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !99
  %i.aq = zext i16 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.ae, %i.y
  %i.as = add nuw nsw i32 %i.ar, %i.ak
  %i.at = add nuw nsw i32 %i.as, %i.aq            ; 2 uses
  %i.au = icmp samesign ugt i32 %i.at, 9999
  br i1 %i.au, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.av = mul i16 %.094, 10000
  %i.aw = trunc nuw nsw i32 %i.at to i16
  %i.ax = add i16 %i.av, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.27393, i64 4 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.d, %i.az                     ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 3
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !461

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.273.lcssa = phi ptr [ %.172, %bb.k ], [ %i.ay, %bb.l ] ; 6 uses
  %.0.lcssa = phi i16 [ 0, %bb.k ], [ %i.ax, %bb.l ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi104, %bb.k ], [ %i.ba, %bb.l ]
  switch i64 %.lcssa, label %bb.p [
    i64 3, label %bb.m
    i64 2, label %bb.n
    i64 1, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge
  %i.bc = load i8, ptr %.273.lcssa, align 1, !tbaa !71
  %i.bd = sext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !99
  %i.bg = zext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !71
  %i.bj = sext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !99
  %i.bm = zext i16 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !71
  %i.bp = sext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !99
  %i.bs = zext i16 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bm, %i.bg
  %i.bu = add nuw nsw i32 %i.bt, %i.bs            ; 2 uses
  %i.bv = icmp samesign ugt i32 %i.bu, 9999
  %2 = mul i16 %.0.lcssa, 1000
  %3 = trunc nuw nsw i32 %i.bu to i16
  %4 = add i16 %2, %3
  br i1 %i.bv, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %bb.q

bb.n:                                             ; preds = %._crit_edge
  %i.bw = load i8, ptr %.273.lcssa, align 1, !tbaa !71
  %i.bx = sext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !99
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !71
  %i.cd = sext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !99
  %i.cg = zext i16 %i.cf to i32
  %i.ch = add nuw nsw i32 %i.cg, %i.ca            ; 2 uses
  %i.ci = icmp samesign ugt i32 %i.ch, 9999
  %5 = mul i16 %.0.lcssa, 100
  %6 = trunc nuw nsw i32 %i.ch to i16
  %7 = add i16 %5, %6
  br i1 %i.ci, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %bb.q

bb.o:                                             ; preds = %._crit_edge
  %i.cj = load i8, ptr %.273.lcssa, align 1, !tbaa !71
  %i.ck = sext i8 %i.cj to i64                    ; 2 uses
  %i.cl = add nsw i64 %i.ck, -58
  %i.cm = icmp ult i64 %i.cl, -10
  br i1 %i.cm, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %.thread85

.thread85:                                        ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.ck
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !99
  %i.cp = mul i16 %.0.lcssa, 10
  %i.cq = add i16 %i.co, %i.cp
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.cr = icmp eq i64 %.138, 0
  br i1 %i.cr, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %bb.q

bb.q:                                             ; preds = %.thread85, %bb.n, %bb.m, %bb.p
  %.5 = phi i16 [ %.0.lcssa, %bb.p ], [ %4, %bb.m ], [ %7, %bb.n ], [ %i.cq, %.thread85 ] ; 3 uses
  %i.cs = trunc nuw i8 %.sroa.064.1.ph to i1
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = sub i16 0, %.5                          ; 2 uses
  %i.cu = icmp sgt i16 %i.ct, 0
  br i1 %i.cu, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit, label %bb.t, !prof !73

bb.s:                                             ; preds = %bb.q
  %i.cv = icmp slt i16 %.5, 0
  br i1 %i.cv, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit, label %bb.t, !prof !73

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i56 = phi i16 [ %i.ct, %bb.r ], [ %.5, %bb.s ]
  %i.cw = zext i16 %.0.i56 to i32
  %i.cx = shl nuw i32 %i.cw, 16
  %i.cy = or disjoint i32 %i.cx, 1
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.4.0.insert.insert.i = phi i32 [ 2050, %bb.r ], [ %i.cy, %bb.t ], [ 1794, %bb.s ] ; 3 uses
  %.sroa.7.0.extract.shift = lshr i32 %.sroa.4.0.insert.insert.i, 8
  %.sroa.7.0.extract.trunc = trunc i32 %.sroa.7.0.extract.shift to i8
  %.sroa.12.0.extract.shift = and i32 %.sroa.4.0.insert.insert.i, -65536
  %i.cz = and i32 %.sroa.4.0.insert.insert.i, 255
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit: ; preds = %.preheader, %.lr.ph, %.preheader.preheader, %bb.o, %bb.n, %bb.m, %bb.p, %bb.b, %bb.j, %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit
  %.sroa.7.0 = phi i8 [ 6, %bb.b ], [ %i.s, %bb.j ], [ 2, %bb.p ], [ 0, %.preheader.preheader ], [ %.sroa.7.0.extract.trunc, %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit ], [ 5, %bb.o ], [ 5, %bb.m ], [ 5, %bb.n ], [ 5, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.070.0 = phi i32 [ 2, %bb.b ], [ 2, %bb.j ], [ 2, %bb.p ], [ 1, %.preheader.preheader ], [ %i.cz, %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit ], [ 2, %bb.o ], [ 2, %bb.m ], [ 2, %bb.n ], [ 2, %.lr.ph ], [ 1, %.preheader ]
  %.sroa.12.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.j ], [ 0, %bb.p ], [ 0, %.preheader.preheader ], [ %.sroa.12.0.extract.shift, %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit ], [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.7.0.insert.ext = zext i8 %.sroa.7.0 to i32
  %.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.7.0.insert.ext, 8
  %.sroa.7.0.insert.insert = or disjoint i32 %.sroa.12.0, %.sroa.7.0.insert.shift
  %.sroa.070.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.insert, %.sroa.070.0
  ret i32 %.sroa.070.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr i32 @_ZN5folly6detail9digits_toItEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult ptr %0, %1
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %0, align 1, !tbaa !71
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.c
  %storemerge108 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = icmp eq ptr %storemerge108, %1
  br i1 %i.h, label %.loopexit, label %.lr.ph110

.preheader:                                       ; preds = %.lr.ph110
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge109, i64 1 ; 2 uses
  %i.i = icmp eq ptr %storemerge, %1
  br i1 %i.i, label %.loopexit, label %.lr.ph110, !llvm.loop !462

.lr.ph110:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge109 = phi ptr [ %storemerge, %.preheader ], [ %storemerge108, %.preheader.preheader ] ; 5 uses
  %i.j = load i8, ptr %storemerge109, align 1, !tbaa !71
  %.not = icmp eq i8 %i.j, 48
  br i1 %.not, label %.preheader, label %bb.d, !llvm.loop !462

bb.d:                                             ; preds = %.lr.ph110
  %i.k = ptrtoint ptr %storemerge109 to i64
  %i.l = sub i64 %i.a, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 4
  br i1 %i.m, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.03770 = phi i64 [ %i.l, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  %.06469 = phi ptr [ %storemerge109, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.not53 = icmp eq i64 %.03770, 5
  br i1 %.not53, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.thread
  %i.n = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.06469, ptr noundef nonnull dereferenceable(6) @.str.4, i64 noundef 5) #28
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %._crit_edge88

._crit_edge88:                                    ; preds = %bb.e
  %.pre = ptrtoint ptr %.06469 to i64
  %.pre89 = sub i64 %i.a, %.pre
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge88, %bb.d, %bb.a
  %.pre-phi90 = phi i64 [ %.pre89, %._crit_edge88 ], [ %i.l, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %.165 = phi ptr [ %.06469, %._crit_edge88 ], [ %storemerge109, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %.138 = phi i64 [ 5, %._crit_edge88 ], [ 5, %bb.d ], [ %i.c, %bb.a ]
  %i.p = icmp sgt i64 %.pre-phi90, 3
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.080 = phi i16 [ %i.at, %bb.g ], [ 0, %bb.f ]
  %.26679 = phi ptr [ %i.au, %bb.g ], [ %.165, %bb.f ] ; 5 uses
  %i.q = load i8, ptr %.26679, align 1, !tbaa !71
  %i.r = sext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !99
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %.26679, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !71
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !99
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %.26679, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !71
  %i.ad = sext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !99
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %.26679, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !71
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !99
  %i.am = zext i16 %i.al to i32
  %i.an = add nuw nsw i32 %i.aa, %i.u
  %i.ao = add nuw nsw i32 %i.an, %i.ag
  %i.ap = add nuw nsw i32 %i.ao, %i.am            ; 2 uses
  %i.aq = icmp samesign ugt i32 %i.ap, 9999
  br i1 %i.aq, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ar = mul i16 %.080, 10000
  %i.as = trunc nuw nsw i32 %i.ap to i16
  %i.at = add i16 %i.ar, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.26679, i64 4 ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.a, %i.av                     ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 3
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !463

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.266.lcssa = phi ptr [ %.165, %bb.f ], [ %i.au, %bb.g ] ; 6 uses
  %.0.lcssa = phi i16 [ 0, %bb.f ], [ %i.at, %bb.g ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi90, %bb.f ], [ %i.aw, %bb.g ]
  switch i64 %.lcssa, label %bb.k [
    i64 3, label %bb.h
    i64 2, label %bb.i
    i64 1, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge
  %i.ay = load i8, ptr %.266.lcssa, align 1, !tbaa !71
  %i.az = sext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !99
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.266.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !71
  %i.bf = sext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !99
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %.266.lcssa, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !71
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !99
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bi, %i.bc
  %i.bq = add nuw nsw i32 %i.bp, %i.bo            ; 2 uses
  %i.br = icmp samesign ugt i32 %i.bq, 9999
  %2 = mul i16 %.0.lcssa, 1000
  %3 = trunc nuw nsw i32 %i.bq to i16
  %4 = add i16 %2, %3
  br i1 %i.br, label %.loopexit, label %bb.l

bb.i:                                             ; preds = %._crit_edge
  %i.bs = load i8, ptr %.266.lcssa, align 1, !tbaa !71
  %i.bt = sext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !99
  %i.bw = zext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %.266.lcssa, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !71
  %i.bz = sext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !99
  %i.cc = zext i16 %i.cb to i32
  %i.cd = add nuw nsw i32 %i.cc, %i.bw            ; 2 uses
  %i.ce = icmp samesign ugt i32 %i.cd, 9999
  %5 = mul i16 %.0.lcssa, 100
  %6 = trunc nuw nsw i32 %i.cd to i16
  %7 = add i16 %5, %6
  br i1 %i.ce, label %.loopexit, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.cf = load i8, ptr %.266.lcssa, align 1, !tbaa !71
  %i.cg = sext i8 %i.cf to i64                    ; 2 uses
  %i.ch = add nsw i64 %i.cg, -58
  %i.ci = icmp ult i64 %i.ch, -10
  br i1 %i.ci, label %.loopexit, label %.thread71

.thread71:                                        ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cg
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !99
  %i.cl = mul i16 %.0.lcssa, 10
  %i.cm = add i16 %i.ck, %i.cl
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cn = icmp eq i64 %.138, 0
  br i1 %i.cn, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.thread71, %bb.i, %bb.h, %bb.k
  %.5 = phi i16 [ %.0.lcssa, %bb.k ], [ %4, %bb.h ], [ %7, %bb.i ], [ %i.cm, %.thread71 ]
  %i.co = zext i16 %.5 to i32
  %i.cp = shl nuw i32 %i.co, 16
  %i.cq = or disjoint i32 %i.cp, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.lr.ph, %.preheader.preheader, %bb.j, %bb.i, %bb.h, %bb.k, %bb.e, %.thread, %bb.l
  %.sroa.6.0.insert.insert = phi i32 [ %i.cq, %bb.l ], [ 1, %.preheader.preheader ], [ 514, %bb.k ], [ 1794, %bb.e ], [ 1794, %.thread ], [ 1282, %bb.j ], [ 1282, %bb.h ], [ 1282, %bb.i ], [ 1282, %.lr.ph ], [ 1, %.preheader ]
  ret i32 %.sroa.6.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr i64 @_ZN5folly6detail9digits_toIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !71      ; 2 uses
  %i.b = sext i8 %i.a to i32
  %isdigittmp.i = add nsw i32 %i.b, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ], !prof !98

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.064.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.375.ph = phi ptr [ %i.c, %bb.d ], [ %0, %bb.a ] ; 7 uses
  %.sroa.064.1.ph = phi i8 [ %.sroa.064.0, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %.375.ph to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = icmp ugt i64 %i.f, 9
  br i1 %i.g, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult ptr %.375.ph, %1
  br i1 %i.h, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.i = load i8, ptr %.375.ph, align 1, !tbaa !71
  %i.j = icmp eq i8 %i.i, 48
  br i1 %i.j, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.g
  %storemerge122 = getelementptr inbounds nuw i8, ptr %.375.ph, i64 1 ; 2 uses
  %i.k = icmp eq ptr %storemerge122, %1
  br i1 %i.k, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %.lr.ph124

.preheader:                                       ; preds = %.lr.ph124
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge123, i64 1 ; 2 uses
  %i.l = icmp eq ptr %storemerge, %1
  br i1 %i.l, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %.lr.ph124, !llvm.loop !464

.lr.ph124:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge123 = phi ptr [ %storemerge, %.preheader ], [ %storemerge122, %.preheader.preheader ] ; 5 uses
  %i.m = load i8, ptr %storemerge123, align 1, !tbaa !71
  %.not53 = icmp eq i8 %i.m, 48
  br i1 %.not53, label %.preheader, label %bb.h, !llvm.loop !464

bb.h:                                             ; preds = %.lr.ph124
  %i.n = ptrtoint ptr %storemerge123 to i64
  %i.o = sub i64 %i.d, %i.n                       ; 3 uses
  %i.p = icmp ugt i64 %i.o, 9
  br i1 %i.p, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.03785 = phi i64 [ %i.o, %bb.h ], [ %i.f, %bb.g ], [ %i.f, %bb.f ]
  %.07284 = phi ptr [ %storemerge123, %bb.h ], [ %.375.ph, %bb.g ], [ %.375.ph, %bb.f ] ; 3 uses
  %.not54 = icmp eq i64 %.03785, 10
  br i1 %.not54, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.q = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.07284, ptr noundef nonnull dereferenceable(11) @.str.5, i64 noundef 10) #28
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %._crit_edge103

._crit_edge103:                                   ; preds = %bb.i
  %.pre = ptrtoint ptr %.07284 to i64
  %.pre104 = sub i64 %i.d, %.pre
  br label %bb.k

bb.j:                                             ; preds = %.thread, %bb.i
  %i.s = add nuw nsw i8 %.sroa.064.1.ph, 7
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit

bb.k:                                             ; preds = %._crit_edge103, %bb.h, %bb.e
  %.pre-phi105 = phi i64 [ %.pre104, %._crit_edge103 ], [ %i.o, %bb.h ], [ %i.f, %bb.e ] ; 2 uses
  %.173 = phi ptr [ %.07284, %._crit_edge103 ], [ %storemerge123, %bb.h ], [ %.375.ph, %bb.e ] ; 2 uses
  %.138 = phi i64 [ 10, %._crit_edge103 ], [ 10, %bb.h ], [ %i.f, %bb.e ]
  %i.t = icmp sgt i64 %.pre-phi105, 3
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.095 = phi i32 [ %i.aw, %bb.l ], [ 0, %bb.k ]
  %.27494 = phi ptr [ %i.ax, %bb.l ], [ %.173, %bb.k ] ; 5 uses
  %i.u = load i8, ptr %.27494, align 1, !tbaa !71
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !99
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.27494, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !71
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !99
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.27494, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !71
  %i.ah = sext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !99
  %i.ak = zext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.27494, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !71
  %i.an = sext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !99
  %i.aq = zext i16 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.ae, %i.y
  %i.as = add nuw nsw i32 %i.ar, %i.ak
  %i.at = add nuw nsw i32 %i.as, %i.aq            ; 2 uses
  %i.au = icmp samesign ugt i32 %i.at, 9999
  br i1 %i.au, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.av = mul i32 %.095, 10000
  %i.aw = add i32 %i.at, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.27494, i64 4 ; 3 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.d, %i.ay                     ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 3
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !465

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.274.lcssa = phi ptr [ %.173, %bb.k ], [ %i.ax, %bb.l ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %bb.k ], [ %i.aw, %bb.l ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi105, %bb.k ], [ %i.az, %bb.l ]
  switch i64 %.lcssa, label %bb.p [
    i64 3, label %bb.m
    i64 2, label %bb.n
    i64 1, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge
  %i.bb = load i8, ptr %.274.lcssa, align 1, !tbaa !71
  %i.bc = sext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !99
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !71
  %i.bi = sext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !99
  %i.bl = zext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !71
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !99
  %i.br = zext i16 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.bl, %i.bf
  %i.bt = add nuw nsw i32 %i.bs, %i.br            ; 2 uses
  %i.bu = icmp samesign ugt i32 %i.bt, 9999
  %i.bv = mul i32 %.0.lcssa, 1000
  %i.bw = add i32 %i.bt, %i.bv
  br i1 %i.bu, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %bb.q

bb.n:                                             ; preds = %._crit_edge
  %i.bx = load i8, ptr %.274.lcssa, align 1, !tbaa !71
  %i.by = sext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !99
  %i.cb = zext i16 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !71
  %i.ce = sext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !99
  %i.ch = zext i16 %i.cg to i32
  %i.ci = add nuw nsw i32 %i.ch, %i.cb            ; 2 uses
  %i.cj = icmp samesign ugt i32 %i.ci, 9999
  %i.ck = mul i32 %.0.lcssa, 100
  %i.cl = add i32 %i.ci, %i.ck
  br i1 %i.cj, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %bb.q

bb.o:                                             ; preds = %._crit_edge
  %i.cm = load i8, ptr %.274.lcssa, align 1, !tbaa !71
  %i.cn = sext i8 %i.cm to i64                    ; 2 uses
  %i.co = add nsw i64 %i.cn, -58
  %i.cp = icmp ult i64 %i.co, -10
  br i1 %i.cp, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %.thread86
end_hunk_0
