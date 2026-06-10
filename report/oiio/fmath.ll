inline.NumInlined: 11
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::locale::id" = type { i64 }

@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN11OpenImageIO4v3_112convert_typeIN9Imath_3_14halfEfEEvPKT_PT0_mS7_S7_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %2, 3
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.010.lcssa = phi i64 [ %2, %bb.a ], [ %i.n, %.lr.ph ] ; 3 uses
  %.08.lcssa = phi ptr [ %1, %bb.a ], [ %i.p, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.o, %.lr.ph ] ; 3 uses
  %.not17 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph21

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.o, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.0813 = phi ptr [ %i.p, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.01012 = phi i64 [ %i.n, %.lr.ph ], [ %2, %bb.a ]
  %i.b = load <4 x i16>, ptr %.014, align 2, !tbaa !7 ; 2 uses
  %i.c = and <4 x i16> %i.b, splat (i16 32767)    ; 2 uses
  %i.d = zext nneg <4 x i16> %i.c to <4 x i32>
  %i.e = shl nuw nsw <4 x i32> %i.d, splat (i32 13)
  %i.f = bitcast <4 x i32> %i.e to <4 x float>
  %i.g = fmul nnan <4 x float> %i.f, splat (float f0x77800000)
  %i.h = icmp samesign ugt <4 x i16> %i.c, splat (i16 31743)
  %i.i = select <4 x i1> %i.h, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext = sext <4 x i16> %i.b to <4 x i32>
  %i.j = and <4 x i32> %.signext, splat (i32 -2147483648)
  %i.k = or disjoint <4 x i32> %i.i, %i.j
  %i.l = bitcast <4 x float> %i.g to <4 x i32>
  %i.m = or <4 x i32> %i.k, %i.l
  store <4 x i32> %i.m, ptr %.0813, align 1, !tbaa !9
  %i.n = add i64 %.01012, -4                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0813, i64 16 ; 2 uses
  %i.q = icmp ugt i64 %i.n, 3
  br i1 %i.q, label %.lr.ph, label %.preheader, !llvm.loop !10

.lr.ph21:                                         ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.s = load i16, ptr %.0.lcssa, align 2, !tbaa !12 ; 2 uses
  %i.t = zext i16 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 13
  %i.v = and i32 %i.u, 268427264                  ; 6 uses
  %.signext.i.i = sext i16 %i.s to i32
  %i.w = and i32 %.signext.i.i, -2147483648       ; 3 uses
  %i.x = icmp samesign ugt i32 %i.v, 8388607
  br i1 %i.x, label %bb.b, label %bb.e, !prof !14

bb.b:                                             ; preds = %.lr.ph21
  %i.y = or disjoint i32 %i.v, %i.w               ; 2 uses
  %i.z = icmp samesign ult i32 %i.v, 260046848
  br i1 %i.z, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.aa = add nuw nsw i32 %i.y, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or i32 %i.y, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit

bb.e:                                             ; preds = %.lr.ph21
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_ZNK9Imath_3_14halfcvfEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.v, i1 true)
  %i.ad = add nsw i32 %i.ac, -8                   ; 2 uses
  %i.ae = shl i32 %i.v, %i.ad
  %i.af = or i32 %i.w, %i.ae
  %i.ag = or i32 %i.af, 947912704
  %i.ah = shl nuw nsw i32 %i.ad, 23
  %i.ai = sub nuw i32 %i.ag, %i.ah
  br label %_ZNK9Imath_3_14halfcvfEv.exit

