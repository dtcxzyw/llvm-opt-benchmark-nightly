Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrumentorUtils?download=true
inline.NumInlined: 1071
inline.NumDeleted: 436
begin_hunk_0_@_ZN12_GLOBAL__N_115FilterEvaluator18parseStringLiteralEv:bb.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !580

.critedge:                                        ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.cs = icmp ult i64 %i.k, 10
  br i1 %i.cs, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i12, label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %.critedge, %bb.u
  %.029.i.i10 = phi i32 [ %i.da, %bb.u ], [ 1, %.critedge ] ; 4 uses
  %.02328.i.i11 = phi i64 [ %i.cz, %bb.u ], [ %i.k, %.critedge ] ; 5 uses
  %i.ct = icmp ult i64 %.02328.i.i11, 100
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i9
  %i.cu = add i32 %.029.i.i10, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i12

bb.q:                                             ; preds = %.lr.ph.i.i9
  %i.cv = icmp ult i64 %.02328.i.i11, 1000
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cw = add i32 %.029.i.i10, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i12

bb.s:                                             ; preds = %bb.q
  %i.cx = icmp ult i64 %.02328.i.i11, 10000
  br i1 %i.cx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cy = add i32 %.029.i.i10, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i12

bb.u:                                             ; preds = %bb.s
  %i.cz = udiv i64 %.02328.i.i11, 10000
  %i.da = add i32 %.029.i.i10, 4                  ; 2 uses
  %i.db = icmp ult i64 %.02328.i.i11, 100000
  br i1 %i.db, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i12, label %.lr.ph.i.i9, !llvm.loop !1

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i12:  ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %.critedge
  %.022.i.i13 = phi i32 [ %i.cy, %bb.t ], [ %i.cu, %bb.p ], [ %i.cw, %bb.r ], [ 1, %.critedge ], [ %i.da, %bb.u ]
  %i.dc = zext i32 %.022.i.i13 to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.dd, ptr %11, align 8, !tbaa !30, !alias.scope !596
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.dc, i8 noundef signext 0) #16
  %i.de = load ptr, ptr %11, align 8, !tbaa !32, !alias.scope !596 ; 4 uses
  %i.df = icmp ugt i64 %i.k, 99
  br i1 %i.df, label %.lr.ph.preheader.i.i17, label %._crit_edge.i.i14

.lr.ph.preheader.i.i17:                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i12
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !33, !alias.scope !596
  %i.di = trunc i64 %i.dh to i32
  %i.dj = add i32 %i.di, -1
  br label %.lr.ph.i2.i18

.lr.ph.i2.i18:                                    ; preds = %.lr.ph.i2.i18, %.lr.ph.preheader.i.i17
  %.020.i.i19 = phi i64 [ %i.dm, %.lr.ph.i2.i18 ], [ %i.k, %.lr.ph.preheader.i.i17 ] ; 3 uses
  %.01819.i.i20 = phi i32 [ %i.dw, %.lr.ph.i2.i18 ], [ %i.dj, %.lr.ph.preheader.i.i17 ] ; 3 uses
  %i.dk = urem i64 %.020.i.i19, 100
  %i.dl = shl nuw nsw i64 %i.dk, 1
  %i.dm = udiv i64 %.020.i.i19, 100               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !27, !noalias !596
  %i.dq = zext i32 %.01819.i.i20 to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dq
  store i8 %i.dp, ptr %i.dr, align 1, !tbaa !27
  %i.ds = load i8, ptr %i.dn, align 2, !tbaa !27, !noalias !596
  %i.dt = add i32 %.01819.i.i20, -1
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.du
  store i8 %i.ds, ptr %i.dv, align 1, !tbaa !27
  %i.dw = add i32 %.01819.i.i20, -2
  %i.dx = icmp ugt i64 %.020.i.i19, 9999
  br i1 %i.dx, label %.lr.ph.i2.i18, label %._crit_edge.i.i14, !llvm.loop !2

