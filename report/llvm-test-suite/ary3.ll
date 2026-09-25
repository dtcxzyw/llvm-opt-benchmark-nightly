Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ary3?download=true
inline.NumInlined: 62
inline.NumDeleted: 45
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %0, 2
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #7, !inline_history !8 ; 2 uses
  %sext = shl i64 %i.d, 32                        ; 2 uses
  %i.e = ashr exact i64 %sext, 32                 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.f, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %i.g = trunc i64 %i.d to i32                    ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit35, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %bb.a, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = phi i32 [ %i.g, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ 1500000, %bb.a ] ; 2 uses
  %i.i = phi i64 [ %i.e, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ 1500000, %bb.a ] ; 4 uses
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #9 ; 6 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i ; 3 uses
  store i32 0, ptr %i.k, align 4, !tbaa !7
  %i.m = add nsw i64 %i.i, -1                     ; 3 uses
  %i.n = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.n, label %bb.c, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.o = getelementptr i8, ptr %i.k, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #9
          to label %.noexc34 unwind label %.thread74 ; 5 uses

.noexc34:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.i ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !7
  %i.r = getelementptr i8, ptr %i.p, i64 4        ; 3 uses
  br i1 %i.n, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit35, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29: ; preds = %.noexc34
  %.idx.i.i.i.i.i.i.i30 = shl nuw nsw i64 %i.m, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i30, i1 false), !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i30
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit35

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit35:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29, %.noexc34, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.056.072 = phi ptr [ %i.k, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29 ], [ %i.k, %.noexc34 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.sroa.11.069 = phi ptr [ %i.l, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29 ], [ %i.l, %.noexc34 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.t = phi i32 [ %i.h, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29 ], [ %i.h, %.noexc34 ], [ %i.g, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %.sroa.050.0 = phi ptr [ %i.p, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29 ], [ %i.p, %.noexc34 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.12.0 = phi ptr [ %i.q, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29 ], [ %i.q, %.noexc34 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.0.i.i.i.i.i31 = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29 ], [ %i.r, %.noexc34 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.split

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit35
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.t, 8
  br i1 %min.iters.check, label %.lr.ph.preheader111, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %2 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.072, i64 %index ; 2 uses
  %3 = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.v = add <4 x i32> %3, splat (i32 1)
  %4 = trunc <4 x i64> %vec.ind to <4 x i32>
  %5 = add <4 x i32> %4, splat (i32 5)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> %i.v, ptr %2, align 4, !tbaa !7
  store <4 x i32> %5, ptr %i.w, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader.preheader, label %.lr.ph.preheader111

.lr.ph.preheader111:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader.preheader:                             ; preds = %.lr.ph, %middle.block
  %i.y = zext nneg i32 %i.t to i64                ; 3 uses
  %min.iters.check99 = icmp ult i32 %i.t, 8
  %n.vec101 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.z = sub nsw i64 %i.y, %n.vec101
  %cmp.n109 = icmp eq i64 %n.vec101, %wide.trip.count
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader111, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader111 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.072, i64 %indvars.iv
  %i.ab = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !7
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.preheader, label %.lr.ph, !llvm.loop !10

.thread74:                                        ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.02187 = phi i32 [ %i.ao, %._crit_edge ], [ 0, %.preheader.preheader ]
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.body102

vector.body102:                                   ; preds = %.preheader, %vector.body102
  %index103 = phi i64 [ %index.next107, %vector.body102 ], [ 0, %.preheader ] ; 2 uses
  %i.ad = xor i64 %index103, -1
  %i.ae = add i64 %i.ad, %i.y                     ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.072, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -12
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !tbaa !7
  %wide.load104 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !7
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.050.0, i64 %i.ae ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -12 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -28 ; 2 uses
  %wide.load105 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !7
  %wide.load106 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !7
  %i.al = add nsw <4 x i32> %wide.load105, %wide.load
  %i.am = add nsw <4 x i32> %wide.load106, %wide.load104
  store <4 x i32> %i.al, ptr %i.aj, align 4, !tbaa !7
  store <4 x i32> %i.am, ptr %i.ak, align 4, !tbaa !7
  %index.next107 = add nuw i64 %index103, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next107, %n.vec101
  br i1 %i.an, label %middle.block108, label %vector.body102, !llvm.loop !11

middle.block108:                                  ; preds = %vector.body102
  br i1 %cmp.n109, label %._crit_edge, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %.preheader, %middle.block108
  %indvars.iv89.ph = phi i64 [ %i.y, %.preheader ], [ %i.z, %middle.block108 ]
  br label %scalar.ph98

._crit_edge:                                      ; preds = %scalar.ph98, %middle.block108
  %i.ao = add nuw nsw i32 %.02187, 1              ; 2 uses
  %exitcond92.not = icmp eq i32 %i.ao, 1000
  br i1 %exitcond92.not, label %.split, label %.preheader, !llvm.loop !12

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %scalar.ph98 ], [ %indvars.iv89.ph, %scalar.ph98.preheader ] ; 2 uses
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, -1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.072, i64 %indvars.iv.next90
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.050.0, i64 %indvars.iv.next90 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = add nsw i32 %i.as, %i.aq
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !7
  %i.au = icmp sgt i64 %indvars.iv89, 1
  br i1 %i.au, label %scalar.ph98, label %._crit_edge, !llvm.loop !13

.split:                                           ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit35
  %i.av = load i32, ptr %.sroa.050.0, align 4, !tbaa !7
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.av)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %.split
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.ay = getelementptr inbounds i8, ptr %.0.i.i.i.i.i31, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef %i.az)
          to label %bb.e unwind label %bb.j       ; 3 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !22
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !39 ; 6 uses
  %.not.i.i.i44 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i44, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #8
          to label %.noexc45 unwind label %bb.j

.noexc45:                                         ; preds = %bb.f
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !45
  %.not.i1.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !46
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bg)
          to label %.noexc46 unwind label %bb.j

.noexc46:                                         ; preds = %bb.h
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = invoke noundef signext i8 %i.bn(ptr noundef nonnull align 8 dereferenceable(570) %i.bg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.j, !inline_history !14

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc46, %bb.g
  %.0.i.i.i = phi i8 [ %i.bk, %bb.g ], [ %i.bo, %.noexc46 ]
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i8 noundef signext %.0.i.i.i)
          to label %.noexc48 unwind label %bb.j

.noexc48:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %bb.j ; 0 uses

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.noexc48
  %i.br = ptrtoint ptr %.sroa.12.0 to i64
  %i.bs = ptrtoint ptr %.sroa.050.0 to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0, i64 noundef %i.bt) #10
  %.not.i.i.i38 = icmp eq ptr %.sroa.056.072, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIiSaIiEED2Ev.exit39, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bu = ptrtoint ptr %.sroa.11.069 to i64
  %i.bv = ptrtoint ptr %.sroa.056.072 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.072, i64 noundef %i.bw) #10
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit39