_ZNK9Imath_3_14halfcvfEv.exit:                    ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i32 [ %i.aa, %bb.c ], [ %i.ab, %bb.d ], [ %i.ai, %bb.f ], [ %i.w, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.lcssa, i64 4
  store i32 %.sroa.0.0.i.i, ptr %.08.lcssa, align 4, !tbaa !15
  %.not = icmp eq i64 %.010.lcssa, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph21.1

.lr.ph21.1:                                       ; preds = %_ZNK9Imath_3_14halfcvfEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  %i.al = load i16, ptr %i.r, align 2, !tbaa !12  ; 2 uses
  %i.am = zext i16 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 13
  %i.ao = and i32 %i.an, 268427264                ; 6 uses
  %.signext.i.i.1 = sext i16 %i.al to i32
  %i.ap = and i32 %.signext.i.i.1, -2147483648    ; 3 uses
  %i.aq = icmp samesign ugt i32 %i.ao, 8388607
  br i1 %i.aq, label %bb.i, label %bb.g, !prof !14

bb.g:                                             ; preds = %.lr.ph21.1
  %.not.i.i.1 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.1, label %_ZNK9Imath_3_14halfcvfEv.exit.1, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ao, i1 true)
  %i.as = add nsw i32 %i.ar, -8                   ; 2 uses
  %i.at = shl i32 %i.ao, %i.as
  %i.au = or i32 %i.ap, %i.at
  %i.av = or i32 %i.au, 947912704
  %i.aw = shl nuw nsw i32 %i.as, 23
  %i.ax = sub nuw i32 %i.av, %i.aw
  br label %_ZNK9Imath_3_14halfcvfEv.exit.1

bb.i:                                             ; preds = %.lr.ph21.1
  %i.ay = or disjoint i32 %i.ao, %i.ap            ; 2 uses
  %i.az = icmp samesign ult i32 %i.ao, 260046848
  br i1 %i.az, label %bb.k, label %bb.j, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.ba = or i32 %i.ay, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.1

bb.k:                                             ; preds = %bb.i
  %i.bb = add nuw nsw i32 %i.ay, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.1

_ZNK9Imath_3_14halfcvfEv.exit.1:                  ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %.sroa.0.0.i.i.1 = phi i32 [ %i.bb, %bb.k ], [ %i.ba, %bb.j ], [ %i.ax, %bb.h ], [ %i.ap, %bb.g ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.lcssa, i64 8
  store i32 %.sroa.0.0.i.i.1, ptr %i.aj, align 4, !tbaa !15
  %.not.1 = icmp eq i64 %.010.lcssa, 2
  br i1 %.not.1, label %._crit_edge, label %.lr.ph21.2

.lr.ph21.2:                                       ; preds = %_ZNK9Imath_3_14halfcvfEv.exit.1
  %i.bd = load i16, ptr %i.ak, align 2, !tbaa !12 ; 2 uses
  %i.be = zext i16 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 13
  %i.bg = and i32 %i.bf, 268427264                ; 6 uses
  %.signext.i.i.2 = sext i16 %i.bd to i32
  %i.bh = and i32 %.signext.i.i.2, -2147483648    ; 3 uses
  %i.bi = icmp samesign ugt i32 %i.bg, 8388607
  br i1 %i.bi, label %bb.n, label %bb.l, !prof !14

bb.l:                                             ; preds = %.lr.ph21.2
  %.not.i.i.2 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.2, label %_ZNK9Imath_3_14halfcvfEv.exit.2, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bg, i1 true)
  %i.bk = add nsw i32 %i.bj, -8                   ; 2 uses
  %i.bl = shl i32 %i.bg, %i.bk
  %i.bm = or i32 %i.bh, %i.bl
  %i.bn = or i32 %i.bm, 947912704
  %i.bo = shl nuw nsw i32 %i.bk, 23
  %i.bp = sub nuw i32 %i.bn, %i.bo
  br label %_ZNK9Imath_3_14halfcvfEv.exit.2

bb.n:                                             ; preds = %.lr.ph21.2
  %i.bq = or disjoint i32 %i.bg, %i.bh            ; 2 uses
  %i.br = icmp samesign ult i32 %i.bg, 260046848
  br i1 %i.br, label %bb.p, label %bb.o, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.bs = or i32 %i.bq, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.2

bb.p:                                             ; preds = %bb.n
  %i.bt = add nuw nsw i32 %i.bq, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.2

