inline.NumInlined: 74
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly6detail29qfind_first_byte_of_needles16ENS0_15StringPieceLiteES1_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = icmp ult i64 %i.c, 3
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 8 uses
  %i.h = icmp ugt i64 %i.g, 255
  %or.cond = select i1 %i.d, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.g, 15
  %i.j = getelementptr inbounds i8, ptr %1, i64 -1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.m = ptrtoint ptr %i.l to i64
  %.not.unshifted = xor i64 %i.k, %i.m
  %.not = icmp ult i64 %.not.unshifted, 4096
  %or.cond47 = select i1 %i.i, i1 true, i1 %.not
  %i.n = getelementptr inbounds i8, ptr %3, i64 -1
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.q = ptrtoint ptr %i.p to i64
  %.not19.unshifted = xor i64 %i.o, %i.q
  %.not19 = icmp ult i64 %.not19.unshifted, 4096
  %or.cond51 = select i1 %or.cond47, i1 %.not19, i1 false
  br i1 %or.cond51, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = icmp eq ptr %3, %2
  %i.s = icmp eq ptr %1, %0
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s, !prof !12
  br i1 %or.cond.i, label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ugt i64 %i.c, 3
  br i1 %i.t, label %bb.e, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.g, %bb.f, %bb.d
  br label %.preheader.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ult i64 %i.g, 11
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp ugt i64 %i.c, 15
  br i1 %i.v, label %bb.g, label %.preheader.i.i.i.preheader

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 65
  %i.x = icmp ugt i64 %i.c, 31
  %or.cond19.i = or i1 %i.w, %i.x
  br i1 %or.cond19.i, label %bb.h, label %.preheader.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.y = tail call noundef i64 @_ZN5folly6detail27qfind_first_byte_of_bytesetENS0_15StringPieceLiteES1_(ptr %0, ptr %1, ptr %2, ptr %3)
  br label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %._crit_edge.i.i.i
  %.01425.i.i.i = phi ptr [ %i.ad, %._crit_edge.i.i.i ], [ %0, %.preheader.i.i.i.preheader ] ; 4 uses
  %i.z = load i8, ptr %.01425.i.i.i, align 1, !tbaa !13
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.01223.i.i.i, i64 1 ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.aa, %3
  br i1 %.not16.i.i.i, label %._crit_edge.i.i.i, label %bb.j, !llvm.loop !14

