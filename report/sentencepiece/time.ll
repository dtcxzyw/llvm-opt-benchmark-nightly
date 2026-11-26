Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/time?download=true
inline.NumInlined: 123
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6google8protobuf8internal17DateTimeToSecondsERKNS1_8DateTimeEPl:bb.a
  %i.ck = icmp sgt i32 %.fr47.i, %.237.lcssa.i
  br i1 %i.ck, label %.lr.ph61.i.preheader, label %._crit_edge.i

.lr.ph61.i.preheader:                             ; preds = %.preheader.i
  %i.cl = sub i32 %.fr47.i, %.237.lcssa.i         ; 3 uses
  %min.iters.check61 = icmp ult i32 %i.cl, 4
  br i1 %min.iters.check61, label %.lr.ph61.i.preheader88, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph61.i.preheader
  %n.vec63 = and i32 %i.cl, -4                    ; 3 uses
  %i.cm = add i32 %.237.lcssa.i, %n.vec63
  %i.cn = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.2.lcssa.i, i64 0
  %broadcast.splatinsert64 = insertelement <2 x i32> poison, i32 %.237.lcssa.i, i64 0
  %broadcast.splat65 = shufflevector <2 x i32> %broadcast.splatinsert64, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction66 = add nuw nsw <2 x i32> %broadcast.splat65, <i32 0, i32 1>
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph62
  %index68 = phi i32 [ 0, %vector.ph62 ], [ %index.next75, %vector.body67 ]
  %vec.phi69 = phi <2 x i64> [ %i.cn, %vector.ph62 ], [ %i.dc, %vector.body67 ]
  %vec.phi70 = phi <2 x i64> [ zeroinitializer, %vector.ph62 ], [ %i.dd, %vector.body67 ]
  %vec.ind71 = phi <2 x i32> [ %induction66, %vector.ph62 ], [ %vec.ind.next76, %vector.body67 ] ; 5 uses
  %step.add72 = add nuw nsw <2 x i32> %vec.ind71, splat (i32 2) ; 3 uses
  %i.co = urem <2 x i32> %vec.ind71, splat (i32 400)
  %i.cp = urem <2 x i32> %step.add72, splat (i32 400)
  %i.cq = icmp ne <2 x i32> %i.co, zeroinitializer
  %i.cr = icmp ne <2 x i32> %i.cp, zeroinitializer
  %i.cs = and <2 x i32> %vec.ind71, splat (i32 3)
  %i.ct = and <2 x i32> %step.add72, splat (i32 3)
  %i.cu = icmp ne <2 x i32> %i.cs, zeroinitializer
  %i.cv = icmp ne <2 x i32> %i.ct, zeroinitializer
  %i.cw = urem <2 x i32> %vec.ind71, splat (i32 100)
  %i.cx = urem <2 x i32> %step.add72, splat (i32 100)
  %i.cy = icmp eq <2 x i32> %i.cw, zeroinitializer
  %i.cz = icmp eq <2 x i32> %i.cx, zeroinitializer
  %.not84 = or <2 x i1> %i.cu, %i.cy
  %.not87 = or <2 x i1> %i.cv, %i.cz
  %i.da = select <2 x i1> %i.cq, <2 x i1> %.not84, <2 x i1> zeroinitializer
  %i.db = select <2 x i1> %i.cr, <2 x i1> %.not87, <2 x i1> zeroinitializer
  %predphi73 = select <2 x i1> %i.da, <2 x i64> splat (i64 31536000), <2 x i64> splat (i64 31622400)
  %predphi74 = select <2 x i1> %i.db, <2 x i64> splat (i64 31536000), <2 x i64> splat (i64 31622400)
  %i.dc = add <2 x i64> %predphi73, %vec.phi69    ; 2 uses
  %i.dd = add <2 x i64> %predphi74, %vec.phi70    ; 2 uses
  %index.next75 = add nuw i32 %index68, 4         ; 2 uses
  %vec.ind.next76 = add nuw nsw <2 x i32> %vec.ind71, splat (i32 4)
  %i.de = icmp eq i32 %index.next75, %n.vec63
  br i1 %i.de, label %middle.block77, label %vector.body67, !llvm.loop !36

middle.block77:                                   ; preds = %vector.body67
  %bin.rdx78 = add <2 x i64> %i.dd, %i.dc
  %i.df = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx78) ; 2 uses
  %cmp.n79 = icmp eq i32 %i.cl, %n.vec63
  br i1 %cmp.n79, label %._crit_edge.i, label %.lr.ph61.i.preheader88