._crit_edge.i.i14:                                ; preds = %.lr.ph.i2.i18, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i12
  %.0.lcssa.i.i15 = phi i64 [ %i.k, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i12 ], [ %i.dm, %.lr.ph.i2.i18 ] ; 3 uses
  %i.dy = icmp samesign ugt i64 %.0.lcssa.i.i15, 9
  br i1 %i.dy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i14
  %i.dz = shl nuw nsw i64 %.0.lcssa.i.i15, 1
  %i.ea = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !27, !noalias !596
  %i.ed = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !27
  %i.ee = load i8, ptr %i.ea, align 2, !tbaa !27, !noalias !596
  br label %_ZNSt7__cxx119to_stringEm.exit21

bb.w:                                             ; preds = %._crit_edge.i.i14
  %i.ef = trunc nuw nsw i64 %.0.lcssa.i.i15 to i8
  %i.eg = or disjoint i8 %i.ef, 48
  br label %_ZNSt7__cxx119to_stringEm.exit21

_ZNSt7__cxx119to_stringEm.exit21:                 ; preds = %bb.v, %bb.w
  %storemerge.i.i16 = phi i8 [ %i.eg, %bb.w ], [ %i.ee, %bb.v ]
  store i8 %storemerge.i.i16, ptr %i.de, align 1, !tbaa !27
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.eh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 45) #16, !noalias !597 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.ei, ptr %10, align 8, !tbaa !30, !alias.scope !597
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !32 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 5 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

bb.x:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit21
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !33 ; 3 uses
  %i.eo = icmp ult i64 %i.en, 16
  call void @llvm.assume(i1 %i.eo)
  %i.ep = add nuw nsw i64 %i.en, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ei, ptr noundef nonnull align 8 dereferenceable(1) %i.ek, i64 %i.ep, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx119to_stringEm.exit21
  store ptr %i.ej, ptr %10, align 8, !tbaa !32, !alias.scope !597
  %i.eq = load i64, ptr %i.ek, align 8, !tbaa !27
  store i64 %i.eq, ptr %i.ei, align 8, !tbaa !27, !alias.scope !597
  %.phi.trans.insert.i23 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.pre.i24 = load i64, ptr %.phi.trans.insert.i23, align 8, !tbaa !33
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit25

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit25: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.er = phi i64 [ %i.en, %bb.x ], [ %.pre.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.er, ptr %i.et, align 8, !tbaa !33, !alias.scope !597
  store ptr %i.ek, ptr %i.eh, align 8, !tbaa !32
  store i64 0, ptr %i.es, align 8, !tbaa !33
  store i8 0, ptr %i.ek, align 8, !tbaa !27
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 4, ptr %i.eu, align 8, !tbaa !36
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.ev, align 1, !tbaa !37
  store ptr %10, ptr %9, align 8, !tbaa !27
  %i.ew = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #16, !noalias !598 ; 2 uses
  %i.ex = extractvalue { i32, ptr } %i.ew, 0
  %i.ey = extractvalue { i32, ptr } %i.ew, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !599
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(34) %9) #16, !noalias !599
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 %i.ex, ptr %i.ey) #16
  %i.ez = load ptr, ptr %2, align 8, !tbaa !32, !noalias !599 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZN4llvm5ErrorD2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit25
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !27, !noalias !599
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #19
  br label %_ZN4llvm5ErrorD2Ev.exit29