_ZNK9Imath_3_14halfcvfEv.exit.2:                  ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %.sroa.0.0.i.i.2 = phi i32 [ %i.bt, %bb.p ], [ %i.bs, %bb.o ], [ %i.bp, %bb.m ], [ %i.bh, %bb.l ]
  store i32 %.sroa.0.0.i.i.2, ptr %i.bc, align 4, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK9Imath_3_14halfcvfEv.exit, %_ZNK9Imath_3_14halfcvfEv.exit.1, %_ZNK9Imath_3_14halfcvfEv.exit.2, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN11OpenImageIO4v3_112convert_typeIfN9Imath_3_14halfEEEvPKT_PT0_mS7_S7_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i16 %3, i16 %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %2, 3
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %_ZN9Imath_3_14halfaSEf.exit.3, %bb.a
  %.011.lcssa = phi ptr [ %0, %bb.a ], [ %i.fs, %_ZN9Imath_3_14halfaSEf.exit.3 ]
  %.09.lcssa = phi ptr [ %1, %bb.a ], [ %i.ft, %_ZN9Imath_3_14halfaSEf.exit.3 ]
  %.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.fr, %_ZN9Imath_3_14halfaSEf.exit.3 ] ; 2 uses
  %.not23 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph27

.lr.ph:                                           ; preds = %bb.a, %_ZN9Imath_3_14halfaSEf.exit.3
  %.020 = phi i64 [ %i.fr, %_ZN9Imath_3_14halfaSEf.exit.3 ], [ %2, %bb.a ]
  %.0919 = phi ptr [ %i.ft, %_ZN9Imath_3_14halfaSEf.exit.3 ], [ %1, %bb.a ] ; 5 uses
  %.01118 = phi ptr [ %i.fs, %_ZN9Imath_3_14halfaSEf.exit.3 ], [ %0, %bb.a ] ; 2 uses
  %i.b = load <4 x float>, ptr %.01118, align 1, !tbaa !9 ; 4 uses
  %.sroa.0.0.vec.extract = extractelement <4 x float> %i.b, i64 0 ; 2 uses
  %i.c = bitcast float %.sroa.0.0.vec.extract to i32
  %i.d = tail call float @llvm.fabs.f32(float %.sroa.0.0.vec.extract)
  %i.e = bitcast float %i.d to i32                ; 10 uses
  %i.f = lshr i32 %i.c, 16                        ; 3 uses
  %i.g = trunc nuw i32 %i.f to i16
  %i.h = and i16 %i.g, -32768                     ; 3 uses
  %i.i = icmp samesign ugt i32 %i.e, 947912703
  br i1 %i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp samesign ugt i32 %i.e, 2139095039
  br i1 %i.j, label %bb.c, label %bb.e, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.k = or disjoint i16 %i.h, 31744              ; 2 uses
  %i.l = icmp eq i32 %i.e, 2139095040
  br i1 %i.l, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.e, 13
  %i.n = and i32 %i.m, 1023                       ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = zext i1 %i.o to i16
  %i.q = trunc nuw nsw i32 %i.n to i16
  %i.r = or i16 %i.q, %i.p
  %i.s = or disjoint i16 %i.r, %i.k
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp samesign ugt i32 %i.e, 1199566847
  br i1 %i.t, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %bb.e
  %i.u = or disjoint i16 %i.h, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.g:                                             ; preds = %bb.e
  %i.v = add nuw nsw i32 %i.e, 134221823
  %i.w = lshr i32 %i.e, 13
  %i.x = and i32 %i.w, 1
  %i.y = add nuw nsw i32 %i.v, %i.x
  %i.z = lshr i32 %i.y, 13
  %i.aa = and i32 %i.f, 32768
  %i.ab = or i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i16
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ad = icmp samesign ult i32 %i.e, 855638017
  br i1 %i.ad, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = lshr i32 %i.e, 23                       ; 2 uses
  %i.af = sub nuw nsw i32 126, %i.ae
  %i.ag = and i32 %i.e, 8388607
  %i.ah = or disjoint i32 %i.ag, 8388608          ; 2 uses
  %i.ai = add nsw i32 %i.ae, -94
  %i.aj = shl i32 %i.ah, %i.ai                    ; 2 uses
  %i.ak = lshr i32 %i.ah, %i.af                   ; 2 uses
  %i.al = and i32 %i.f, 32768
  %i.am = or i32 %i.ak, %i.al
  %i.an = trunc nuw i32 %i.am to i16              ; 2 uses
  %i.ao = icmp ugt i32 %i.aj, -2147483648
  br i1 %i.ao, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp ne i32 %i.aj, -2147483648
  %i.aq = and i32 %i.ak, 1
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  %or.cond.i.i.i = select i1 %i.ap, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = add nuw i16 %i.an, 1
  br label %_ZN9Imath_3_14halfaSEf.exit