.lr.ph61.i.preheader88:                           ; preds = %.lr.ph61.i.preheader, %middle.block77
  %.360.i.ph = phi i64 [ %.2.lcssa.i, %.lr.ph61.i.preheader ], [ %i.df, %middle.block77 ]
  %.33858.i.ph = phi i32 [ %.237.lcssa.i, %.lr.ph61.i.preheader ], [ %i.cm, %middle.block77 ]
  br label %.lr.ph61.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i.preheader91, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i
  %.254.i = phi i64 [ %i.dk, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i ], [ %.254.i.ph, %.lr.ph55.i.preheader91 ]
  %.23752.i = phi i32 [ %i.dl, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i ], [ %.23752.i.ph, %.lr.ph55.i.preheader91 ] ; 3 uses
  %i.dg = urem i32 %.23752.i, 100
  %i.dh = add nsw i32 %i.dg, -97
  %or.cond.i40.i = icmp ult i32 %i.dh, -96
  br i1 %or.cond.i40.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph55.i
  %i.di = urem i32 %.23752.i, 400
  %i.dj = add nsw i32 %i.di, -397
  %or.cond7.i.i = icmp ult i32 %i.dj, -396
  br i1 %or.cond7.i.i, label %bb.k, label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i

bb.k:                                             ; preds = %bb.j, %.lr.ph55.i
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i: ; preds = %bb.k, %bb.j
  %.0.i41.i = phi i64 [ 126230400, %bb.k ], [ 126144000, %bb.j ]
  %i.dk = add nuw nsw i64 %.0.i41.i, %.254.i      ; 2 uses
  %i.dl = add nuw nsw i32 %.23752.i, 4            ; 3 uses
  %i.dm = sub nsw i32 %.fr47.i, %i.dl
  %i.dn = icmp sgt i32 %i.dm, 3
  br i1 %i.dn, label %.lr.ph55.i, label %.preheader.i, !llvm.loop !37

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader88, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i
  %.360.i = phi i64 [ %i.dv, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i ], [ %.360.i.ph, %.lr.ph61.i.preheader88 ]
  %.33858.i = phi i32 [ %i.dw, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i ], [ %.33858.i.ph, %.lr.ph61.i.preheader88 ] ; 4 uses
  %i.do = urem i32 %.33858.i, 400
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph61.i
  %i.dq = and i32 %.33858.i, 3
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = urem i32 %.33858.i, 100
  %i.dt = icmp ne i32 %i.ds, 0
  %or.cond.i42.i = and i1 %i.dr, %i.dt
  br i1 %or.cond.i42.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i: ; preds = %bb.l, %.lr.ph61.i
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i, %bb.l
  %i.du = phi i64 [ 31622400, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i ], [ 31536000, %bb.l ]
  %i.dv = add nuw nsw i64 %i.du, %.360.i          ; 2 uses
  %i.dw = add nuw nsw i32 %.33858.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dw, %.fr47.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph61.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i, %middle.block77, %.preheader.i
  %.338.lcssa.i = phi i32 [ %.237.lcssa.i, %.preheader.i ], [ %.fr47.i, %middle.block77 ], [ %.fr47.i, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i ] ; 3 uses
  %.3.lcssa.i = phi i64 [ %.2.lcssa.i, %.preheader.i ], [ %i.df, %middle.block77 ], [ %i.dv, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i ]
  %i.dx = zext nneg i32 %i.d to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal12_GLOBAL__N_113kDaysSinceJanE, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !9
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul nsw i64 %i.ea, 86400
  %i.ec = add nsw i64 %i.eb, %.3.lcssa.i          ; 5 uses
  %i.ed = icmp sgt i32 %i.d, 2
  br i1 %i.ed, label %bb.m, label %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit

bb.m:                                             ; preds = %._crit_edge.i
  %i.ee = urem i32 %.338.lcssa.i, 400
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i6, label %bb.n

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i6: ; preds = %bb.m
  %i.eg = add nsw i64 %i.ec, 86400
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit

bb.n:                                             ; preds = %bb.m
  %i.eh = and i32 %.338.lcssa.i, 3
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.i: ; preds = %bb.n
  %i.ej = urem i32 %.338.lcssa.i, 100
  %.not.i5 = icmp eq i32 %i.ej, 0
  %i.ek = add nsw i64 %i.ec, 86400
  %spec.select.i = select i1 %.not.i5, i64 %i.ec, i64 %i.ek
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit: ; preds = %._crit_edge.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i6, %bb.n, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.i
  %.4.i = phi i64 [ %i.ec, %._crit_edge.i ], [ %i.ec, %bb.n ], [ %spec.select.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.i ], [ %i.eg, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i6 ]
  %i.el = mul nuw nsw i32 %i.g, 86400
  %narrow = add nsw i32 %i.el, -86400
  %i.em = sext i32 %narrow to i64
  %narrow25 = mul nuw nsw i32 %i.j, 3600
  %i.en = zext nneg i32 %narrow25 to i64
  %narrow26 = mul nuw nsw i32 %i.l, 60
  %i.eo = zext nneg i32 %narrow26 to i64
  %i.ep = zext nneg i32 %i.n to i64
  %i.eq = add i64 %.4.i, -62135596800
  %i.er = add i64 %i.eq, %i.em
  %i.es = add i64 %i.er, %i.en
  %i.et = add i64 %i.es, %i.eo
  %i.eu = add i64 %i.et, %i.ep
  store i64 %i.eu, ptr %1, align 8, !tbaa !20
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread

_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i, %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit, %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit
  %.0.i8 = phi i1 [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i ], [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit ], [ true, %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i8
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal14GetCurrentTimeEPlPi(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #14
  store i64 %i.a, ptr %0, align 8, !tbaa !20
  store i32 0, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal10FormatTimeB5cxx11Eli(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.google::protobuf::internal::DateTime", align 4 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %or.cond = icmp ugt i32 %2, 999999999
  br i1 %or.cond, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call noundef zeroext i1 @_ZN6google8protobuf8internal17SecondsToDateTimeElPNS1_8DateTimeE(i64 noundef %1, ptr noundef nonnull %3)
  br i1 %i.a, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str, i64 11, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.d, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.e = load i32, ptr %3, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  call void (ptr, ptr, ...) @_ZN6google8protobuf12StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.1, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.p = urem i32 %2, 1000000
  %i.q = udiv exact i32 %2, 1000000
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = urem i32 %2, 1000
  %i.t = udiv exact i32 %2, 1000
  %i.u = icmp eq i32 %i.s, 0                      ; 2 uses
  %spec.select = select i1 %i.u, ptr @.str.5, ptr @.str.6
  %spec.select58 = select i1 %i.u, i32 %i.t, i32 %2
  br label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %spec.select, %bb.e ], [ @.str.4, %bb.d ]
  %i.w = phi i32 [ %spec.select58, %bb.e ], [ %i.q, %bb.d ]
  invoke void (ptr, ptr, ...) @_ZN6google8protobuf12StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.v, i32 noundef %i.w)
          to label %_ZN6google8protobuf8internal12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit unwind label %bb.i

_ZN6google8protobuf8internal12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit: ; preds = %.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc21 unwind label %bb.j, !noalias !47 ; 6 uses

.noexc21:                                         ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !45, !alias.scope !47
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !26   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc21
  store ptr %i.z, ptr %5, align 8, !tbaa !26, !alias.scope !47
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !25
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !25, !alias.scope !47
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.ah = phi i64 [ %i.ad, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !46, !alias.scope !47
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !26
  store i64 0, ptr %i.ai, align 8, !tbaa !46
  store i8 0, ptr %i.aa, align 8, !tbaa !25
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !46 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46
  %i.an = sub i64 4611686018427387903, %i.am
  %i.ao = icmp ult i64 %i.an, %i.ak
  br i1 %i.ao, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #15
          to label %.noexc22 unwind label %bb.k

.noexc22:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g
  %i.ap = load ptr, ptr %5, align 8, !tbaa !26
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ap, i64 noundef %i.ak)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ar = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.y
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.at = load i64, ptr %i.y, align 8, !tbaa !25
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.av = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.l

bb.i:                                             ; preds = %.invoke
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.j:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.y
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.k
  %i.bf = load i64, ptr %i.y, align 8, !tbaa !25
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.j ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.bc, %bb.k ] ; 2 uses
  %i.bh = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !25
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.i ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.body

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.bm = load ptr, ptr %4, align 8, !tbaa !26, !noalias !48
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !46, !noalias !48 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !45, !alias.scope !49
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.bq, align 8, !tbaa !46, !alias.scope !49
  store i8 0, ptr %i.bp, align 8, !tbaa !25, !alias.scope !49
  %i.br = add i64 %i.bo, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.br)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !46, !alias.scope !49
  %i.bt = sub i64 4611686018427387903, %i.bs
  %i.bu = icmp ult i64 %i.bt, %i.bo
  br i1 %i.bu, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.m
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bm, i64 noundef %i.bo)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !46, !alias.scope !49
  %i.bx = icmp eq i64 %i.bw, 4611686018427387903
  br i1 %i.bx, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #15
          to label %.cont.i.i unwind label %bb.n

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.by = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !49 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bp
  br i1 %i.cb, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.cc = load i64, ptr %i.bp, align 8, !tbaa !25, !alias.scope !49
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #16
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ce = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !25
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

