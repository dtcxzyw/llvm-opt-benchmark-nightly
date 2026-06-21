inline.NumInlined: 294
inline.NumDeleted: 153
begin_hunk_0_@_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb:bb.a
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i98

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i98: ; preds = %bb.aq, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i96
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.di
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  %.pre256 = ptrtoint ptr %i.dt to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit99

bb.ar:                                            ; preds = %bb.ak
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0132.0229, i64 %i.di ; 2 uses
  %.not.i4.i88 = icmp eq ptr %.sroa.27.1, %i.dy
  %spec.select182 = select i1 %.not.i4.i88, ptr %.sroa.27.1, ptr %i.dy
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit99

_ZNSt6vectorIhSaIhEE6resizeEm.exit99:             ; preds = %bb.ar, %bb.am, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i98
  %.pre-phi257 = phi i64 [ %i.dh, %bb.ar ], [ %i.dh, %bb.am ], [ %.pre256, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i98 ]
  %.sroa.61.5 = phi ptr [ %.sroa.61.0227, %bb.ar ], [ %.sroa.61.0227, %bb.am ], [ %i.dx, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i98 ]
  %.sroa.27.7 = phi ptr [ %spec.select182, %bb.ar ], [ %i.dp, %bb.am ], [ %i.dw, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i98 ] ; 2 uses
  %.sroa.0132.5 = phi ptr [ %.sroa.0132.0229, %bb.ar ], [ %.sroa.0132.0229, %bb.am ], [ %i.dt, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i98 ] ; 2 uses
  %i.dz = ptrtoint ptr %.sroa.27.7 to i64
  %i.ea = sub i64 %i.dz, %.pre-phi257
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0132.5, i64 %i.ea
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -4
  store i32 %i.de, ptr %i.ec, align 1
  br label %bb.bk

bb.as:                                            ; preds = %bb.aj
  %i.ed = icmp samesign ugt i32 %i.de, 255
  %i.ee = ptrtoint ptr %.sroa.27.1 to i64         ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.0132.0229 to i64    ; 7 uses
  %reass.sub238 = sub i64 %i.ee, %i.ef            ; 16 uses
  br i1 %i.ed, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.eg = trunc nuw i32 %i.de to i16
  %i.eh = add i64 %reass.sub238, 2                ; 2 uses
  %i.ei = icmp ult i64 %reass.sub238, -2
  br i1 %i.ei, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.ej = ptrtoint ptr %.sroa.61.0227 to i64      ; 2 uses
  %i.ek = sub i64 %i.ej, %i.ee                    ; 2 uses
  %i.el = icmp sgt i64 %reass.sub238, -1
  tail call void @llvm.assume(i1 %i.el)
  %i.em = xor i64 %reass.sub238, 9223372036854775807 ; 2 uses
  %i.en = icmp ule i64 %i.ek, %i.em
  tail call void @llvm.assume(i1 %i.en)
  %.not23.i.i101 = icmp ult i64 %i.ek, 2
  br i1 %.not23.i.i101, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 0, ptr %.sroa.27.1, align 1, !tbaa !42
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.27.1, i64 1
  %i.ep = getelementptr i8, ptr %.sroa.27.1, i64 2
  store i8 0, ptr %i.eo, align 1
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit111

bb.aw:                                            ; preds = %bb.au
  %i.eq = icmp samesign ult i64 %i.em, 2
  br i1 %i.eq, label %bb.ax, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i104

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #10
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i104: ; preds = %bb.aw
  %.sroa.speculated.i.i.i105 = tail call i64 @llvm.umax.i64(i64 %reass.sub238, i64 2)
  %i.er = add nuw i64 %.sroa.speculated.i.i.i105, %reass.sub238
  %i.es = tail call i64 @llvm.umin.i64(i64 %i.er, i64 9223372036854775807) ; 2 uses
  %i.et = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #11 ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %reass.sub238 ; 2 uses
  store i8 0, ptr %i.eu, align 1, !tbaa !42
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store i8 0, ptr %i.ev, align 1
  %.not28.i.i107 = icmp eq ptr %.sroa.27.1, %.sroa.0132.0229
  br i1 %.not28.i.i107, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i108, label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.et, ptr align 1 %.sroa.0132.0229, i64 %reass.sub238, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i108

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i108: ; preds = %bb.ay, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i104
  %.not.i27.i.i109 = icmp eq ptr %.sroa.0132.0229, null
  br i1 %.not.i27.i.i109, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i110, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i108
  %i.ew = sub i64 %i.ej, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0132.0229, i64 noundef %i.ew) #8
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i110

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i110: ; preds = %bb.az, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i108
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eh
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.es
  %.pre258 = ptrtoint ptr %i.et to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit111

