Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/bitboard?download=true
inline.NumInlined: 156
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN9Stockfish9Bitboards6prettyB5cxx11Em:._crit_edge.i.i
  %i.bu = load i64, ptr %i.g, align 8, !tbaa !15
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.bw = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.bw, label %bb.i, label %bb.a, !llvm.loop !27

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.a
  %i.bx = shl nuw i64 1, %i.l
  %i.by = and i64 %i.bx, %1
  %.not = icmp eq i64 %i.by, 0
  %.str.1..str.2 = select i1 %.not, ptr @.str.2, ptr @.str.1
  %i.bz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2, i64 noundef 4) #9 ; 0 uses
  %i.ca = load i64, ptr %i.e, align 8, !tbaa !33
  %i.cb = and i64 %i.ca, -4
  %i.cc = icmp eq i64 %i.cb, 4611686018427387900
  br i1 %i.cc, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.cd = shl nuw i64 2, %i.l
  %i.ce = and i64 %i.cd, %1
  %.not.1 = icmp eq i64 %i.ce, 0
  %.str.1..str.2.1 = select i1 %.not.1, ptr @.str.2, ptr @.str.1
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2.1, i64 noundef 4) #9 ; 0 uses
  %i.cg = load i64, ptr %i.e, align 8, !tbaa !33
  %i.ch = and i64 %i.cg, -4
  %i.ci = icmp eq i64 %i.ch, 4611686018427387900
  br i1 %i.ci, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.1
  %i.cj = shl nuw i64 4, %i.l
  %i.ck = and i64 %i.cj, %1
  %.not.2 = icmp eq i64 %i.ck, 0
  %.str.1..str.2.2 = select i1 %.not.2, ptr @.str.2, ptr @.str.1
  %i.cl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2.2, i64 noundef 4) #9 ; 0 uses
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !33
  %i.cn = and i64 %i.cm, -4
  %i.co = icmp eq i64 %i.cn, 4611686018427387900
  br i1 %i.co, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.2
  %i.cp = shl nuw i64 8, %i.l
  %i.cq = and i64 %i.cp, %1
  %.not.3 = icmp eq i64 %i.cq, 0
  %.str.1..str.2.3 = select i1 %.not.3, ptr @.str.2, ptr @.str.1
  %i.cr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2.3, i64 noundef 4) #9 ; 0 uses
  %i.cs = load i64, ptr %i.e, align 8, !tbaa !33
  %i.ct = and i64 %i.cs, -4
  %i.cu = icmp eq i64 %i.ct, 4611686018427387900
  br i1 %i.cu, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.3
  %i.cv = shl nuw i64 16, %i.l
  %i.cw = and i64 %i.cv, %1
  %.not.4 = icmp eq i64 %i.cw, 0
  %.str.1..str.2.4 = select i1 %.not.4, ptr @.str.2, ptr @.str.1
  %i.cx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2.4, i64 noundef 4) #9 ; 0 uses
  %i.cy = load i64, ptr %i.e, align 8, !tbaa !33
  %i.cz = and i64 %i.cy, -4
  %i.da = icmp eq i64 %i.cz, 4611686018427387900
  br i1 %i.da, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.4
  %i.db = shl nuw i64 32, %i.l
  %i.dc = and i64 %i.db, %1
  %.not.5 = icmp eq i64 %i.dc, 0
  %.str.1..str.2.5 = select i1 %.not.5, ptr @.str.2, ptr @.str.1
  %i.dd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2.5, i64 noundef 4) #9 ; 0 uses
  %i.de = load i64, ptr %i.e, align 8, !tbaa !33
  %i.df = and i64 %i.de, -4
  %i.dg = icmp eq i64 %i.df, 4611686018427387900
  br i1 %i.dg, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.5
  %i.dh = shl nuw i64 64, %i.l
  %i.di = and i64 %i.dh, %1
  %.not.6 = icmp eq i64 %i.di, 0
  %.str.1..str.2.6 = select i1 %.not.6, ptr @.str.2, ptr @.str.1
  %i.dj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2.6, i64 noundef 4) #9 ; 0 uses
  %i.dk = load i64, ptr %i.e, align 8, !tbaa !33
  %i.dl = and i64 %i.dk, -4
  %i.dm = icmp eq i64 %i.dl, 4611686018427387900
  br i1 %i.dm, label %bb.h, label %._crit_edge.i.i1

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.dn = load i64, ptr %i.e, align 8, !tbaa !33
  %i.do = and i64 %i.dn, -32
  %i.dp = icmp eq i64 %i.do, 4611686018427387872
  br i1 %i.dp, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit14

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit14: ; preds = %bb.i
  %i.dq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.5, i64 noundef 32) #9 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9Bitboards4initEv() local_unnamed_addr #0 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %vec.ind = phi <64 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63>, %vector.ph ], [ %vec.ind.next.3, %vector.body ] ; 5 uses
  %i.a = tail call range(i64 0, 64) <64 x i64> @llvm.ctpop.v64i64(<64 x i64> %vec.ind)
  %i.b = trunc nuw nsw <64 x i64> %i.a to <64 x i8>
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish8PopCnt16E, i64 %index
  store <64 x i8> %i.b, ptr %i.c, align 16, !tbaa !15
  %vec.ind.next = add nuw nsw <64 x i64> %vec.ind, splat (i64 64)
  %i.d = tail call range(i64 1, 64) <64 x i64> @llvm.ctpop.v64i64(<64 x i64> %vec.ind.next)
  %i.e = trunc nuw nsw <64 x i64> %i.d to <64 x i8>
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish8PopCnt16E, i64 %index
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store <64 x i8> %i.e, ptr %i.g, align 16, !tbaa !15
  %vec.ind.next.1 = add nuw nsw <64 x i64> %vec.ind, splat (i64 128)
  %i.h = tail call range(i64 1, 64) <64 x i64> @llvm.ctpop.v64i64(<64 x i64> %vec.ind.next.1)
  %i.i = trunc nuw nsw <64 x i64> %i.h to <64 x i8>
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish8PopCnt16E, i64 %index
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store <64 x i8> %i.i, ptr %i.k, align 16, !tbaa !15
  %vec.ind.next.2 = add nuw nsw <64 x i64> %vec.ind, splat (i64 192)
  %i.l = tail call range(i64 1, 64) <64 x i64> @llvm.ctpop.v64i64(<64 x i64> %vec.ind.next.2)
  %i.m = trunc nuw nsw <64 x i64> %i.l to <64 x i8>
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish8PopCnt16E, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  store <64 x i8> %i.m, ptr %i.o, align 16, !tbaa !15
  %index.next.3 = add nuw nsw i64 %index, 256     ; 2 uses
  %vec.ind.next.3 = add nuw nsw <64 x i64> %vec.ind, splat (i64 256)
  %i.p = icmp eq i64 %index.next.3, 65536
  br i1 %i.p, label %.preheader, label %vector.body, !llvm.loop !37

