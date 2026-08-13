inline.NumInlined: 156
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN9Stockfish9Bitboards6prettyB5cxx11Em:._crit_edge.i.i
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  %i.bc = phi i64 [ %i.ay, %bb.f ], [ %.pre.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.bc, ptr %i.k, align 8, !tbaa !20, !alias.scope !27
  store ptr %i.av, ptr %i.at, align 8, !tbaa !17
  store i64 0, ptr %i.bd, align 8, !tbaa !20
  store i8 0, ptr %i.av, align 8, !tbaa !19
  %i.be = load i64, ptr %i.k, align 8, !tbaa !20  ; 2 uses
  %i.bf = load i64, ptr %i.e, align 8, !tbaa !20
  %i.bg = sub i64 4611686018427387903, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.be
  br i1 %i.bh, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.bi = load ptr, ptr %2, align 8, !tbaa !17
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bi, i64 noundef %i.be) #9 ; 0 uses
  %i.bk = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.j
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !19
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.bo = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.h
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = load i64, ptr %i.h, align 8, !tbaa !19
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  %i.bs = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.g
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.bu = load i64, ptr %i.g, align 8, !tbaa !19
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.bw = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.bw, label %bb.i, label %bb.a, !llvm.loop !30

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.a
  %i.bx = shl nuw i64 1, %i.l
  %i.by = and i64 %i.bx, %1
  %.not = icmp eq i64 %i.by, 0
  %.str.1..str.2 = select i1 %.not, ptr @.str.2, ptr @.str.1
  %i.bz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2, i64 noundef 4) #9 ; 0 uses
  %i.ca = load i64, ptr %i.e, align 8, !tbaa !20
  %i.cb = and i64 %i.ca, -4
  %i.cc = icmp eq i64 %i.cb, 4611686018427387900
  br i1 %i.cc, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.cd = shl nuw i64 2, %i.l
  %i.ce = and i64 %i.cd, %1
  %.not.1 = icmp eq i64 %i.ce, 0
  %.str.1..str.2.1 = select i1 %.not.1, ptr @.str.2, ptr @.str.1
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2.1, i64 noundef 4) #9 ; 0 uses
  %i.cg = load i64, ptr %i.e, align 8, !tbaa !20
  %i.ch = and i64 %i.cg, -4
  %i.ci = icmp eq i64 %i.ch, 4611686018427387900
  br i1 %i.ci, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.1
  %i.cj = shl nuw i64 4, %i.l
  %i.ck = and i64 %i.cj, %1
  %.not.2 = icmp eq i64 %i.ck, 0
  %.str.1..str.2.2 = select i1 %.not.2, ptr @.str.2, ptr @.str.1
  %i.cl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2.2, i64 noundef 4) #9 ; 0 uses
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !20
  %i.cn = and i64 %i.cm, -4
  %i.co = icmp eq i64 %i.cn, 4611686018427387900
  br i1 %i.co, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.2
  %i.cp = shl nuw i64 8, %i.l
  %i.cq = and i64 %i.cp, %1
  %.not.3 = icmp eq i64 %i.cq, 0
  %.str.1..str.2.3 = select i1 %.not.3, ptr @.str.2, ptr @.str.1
  %i.cr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2.3, i64 noundef 4) #9 ; 0 uses
  %i.cs = load i64, ptr %i.e, align 8, !tbaa !20
  %i.ct = and i64 %i.cs, -4
  %i.cu = icmp eq i64 %i.ct, 4611686018427387900
  br i1 %i.cu, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.3
  %i.cv = shl nuw i64 16, %i.l
  %i.cw = and i64 %i.cv, %1
  %.not.4 = icmp eq i64 %i.cw, 0
  %.str.1..str.2.4 = select i1 %.not.4, ptr @.str.2, ptr @.str.1
  %i.cx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2.4, i64 noundef 4) #9 ; 0 uses
  %i.cy = load i64, ptr %i.e, align 8, !tbaa !20
  %i.cz = and i64 %i.cy, -4
  %i.da = icmp eq i64 %i.cz, 4611686018427387900
  br i1 %i.da, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.4
  %i.db = shl nuw i64 32, %i.l
  %i.dc = and i64 %i.db, %1
  %.not.5 = icmp eq i64 %i.dc, 0
  %.str.1..str.2.5 = select i1 %.not.5, ptr @.str.2, ptr @.str.1
  %i.dd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2.5, i64 noundef 4) #9 ; 0 uses
  %i.de = load i64, ptr %i.e, align 8, !tbaa !20
  %i.df = and i64 %i.de, -4
  %i.dg = icmp eq i64 %i.df, 4611686018427387900
  br i1 %i.dg, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.5
  %i.dh = shl nuw i64 64, %i.l
  %i.di = and i64 %i.dh, %1
  %.not.6 = icmp eq i64 %i.di, 0
  %.str.1..str.2.6 = select i1 %.not.6, ptr @.str.2, ptr @.str.1
  %i.dj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.str.1..str.2.6, i64 noundef 4) #9 ; 0 uses
  %i.dk = load i64, ptr %i.e, align 8, !tbaa !20
  %i.dl = and i64 %i.dk, -4
  %i.dm = icmp eq i64 %i.dl, 4611686018427387900
  br i1 %i.dm, label %bb.h, label %._crit_edge.i.i1

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.dn = load i64, ptr %i.e, align 8, !tbaa !20
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
  store <64 x i8> %i.b, ptr %i.c, align 16, !tbaa !19
  %vec.ind.next = add nuw nsw <64 x i64> %vec.ind, splat (i64 64)
  %i.d = tail call range(i64 1, 64) <64 x i64> @llvm.ctpop.v64i64(<64 x i64> %vec.ind.next)
  %i.e = trunc nuw nsw <64 x i64> %i.d to <64 x i8>
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish8PopCnt16E, i64 %index
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store <64 x i8> %i.e, ptr %i.g, align 16, !tbaa !19
  %vec.ind.next.1 = add nuw nsw <64 x i64> %vec.ind, splat (i64 128)
  %i.h = tail call range(i64 1, 64) <64 x i64> @llvm.ctpop.v64i64(<64 x i64> %vec.ind.next.1)
  %i.i = trunc nuw nsw <64 x i64> %i.h to <64 x i8>
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish8PopCnt16E, i64 %index
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store <64 x i8> %i.i, ptr %i.k, align 16, !tbaa !19
  %vec.ind.next.2 = add nuw nsw <64 x i64> %vec.ind, splat (i64 192)
  %i.l = tail call range(i64 1, 64) <64 x i64> @llvm.ctpop.v64i64(<64 x i64> %vec.ind.next.2)
  %i.m = trunc nuw nsw <64 x i64> %i.l to <64 x i8>
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish8PopCnt16E, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  store <64 x i8> %i.m, ptr %i.o, align 16, !tbaa !19
  %index.next.3 = add nuw nsw i64 %index, 256     ; 2 uses
  %vec.ind.next.3 = add nuw nsw <64 x i64> %vec.ind, splat (i64 256)
  %i.p = icmp eq i64 %index.next.3, 65536
  br i1 %i.p, label %.preheader, label %vector.body, !llvm.loop !32

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
  store <64 x i8> %i.ab, ptr %i.q, align 16, !tbaa !19
  %indvars.iv.next128 = or disjoint i64 %indvars.iv127, 1 ; 2 uses
  %0 = getelementptr inbounds nuw [64 x i8], ptr @_ZN9Stockfish14SquareDistanceE, i64 %indvars.iv.next128
  %i.ac = trunc nuw nsw i64 %indvars.iv.next128 to i8 ; 2 uses
  %i.ad = lshr i8 %i.ac, 3
  %i.ae = zext nneg i8 %i.ad to i32
  %broadcast.splatinsert140.1 = insertelement <64 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat141.1 = shufflevector <64 x i32> %broadcast.splatinsert140.1, <64 x i32> poison, <64 x i32> zeroinitializer
  %i.af = and i8 %i.ac, 7
  %i.ag = zext nneg i8 %i.af to i32
  %broadcast.splatinsert.1 = insertelement <64 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat.1 = shufflevector <64 x i32> %broadcast.splatinsert.1, <64 x i32> poison, <64 x i32> zeroinitializer
  %i.ah = add nsw <64 x i32> %broadcast.splat.1, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7>
  %i.ai = tail call <64 x i32> @llvm.abs.v64i32(<64 x i32> %i.ah, i1 true)
  %i.aj = add nsw <64 x i32> %broadcast.splat141.1, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7>
  %i.ak = tail call <64 x i32> @llvm.abs.v64i32(<64 x i32> %i.aj, i1 true)
  %i.al = tail call <64 x i32> @llvm.umax.v64i32(<64 x i32> %i.ai, <64 x i32> %i.ak)
  %i.am = trunc nuw nsw <64 x i32> %i.al to <64 x i8>
  store <64 x i8> %i.am, ptr %0, align 16, !tbaa !19
  %indvars.iv.next128.1 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
  %exitcond130.not.1 = icmp eq i64 %indvars.iv.next128.1, 64
  br i1 %exitcond130.not.1, label %bb.a, label %.preheader, !llvm.loop !35