bb.ba:                                            ; preds = %bb.at
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0132.0229, i64 %i.eh ; 2 uses
  %.not.i4.i100 = icmp eq ptr %.sroa.27.1, %i.ez
  %spec.select183 = select i1 %.not.i4.i100, ptr %.sroa.27.1, ptr %i.ez
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit111

_ZNSt6vectorIhSaIhEE6resizeEm.exit111:            ; preds = %bb.ba, %bb.av, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i110
  %.pre-phi259 = phi i64 [ %i.ef, %bb.ba ], [ %i.ef, %bb.av ], [ %.pre258, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i110 ]
  %.sroa.61.6 = phi ptr [ %.sroa.61.0227, %bb.ba ], [ %.sroa.61.0227, %bb.av ], [ %i.ey, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i110 ]
  %.sroa.27.8 = phi ptr [ %spec.select183, %bb.ba ], [ %i.ep, %bb.av ], [ %i.ex, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i110 ] ; 2 uses
  %.sroa.0132.6 = phi ptr [ %.sroa.0132.0229, %bb.ba ], [ %.sroa.0132.0229, %bb.av ], [ %i.et, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i110 ] ; 2 uses
  %i.fa = ptrtoint ptr %.sroa.27.8 to i64
  %i.fb = sub i64 %i.fa, %.pre-phi259
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0132.6, i64 %i.fb
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -2
  store i16 %i.eg, ptr %i.fd, align 1
  br label %bb.bk

bb.bb:                                            ; preds = %bb.as
  %i.fe = trunc nuw i32 %i.de to i8
  %i.ff = add i64 %reass.sub238, 1                ; 2 uses
  %.not279 = icmp eq i64 %reass.sub238, -1
  br i1 %.not279, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fg = ptrtoint ptr %.sroa.61.0227 to i64
  %i.fh = icmp sgt i64 %reass.sub238, -1
  tail call void @llvm.assume(i1 %i.fh)
  %.not23.i.i113 = icmp eq ptr %.sroa.61.0227, %.sroa.27.1
  br i1 %.not23.i.i113, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i8 0, ptr %.sroa.27.1, align 1, !tbaa !42
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.27.1, i64 1
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit123

bb.be:                                            ; preds = %bb.bc
  %i.fj = icmp eq i64 %reass.sub238, 9223372036854775807
  br i1 %i.fj, label %bb.bf, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i116

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #10
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i116: ; preds = %bb.be
  %.sroa.speculated.i.i.i117 = tail call i64 @llvm.umax.i64(i64 %reass.sub238, i64 1)
  %i.fk = add nuw i64 %.sroa.speculated.i.i.i117, %reass.sub238
  %i.fl = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 9223372036854775807) ; 2 uses
  %i.fm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #11 ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %reass.sub238
  store i8 0, ptr %i.fn, align 1, !tbaa !42
  %.not28.i.i119 = icmp eq ptr %.sroa.61.0227, %.sroa.0132.0229
  br i1 %.not28.i.i119, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i120, label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i116
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr align 1 %.sroa.0132.0229, i64 %reass.sub238, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i120

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i120: ; preds = %bb.bg, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i116
  %.not.i27.i.i121 = icmp eq ptr %.sroa.0132.0229, null
  br i1 %.not.i27.i.i121, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i122, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i120
  %i.fo = sub i64 %i.fg, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0132.0229, i64 noundef %i.fo) #8
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i122

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i122: ; preds = %bb.bh, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i120
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ff
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  %.pre260 = ptrtoint ptr %i.fm to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit123

bb.bi:                                            ; preds = %bb.bb
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0132.0229, i64 %i.ff ; 2 uses
  %.not.i4.i112 = icmp eq ptr %.sroa.27.1, %i.fr
  %spec.select184 = select i1 %.not.i4.i112, ptr %.sroa.27.1, ptr %i.fr
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit123

_ZNSt6vectorIhSaIhEE6resizeEm.exit123:            ; preds = %bb.bd, %bb.bi, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i122
  %.pre-phi261 = phi i64 [ %i.ef, %bb.bd ], [ %i.ef, %bb.bi ], [ %.pre260, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i122 ]
  %.sroa.61.7 = phi ptr [ %.sroa.61.0227, %bb.bd ], [ %.sroa.61.0227, %bb.bi ], [ %i.fq, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i122 ]
  %.sroa.27.9 = phi ptr [ %i.fi, %bb.bd ], [ %spec.select184, %bb.bi ], [ %i.fp, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i122 ] ; 2 uses
  %.sroa.0132.7 = phi ptr [ %.sroa.0132.0229, %bb.bd ], [ %.sroa.0132.0229, %bb.bi ], [ %i.fm, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i122 ] ; 2 uses
  %i.fs = ptrtoint ptr %.sroa.27.9 to i64
  %i.ft = sub i64 %i.fs, %.pre-phi261
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0132.7, i64 %i.ft
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -1
  store i8 %i.fe, ptr %i.fv, align 1
  br label %bb.bk