_ZN9Imath_3_14halfaSEf.exit:                      ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k
  %.0.i.i.i = phi i16 [ %i.h, %bb.h ], [ %i.s, %bb.d ], [ %i.u, %bb.f ], [ %i.ac, %bb.g ], [ %i.k, %bb.c ], [ %i.ar, %bb.k ], [ %i.an, %bb.j ]
  store i16 %.0.i.i.i, ptr %.0919, align 2, !tbaa !7
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.b, i64 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0919, i64 2
  %i.at = bitcast float %.sroa.0.4.vec.extract to i32
  %i.au = tail call float @llvm.fabs.f32(float %.sroa.0.4.vec.extract)
  %i.av = bitcast float %i.au to i32              ; 10 uses
  %i.aw = lshr i32 %i.at, 16                      ; 3 uses
  %i.ax = trunc nuw i32 %i.aw to i16
  %i.ay = and i16 %i.ax, -32768                   ; 3 uses
  %i.az = icmp samesign ugt i32 %i.av, 947912703
  br i1 %i.az, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit
  %i.ba = icmp samesign ult i32 %i.av, 855638017
  br i1 %i.ba, label %_ZN9Imath_3_14halfaSEf.exit.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = lshr i32 %i.av, 23                      ; 2 uses
  %i.bc = sub nuw nsw i32 126, %i.bb
  %i.bd = and i32 %i.av, 8388607
  %i.be = or disjoint i32 %i.bd, 8388608          ; 2 uses
  %i.bf = add nsw i32 %i.bb, -94
  %i.bg = shl i32 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i32 %i.be, %i.bc                   ; 2 uses
  %i.bi = and i32 %i.aw, 32768
  %i.bj = or i32 %i.bh, %i.bi
  %i.bk = trunc nuw i32 %i.bj to i16              ; 2 uses
  %i.bl = icmp ugt i32 %i.bg, -2147483648
  br i1 %i.bl, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = icmp ne i32 %i.bg, -2147483648
  %i.bn = and i32 %i.bh, 1
  %.not.i.i.i.1 = icmp eq i32 %i.bn, 0
  %or.cond.i.i.i.1 = select i1 %i.bm, i1 true, i1 %.not.i.i.i.1
  br i1 %or.cond.i.i.i.1, label %_ZN9Imath_3_14halfaSEf.exit.1, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = add nuw i16 %i.bk, 1
  br label %_ZN9Imath_3_14halfaSEf.exit.1

bb.p:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit
  %i.bp = icmp samesign ugt i32 %i.av, 2139095039
  br i1 %i.bp, label %bb.t, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.bq = icmp samesign ugt i32 %i.av, 1199566847
  br i1 %i.bq, label %bb.s, label %bb.r, !prof !17

bb.r:                                             ; preds = %bb.q
  %i.br = add nuw nsw i32 %i.av, 134221823
  %i.bs = lshr i32 %i.av, 13
  %i.bt = and i32 %i.bs, 1
  %i.bu = add nuw nsw i32 %i.br, %i.bt
  %i.bv = lshr i32 %i.bu, 13
  %i.bw = and i32 %i.aw, 32768
  %i.bx = or i32 %i.bv, %i.bw
  %i.by = trunc i32 %i.bx to i16
  br label %_ZN9Imath_3_14halfaSEf.exit.1

bb.s:                                             ; preds = %bb.q
  %i.bz = or disjoint i16 %i.ay, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit.1