.preheader:                                       ; preds = %vector.body, %.preheader
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.1, %.preheader ], [ 0, %vector.body ] ; 4 uses
  %i.q = getelementptr inbounds nuw [64 x i8], ptr @_ZN9Stockfish14SquareDistanceE, i64 %indvars.iv127
  %i.r = trunc nuw nsw i64 %indvars.iv127 to i8   ; 2 uses
  %i.s = lshr i8 %i.r, 3
  %i.t = zext nneg i8 %i.s to i32
  %broadcast.splatinsert140 = insertelement <64 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat141 = shufflevector <64 x i32> %broadcast.splatinsert140, <64 x i32> poison, <64 x i32> zeroinitializer
  %i.u = and i8 %i.r, 6
  %i.v = zext nneg i8 %i.u to i32
  %broadcast.splatinsert = insertelement <64 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat = shufflevector <64 x i32> %broadcast.splatinsert, <64 x i32> poison, <64 x i32> zeroinitializer
  %i.w = add nsw <64 x i32> %broadcast.splat, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7>
  %i.x = tail call <64 x i32> @llvm.abs.v64i32(<64 x i32> %i.w, i1 true)
  %i.y = add nsw <64 x i32> %broadcast.splat141, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7>
  %i.z = tail call <64 x i32> @llvm.abs.v64i32(<64 x i32> %i.y, i1 true)
  %i.aa = tail call <64 x i32> @llvm.umax.v64i32(<64 x i32> %i.x, <64 x i32> %i.z)
  %i.ab = trunc nuw nsw <64 x i32> %i.aa to <64 x i8>
  store <64 x i8> %i.ab, ptr %i.q, align 16, !tbaa !15
  %indvars.iv.next128 = or disjoint i64 %indvars.iv127, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr @_ZN9Stockfish14SquareDistanceE, i64 %indvars.iv.next128
  %i.ad = trunc nuw nsw i64 %indvars.iv.next128 to i8 ; 2 uses
  %i.ae = lshr i8 %i.ad, 3
  %i.af = zext nneg i8 %i.ae to i32
  %broadcast.splatinsert140.1 = insertelement <64 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat141.1 = shufflevector <64 x i32> %broadcast.splatinsert140.1, <64 x i32> poison, <64 x i32> zeroinitializer
  %i.ag = and i8 %i.ad, 7
  %i.ah = zext nneg i8 %i.ag to i32
  %broadcast.splatinsert.1 = insertelement <64 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat.1 = shufflevector <64 x i32> %broadcast.splatinsert.1, <64 x i32> poison, <64 x i32> zeroinitializer
  %i.ai = add nsw <64 x i32> %broadcast.splat.1, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7>
  %i.aj = tail call <64 x i32> @llvm.abs.v64i32(<64 x i32> %i.ai, i1 true)
  %i.ak = add nsw <64 x i32> %broadcast.splat141.1, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7>
  %i.al = tail call <64 x i32> @llvm.abs.v64i32(<64 x i32> %i.ak, i1 true)
  %i.am = tail call <64 x i32> @llvm.umax.v64i32(<64 x i32> %i.aj, <64 x i32> %i.al)
  %i.an = trunc nuw nsw <64 x i32> %i.am to <64 x i8>
  store <64 x i8> %i.an, ptr %i.ac, align 16, !tbaa !15
  %indvars.iv.next128.1 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
  %exitcond130.not.1 = icmp eq i64 %indvars.iv.next128.1, 64
  br i1 %exitcond130.not.1, label %bb.a, label %.preheader, !llvm.loop !38