bb.bj:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str) #10
  unreachable

bb.bk:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit75, %_ZNSt6vectorIhSaIhEE6resizeEm.exit87, %_ZNSt6vectorIhSaIhEE6resizeEm.exit99, %_ZNSt6vectorIhSaIhEE6resizeEm.exit123, %_ZNSt6vectorIhSaIhEE6resizeEm.exit111, %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %.sroa.61.2 = phi ptr [ %.sroa.61.0227, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %.sroa.61.5, %_ZNSt6vectorIhSaIhEE6resizeEm.exit99 ], [ %.sroa.61.6, %_ZNSt6vectorIhSaIhEE6resizeEm.exit111 ], [ %.sroa.61.7, %_ZNSt6vectorIhSaIhEE6resizeEm.exit123 ], [ %.sroa.61.0227, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %.sroa.61.3, %_ZNSt6vectorIhSaIhEE6resizeEm.exit75 ], [ %.sroa.61.4, %_ZNSt6vectorIhSaIhEE6resizeEm.exit87 ] ; 2 uses
  %.sroa.27.3 = phi ptr [ %.sroa.27.1, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %.sroa.27.7, %_ZNSt6vectorIhSaIhEE6resizeEm.exit99 ], [ %.sroa.27.8, %_ZNSt6vectorIhSaIhEE6resizeEm.exit111 ], [ %.sroa.27.9, %_ZNSt6vectorIhSaIhEE6resizeEm.exit123 ], [ %.sroa.27.1, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %.sroa.27.5, %_ZNSt6vectorIhSaIhEE6resizeEm.exit75 ], [ %.sroa.27.6, %_ZNSt6vectorIhSaIhEE6resizeEm.exit87 ] ; 2 uses
  %.sroa.0132.2 = phi ptr [ %.sroa.0132.0229, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %.sroa.0132.5, %_ZNSt6vectorIhSaIhEE6resizeEm.exit99 ], [ %.sroa.0132.6, %_ZNSt6vectorIhSaIhEE6resizeEm.exit111 ], [ %.sroa.0132.7, %_ZNSt6vectorIhSaIhEE6resizeEm.exit123 ], [ %.sroa.0132.0229, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %.sroa.0132.3, %_ZNSt6vectorIhSaIhEE6resizeEm.exit75 ], [ %.sroa.0132.4, %_ZNSt6vectorIhSaIhEE6resizeEm.exit87 ] ; 2 uses
  %i.fw = add nuw i64 %.061230, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fw, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !43
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZNK6hermes3hbc23BytecodeModuleGenerator15getIdentifierIDEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(964), ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes3hbc23BytecodeModuleGenerator11getStringIDEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(964), ptr, i64) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes3hbc12_GLOBAL__N_117appendTagToBufferERSt6vectorIhSaIhEEhi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i8 noundef zeroext range(i8 0, 113) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 15
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %2, 8
  %i.c = trunc i32 %i.b to i8
  %i.d = or i8 %1, %i.c
  %i.e = or i8 %i.d, -128                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.e, ptr %i.g, align 1, !tbaa !42
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !45
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !47
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !48     ; 4 uses
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 8 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775807
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.q = add i64 %.sroa.speculated.i.i.i.i, %i.o  ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 9223372036854775807)
  %i.t = select i1 %i.r, i64 9223372036854775807, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #11 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o ; 2 uses
  store i8 %i.e, ptr %i.v, align 1, !tbaa !42
  %i.w = icmp sgt i64 %i.o, 0
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #8
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.u, ptr %0, align 8, !tbaa !48
  store ptr %i.x, ptr %i.f, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t ; 2 uses
  store ptr %i.y, ptr %i.h, align 8, !tbaa !47
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.c, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.z = phi ptr [ %.pre, %bb.c ], [ %i.y, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.aa = phi ptr [ %i.k, %bb.c ], [ %i.x, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ab = trunc i32 %2 to i8                      ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !42
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !45
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit15

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !48    ; 4 uses
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 8 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i9

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i9: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i10 = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.aj = add i64 %.sroa.speculated.i.i.i.i10, %i.ah ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 9223372036854775807)
  %i.am = select i1 %i.ak, i64 9223372036854775807, i64 %i.al ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #11 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah ; 2 uses
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !42
  %i.ap = icmp sgt i64 %i.ah, 0
  br i1 %i.ap, label %bb.k, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i12

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i12

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i12: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.not.i17.i.i.i13 = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i13, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i14, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #8
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i14

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i14: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i12
  store ptr %i.an, ptr %0, align 8, !tbaa !48
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !47
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit15

bb.m:                                             ; preds = %bb.a
  %i.as = trunc i32 %2 to i8
  %i.at = add i8 %1, %i.as                        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !45 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !47
  %.not.i.i16 = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i16, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 %i.at, ptr %i.av, align 1, !tbaa !42
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %i.au, align 8, !tbaa !45
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit15

bb.o:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %0, align 8, !tbaa !48    ; 4 uses
  %i.bb = ptrtoint ptr %i.av to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 8 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775807
  br i1 %i.be, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i17

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i17: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i18 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.bf = add i64 %.sroa.speculated.i.i.i.i18, %i.bd ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.bd
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 9223372036854775807)
  %i.bi = select i1 %i.bg, i64 9223372036854775807, i64 %i.bh ; 3 uses
  %.not.i.i.i.i19 = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i19)
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #11 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bd ; 2 uses
  store i8 %i.at, ptr %i.bk, align 1, !tbaa !42
  %i.bl = icmp sgt i64 %i.bd, 0
  br i1 %i.bl, label %bb.q, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i20

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr align 1 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i20

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i20: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %.not.i17.i.i.i21 = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i.i21, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i22, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #8
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i22

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i22: ; preds = %bb.r, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i20
  store ptr %i.bj, ptr %0, align 8, !tbaa !48
  store ptr %i.bm, ptr %i.au, align 8, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store ptr %i.bn, ptr %i.aw, align 8, !tbaa !47
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit15