.body:                                            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn14 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bz, %bb.n ]
  %i.cj = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %.body
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !25
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #16
  br label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void

bb.o:                                             ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn14
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6google8protobuf12StringPrintfB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal9ParseTimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPlPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.google::protobuf::internal::DateTime", align 4 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !25    ; 2 uses
  %i.e = add i8 %i.d, -48
  %i.f = icmp ult i8 %i.e, 10
  br i1 %i.f, label %.preheader.i.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i.1:                                   ; preds = %bb.a
  %scevgep.i = getelementptr i8, ptr %i.c, i64 4
  %i.g = zext nneg i8 %i.d to i32
  %i.h = add nsw i32 %i.g, -48                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25    ; 2 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %.preheader.i.2, label %bb.c

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.m = mul nuw nsw i32 %i.h, 10
  %i.n = zext nneg i8 %i.j to i32
  %i.o = add nsw i32 %i.m, -48
  %i.p = add nsw i32 %i.o, %i.n                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !25    ; 2 uses
  %i.s = add i8 %i.r, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.preheader.i.3, label %bb.c

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.u = mul nuw nsw i32 %i.p, 10
  %i.v = zext nneg i8 %i.r to i32
  %i.w = add nsw i32 %i.u, -48
  %i.x = add nsw i32 %i.w, %i.v                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25    ; 2 uses
  %i.aa = add i8 %i.z, -48
  %i.ab = icmp ult i8 %i.aa, 10
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.i.3
  %i.ac = mul nuw nsw i32 %i.x, 10
  %i.ad = zext nneg i8 %i.z to i32
  %i.ae = add nsw i32 %i.ac, -48
  %i.af = add nsw i32 %i.ae, %i.ad
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i.3, %.preheader.i.2, %.preheader.i.1
  %.017.lcssa.i = phi ptr [ %i.q, %.preheader.i.2 ], [ %scevgep.i, %bb.b ], [ %i.i, %.preheader.i.1 ], [ %i.y, %.preheader.i.3 ] ; 5 uses
  %.015.lcssa.i = phi i32 [ %i.p, %.preheader.i.2 ], [ %i.af, %bb.b ], [ %i.h, %.preheader.i.1 ], [ %i.x, %.preheader.i.3 ] ; 2 uses
  %or.cond.i = icmp eq i32 %.015.lcssa.i, 0
  br i1 %or.cond.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit: ; preds = %bb.c
  store i32 %.015.lcssa.i, ptr %3, align 4, !tbaa !9
  %i.ag = icmp eq ptr %.017.lcssa.i, null
  br i1 %i.ag, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit
  %i.ah = load i8, ptr %.017.lcssa.i, align 1, !tbaa !25
  %.not = icmp eq i8 %i.ah, 45
  br i1 %.not, label %bb.e, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.017.lcssa.i, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !25  ; 2 uses
  %i.al = add i8 %i.ak, -48
  %i.am = icmp ult i8 %i.al, 10
  br i1 %i.am, label %.preheader.i55.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i55.1:                                 ; preds = %bb.e
  %scevgep.i54 = getelementptr i8, ptr %.017.lcssa.i, i64 3
  %i.an = zext nneg i8 %i.ak to i32
  %i.ao = add nsw i32 %i.an, -48                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.017.lcssa.i, i64 2 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25  ; 2 uses
  %i.ar = add i8 %i.aq, -48
  %i.as = icmp ult i8 %i.ar, 10                   ; 2 uses
  %i.at = mul nuw nsw i32 %i.ao, 10
  %i.au = zext nneg i8 %i.aq to i32
  %i.av = add nsw i32 %i.at, -48
  %i.aw = add nsw i32 %i.av, %i.au
  %.017.lcssa.i59 = select i1 %i.as, ptr %scevgep.i54, ptr %i.ap ; 5 uses
  %.015.lcssa.i60 = select i1 %i.as, i32 %i.aw, i32 %i.ao ; 2 uses
  %i.ax = add nsw i32 %.015.lcssa.i60, -13
  %or.cond.i63 = icmp ult i32 %i.ax, -12
  br i1 %or.cond.i63, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit65

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit65: ; preds = %.preheader.i55.1
  store i32 %.015.lcssa.i60, ptr %i.aj, align 4, !tbaa !9
  %i.ay = icmp eq ptr %.017.lcssa.i59, null
  br i1 %i.ay, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit65
  %i.az = load i8, ptr %.017.lcssa.i59, align 1, !tbaa !25
  %.not44 = icmp eq i8 %i.az, 45
  br i1 %.not44, label %bb.g, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.017.lcssa.i59, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !25  ; 2 uses
  %i.bd = add i8 %i.bc, -48
  %i.be = icmp ult i8 %i.bd, 10
  br i1 %i.be, label %.preheader.i69.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i69.1:                                 ; preds = %bb.g
  %scevgep.i68 = getelementptr i8, ptr %.017.lcssa.i59, i64 3
  %i.bf = zext nneg i8 %i.bc to i32
  %i.bg = add nsw i32 %i.bf, -48                  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.017.lcssa.i59, i64 2 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !25  ; 2 uses
  %i.bj = add i8 %i.bi, -48
  %i.bk = icmp ult i8 %i.bj, 10                   ; 2 uses
  %i.bl = mul nuw nsw i32 %i.bg, 10
  %i.bm = zext nneg i8 %i.bi to i32
  %i.bn = add nsw i32 %i.bl, -48
  %i.bo = add nsw i32 %i.bn, %i.bm
  %.017.lcssa.i73 = select i1 %i.bk, ptr %scevgep.i68, ptr %i.bh ; 5 uses
  %.015.lcssa.i74 = select i1 %i.bk, i32 %i.bo, i32 %i.bg ; 2 uses
  %i.bp = add nsw i32 %.015.lcssa.i74, -32
  %or.cond.i77 = icmp ult i32 %i.bp, -31
  br i1 %or.cond.i77, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit79

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit79: ; preds = %.preheader.i69.1
  store i32 %.015.lcssa.i74, ptr %i.bb, align 4, !tbaa !9
  %i.bq = icmp eq ptr %.017.lcssa.i73, null
  br i1 %i.bq, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit79
  %i.br = load i8, ptr %.017.lcssa.i73, align 1, !tbaa !25
  %.not45 = icmp eq i8 %i.br, 84
  br i1 %.not45, label %bb.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.017.lcssa.i73, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !25  ; 2 uses
  %i.bv = add i8 %i.bu, -48
  %i.bw = icmp ult i8 %i.bv, 10
  br i1 %i.bw, label %.preheader.i83.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i83.1:                                 ; preds = %bb.i
  %scevgep.i82 = getelementptr i8, ptr %.017.lcssa.i73, i64 3 ; 3 uses
  %i.bx = zext nneg i8 %i.bu to i32
  %i.by = add nsw i32 %i.bx, -48                  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.017.lcssa.i73, i64 2 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !25  ; 3 uses
  %i.cb = add i8 %i.ca, -48
  %i.cc = icmp ult i8 %i.cb, 10
  br i1 %i.cc, label %bb.j, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93.thread

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93.thread: ; preds = %.preheader.i83.1
  store i32 %i.by, ptr %i.bt, align 4, !tbaa !9
  br label %bb.k