bb.a:                                             ; preds = %.preheader
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_111init_magicsENS_9PieceTypeEPmPA2_NS_5MagicE(i8 noundef zeroext 4, ptr noundef nonnull @_ZN9Stockfish12_GLOBAL__N_19RookTableE)
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_111init_magicsENS_9PieceTypeEPmPA2_NS_5MagicE(i8 noundef zeroext 3, ptr noundef nonnull @_ZN9Stockfish12_GLOBAL__N_111BishopTableE)
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  ret void

bb.c:                                             ; preds = %bb.a, %bb.g
  %indvars.iv135 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next136, %bb.g ] ; 8 uses
  %i.an = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %indvars.iv135 ; 6 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv135 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ar = shl nuw i64 1, %indvars.iv135           ; 4 uses
  %i.as = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish6LineBBE, i64 %indvars.iv135 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.au = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9RayPassBBE, i64 %indvars.iv135 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1536), i64 %indvars.iv135
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !15
  br label %bb.h

bb.d:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 2048), i64 %indvars.iv135
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %indvars.iv131.1 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next132.1, %bb.f ] ; 8 uses
  %i.az = shl nuw i64 1, %indvars.iv131.1         ; 5 uses
  %i.ba = and i64 %i.ay, %i.az
  %.not17.1 = icmp eq i64 %i.ba, 0
  br i1 %.not17.1, label %._crit_edge.1, label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread75.1

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread75.1: ; preds = %bb.e
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !36 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv131.1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !36 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !15
  %i.bh = and i64 %i.bg, %i.bc
  %i.bi = or i64 %i.ar, %i.bh
  %i.bj = or i64 %i.bi, %i.az
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv131.1
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !15
  %i.bl = load i64, ptr %i.at, align 16, !tbaa !39
  %i.bm = tail call noundef i64 @llvm.pext.i64(i64 %i.az, i64 %i.bl)
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.br = load i64, ptr %i.bq, align 16, !tbaa !39
  %i.bs = tail call noundef i64 @llvm.pext.i64(i64 %i.ar, i64 %i.br)
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bt ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !15
  %i.bw = and i64 %i.bv, %i.bp                    ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv131.1
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !15
  %i.by = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.bz = load i64, ptr %i.bu, align 8, !tbaa !15
  %i.ca = or i64 %i.bz, %i.az
  %i.cb = and i64 %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv131.1
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !15
  br label %bb.f