bb.t:                                             ; preds = %bb.p
  %i.ca = or disjoint i16 %i.ay, 31744            ; 2 uses
  %i.cb = icmp eq i32 %i.av, 2139095040
  br i1 %i.cb, label %_ZN9Imath_3_14halfaSEf.exit.1, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = lshr i32 %i.av, 13
  %i.cd = and i32 %i.cc, 1023                     ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = zext i1 %i.ce to i16
  %i.cg = trunc nuw nsw i32 %i.cd to i16
  %i.ch = or i16 %i.cg, %i.cf
  %i.ci = or disjoint i16 %i.ch, %i.ca
  br label %_ZN9Imath_3_14halfaSEf.exit.1

_ZN9Imath_3_14halfaSEf.exit.1:                    ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.l
  %.0.i.i.i.1 = phi i16 [ %i.ay, %bb.l ], [ %i.ci, %bb.u ], [ %i.bz, %bb.s ], [ %i.by, %bb.r ], [ %i.ca, %bb.t ], [ %i.bo, %bb.o ], [ %i.bk, %bb.n ]
  store i16 %.0.i.i.i.1, ptr %i.as, align 2, !tbaa !7
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.b, i64 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0919, i64 4
  %i.ck = bitcast float %.sroa.0.8.vec.extract to i32
  %i.cl = tail call float @llvm.fabs.f32(float %.sroa.0.8.vec.extract)
  %i.cm = bitcast float %i.cl to i32              ; 10 uses
  %i.cn = lshr i32 %i.ck, 16                      ; 3 uses
  %i.co = trunc nuw i32 %i.cn to i16
  %i.cp = and i16 %i.co, -32768                   ; 3 uses
  %i.cq = icmp samesign ugt i32 %i.cm, 947912703
  br i1 %i.cq, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit.1
  %i.cr = icmp samesign ult i32 %i.cm, 855638017
  br i1 %i.cr, label %_ZN9Imath_3_14halfaSEf.exit.2, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = lshr i32 %i.cm, 23                      ; 2 uses
  %i.ct = sub nuw nsw i32 126, %i.cs
  %i.cu = and i32 %i.cm, 8388607
  %i.cv = or disjoint i32 %i.cu, 8388608          ; 2 uses
  %i.cw = add nsw i32 %i.cs, -94
  %i.cx = shl i32 %i.cv, %i.cw                    ; 2 uses
  %i.cy = lshr i32 %i.cv, %i.ct                   ; 2 uses
  %i.cz = and i32 %i.cn, 32768
  %i.da = or i32 %i.cy, %i.cz
  %i.db = trunc nuw i32 %i.da to i16              ; 2 uses
  %i.dc = icmp ugt i32 %i.cx, -2147483648
  br i1 %i.dc, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = icmp ne i32 %i.cx, -2147483648
  %i.de = and i32 %i.cy, 1
  %.not.i.i.i.2 = icmp eq i32 %i.de, 0
  %or.cond.i.i.i.2 = select i1 %i.dd, i1 true, i1 %.not.i.i.i.2
  br i1 %or.cond.i.i.i.2, label %_ZN9Imath_3_14halfaSEf.exit.2, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.df = add nuw i16 %i.db, 1
  br label %_ZN9Imath_3_14halfaSEf.exit.2

bb.z:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit.1
  %i.dg = icmp samesign ugt i32 %i.cm, 2139095039
  br i1 %i.dg, label %bb.ad, label %bb.aa, !prof !17

bb.aa:                                            ; preds = %bb.z
  %i.dh = icmp samesign ugt i32 %i.cm, 1199566847
  br i1 %i.dh, label %bb.ac, label %bb.ab, !prof !17

bb.ab:                                            ; preds = %bb.aa
  %i.di = add nuw nsw i32 %i.cm, 134221823
  %i.dj = lshr i32 %i.cm, 13
  %i.dk = and i32 %i.dj, 1
  %i.dl = add nuw nsw i32 %i.di, %i.dk
  %i.dm = lshr i32 %i.dl, 13
  %i.dn = and i32 %i.cn, 32768
  %i.do = or i32 %i.dm, %i.dn
  %i.dp = trunc i32 %i.do to i16
  br label %_ZN9Imath_3_14halfaSEf.exit.2