_ZNSt6vectorIhSaIhEE9push_backEOh.exit15:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i22, %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i14, %bb.h
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not60 = icmp eq ptr %2, %3
  br i1 %.not60, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not = icmp ult i64 %i.j, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !42
  store i8 %i.s, ptr %i.g, align 1, !tbaa !42
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !45
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !49

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !42
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !49

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !42
  store i8 %i.ad, ptr %1, align 1, !tbaa !42
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !49

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !42
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !42
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !45
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !49

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !42
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !45
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !49

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !42
  store i8 %i.au, ptr %1, align 1, !tbaa !42
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !48    ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #10
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #11
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !49

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !42
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !42
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !49

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.ae, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load i8, ptr %2, align 1, !tbaa !42
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !42
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !49

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

bb.ah:                                            ; preds = %bb.ag
  %i.bt = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !42
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i47 = icmp eq ptr %i.av, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #8
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46, %bb.ai
  store ptr %i.bf, ptr %0, align 8, !tbaa !48
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !45
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !47
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { builtin nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTSN6hermes7LiteralE", !9, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN6hermes5ValueE", !14, i64 0, !15, i64 2, !17, i64 8}
!14 = !{!"_ZTSN6hermes9ValueKindE", !5, i64 0}
!15 = !{!"_ZTSN6hermes4TypeE", !16, i64 0, !16, i64 2}
!16 = !{!"short", !5, i64 0}
!17 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !18, i64 0, !22, i64 16}
!18 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !19, i64 0}
!19 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !20, i64 0}
!20 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !21, i64 0}
!21 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!22 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !5, i64 0}
!23 = !{!24, !27, i64 48}
!24 = !{!"_ZTSN6hermes13LiteralNumberE", !25, i64 0, !26, i64 40, !27, i64 48}
!25 = !{!"_ZTSN6hermes7LiteralE", !13, i64 0}
!26 = !{!"_ZTSN4llvh14FoldingSetBase4NodeE", !9, i64 0}
!27 = !{!"double", !5, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSN6hermes12UniqueStringE", !9, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"long", !5, i64 0}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSN6hermes3hbc26SerializedLiteralGeneratorE", !34, i64 0}
!34 = !{!"p1 _ZTSN6hermes3hbc23BytecodeModuleGeneratorE", !9, i64 0}
!35 = !{}
!36 = !{i64 8}
!37 = !{!38, !39, i64 40}
!38 = !{!"_ZTSN6hermes11LiteralBoolE", !25, i64 0, !39, i64 40}
!39 = !{!"bool", !5, i64 0}
!40 = !{i8 0, i8 2}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = !{!5, !5, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !8, i64 8}
!46 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!47 = !{!46, !8, i64 16}
!48 = !{!46, !8, i64 0}
!49 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
