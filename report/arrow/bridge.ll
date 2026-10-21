Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bridge?download=true
inline.NumInlined: 8873
inline.NumDeleted: 3382
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi:bb.a
  %i.cs = icmp eq i8 %i.d, 45
  br i1 %i.cs, label %bb.ba, label %.thread

bb.ba:                                            ; preds = %thread-pre-split
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cu = add i64 %3, -1                          ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.c, %bb.ba, %thread-pre-split
  %i.cw = phi i1 [ true, %bb.ba ], [ false, %thread-pre-split ], [ false, %bb.c ]
  %.024 = phi ptr [ %i.ct, %bb.ba ], [ %2, %thread-pre-split ], [ %2, %bb.c ] ; 2 uses
  %.023 = phi i64 [ %i.cu, %bb.ba ], [ %3, %thread-pre-split ], [ %3, %bb.c ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.024, i64 %.023
  br label %bb.bb

bb.bb:                                            ; preds = %.thread, %bb.bc
  %.133 = phi i64 [ %.023, %.thread ], [ %i.cz, %bb.bc ] ; 2 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.da, %bb.bc ] ; 3 uses
  %i.cx = load i8, ptr %.12532, align 1, !tbaa !94
  %i.cy = icmp eq i8 %i.cx, 48
  br i1 %i.cy, label %bb.bc, label %.critedge

bb.bc:                                            ; preds = %bb.bb
  %i.cz = add i64 %.133, -1                       ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.12532, i64 1
  %.not = icmp eq i64 %i.cz, 0
  br i1 %.not, label %.critedge, label %bb.bb, !llvm.loop !2628

.critedge:                                        ; preds = %bb.bc, %bb.bb
  %.125.lcssa = phi ptr [ %scevgep, %bb.bc ], [ %.12532, %bb.bb ]
  %.1.lcssa = phi i64 [ 0, %bb.bc ], [ %.133, %bb.bb ]
  %i.db = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.db, label %bb.bd, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, !prof !134

bb.bd:                                            ; preds = %.critedge
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !69  ; 4 uses
  br i1 %i.cw, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.dd = icmp ugt i32 %i.dc, -2147483648
  br i1 %i.dd, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, label %bb.bf, !prof !184

bb.bf:                                            ; preds = %bb.be
  %i.de = sub i32 0, %i.dc
  br label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split

bb.bg:                                            ; preds = %bb.bd
  %i.df = icmp slt i32 %i.dc, 0
  br i1 %i.df, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split, !prof !184

_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split: ; preds = %bb.j, %bb.p, %bb.v, %bb.ab, %bb.ah, %bb.an, %bb.at, %bb.az, %bb.bf, %bb.bg
  %storemerge.sink = phi i32 [ %i.dc, %bb.bg ], [ %i.de, %bb.bf ], [ %.pn.i, %bb.j ], [ %.1.i.1, %bb.p ], [ %.1.i.2, %bb.v ], [ %.1.i.3, %bb.ab ], [ %.1.i.4, %bb.ah ], [ %.1.i.5, %bb.an ], [ %.1.i.6, %bb.at ], [ %.1.i.7, %bb.az ]
  store i32 %storemerge.sink, ptr %4, align 4, !tbaa !69
  br label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread

_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread: ; preds = %bb.h, %bb.l, %bb.r, %bb.x, %bb.ad, %bb.aj, %bb.ap, %bb.av, %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split, %bb.d, %bb.bg, %bb.be, %.critedge, %bb.ba, %bb.a
  %.022 = phi i1 [ false, %bb.ba ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.bg ], [ false, %.critedge ], [ true, %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split ], [ false, %bb.be ], [ false, %bb.av ], [ false, %bb.ap ], [ false, %bb.aj ], [ false, %bb.ad ], [ false, %bb.x ], [ false, %bb.r ], [ false, %bb.l ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i1 %.022
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !94
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext i8 %i.c to i32                      ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %.not137 = icmp eq i64 %1, 1
  br i1 %.not137, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !94
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i32 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext i8 %i.h to i32
  %i.l = add nuw nsw i32 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %.not138 = icmp eq i64 %1, 2
  br i1 %.not138, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !94
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i32 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext i8 %i.o to i32
  %i.s = add nuw nsw i32 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %.not139 = icmp eq i64 %1, 3
  br i1 %.not139, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !94
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i32 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext i8 %i.v to i32
  %i.z = add nuw nsw i32 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %.not140 = icmp eq i64 %1, 4
  br i1 %.not140, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !94
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i32 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext i8 %i.ac to i32
  %i.ag = add nuw nsw i32 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %.not141 = icmp eq i64 %1, 5
  br i1 %.not141, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !94
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i32 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext i8 %i.aj to i32
  %i.an = add nuw nsw i32 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %.not142 = icmp eq i64 %1, 6
  br i1 %.not142, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !94
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i32 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext i8 %i.aq to i32
  %i.au = add nuw nsw i32 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %.not143 = icmp eq i64 %1, 7
  br i1 %.not143, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !94
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i32 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext i8 %i.ax to i32
  %i.bb = add nuw nsw i32 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %.not144 = icmp eq i64 %1, 8
  br i1 %.not144, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !94
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i32 %i.bb, 10
  %i.bg = add i64 %1, -9                          ; 2 uses
  %i.bh = icmp ult i8 %i.be, 10
  %i.bi = zext i8 %i.be to i32
  %i.bj = add nuw nsw i32 %i.bf, %i.bi            ; 3 uses
  br i1 %i.bh, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %.not145 = icmp eq i64 %i.bg, 0
  br i1 %.not145, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ugt i32 %i.bj, 429496729
  br i1 %i.bk, label %bb.w, label %bb.u, !prof !184

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bc, align 1, !tbaa !94
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %i.bn = mul nuw i32 %i.bj, 10                   ; 3 uses
  %i.bo = zext i8 %i.bm to i32
  %i.bp = add i32 %i.bn, %i.bo                    ; 2 uses
  %.not146 = icmp eq i64 %i.bg, 1
  %i.bq = icmp ult i8 %i.bm, 10
  %or.cond.not = and i1 %.not146, %i.bq
  %i.br = icmp uge i32 %i.bp, %i.bn
  %. = tail call i32 @llvm.umax.i32(i32 %i.bp, i32 %i.bn)
  %cond9 = select i1 %or.cond.not, i1 %i.br, i1 false, !prof !2629
  br i1 %cond9, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.10 = phi i32 [ %., %bb.u ], [ %i.bj, %bb.s ], [ %i.bb, %bb.q ], [ %i.au, %bb.o ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ], [ %i.z, %bb.i ], [ %i.s, %bb.g ], [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i32 %.10, ptr %2, align 4, !tbaa !69
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.v
  %.10115 = phi i1 [ false, %bb.b ], [ true, %bb.v ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.t ]
  ret i1 %.10115
}

declare void @_ZN5arrow14Decimal128Type4MakeEii(ptr dead_on_unwind writable sret(%"class.arrow::Result.122") align 8, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN5arrow13Decimal32Type4MakeEii(ptr dead_on_unwind writable sret(%"class.arrow::Result.122") align 8, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN5arrow13Decimal64Type4MakeEii(ptr dead_on_unwind writable sret(%"class.arrow::Result.122") align 8, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN5arrow14Decimal256Type4MakeEii(ptr dead_on_unwind writable sret(%"class.arrow::Result.122") align 8, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt6vectorIiSaIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt6vectorIiSaIiEEE7DestroyEv.exit.thread, !prof !134

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !522  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt6vectorIiSaIiEEE7DestroyEv.exit

_ZN5arrow6ResultISt6vectorIiSaIiEEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !523
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #33
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !131 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt6vectorIiSaIiEEE7DestroyEv.exit.thread, !prof !148

_ZN5arrow6ResultISt6vectorIiSaIiEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt6vectorIiSaIiEEE7DestroyEv.exit
  %i.j = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt6vectorIiSaIiEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !145, !range !146, !noundef !147
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt6vectorIiSaIiEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt6vectorIiSaIiEEE7DestroyEv.exit, %_ZN5arrow6ResultISt6vectorIiSaIiEEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_118FormatStringParser5SplitESt17basic_string_viewIcSt11char_traitsIcEEc(ptr dead_on_unwind noalias nonnull writable align 8 initializes((32, 40)) %0, i64 %1, ptr %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.a, align 8, !tbaa !533
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !519
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !524
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.q, %bb.f ]     ; 8 uses
  %i.f = icmp ult i64 %.0, %1
  br i1 %i.f, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.b
  %i.g = sub nuw i64 %1, %.0
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.0
  %i.i = call ptr @memchr(ptr noundef %i.h, i32 noundef 44, i64 noundef %i.g) #31 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit: ; preds = %bb.b, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c
  %.1.i.i = phi i64 [ -1, %bb.b ], [ %i.k, %bb.c ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.l = icmp ugt i64 %.0, %1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, i64 noundef %.0, i64 noundef %1) #41
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit
  %i.m = sub i64 %.1.i.i, %.0
  %i.n = sub nuw i64 %1, %.0
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.n, i64 %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.0
  store i64 %.sroa.speculated.i, ptr %3, align 8
  store ptr %i.o, ptr %i.d, align 8
  invoke void @_ZN5arrow8internal16StaticVectorImplISt17basic_string_viewIcSt11char_traitsIcEELm2ENS0_18SmallVectorStorageIS5_Lm2EEEE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.p = icmp eq i64 %.1.i.i, -1
  %i.q = add nuw i64 %.1.i.i, 1
  br i1 %i.p, label %bb.i, label %bb.b, !llvm.loop !2630

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.d
  %lpad.loopexit.split-lp3 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.r = load i64, ptr %i.c, align 8, !tbaa !524
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN5arrow8internal16StaticVectorImplISt17basic_string_viewIcSt11char_traitsIcEELm2ENS0_18SmallVectorStorageIS5_Lm2EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !519  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN5arrow8internal16StaticVectorImplISt17basic_string_viewIcSt11char_traitsIcEELm2ENS0_18SmallVectorStorageIS5_Lm2EEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.s) #33
  br label %_ZN5arrow8internal16StaticVectorImplISt17basic_string_viewIcSt11char_traitsIcEELm2ENS0_18SmallVectorStorageIS5_Lm2EEEED2Ev.exit

_ZN5arrow8internal16StaticVectorImplISt17basic_string_viewIcSt11char_traitsIcEELm2ENS0_18SmallVectorStorageIS5_Lm2EEEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g, %bb.h
  resume { ptr, i32 } %lpad.loopexit.split-lp3

bb.i:                                             ; preds = %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt6vectorIiSaIiEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !131
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !131
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !184

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !135    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !94
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !135    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !94
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
end_hunk_0