bb.ac:                                            ; preds = %bb.aa
  %i.dq = or disjoint i16 %i.cp, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit.2

bb.ad:                                            ; preds = %bb.z
  %i.dr = or disjoint i16 %i.cp, 31744            ; 2 uses
  %i.ds = icmp eq i32 %i.cm, 2139095040
  br i1 %i.ds, label %_ZN9Imath_3_14halfaSEf.exit.2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = lshr i32 %i.cm, 13
  %i.du = and i32 %i.dt, 1023                     ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  %i.dw = zext i1 %i.dv to i16
  %i.dx = trunc nuw nsw i32 %i.du to i16
  %i.dy = or i16 %i.dx, %i.dw
  %i.dz = or disjoint i16 %i.dy, %i.dr
  br label %_ZN9Imath_3_14halfaSEf.exit.2

_ZN9Imath_3_14halfaSEf.exit.2:                    ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.x, %bb.v
  %.0.i.i.i.2 = phi i16 [ %i.cp, %bb.v ], [ %i.dz, %bb.ae ], [ %i.dq, %bb.ac ], [ %i.dp, %bb.ab ], [ %i.dr, %bb.ad ], [ %i.df, %bb.y ], [ %i.db, %bb.x ]
  store i16 %.0.i.i.i.2, ptr %i.cj, align 2, !tbaa !7
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.b, i64 3 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0919, i64 6
  %i.eb = bitcast float %.sroa.0.12.vec.extract to i32
  %i.ec = tail call float @llvm.fabs.f32(float %.sroa.0.12.vec.extract)
  %i.ed = bitcast float %i.ec to i32              ; 10 uses
  %i.ee = lshr i32 %i.eb, 16                      ; 3 uses
  %i.ef = trunc nuw i32 %i.ee to i16
  %i.eg = and i16 %i.ef, -32768                   ; 3 uses
  %i.eh = icmp samesign ugt i32 %i.ed, 947912703
  br i1 %i.eh, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %_ZN9Imath_3_14halfaSEf.exit.2
  %i.ei = icmp samesign ult i32 %i.ed, 855638017
  br i1 %i.ei, label %_ZN9Imath_3_14halfaSEf.exit.3, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ej = lshr i32 %i.ed, 23                      ; 2 uses
  %i.ek = sub nuw nsw i32 126, %i.ej
  %i.el = and i32 %i.ed, 8388607
  %i.em = or disjoint i32 %i.el, 8388608          ; 2 uses
  %i.en = add nsw i32 %i.ej, -94
  %i.eo = shl i32 %i.em, %i.en                    ; 2 uses
  %i.ep = lshr i32 %i.em, %i.ek                   ; 2 uses
  %i.eq = and i32 %i.ee, 32768
  %i.er = or i32 %i.ep, %i.eq
  %i.es = trunc nuw i32 %i.er to i16              ; 2 uses
  %i.et = icmp ugt i32 %i.eo, -2147483648
  br i1 %i.et, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eu = icmp ne i32 %i.eo, -2147483648
  %i.ev = and i32 %i.ep, 1
  %.not.i.i.i.3 = icmp eq i32 %i.ev, 0
  %or.cond.i.i.i.3 = select i1 %i.eu, i1 true, i1 %.not.i.i.i.3
  br i1 %or.cond.i.i.i.3, label %_ZN9Imath_3_14halfaSEf.exit.3, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ew = add nuw i16 %i.es, 1
  br label %_ZN9Imath_3_14halfaSEf.exit.3

bb.aj:                                            ; preds = %_ZN9Imath_3_14halfaSEf.exit.2
  %i.ex = icmp samesign ugt i32 %i.ed, 2139095039
  br i1 %i.ex, label %bb.an, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.ey = icmp samesign ugt i32 %i.ed, 1199566847
  br i1 %i.ey, label %bb.am, label %bb.al, !prof !17