._crit_edge.1:                                    ; preds = %bb.e
  %.phi.trans.insert.1 = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv131.1
  %.pre.1 = load i64, ptr %.phi.trans.insert.1, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.1, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread75.1
  %i.cd = phi i64 [ %.pre.1, %._crit_edge.1 ], [ %i.bw, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread75.1 ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv131.1
  %i.cf = or i64 %i.cd, %i.az
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !15
  %indvars.iv.next132.1 = add nuw nsw i64 %indvars.iv131.1, 1 ; 2 uses
  %exitcond134.not.1 = icmp eq i64 %indvars.iv.next132.1, 64
  br i1 %exitcond134.not.1, label %bb.g, label %bb.e, !llvm.loop !40

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, 64
  br i1 %exitcond138.not, label %bb.b, label %bb.c, !llvm.loop !41

bb.h:                                             ; preds = %bb.c, %bb.i
  %indvars.iv131 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next132, %bb.i ] ; 8 uses
  %i.cg = shl nuw i64 1, %indvars.iv131           ; 5 uses
  %i.ch = and i64 %i.aw, %i.cg
  %.not17 = icmp eq i64 %i.ch, 0
  br i1 %.not17, label %._crit_edge, label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread

._crit_edge:                                      ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv131
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %bb.i

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread: ; preds = %bb.h
  %i.ci = load ptr, ptr %i.ap, align 8, !tbaa !36 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv131 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !36 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !15
  %i.co = and i64 %i.cn, %i.cj
  %i.cp = or i64 %i.ar, %i.co
  %i.cq = or i64 %i.cp, %i.cg
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv131
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !15
  %i.cs = load i64, ptr %i.ao, align 32, !tbaa !39
  %i.ct = tail call noundef i64 @llvm.pext.i64(i64 %i.cg, i64 %i.cs)
  %i.cu = and i64 %i.ct, 4294967295
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !15
  %i.cx = load i64, ptr %i.ck, align 32, !tbaa !39
  %i.cy = tail call noundef i64 @llvm.pext.i64(i64 %i.ar, i64 %i.cx)
  %i.cz = and i64 %i.cy, 4294967295
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !15
  %i.dc = and i64 %i.db, %i.cw                    ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv131
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !15
  %i.de = load i64, ptr %i.ci, align 8, !tbaa !15
  %i.df = load i64, ptr %i.da, align 8, !tbaa !15
  %i.dg = or i64 %i.df, %i.cg
  %i.dh = and i64 %i.dg, %i.de
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv131
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread
  %i.dj = phi i64 [ %.pre, %._crit_edge ], [ %i.dc, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv131
  %i.dl = or i64 %i.dj, %i.cg
  store i64 %i.dl, ptr %i.dk, align 8, !tbaa !15
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next132, 64
  br i1 %exitcond134.not, label %bb.d, label %bb.h, !llvm.loop !40
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_111init_magicsENS_9PieceTypeEPmPA2_NS_5MagicE(i8 noundef zeroext range(i8 3, 5) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i8 %0 to i64
  %i.b = add nuw nsw i64 %i.a, 4294967293
  %i.c = and i64 %i.b, 4294967295
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.c ; 2 uses
  %i.d = icmp eq i8 %0, 4                         ; 4 uses
  %.sroa.speculated36.i = select i1 %i.d, i64 8, i64 9 ; 7 uses
  %.sroa.speculated33.i = select i1 %i.d, i8 -8, i8 -7
  %.sroa.speculated30.i = select i1 %i.d, i8 1, i8 -9
  %.sroa.speculated.i = select i1 %i.d, i8 -1, i8 7
  br label %bb.c

bb.b:                                             ; preds = %bb.p
  ret void

bb.c:                                             ; preds = %bb.a, %bb.p
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.p ] ; 9 uses
  %.02110 = phi i32 [ 0, %bb.a ], [ %i.eb, %bb.p ]
  %i.e = trunc nuw nsw i64 %indvars.iv to i8      ; 4 uses
  %i.f = and i64 %indvars.iv, 56
  %i.g = shl nuw i64 255, %i.f
  %i.h = and i64 %indvars.iv, 7
  %i.i = shl nuw i64 72340172838076673, %i.h
  %gep = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.j = tail call noundef i64 @_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm(i8 noundef zeroext %0, i8 noundef zeroext %i.e, i64 noundef 0)
  %i.k = or i64 %i.g, 72057594037927680
  %i.l = or i64 %i.i, 9114861777597660798
  %i.m = and i64 %i.k, %i.l
  %i.n = and i64 %i.m, %i.j                       ; 2 uses
  store i64 %i.n, ptr %gep, align 16, !tbaa !39
  %i.o = icmp eq i64 %indvars.iv, 0
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %indvars.iv, 4294967295
  %i.q = and i64 %i.p, 4294967295
  %gep8 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %gep8, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.t = sext i32 %.02110 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %i.u, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %gep, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !36
  %indvars.iv.next1219 = add nuw nsw i64 %indvars.iv, %.sroa.speculated36.i ; 5 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next1219, 64
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %i.z = and i32 %i.y, 7
  %i.aa = trunc nuw nsw i64 %indvars.iv.next1219 to i32
end_hunk_0