_ZN4llvm5ErrorD2Ev.exit29:                        ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !599
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 8
  %i.fg = or i8 %i.ff, 1
  store i8 %i.fg, ptr %i.fe, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.fh = load ptr, ptr %8, align 8, !tbaa !40, !noalias !600
  store ptr %i.fh, ptr %0, align 8, !tbaa !45, !alias.scope !600
  store ptr null, ptr %8, align 8, !tbaa !40, !noalias !600
  %i.fi = load ptr, ptr %10, align 8, !tbaa !32   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.ei
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZN4llvm5ErrorD2Ev.exit29
  %i.fk = load i64, ptr %i.ei, align 8, !tbaa !27
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZN4llvm5ErrorD2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %i.fm = load ptr, ptr %11, align 8, !tbaa !32   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.dd
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.fo = load i64, ptr %i.dd, align 8, !tbaa !27
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph
  %i.fq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cn
  %12 = sub nuw i64 %storemerge47, %i.cn
  %i.fr = add nuw i64 %storemerge47, 1
  store i64 %i.fr, ptr %i.a, align 8, !tbaa !25
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 8
  %i.fu = and i8 %i.ft, -2
  store i8 %i.fu, ptr %i.fs, align 8
  store ptr %i.fq, ptr %0, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %12, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E6doFindIS2_EEPKS7_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79, !noalias !605 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85, !noalias !605 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !78, !noalias !605 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 3 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !19
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !18
  %i.h = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload) #16
  %.01627 = and i32 %i.h, %i.g                    ; 4 uses
  %i.i = zext i32 %.01627 to i64                  ; 3 uses
  %i.j = lshr i64 %i.i, 5
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !61
  %i.m = and i32 %.01627, 31
  %i.n = lshr i32 %i.l, %i.m
  %i.o = trunc i32 %i.n to i1
  br i1 %i.o, label %.lr.ph, label %.thread, !prof !62

.lr.ph:                                           ; preds = %bb.b
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !19
  %.sroa.22.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !18
  %.sroa.22.0.copyload.fr = freeze i64 %.sroa.22.0.copyload ; 3 uses
  %i.p = icmp eq i64 %.sroa.22.0.copyload.fr, 0
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us
  %i.q = phi i64 [ %i.t, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us ], [ %i.i, %.lr.ph ]
  %.01628.us = phi i32 [ %.016.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us ], [ %.01627, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.us = load i64, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !18
  %.not.i.i.us = icmp eq i64 %.sroa.2.0.copyload.us, 0
  br i1 %.not.i.i.us, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us, !prof !63

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us: ; preds = %.lr.ph.split.us
  %i.s = add nuw i32 %.01628.us, 1
  %.016.us = and i32 %i.s, %i.g                   ; 3 uses
  %i.t = zext i32 %.016.us to i64                 ; 2 uses
  %i.u = lshr i64 %i.t, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !61
  %i.x = and i32 %.016.us, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph.split.us, label %.thread, !prof !64

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21
  %i.aa = phi i64 [ %i.ae, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21 ], [ %i.i, %.lr.ph ]
  %.01628 = phi i32 [ %.016, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21 ], [ %.01627, %.lr.ph ]
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.aa ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %.sroa.22.0.copyload.fr, %.sroa.2.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21, !prof !63

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit: ; preds = %.lr.ph.split
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !19
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload.fr)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21, !prof !65

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21: ; preds = %.lr.ph.split, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit
  %i.ad = add nuw i32 %.01628, 1
  %.016 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.016 to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !61
  %i.ai = and i32 %.016, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.split, label %.thread, !prof !64

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us, %.lr.ph.split.us, %bb.b, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us ], [ %i.r, %.lr.ph.split.us ], [ %i.ab, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ], [ null, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21 ]
  ret ptr %.3
}

declare noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E6doFindIS2_EEPKS9_RKT_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58, !noalias !610 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59, !noalias !610 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !60, !noalias !610 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 3 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !19
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !18
  %i.h = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload) #16
  %.01627 = and i32 %i.h, %i.g                    ; 4 uses
  %i.i = zext i32 %.01627 to i64                  ; 3 uses
  %i.j = lshr i64 %i.i, 5
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !61
  %i.m = and i32 %.01627, 31
  %i.n = lshr i32 %i.l, %i.m
  %i.o = trunc i32 %i.n to i1
  br i1 %i.o, label %.lr.ph, label %.thread, !prof !62