bb.al:                                            ; preds = %bb.ak
  %i.ez = add nuw nsw i32 %i.ed, 134221823
  %i.fa = lshr i32 %i.ed, 13
  %i.fb = and i32 %i.fa, 1
  %i.fc = add nuw nsw i32 %i.ez, %i.fb
  %i.fd = lshr i32 %i.fc, 13
  %i.fe = and i32 %i.ee, 32768
  %i.ff = or i32 %i.fd, %i.fe
  %i.fg = trunc i32 %i.ff to i16
  br label %_ZN9Imath_3_14halfaSEf.exit.3

bb.am:                                            ; preds = %bb.ak
  %i.fh = or disjoint i16 %i.eg, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit.3

bb.an:                                            ; preds = %bb.aj
  %i.fi = or disjoint i16 %i.eg, 31744            ; 2 uses
  %i.fj = icmp eq i32 %i.ed, 2139095040
  br i1 %i.fj, label %_ZN9Imath_3_14halfaSEf.exit.3, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fk = lshr i32 %i.ed, 13
  %i.fl = and i32 %i.fk, 1023                     ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 0
  %i.fn = zext i1 %i.fm to i16
  %i.fo = trunc nuw nsw i32 %i.fl to i16
  %i.fp = or i16 %i.fo, %i.fn
  %i.fq = or disjoint i16 %i.fp, %i.fi
  br label %_ZN9Imath_3_14halfaSEf.exit.3

_ZN9Imath_3_14halfaSEf.exit.3:                    ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ai, %bb.ah, %bb.af
  %.0.i.i.i.3 = phi i16 [ %i.eg, %bb.af ], [ %i.fq, %bb.ao ], [ %i.fh, %bb.am ], [ %i.fg, %bb.al ], [ %i.fi, %bb.an ], [ %i.ew, %bb.ai ], [ %i.es, %bb.ah ]
  store i16 %.0.i.i.i.3, ptr %i.ea, align 2, !tbaa !7
  %i.fr = add i64 %.020, -4                       ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.01118, i64 16 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0919, i64 8 ; 2 uses
  %i.fu = icmp ugt i64 %i.fr, 3
  br i1 %i.fu, label %.lr.ph, label %.preheader, !llvm.loop !18

.lr.ph27:                                         ; preds = %.preheader, %_ZN9Imath_3_14halfaSEf.exit16.a
  %.126 = phi i64 [ %5, %_ZN9Imath_3_14halfaSEf.exit16.a ], [ %.0.lcssa, %.preheader ]
  %.11025 = phi ptr [ %i.fx, %_ZN9Imath_3_14halfaSEf.exit16.a ], [ %.09.lcssa, %.preheader ] ; 2 uses
  %.11224 = phi ptr [ %i.fv, %_ZN9Imath_3_14halfaSEf.exit16.a ], [ %.011.lcssa, %.preheader ] ; 2 uses
  %5 = add nsw i64 %.126, -1                      ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.11224, i64 4
  %i.fw = load float, ptr %.11224, align 4, !tbaa !15 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.11025, i64 2
  %i.fy = bitcast float %i.fw to i32
  %i.fz = tail call float @llvm.fabs.f32(float %i.fw)
  %i.ga = bitcast float %i.fz to i32              ; 10 uses
  %i.gb = lshr i32 %i.fy, 16                      ; 3 uses
  %i.gc = trunc nuw i32 %i.gb to i16
  %i.gd = and i16 %i.gc, -32768                   ; 3 uses
  %i.ge = icmp samesign ugt i32 %i.ga, 947912703
  br i1 %i.ge, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %.lr.ph27
  %i.gf = icmp samesign ugt i32 %i.ga, 2139095039
  br i1 %i.gf, label %bb.aq, label %bb.as, !prof !17