bb.j:                                             ; preds = %bb.i, %.preheader.i.i.i
  %.01223.i.i.i = phi ptr [ %2, %.preheader.i.i.i ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ab = load i8, ptr %.01223.i.i.i, align 1, !tbaa !13
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.i, label %bb.i

._crit_edge.i.i.i:                                ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.01425.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i, label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit, label %.preheader.i.i.i, !llvm.loop !16

_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.i: ; preds = %bb.j
  %i.ae = icmp eq ptr %.01425.i.i.i, %1
  br i1 %i.ae, label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.i
  %i.af = ptrtoint ptr %.01425.i.i.i to i64
  %i.ag = sub i64 %i.af, %i.f
  br label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit

bb.l:                                             ; preds = %bb.b
  %i.ah = load <16 x i8>, ptr %2, align 1, !tbaa !13 ; 2 uses
  %i.ai = load <16 x i8>, ptr %0, align 1, !tbaa !13
  %i.aj = trunc i64 %i.c to i32                   ; 2 uses
  %i.ak = trunc i64 %i.g to i32
  %i.al = tail call i32 @llvm.x86.sse42.pcmpestri128(<16 x i8> %i.ah, i32 %i.aj, <16 x i8> %i.ai, i32 %i.ak, i8 0) ; 2 uses
  %i.am = icmp slt i32 %i.al, 16
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = sext i32 %i.al to i64
  br label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = and i64 %i.f, 15
  %i.ap = sub nuw nsw i64 16, %i.ao               ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.g
  br i1 %i.aq, label %.lr.ph, label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit

.lr.ph:                                           ; preds = %bb.n, %bb.p
  %.055 = phi i64 [ %i.az, %bb.p ], [ %i.ap, %bb.n ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.055
  %i.as = load <16 x i8>, ptr %i.ar, align 16, !tbaa !13
  %i.at = sub nuw i64 %i.g, %.055
  %i.au = trunc i64 %i.at to i32
  %i.av = tail call i32 @llvm.x86.sse42.pcmpestri128(<16 x i8> %i.ah, i32 %i.aj, <16 x i8> %i.as, i32 %i.au, i8 0) ; 2 uses
  %i.aw = icmp slt i32 %i.av, 16
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.ax = sext i32 %i.av to i64
  %i.ay = add i64 %.055, %i.ax
  br label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit

bb.p:                                             ; preds = %.lr.ph
  %i.az = add i64 %.055, 16                       ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.g
  br i1 %i.ba, label %.lr.ph, label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit, !llvm.loop !17

_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit: ; preds = %bb.p, %._crit_edge.i.i.i, %bb.n, %bb.k, %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.i, %bb.h, %bb.c, %bb.m, %bb.o
  %.2 = phi i64 [ -1, %bb.n ], [ %i.an, %bb.m ], [ %i.ay, %bb.o ], [ -1, %bb.c ], [ %i.y, %bb.h ], [ -1, %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.i ], [ %i.ag, %bb.k ], [ -1, %._crit_edge.i.i.i ], [ -1, %bb.p ]
  ret i64 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse42.pcmpestri128(<16 x i8>, i32, <16 x i8>, i32, i8 immarg) #1

declare noundef i64 @_ZN5folly6detail27qfind_first_byte_of_bytesetENS0_15StringPieceLiteES1_(ptr, ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly6detail25qfind_first_byte_of_sse42ENS0_15StringPieceLiteES1_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, %2
  %i.b = icmp eq ptr %1, %0
  %or.cond = select i1 %i.a, i1 true, i1 %i.b, !prof !12
  br i1 %or.cond, label %.critedge, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %3 to i64
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_ZN5folly6detail29qfind_first_byte_of_needles16ENS0_15StringPieceLiteES1_(ptr %0, ptr %1, ptr %2, ptr %3)
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp ugt i64 %i.j, 15
  %i.l = getelementptr inbounds i8, ptr %1, i64 -1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = ptrtoint ptr %i.n to i64
  %.not.unshifted = xor i64 %i.m, %i.o
  %.not = icmp ult i64 %.not.unshifted, 4096
  %or.cond53 = select i1 %i.k, i1 true, i1 %.not
  br i1 %or.cond53, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp samesign ult i64 %i.j, 3
  br i1 %i.p, label %.preheader.i.i, label %bb.i

.preheader.i.i:                                   ; preds = %bb.e, %._crit_edge.i.i
  %.01425.i.i = phi ptr [ %i.u, %._crit_edge.i.i ], [ %0, %bb.e ] ; 4 uses
  %i.q = load i8, ptr %.01425.i.i, align 1, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.01223.i.i, i64 1 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.r, %3
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !14

bb.g:                                             ; preds = %bb.f, %.preheader.i.i
  %.01223.i.i = phi ptr [ %2, %.preheader.i.i ], [ %i.r, %bb.f ] ; 2 uses
  %i.s = load i8, ptr %.01223.i.i, align 1, !tbaa !13
  %i.t = icmp eq i8 %i.q, %i.s
  br i1 %i.t, label %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.01425.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i, label %.critedge, label %.preheader.i.i, !llvm.loop !16

_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i: ; preds = %bb.g
  %i.v = icmp eq ptr %.01425.i.i, %1
  br i1 %i.v, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i
  %i.w = ptrtoint ptr %.01425.i.i to i64
  %i.x = sub i64 %i.w, %i.i
  br label %.critedge

bb.i:                                             ; preds = %bb.e
  %i.y = tail call noundef i64 @_ZN5folly6detail27qfind_first_byte_of_bytesetENS0_15StringPieceLiteES1_(ptr %0, ptr %1, ptr %2, ptr %3)
  br label %.critedge

bb.j:                                             ; preds = %bb.d
  %i.z = load <16 x i8>, ptr %0, align 1, !tbaa !13 ; 2 uses
  %i.aa = load <16 x i8>, ptr %2, align 1, !tbaa !13 ; 2 uses
  %i.ab = trunc i64 %i.j to i32                   ; 2 uses
  %i.ac = tail call i32 @llvm.x86.sse42.pcmpestri128(<16 x i8> %i.aa, i32 16, <16 x i8> %i.z, i32 %i.ab, i8 0)
  %i.ad = and i64 %i.d, 15
  %i.ae = sub nuw nsw i64 16, %i.ad               ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.032.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.ae, %bb.j ] ; 3 uses
  %.02831.i = phi i32 [ %.sroa.speculated.i, %.lr.ph.i ], [ %i.ac, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.032.i
  %i.ag = load <16 x i8>, ptr %i.af, align 16, !tbaa !13
  %i.ah = sub nuw i64 %i.e, %.032.i
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = tail call i32 @llvm.x86.sse42.pcmpestri128(<16 x i8> %i.ag, i32 %i.ai, <16 x i8> %i.z, i32 %i.ab, i8 0)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.02831.i, i32 %i.aj) ; 3 uses
  %i.ak = add i64 %.032.i, 16                     ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.e
  br i1 %i.al, label %.lr.ph.i, label %_ZN5folly6detail17scanHaystackBlockILb0EEEmNS0_15StringPieceLiteES2_m.exit, !llvm.loop !18

_ZN5folly6detail17scanHaystackBlockILb0EEEmNS0_15StringPieceLiteES2_m.exit: ; preds = %.lr.ph.i
  %i.am = icmp slt i32 %.sroa.speculated.i, 16
  %narrow = select i1 %i.am, i32 %.sroa.speculated.i, i32 -1 ; 2 uses
  %.013.i = sext i32 %narrow to i64
  %.not29 = icmp eq i32 %narrow, -1
  br i1 %.not29, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZN5folly6detail17scanHaystackBlockILb0EEEmNS0_15StringPieceLiteES2_m.exit
  %i.an = and i64 %i.i, 15
  %i.ao = sub nuw nsw i64 16, %i.an               ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.j
  br i1 %i.ap, label %.lr.ph, label %.critedge

bb.l:                                             ; preds = %_ZN5folly6detail17scanHaystackBlockILb1EEEmNS0_15StringPieceLiteES2_m.exit
  %i.aq = add i64 %.02657, 16                     ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.j
  br i1 %i.ar, label %.lr.ph, label %.critedge, !llvm.loop !19

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.02657 = phi i64 [ %i.aq, %bb.l ], [ %i.ao, %bb.k ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.02657
  %i.at = load <16 x i8>, ptr %i.as, align 16, !tbaa !13 ; 2 uses
  %i.au = add i64 %.02657, %i.i
  %i.av = sub i64 %i.h, %i.au
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = tail call i32 @llvm.x86.sse42.pcmpestri128(<16 x i8> %i.aa, i32 16, <16 x i8> %i.at, i32 %i.aw, i8 0)
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph, %.lr.ph.i33
  %.032.i34 = phi i64 [ %i.bd, %.lr.ph.i33 ], [ %i.ae, %.lr.ph ] ; 3 uses
  %.02831.i35 = phi i32 [ %.sroa.speculated.i36, %.lr.ph.i33 ], [ %i.ax, %.lr.ph ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %.032.i34
  %i.az = load <16 x i8>, ptr %i.ay, align 16, !tbaa !13
  %i.ba = sub nuw i64 %i.e, %.032.i34
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = tail call i32 @llvm.x86.sse42.pcmpestri128(<16 x i8> %i.az, i32 %i.bb, <16 x i8> %i.at, i32 %i.aw, i8 0)
  %.sroa.speculated.i36 = tail call i32 @llvm.smin.i32(i32 %.02831.i35, i32 %i.bc) ; 3 uses
  %i.bd = add i64 %.032.i34, 16                   ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.e
  br i1 %i.be, label %.lr.ph.i33, label %_ZN5folly6detail17scanHaystackBlockILb1EEEmNS0_15StringPieceLiteES2_m.exit, !llvm.loop !20

_ZN5folly6detail17scanHaystackBlockILb1EEEmNS0_15StringPieceLiteES2_m.exit: ; preds = %.lr.ph.i33
  %i.bf = icmp sgt i32 %.sroa.speculated.i36, 15
  %i.bg = sext i32 %.sroa.speculated.i36 to i64
  %i.bh = add i64 %.02657, %i.bg                  ; 2 uses
  %.not3049 = icmp eq i64 %i.bh, -1
  %.not30 = select i1 %i.bf, i1 true, i1 %.not3049
  br i1 %.not30, label %bb.l, label %.critedge

.critedge:                                        ; preds = %._crit_edge.i.i, %_ZN5folly6detail17scanHaystackBlockILb1EEEmNS0_15StringPieceLiteES2_m.exit, %bb.l, %bb.k, %bb.h, %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i, %bb.a, %_ZN5folly6detail17scanHaystackBlockILb0EEEmNS0_15StringPieceLiteES2_m.exit, %bb.i, %bb.c
  %.2 = phi i64 [ -1, %bb.l ], [ %i.g, %bb.c ], [ -1, %bb.a ], [ %i.y, %bb.i ], [ %i.x, %bb.h ], [ %.013.i, %_ZN5folly6detail17scanHaystackBlockILb0EEEmNS0_15StringPieceLiteES2_m.exit ], [ -1, %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i ], [ -1, %bb.k ], [ %i.bh, %_ZN5folly6detail17scanHaystackBlockILb1EEEmNS0_15StringPieceLiteES2_m.exit ], [ -1, %._crit_edge.i.i ]
  ret i64 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"branch_weights", i32 4001, i32 4000000}
!13 = !{!10, !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
end_hunk_0