bb.j:                                             ; preds = %.preheader.i83.1
  %i.cd = mul nuw nsw i32 %i.by, 10
  %i.ce = zext nneg i8 %i.ca to i32
  %i.cf = add nsw i32 %i.cd, -48
  %i.cg = add nsw i32 %i.cf, %i.ce                ; 2 uses
  %or.cond.i91 = icmp samesign ugt i32 %i.cg, 23
  br i1 %or.cond.i91, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93: ; preds = %bb.j
  store i32 %i.cg, ptr %i.bt, align 4, !tbaa !9
  %i.ch = icmp eq ptr %scevgep.i82, null
  br i1 %i.ch, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93
  %.pr = load i8, ptr %scevgep.i82, align 1, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93.thread
  %i.ci = phi i8 [ %.pr, %thread-pre-split ], [ %i.ca, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93.thread ]
  %.017.lcssa.i87133137 = phi ptr [ %scevgep.i82, %thread-pre-split ], [ %i.bz, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93.thread ] ; 3 uses
  %.not46 = icmp eq i8 %i.ci, 58
  br i1 %.not46, label %bb.l, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.017.lcssa.i87133137, i64 1
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !25  ; 2 uses
  %i.cm = add i8 %i.cl, -48
  %i.cn = icmp ult i8 %i.cm, 10
  br i1 %i.cn, label %.preheader.i97.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i97.1:                                 ; preds = %bb.l
end_hunk_0