_ZNSt6vectorIiSaIiEED2Ev.exit39:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.i
  ret i32 0

bb.j:                                             ; preds = %.split, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.f, %bb.h, %.noexc46, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc48
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = ptrtoint ptr %.sroa.12.0 to i64
  %i.bz = ptrtoint ptr %.sroa.050.0 to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0, i64 noundef %i.ca) #10
  %.not.i.i.i42 = icmp eq ptr %.sroa.056.072, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIiSaIiEED2Ev.exit43, label %bb.k

bb.k:                                             ; preds = %.thread74, %bb.j
  %.pn81 = phi { ptr, i32 } [ %i.ac, %.thread74 ], [ %i.bx, %bb.j ]
  %.sroa.11.06880 = phi ptr [ %i.l, %.thread74 ], [ %.sroa.11.069, %bb.j ]
  %.sroa.056.07179 = phi ptr [ %i.k, %.thread74 ], [ %.sroa.056.072, %bb.j ] ; 2 uses
  %i.cb = ptrtoint ptr %.sroa.11.06880 to i64
  %i.cc = ptrtoint ptr %.sroa.056.07179 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.07179, i64 noundef %i.cd) #10
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit43

_ZNSt6vectorIiSaIiEED2Ev.exit43:                  ; preds = %bb.k, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn81, %bb.k ], [ %i.bx, %bb.j ]
  resume { ptr, i32 } %.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
end_hunk_0