bb.a:                                             ; preds = %.preheader
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_111init_magicsENS_9PieceTypeEPmPA2_NS_5MagicE(i8 noundef zeroext 4, ptr noundef nonnull @_ZN9Stockfish12_GLOBAL__N_19RookTableE)
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_111init_magicsENS_9PieceTypeEPmPA2_NS_5MagicE(i8 noundef zeroext 3, ptr noundef nonnull @_ZN9Stockfish12_GLOBAL__N_111BishopTableE)
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  ret void

bb.c:                                             ; preds = %bb.a, %bb.g
  %indvars.iv135 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next136, %bb.g ] ; 8 uses
  %i.ao = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %indvars.iv135 ; 6 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv135 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.as = shl nuw i64 1, %indvars.iv135           ; 4 uses
  %i.at = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish6LineBBE, i64 %indvars.iv135 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9RayPassBBE, i64 %indvars.iv135 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1536), i64 %indvars.iv135
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !14
  br label %bb.h

bb.d:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 2048), i64 %indvars.iv135
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %indvars.iv131.1.a = phi i64 [ 0, %bb.d ], [ %indvars.iv.next132.1.a, %bb.f ] ; 8 uses
  %i.ba = shl nuw i64 1, %indvars.iv131.1.a       ; 5 uses
  %i.bb = and i64 %i.az, %i.ba
  %.not17.1.a = icmp eq i64 %i.bb, 0
  br i1 %.not17.1.a, label %._crit_edge.1.a, label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread75.1

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread75.1: ; preds = %bb.e
  %i.bc = load ptr, ptr %i.ar, align 8, !tbaa !19 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !14
  %0 = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv131.1.a ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !14
  %i.bh = and i64 %i.bg, %i.bd
  %i.bi = or i64 %i.as, %i.bh
  %i.bj = or i64 %i.bi, %i.ba
  %1 = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv131.1.a
  store i64 %i.bj, ptr %1, align 8, !tbaa !14
  %i.bk = load i64, ptr %i.au, align 16, !tbaa !20
  %i.bl = tail call noundef i64 @llvm.pext.i64(i64 %i.ba, i64 %i.bk)
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bm
  %2 = load i64, ptr %i.bn, align 8, !tbaa !14
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load i64, ptr %3, align 16, !tbaa !20
  %i.bp = tail call noundef i64 @llvm.pext.i64(i64 %i.as, i64 %i.bo)
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bq ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !14
  %i.bt = and i64 %i.bs, %2                       ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv131.1.a
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !14
  %i.bv = load i64, ptr %i.bc, align 8, !tbaa !14
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !14
  %i.bx = or i64 %i.bw, %i.ba
  %i.by = and i64 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv131.1.a
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !14
  br label %bb.f