.lr.ph:                                           ; preds = %bb.b
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !19
  %.sroa.22.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !18
  %.sroa.22.0.copyload.fr = freeze i64 %.sroa.22.0.copyload ; 3 uses
  %i.p = icmp eq i64 %.sroa.22.0.copyload.fr, 0
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us
  %i.q = phi i64 [ %i.t, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us ], [ %i.i, %.lr.ph ]
  %.01628.us = phi i32 [ %.016.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us ], [ %.01627, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.us = load i64, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !18
  %.not.i.i.us = icmp eq i64 %.sroa.2.0.copyload.us, 0
  br i1 %.not.i.i.us, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us, !prof !63

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us: ; preds = %.lr.ph.split.us
  %i.s = add nuw i32 %.01628.us, 1
  %.016.us = and i32 %i.s, %i.g                   ; 3 uses
  %i.t = zext i32 %.016.us to i64                 ; 2 uses
  %i.u = lshr i64 %i.t, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !61
  %i.x = and i32 %.016.us, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph.split.us, label %.thread, !prof !64

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21
  %i.aa = phi i64 [ %i.ae, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21 ], [ %i.i, %.lr.ph ]
  %.01628 = phi i32 [ %.016, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21 ], [ %.01627, %.lr.ph ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.aa ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %.sroa.22.0.copyload.fr, %.sroa.2.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21, !prof !63

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit: ; preds = %.lr.ph.split
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !19
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload.fr)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21, !prof !65

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21: ; preds = %.lr.ph.split, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit
  %i.ad = add nuw i32 %.01628, 1
  %.016 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.016 to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !61
  %i.ai = and i32 %.016, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.split, label %.thread, !prof !64

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us, %.lr.ph.split.us, %bb.b, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us ], [ %i.r, %.lr.ph.split.us ], [ %i.ab, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ], [ null, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21 ]
  ret ptr %.3
}

declare noundef zeroext i1 @_ZN4llvm18getAsSignedIntegerENS_9StringRefEjRx(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPS9_:bb.a
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !61
  %i.aj = and i32 %.021, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.split, label %.thread, !prof !64, !llvm.loop !3

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, %.lr.ph.split.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, %bb.b, %bb.a
  %.us-phi.sink = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ null, %bb.a ], [ %i.j, %bb.b ], [ %i.r, %.lr.ph.split.us ], [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.ab, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  store ptr %.us-phi.sink, ptr %2, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #10 align 2 {
_ZN4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEC2EjNS_12DenseMapBaseIS9_S1_S3_S5_S8_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.4", align 16 ; 8 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !58
  store ptr %i.y, ptr %i.q, align 8, !tbaa !59
  store i32 0, ptr %i.p, align 16, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !66
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !89
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !89
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !61 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !61
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !61
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEC2EjNS_12DenseMapBaseIS9_S1_S3_S5_S8_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = mul nuw nsw i64 %i.ag, 24
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEC2EjNS_12DenseMapBaseIS9_S1_S3_S5_S8_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !60  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !59 ; 2 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !58
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !60
  %i.e = add i32 %.val7, -1
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i28 = icmp eq i64 %i.h, 0
  br i1 %.not.i28, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !61   ; 2 uses
  %.not11.i26 = icmp eq i32 %i.j, 0
  br i1 %.not11.i26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph31
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i27 = phi i32 [ %i.j, %.lr.ph ], [ %i.ah, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i27, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val11, i64 %i.n ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.o, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18
  %i.p = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.p, %bb.b ], [ %i.x, %bb.c ]
  %.0.i13 = and i32 %.pn.i, %i.e                  ; 3 uses
  %i.q = zext i32 %.0.i13 to i64                  ; 2 uses
  %i.r = lshr i64 %i.q, 5                         ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !61
  %i.u = and i32 %.0.i13, 31                      ; 2 uses
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  %i.x = add i32 %.0.i13, 1
  br i1 %i.w, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !643

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.val12, i64 %i.q ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !27
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !27
  %i.ad = shl nuw i32 1, %i.u
  %i.ae = load i32, ptr %i.y, align 4, !tbaa !61
  %i.af = or i32 %i.ae, %i.ad
  store i32 %i.af, ptr %i.y, align 4, !tbaa !61
  %i.ag = add i32 %.0.i27, -1
  %i.ah = and i32 %i.ag, %.0.i27                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ah, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !644

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph31, !llvm.loop !645

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !60
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ai = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.aj, align 8, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.ak, align 8, !tbaa !67
  %i.al = icmp eq i32 %i.ai, 0
  br i1 %i.al, label %_ZN4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !58
  %i.an = zext i32 %i.ai to i64                   ; 2 uses
  %i.ao = mul nuw nsw i64 %i.an, 24
  %i.ap = add nuw nsw i64 %i.an, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  %i.as = add nuw nsw i64 %i.ar, %i.ao
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.am, i64 noundef %i.as, i64 noundef 8) #16
  store i32 0, ptr %i.b, align 4, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !28}