bb.aq:                                            ; preds = %bb.ap
  %i.gg = or disjoint i16 %i.gd, 31744            ; 2 uses
  %i.gh = icmp eq i32 %i.ga, 2139095040
  br i1 %i.gh, label %_ZN9Imath_3_14halfaSEf.exit16.a, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gi = lshr i32 %i.ga, 13
  %i.gj = and i32 %i.gi, 1023                     ; 2 uses
  %i.gk = icmp eq i32 %i.gj, 0
  %i.gl = zext i1 %i.gk to i16
  %i.gm = trunc nuw nsw i32 %i.gj to i16
  %i.gn = or i16 %i.gm, %i.gl
  %i.go = or disjoint i16 %i.gn, %i.gg
  br label %_ZN9Imath_3_14halfaSEf.exit16.a

bb.as:                                            ; preds = %bb.ap
  %i.gp = icmp samesign ugt i32 %i.ga, 1199566847
  br i1 %i.gp, label %bb.at, label %bb.au, !prof !17

bb.at:                                            ; preds = %bb.as
  %i.gq = or disjoint i16 %i.gd, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit16.a

bb.au:                                            ; preds = %bb.as
  %i.gr = add nuw nsw i32 %i.ga, 134221823
  %i.gs = lshr i32 %i.ga, 13
  %i.gt = and i32 %i.gs, 1
  %i.gu = add nuw nsw i32 %i.gr, %i.gt
  %i.gv = lshr i32 %i.gu, 13
  %i.gw = and i32 %i.gb, 32768
  %i.gx = or i32 %i.gv, %i.gw
  %i.gy = trunc i32 %i.gx to i16
  br label %_ZN9Imath_3_14halfaSEf.exit16.a

bb.av:                                            ; preds = %.lr.ph27
  %i.gz = icmp samesign ult i32 %i.ga, 855638017
  br i1 %i.gz, label %_ZN9Imath_3_14halfaSEf.exit16.a, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ha = lshr i32 %i.ga, 23                      ; 2 uses
  %i.hb = sub nuw nsw i32 126, %i.ha
  %i.hc = and i32 %i.ga, 8388607
  %i.hd = or disjoint i32 %i.hc, 8388608          ; 2 uses
  %i.he = add nsw i32 %i.ha, -94
  %i.hf = shl i32 %i.hd, %i.he                    ; 2 uses
  %i.hg = lshr i32 %i.hd, %i.hb                   ; 2 uses
  %i.hh = and i32 %i.gb, 32768
  %i.hi = or i32 %i.hg, %i.hh
  %i.hj = trunc nuw i32 %i.hi to i16              ; 2 uses
  %i.hk = icmp ugt i32 %i.hf, -2147483648
  br i1 %i.hk, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hl = icmp ne i32 %i.hf, -2147483648
  %i.hm = and i32 %i.hg, 1
  %.not.i.i.i13.a = icmp eq i32 %i.hm, 0
  %or.cond.i.i.i14.a = select i1 %i.hl, i1 true, i1 %.not.i.i.i13.a
  br i1 %or.cond.i.i.i14.a, label %_ZN9Imath_3_14halfaSEf.exit16.a, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hn = add nuw i16 %i.hj, 1
  br label %_ZN9Imath_3_14halfaSEf.exit16.a

_ZN9Imath_3_14halfaSEf.exit16.a:                  ; preds = %bb.aq, %bb.ar, %bb.at, %bb.au, %bb.av, %bb.ax, %bb.ay
  %.0.i.i.i15.a = phi i16 [ %i.gd, %bb.av ], [ %i.go, %bb.ar ], [ %i.gq, %bb.at ], [ %i.gy, %bb.au ], [ %i.gg, %bb.aq ], [ %i.hn, %bb.ay ], [ %i.hj, %bb.ax ]
  store i16 %.0.i.i.i15.a, ptr %.11025, align 2, !tbaa !7
  %.not.a = icmp eq i64 %5, 0
  br i1 %.not.a, label %._crit_edge, label %.lr.ph27, !llvm.loop !19

._crit_edge:                                      ; preds = %_ZN9Imath_3_14halfaSEf.exit16.a, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #1 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !8, i64 0}
!13 = !{!"_ZTSN9Imath_3_14halfE", !8, i64 0}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
end_hunk_0