._crit_edge.1.a:                                  ; preds = %bb.e
  %.phi.trans.insert.1.a = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv131.1.a
  %.pre.1.a = load i64, ptr %.phi.trans.insert.1.a, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.1.a, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread75.1
  %i.ca = phi i64 [ %.pre.1.a, %._crit_edge.1.a ], [ %i.bt, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread75.1 ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv131.1.a
  %i.cc = or i64 %i.ca, %i.ba
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !14
  %indvars.iv.next132.1.a = add nuw nsw i64 %indvars.iv131.1.a, 1 ; 2 uses
  %exitcond134.not.1.a = icmp eq i64 %indvars.iv.next132.1.a, 64
  br i1 %exitcond134.not.1.a, label %bb.g, label %bb.e, !llvm.loop !39

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, 64
  br i1 %exitcond138.not, label %bb.b, label %bb.c, !llvm.loop !40

bb.h:                                             ; preds = %bb.c, %bb.i
  %indvars.iv131 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next132.a, %bb.i ] ; 8 uses
  %i.cd = shl nuw i64 1, %indvars.iv131           ; 5 uses
  %i.ce = and i64 %i.ax, %i.cd
  %.not17 = icmp eq i64 %i.ce, 0
  br i1 %.not17, label %._crit_edge.a, label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread

._crit_edge.a:                                    ; preds = %bb.h
  %.phi.trans.insert.a = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv131
  %.pre.a = load i64, ptr %.phi.trans.insert.a, align 8, !tbaa !14
  br label %bb.i

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread: ; preds = %bb.h
  %i.cf = load ptr, ptr %i.aq, align 8, !tbaa !19 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !14
  %4 = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv131 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.ck = and i64 %i.cj, %i.cg
  %i.cl = or i64 %i.as, %i.ck
  %i.cm = or i64 %i.cl, %i.cd
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv131
  store i64 %i.cm, ptr %5, align 8, !tbaa !14
  %i.cn = load i64, ptr %i.ap, align 32, !tbaa !20
  %i.co = tail call noundef i64 @llvm.pext.i64(i64 %i.cd, i64 %i.cn)
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !14
  %i.cs = load i64, ptr %4, align 32, !tbaa !20
  %i.ct = tail call noundef i64 @llvm.pext.i64(i64 %i.as, i64 %i.cs)
  %i.cu = and i64 %i.ct, 4294967295
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cu ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !14
  %i.cx = and i64 %i.cw, %i.cr                    ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv131
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !14
  %i.cz = load i64, ptr %i.cf, align 8, !tbaa !14
  %i.da = load i64, ptr %i.cv, align 8, !tbaa !14
  %i.db = or i64 %i.da, %i.cd
  %i.dc = and i64 %i.db, %i.cz
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv131
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.a, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread
  %i.de = phi i64 [ %.pre.a, %._crit_edge.a ], [ %i.cx, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv131
  %i.dg = or i64 %i.de, %i.cd
  store i64 %i.dg, ptr %i.df, align 8, !tbaa !14
  %indvars.iv.next132.a = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next132.a, 64
  br i1 %exitcond134.not, label %bb.d, label %bb.h, !llvm.loop !39
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_111init_magicsENS_9PieceTypeEPmPA2_NS_5MagicE(i8 noundef zeroext range(i8 3, 5) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i8 %0 to i64
  %invariant.gep = getelementptr [16 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.a
  %i.b = icmp eq i8 %0, 4                         ; 4 uses
  %.sroa.speculated36.i = select i1 %i.b, i64 8, i64 9 ; 7 uses
  %.sroa.speculated33.i = select i1 %i.b, i8 -8, i8 -7
  %.sroa.speculated30.i = select i1 %i.b, i8 1, i8 -9
  %.sroa.speculated.i = select i1 %i.b, i8 -1, i8 7
  br label %bb.c

bb.b:                                             ; preds = %bb.p
  ret void

bb.c:                                             ; preds = %bb.a, %bb.p
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.p ] ; 8 uses
  %.0218 = phi i32 [ 0, %bb.a ], [ %i.dy, %bb.p ]
  %i.c = trunc nuw nsw i64 %indvars.iv to i8      ; 4 uses
  %i.d = and i64 %indvars.iv, 56
  %i.e = shl nuw i64 255, %i.d
  %i.f = and i64 %indvars.iv, 7
  %i.g = shl nuw i64 72340172838076673, %i.f
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.h = getelementptr i8, ptr %gep, i64 -48      ; 2 uses
  %i.i = tail call noundef i64 @_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm(i8 noundef zeroext %0, i8 noundef zeroext %i.c, i64 noundef 0)
  %i.j = or i64 %i.e, 72057594037927680
  %i.k = or i64 %i.g, 9114861777597660798
  %i.l = and i64 %i.j, %i.k
  %i.m = and i64 %i.l, %i.i                       ; 2 uses
  store i64 %i.m, ptr %i.h, align 16, !tbaa !20
  %i.n = icmp eq i64 %indvars.iv, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %gep, i64 -72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.q = sext i32 %.0218 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = phi ptr [ %i.r, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.t = getelementptr i8, ptr %gep, i64 -40
  store ptr %i.s, ptr %i.t, align 8, !tbaa !19
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv, %.sroa.speculated36.i ; 5 uses
  %i.u = icmp samesign ult i64 %indvars.iv.next1017, 64
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  %i.w = and i32 %i.v, 7
  %i.x = trunc nuw nsw i64 %indvars.iv.next1017 to i32
  %i.y = and i32 %i.x, 7
  %narrow.i.i = add nuw nsw i32 %i.w, 2
  %i.z = sub nsw i32 %narrow.i.i, %i.y
  %i.aa = icmp ult i32 %i.z, 5
  %i.ab = shl nuw i64 1, %indvars.iv.next1017     ; 4 uses
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv.next1017, %.sroa.speculated36.i ; 5 uses
  %i.ac = icmp samesign ult i64 %indvars.iv.next10, 64
  %i.ad = trunc nuw nsw i64 %indvars.iv.next1017 to i32
  %i.ae = and i32 %i.ad, 7
  %i.af = trunc nuw nsw i64 %indvars.iv.next10 to i32
  %i.ag = and i32 %i.af, 7
  %narrow.i.i.1 = add nuw nsw i32 %i.ae, 2
  %i.ah = sub nsw i32 %narrow.i.i.1, %i.ag
  %i.ai = icmp ult i32 %i.ah, 5
  %i.aj = shl nuw i64 1, %indvars.iv.next10       ; 2 uses
  %i.ak = or i64 %i.aj, %i.ab                     ; 3 uses
  %indvars.iv.next10.1 = add nuw nsw i64 %indvars.iv.next10, %.sroa.speculated36.i ; 5 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next10.1, 64
  %i.am = trunc nuw nsw i64 %indvars.iv.next10 to i32
  %i.an = and i32 %i.am, 7
  %i.ao = trunc nuw nsw i64 %indvars.iv.next10.1 to i32
  %i.ap = and i32 %i.ao, 7
  %narrow.i.i.2 = add nuw nsw i32 %i.an, 2
  %i.aq = sub nsw i32 %narrow.i.i.2, %i.ap
  %i.ar = icmp ult i32 %i.aq, 5
  %i.as = shl nuw i64 1, %indvars.iv.next10.1     ; 2 uses
  %i.at = or i64 %i.as, %i.ak                     ; 3 uses
  %indvars.iv.next10.2 = add nuw nsw i64 %indvars.iv.next10.1, %.sroa.speculated36.i ; 5 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next10.2, 64
  %i.av = trunc nuw nsw i64 %indvars.iv.next10.1 to i32
  %i.aw = and i32 %i.av, 7
  %i.ax = trunc nuw nsw i64 %indvars.iv.next10.2 to i32
  %i.ay = and i32 %i.ax, 7
  %narrow.i.i.3 = add nuw nsw i32 %i.aw, 2
  %i.az = sub nsw i32 %narrow.i.i.3, %i.ay
  %i.ba = icmp ult i32 %i.az, 5
  %i.bb = shl nuw i64 1, %indvars.iv.next10.2     ; 2 uses
  %i.bc = or i64 %i.bb, %i.at                     ; 3 uses
  %indvars.iv.next10.3 = add nuw nsw i64 %indvars.iv.next10.2, %.sroa.speculated36.i ; 5 uses
  %i.bd = icmp samesign ult i64 %indvars.iv.next10.3, 64
  %i.be = trunc nuw nsw i64 %indvars.iv.next10.2 to i32
  %i.bf = and i32 %i.be, 7
  %i.bg = trunc nuw nsw i64 %indvars.iv.next10.3 to i32
  %i.bh = and i32 %i.bg, 7
  %narrow.i.i.4 = add nuw nsw i32 %i.bf, 2
  %i.bi = sub nsw i32 %narrow.i.i.4, %i.bh
  %i.bj = icmp ult i32 %i.bi, 5
  %i.bk = shl nuw i64 1, %indvars.iv.next10.3     ; 2 uses
  %i.bl = or i64 %i.bk, %i.bc                     ; 3 uses
  %indvars.iv.next10.4 = add nuw nsw i64 %indvars.iv.next10.3, %.sroa.speculated36.i ; 5 uses
  %i.bm = icmp samesign ult i64 %indvars.iv.next10.4, 64
  %i.bn = trunc nuw nsw i64 %indvars.iv.next10.3 to i32
  %i.bo = and i32 %i.bn, 7
  %i.bp = trunc nuw nsw i64 %indvars.iv.next10.4 to i32
  %i.bq = and i32 %i.bp, 7
  %narrow.i.i.5 = add nuw nsw i32 %i.bo, 2
  %i.br = sub nsw i32 %narrow.i.i.5, %i.bq
  %i.bs = icmp ult i32 %i.br, 5
  %i.bt = shl nuw i64 1, %indvars.iv.next10.4     ; 2 uses
  %i.bu = or i64 %i.bt, %i.bl                     ; 3 uses
  %indvars.iv.next10.5 = add nuw nsw i64 %indvars.iv.next10.4, %.sroa.speculated36.i ; 3 uses
  %i.bv = icmp samesign ult i64 %indvars.iv.next10.5, 64
  %i.bw = trunc nuw nsw i64 %indvars.iv.next10.4 to i32
  %i.bx = and i32 %i.bw, 7
  %i.by = trunc nuw nsw i64 %indvars.iv.next10.5 to i32
  %i.bz = and i32 %i.by, 7
  %narrow.i.i.6 = add nuw nsw i32 %i.bx, 2
  %i.ca = sub nsw i32 %narrow.i.i.6, %i.bz
  %i.cb = icmp ult i32 %i.ca, 5
  %i.cc = shl nuw i64 1, %indvars.iv.next10.5     ; 2 uses
  %i.cd = or i64 %i.cc, %i.bu                     ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit, %bb.e
  %i.ce = phi i64 [ %i.m, %bb.e ], [ %i.dz, %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit ]
  %.1 = phi i32 [ 0, %bb.e ], [ %i.dy, %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit ]
  %.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit ] ; 12 uses
  %.not43 = xor i1 %i.u, true
  %.not44 = xor i1 %i.aa, true
  %brmerge45 = select i1 %.not43, i1 true, i1 %.not44
  br i1 %brmerge45, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i

bb.g:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i
  %.not26 = xor i1 %i.ac, true
  %.not27 = xor i1 %i.ai, true
  %brmerge = select i1 %.not26, i1 true, i1 %.not27
  br i1 %brmerge, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1: ; preds = %bb.g
  %i.cf = and i64 %i.aj, %.0
  %.not11.i.1 = icmp eq i64 %i.cf, 0
  br i1 %.not11.i.1, label %bb.h, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !0

bb.h:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1
  %.not28 = xor i1 %i.al, true
  %.not29 = xor i1 %i.ar, true
  %brmerge30 = select i1 %.not28, i1 true, i1 %.not29
  br i1 %brmerge30, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2: ; preds = %bb.h
  %i.cg = and i64 %i.as, %.0
  %.not11.i.2 = icmp eq i64 %i.cg, 0
  br i1 %.not11.i.2, label %bb.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !0

bb.i:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2
  %.not31 = xor i1 %i.au, true
  %.not32 = xor i1 %i.ba, true
  %brmerge33 = select i1 %.not31, i1 true, i1 %.not32
  br i1 %brmerge33, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3: ; preds = %bb.i
  %i.ch = and i64 %i.bb, %.0
  %.not11.i.3 = icmp eq i64 %i.ch, 0
  br i1 %.not11.i.3, label %bb.j, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !0

bb.j:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3
  %.not34 = xor i1 %i.bd, true
  %.not35 = xor i1 %i.bj, true
  %brmerge36 = select i1 %.not34, i1 true, i1 %.not35
  br i1 %brmerge36, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4: ; preds = %bb.j
  %i.ci = and i64 %i.bk, %.0
  %.not11.i.4 = icmp eq i64 %i.ci, 0
  br i1 %.not11.i.4, label %bb.k, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !0

bb.k:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4
  %.not37 = xor i1 %i.bm, true
  %.not38 = xor i1 %i.bs, true
  %brmerge39 = select i1 %.not37, i1 true, i1 %.not38
  br i1 %brmerge39, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5: ; preds = %bb.k
  %i.cj = and i64 %i.bt, %.0
  %.not11.i.5 = icmp eq i64 %i.cj, 0
  br i1 %.not11.i.5, label %bb.l, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !0

bb.l:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5
  %.not40 = xor i1 %i.bv, true
  %.not41 = xor i1 %i.cb, true
  %brmerge42 = select i1 %.not40, i1 true, i1 %.not41
  br i1 %brmerge42, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6: ; preds = %bb.l
  %i.ck = and i64 %i.cc, %.0
  %.not11.i.6 = icmp eq i64 %i.ck, 0
  br i1 %.not11.i.6, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !0

end_hunk_0