!1 = distinct !{!1, !28}
!2 = distinct !{!2, !28}
!3 = distinct !{!3, !28}
!4 = distinct !{null, null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!"_ZTSN4llvm9StringRefE", !14, i64 0, !15, i64 8}
!17 = !{!16, !15, i64 8}
!18 = !{!15, !15, i64 0}
!19 = !{!14, !14, i64 0}
!20 = !{!"p1 _ZTSN4llvm8DenseMapINS_9StringRefElNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_lEEEE", !13, i64 0}
!21 = !{!"p1 _ZTSN4llvm8DenseMapINS_9StringRefES1_NS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S1_EEEE", !13, i64 0}
!22 = !{!"p1 _ZTSN4llvm8DenseMapINS_9StringRefEPNS_5ValueENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE", !13, i64 0}
!23 = !{!"p1 _ZTSN4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE", !13, i64 0}
!24 = !{!"_ZTSN12_GLOBAL__N_115FilterEvaluatorE", !16, i64 0, !20, i64 16, !21, i64 24, !22, i64 32, !23, i64 40, !15, i64 48}
!25 = !{!24, !15, i64 48}
!26 = !{!16, !14, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!30 = !{!29, !14, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !15, i64 8, !9, i64 16}
!32 = !{!31, !14, i64 0}
!33 = !{!31, !15, i64 8}
!34 = !{!"_ZTSN4llvm5Twine8NodeKindE", !9, i64 0}
!35 = !{!"_ZTSN4llvm5TwineE", !9, i64 0, !9, i64 16, !34, i64 32, !34, i64 33}
!36 = !{!35, !34, i64 32}
!37 = !{!35, !34, i64 33}
!38 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !13, i64 0}
!39 = !{!"_ZTSN4llvm5ErrorE", !38, i64 0}
!40 = !{!39, !38, i64 0}
!41 = !{!"bool", !9, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!38, !38, i64 0}
!46 = !{!"vtable pointer", !8, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"p1 _ZTSN4llvm4TypeE", !13, i64 0}
!49 = !{!"short", !9, i64 0}
!50 = !{!"p1 _ZTSN4llvm3UseE", !13, i64 0}
!51 = !{!"_ZTSN4llvm5ValueE", !9, i64 0, !9, i64 1, !9, i64 1, !49, i64 2, !10, i64 4, !10, i64 7, !10, i64 7, !10, i64 7, !10, i64 7, !48, i64 8, !50, i64 16}
!52 = !{!51, !9, i64 0}
!53 = !{!"p1 _ZTSN4llvm5ValueE", !13, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_9StringRefEN12_GLOBAL__N_112PropertyTypeEEE", !13, i64 0}
!56 = !{!"p1 int", !13, i64 0}
!57 = !{!"_ZTSN4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE", !55, i64 0, !56, i64 8, !10, i64 16, !10, i64 20}
!58 = !{!57, !55, i64 0}
!59 = !{!57, !56, i64 8}
!60 = !{!57, !10, i64 20}
!61 = !{!10, !10, i64 0}
!62 = !{!"branch_weights", i32 1, i32 1999}
!63 = !{!"branch_weights", i32 2146410443, i32 1073205}
!64 = !{!"branch_weights", i32 0, i32 1}
!65 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!66 = !{!55, !55, i64 0}
!67 = !{!57, !10, i64 16}
!68 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!69 = !{i64 0, i64 8, !19, i64 8, i64 8, !18}
!70 = !{i64 8}
!71 = !{!34, !34, i64 0}
!72 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_9StringRefEPNS_5ValueEEE", !13, i64 0}
!73 = !{!"_ZTSN4llvm8DenseMapINS_9StringRefEPNS_5ValueENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE", !72, i64 0, !56, i64 8, !10, i64 16, !10, i64 20}
!74 = !{!73, !10, i64 20}
!75 = !{!73, !72, i64 0}
!76 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_9StringRefES2_EE", !13, i64 0}
!77 = !{!"_ZTSN4llvm8DenseMapINS_9StringRefES1_NS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S1_EEEE", !76, i64 0, !56, i64 8, !10, i64 16, !10, i64 20}
!78 = !{!77, !10, i64 20}
!79 = !{!77, !76, i64 0}
!80 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_9StringRefElEE", !13, i64 0}
!81 = !{!"_ZTSN4llvm8DenseMapINS_9StringRefElNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_lEEEE", !80, i64 0, !56, i64 8, !10, i64 16, !10, i64 20}
!82 = !{!81, !10, i64 20}
!83 = !{!81, !80, i64 0}
!84 = !{!81, !56, i64 8}
!85 = !{!77, !56, i64 8}
!86 = !{!73, !56, i64 8}
!87 = !{!80, !80, i64 0}
!88 = !{!81, !10, i64 16}
!89 = !{!13, !13, i64 0}
!90 = !{!76, !76, i64 0}
!91 = !{!77, !10, i64 16}
!92 = !{!72, !72, i64 0}
!93 = !{!73, !10, i64 16}
!94 = distinct !{!94, !"_ZN12_GLOBAL__N_115FilterEvaluator8evaluateEv"}
!95 = distinct !{!95, !94, !"_ZN12_GLOBAL__N_115FilterEvaluator8evaluateEv: argument 0"}
!96 = distinct !{!96, !"_ZNSt7__cxx119to_stringEm"}
!97 = distinct !{!97, !96, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!98 = distinct !{!98, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!99 = distinct !{!99, !98, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!100 = distinct !{!100, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!101 = distinct !{!101, !100, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!102 = distinct !{!102, !"_ZN4llvmplERKNS_5TwineES2_"}
!103 = distinct !{!103, !102, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!104 = distinct !{!104, !"_ZNK4llvm5Twine6concatERKS0_"}
!105 = distinct !{!105, !104, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!106 = distinct !{!106, !"_ZN4llvmplERKNS_5TwineES2_"}
!107 = distinct !{!107, !106, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!108 = distinct !{!108, !"_ZNK4llvm5Twine6concatERKS0_"}
!109 = distinct !{!109, !108, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!110 = distinct !{!110, !"_ZN4llvm17createStringErrorERKNS_5TwineE"}
!111 = distinct !{!111, !110, !"_ZN4llvm17createStringErrorERKNS_5TwineE: argument 0"}
!112 = distinct !{!112, !"_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE"}
!113 = distinct !{!113, !112, !"_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE: argument 0"}
!114 = distinct !{!114, !"_ZN4llvm5Error11takePayloadEv"}
!115 = distinct !{!115, !114, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!116 = distinct !{null, null, null, null}
!117 = distinct !{null}
!118 = distinct !{!118, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E6getRepEv"}
!119 = distinct !{!119, !118, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E6getRepEv: argument 0"}
!120 = distinct !{!120, !"_ZNK4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE6getRepEv"}
!121 = distinct !{!121, !120, !"_ZNK4llvm8DenseMapINS_9StringRefEN12_GLOBAL__N_112PropertyTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE6getRepEv: argument 0"}
!122 = distinct !{!122, !"_ZN4llvmplERKNS_5TwineES2_"}
!123 = distinct !{!123, !122, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!124 = distinct !{!124, !"_ZNK4llvm5Twine6concatERKS0_"}
!125 = distinct !{!125, !124, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!126 = distinct !{!126, !"_ZN4llvmplERKNS_5TwineES2_"}
!127 = distinct !{!127, !126, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!128 = distinct !{!128, !"_ZNK4llvm5Twine6concatERKS0_"}
!129 = distinct !{!129, !128, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!130 = distinct !{!130, !"_ZN4llvm8ExpectedIbE9takeErrorEv"}
!131 = distinct !{!131, !130, !"_ZN4llvm8ExpectedIbE9takeErrorEv: argument 0"}
!132 = distinct !{!132, !"_ZN4llvmplERKNS_5TwineES2_"}
!133 = distinct !{!133, !132, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!134 = distinct !{!134, !"_ZNK4llvm5Twine6concatERKS0_"}
!135 = distinct !{!135, !134, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!136 = distinct !{!136, !"_ZN4llvmplERKNS_5TwineES2_"}
!137 = distinct !{!137, !136, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!138 = distinct !{!138, !"_ZNK4llvm5Twine6concatERKS0_"}
!139 = distinct !{!139, !138, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!140 = distinct !{!140, !"_ZN4llvmplERKNS_5TwineES2_"}
!141 = distinct !{!141, !140, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!142 = distinct !{!142, !"_ZNK4llvm5Twine6concatERKS0_"}
!143 = distinct !{!143, !142, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!144 = distinct !{null}
!145 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !13, i64 0, !10, i64 8, !10, i64 12}
!146 = !{!145, !13, i64 0}
!147 = !{!145, !10, i64 8}
!148 = !{!20, !20, i64 0}
!149 = !{!21, !21, i64 0}
!150 = !{!22, !22, i64 0}
!151 = !{!23, !23, i64 0}
!152 = !{!95}
!153 = !{!97}
!154 = !{!97, !95}
!155 = !{!99}
!156 = !{!99, !95}
!157 = !{!101}
!158 = !{!101, !95}
!159 = !{!105, !103}
!160 = !{!109, !107}
!161 = !{!111, !95}
!162 = !{!113, !111, !95}
!163 = !{!115, !95}
!164 = !{!"_ZTSSt14_Function_base", !9, i64 0, !13, i64 16}
!165 = !{!"_ZTSSt8functionIFPN4llvm5ValueERS1_RNS0_4TypeERNS0_12instrumentor21InstrumentationConfigERNS6_23InstrumentorIRBuilderTyEEE", !164, i64 0, !13, i64 24}
!166 = !{!"_ZTSSt8functionIFPN4llvm5ValueERS1_S3_RNS0_12instrumentor21InstrumentationConfigERNS4_23InstrumentorIRBuilderTyEEE", !164, i64 0, !13, i64 24}
!167 = !{!"_ZTSN4llvm12instrumentor6IRTArgE", !41, i64 0, !48, i64 8, !16, i64 16, !16, i64 32, !10, i64 48, !165, i64 56, !166, i64 88, !41, i64 120}
!168 = !{!167, !41, i64 0}
!169 = !{!164, !13, i64 16}
!170 = !{!167, !48, i64 8}
!171 = !{!165, !13, i64 24}
!172 = !{!"_ZTSN4llvm5APIntE", !9, i64 0, !10, i64 8}
end_hunk_1
