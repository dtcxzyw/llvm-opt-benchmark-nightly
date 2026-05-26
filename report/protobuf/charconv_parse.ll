inline.NumInlined: 42
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20250512::strings_internal::ParsedFloat" = type { i64, i32, i32, i32, ptr, ptr, ptr }

$_ZN4absl12lts_2025051216strings_internal10ParseFloatILi10EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE = comdat any

$_ZN4absl12lts_2025051216strings_internal10ParseFloatILi16EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE = comdat any

@.str = private unnamed_addr constant [3 x i8] c"nf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"inity\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN4absl12lts_2025051216strings_internal10ParseFloatILi10EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE(ptr dead_on_unwind noalias writable sret(%"struct.absl::lts_20250512::strings_internal::ParsedFloat") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = icmp eq ptr %1, %2
  br i1 %i.d, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051212_GLOBAL__N_118ParseInfinityOrNanEPKcS3_PNS0_16strings_internal11ParsedFloatE(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0)
  br i1 %i.e, label %bb.ac, label %.preheader159

.preheader159:                                    ; preds = %bb.b
  %i.f = icmp ult ptr %1, %2
  br i1 %i.f, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader159
  %i.g = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %1, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.0160 = phi ptr [ %i.j, %bb.c ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.h = load i8, ptr %.0160, align 1, !tbaa !7
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.0160, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.j, %2
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !8

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph
  %.0.lcssa.ph = phi ptr [ %.0160, %.lr.ph ], [ %scevgep, %bb.c ] ; 2 uses
  %.pre = ptrtoint ptr %.0.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader159
  %.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %i.a, %.preheader159 ] ; 4 uses
  %.0.lcssa = phi ptr [ %.0.lcssa.ph, %.critedge.loopexit ], [ %1, %.preheader159 ] ; 6 uses
  %.not4142.i = icmp eq ptr %2, %.0.lcssa
  br i1 %.not4142.i, label %.critedge.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.critedge
  %i.k = sub i64 %i.b, %.pre-phi
  %scevgep.i = getelementptr i8, ptr %.0.lcssa, i64 %i.k
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.d, %.lr.ph.split.preheader.i
  %.03844.i = phi ptr [ %i.n, %bb.d ], [ %.0.lcssa, %.lr.ph.split.preheader.i ] ; 3 uses
  %i.l = load i8, ptr %.03844.i, align 1, !tbaa !7
  %i.m = icmp eq i8 %i.l, 48
  br i1 %i.m, label %bb.d, label %.critedge.i.loopexit

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.n = getelementptr inbounds nuw i8, ptr %.03844.i, i64 1 ; 2 uses
  %.not41.i = icmp eq ptr %2, %i.n
  br i1 %.not41.i, label %.critedge.i.loopexit, label %.lr.ph.split.i, !llvm.loop !10

.critedge.i.loopexit:                             ; preds = %.lr.ph.split.i, %bb.d
  %.038.lcssa.i.ph = phi ptr [ %scevgep.i, %bb.d ], [ %.03844.i, %.lr.ph.split.i ] ; 2 uses
  %.pre169 = ptrtoint ptr %.038.lcssa.i.ph to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.critedge
  %.pre-phi170 = phi i64 [ %.pre169, %.critedge.i.loopexit ], [ %.pre-phi, %.critedge ] ; 3 uses
  %.038.lcssa.i = phi ptr [ %.038.lcssa.i.ph, %.critedge.i.loopexit ], [ %.0.lcssa, %.critedge ] ; 5 uses
  %i.o = sub i64 %i.b, %.pre-phi170
  %i.p = icmp sgt i64 %i.o, 19
  %i.q = getelementptr inbounds nuw i8, ptr %.038.lcssa.i, i64 19
  %i.r = select i1 %i.p, ptr %i.q, ptr %2         ; 3 uses
  %i.s = icmp ult ptr %.038.lcssa.i, %i.r
  br i1 %i.s, label %.lr.ph54.preheader.i, label %.critedge2.i

.lr.ph54.preheader.i:                             ; preds = %.critedge.i
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.t, %.pre-phi170
  %scevgep69.i = getelementptr i8, ptr %.038.lcssa.i, i64 %i.u
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.e, %.lr.ph54.preheader.i
  %.153.i = phi ptr [ %i.ac, %bb.e ], [ %.038.lcssa.i, %.lr.ph54.preheader.i ] ; 3 uses
  %.03952.i = phi i64 [ %i.ab, %bb.e ], [ 0, %.lr.ph54.preheader.i ] ; 2 uses
  %i.v = load i8, ptr %.153.i, align 1, !tbaa !7  ; 2 uses
  %i.w = add i8 %i.v, -48
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.e, label %.critedge2.loopexit.i

bb.e:                                             ; preds = %.lr.ph54.i
  %i.y = and i8 %i.v, 15
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = mul i64 %.03952.i, 10
  %i.ab = add i64 %i.aa, %i.z                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.153.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ac, %i.r
  br i1 %exitcond.not.i, label %.critedge2.loopexit.i, label %.lr.ph54.i, !llvm.loop !11

.critedge2.loopexit.i:                            ; preds = %bb.e, %.lr.ph54.i
  %.039.lcssa.ph.i = phi i64 [ %.03952.i, %.lr.ph54.i ], [ %i.ab, %bb.e ]
  %.1.lcssa.ph.i = phi ptr [ %.153.i, %.lr.ph54.i ], [ %scevgep69.i, %bb.e ] ; 2 uses
  %.pre.i = ptrtoint ptr %.1.lcssa.ph.i to i64
  %i.ad = freeze i64 %.039.lcssa.ph.i
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %.critedge.i
  %.1.lcssa70.pre-phi.i = phi i64 [ %.pre.i, %.critedge2.loopexit.i ], [ %.pre-phi170, %.critedge.i ]
  %.039.lcssa.i = phi i64 [ %i.ad, %.critedge2.loopexit.i ], [ 0, %.critedge.i ] ; 5 uses
  %.1.lcssa.i = phi ptr [ %.1.lcssa.ph.i, %.critedge2.loopexit.i ], [ %.038.lcssa.i, %.critedge.i ] ; 4 uses
  %i.ae = icmp ult ptr %.1.lcssa.i, %2
  br i1 %i.ae, label %.lr.ph62.preheader.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit

.lr.ph62.preheader.i:                             ; preds = %.critedge2.i
  %i.af = sub i64 %i.b, %.1.lcssa70.pre-phi.i
  %scevgep71.i = getelementptr i8, ptr %.1.lcssa.i, i64 %i.af ; 2 uses
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %bb.f, %.lr.ph62.preheader.i
  %.061.i = phi i1 [ %spec.select.i, %bb.f ], [ false, %.lr.ph62.preheader.i ] ; 2 uses
  %.260.i = phi ptr [ %i.ak, %bb.f ], [ %.1.lcssa.i, %.lr.ph62.preheader.i ] ; 3 uses
  %i.ag = load i8, ptr %.260.i, align 1, !tbaa !7 ; 2 uses
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %bb.f, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit

bb.f:                                             ; preds = %.lr.ph62.i
  %i.aj = icmp ne i8 %i.ag, 48
  %spec.select.i = or i1 %.061.i, %i.aj           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.260.i, i64 1 ; 2 uses
  %exitcond72.not.i = icmp eq ptr %i.ak, %scevgep71.i
  br i1 %exitcond72.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit, label %.lr.ph62.i, !llvm.loop !12

_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit: ; preds = %.lr.ph62.i, %bb.f, %.critedge2.i
  %.1148 = phi i1 [ false, %.critedge2.i ], [ %.061.i, %.lr.ph62.i ], [ %spec.select.i, %bb.f ] ; 4 uses
  %.2.lcssa79.i = phi ptr [ %.1.lcssa.i, %.critedge2.i ], [ %.260.i, %.lr.ph62.i ], [ %scevgep71.i, %bb.f ]
  %i.al = ptrtoint ptr %.2.lcssa79.i to i64
  %i.am = sub i64 %i.al, %.pre-phi                ; 2 uses
  %i.an = trunc i64 %i.am to i32                  ; 3 uses
  %sext = shl i64 %i.am, 32
  %i.ao = ashr exact i64 %sext, 32
  %i.ap = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.ao ; 5 uses
  %i.aq = icmp sgt i32 %i.an, 49999999
  br i1 %i.aq, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit
  %4 = tail call i32 @llvm.smin.i32(i32 %i.an, i32 19)
  %.089.a = sub nsw i32 19, %4                    ; 2 uses
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.an, i32 19)
  %.083 = add nsw i32 %i.ar, -19                  ; 4 uses
  %i.as = icmp ult ptr %i.ap, %2
  br i1 %i.as, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !7
  %i.au = icmp eq i8 %i.at, 46
  br i1 %i.au, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 7 uses
  %i.aw = icmp eq i64 %.039.lcssa.i, 0
  br i1 %i.aw, label %.preheader, label %.thread193

.thread193:                                       ; preds = %bb.i
  %.pre173 = ptrtoint ptr %i.av to i64            ; 2 uses
  br label %.critedge.i114

.preheader:                                       ; preds = %bb.i
  %i.ax = icmp ult ptr %i.av, %2
  br i1 %i.ax, label %.lr.ph164.preheader, label %.critedge3

.lr.ph164.preheader:                              ; preds = %.preheader
  %i.ay = sub i64 %i.b, %.pre-phi
  %scevgep168 = getelementptr i8, ptr %.0.lcssa, i64 %i.ay
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %bb.j
  %.1163 = phi ptr [ %i.bb, %bb.j ], [ %i.av, %.lr.ph164.preheader ] ; 3 uses
  %i.az = load i8, ptr %.1163, align 1, !tbaa !7
  %i.ba = icmp eq i8 %i.az, 48
  br i1 %i.ba, label %bb.j, label %.critedge3

bb.j:                                             ; preds = %.lr.ph164
  %i.bb = getelementptr inbounds nuw i8, ptr %.1163, i64 1 ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %2
  br i1 %i.bc, label %.lr.ph164, label %.critedge3, !llvm.loop !13

.critedge3:                                       ; preds = %.lr.ph164, %bb.j, %.preheader
  %.1.lcssa = phi ptr [ %i.av, %.preheader ], [ %scevgep168, %bb.j ], [ %.1163, %.lr.ph164 ] ; 7 uses
  %i.bd = ptrtoint ptr %.1.lcssa to i64           ; 5 uses
  %i.be = ptrtoint ptr %i.av to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 50000000
  %i.bi = sub nsw i32 %.083, %i.bg                ; 2 uses
  br i1 %i.bh, label %bb.k, label %bb.ac

bb.k:                                             ; preds = %.critedge3
  %.not4142.i108 = icmp eq ptr %2, %.1.lcssa
  br i1 %.not4142.i108, label %.critedge.i114, label %.lr.ph.split.preheader.i110

.lr.ph.split.preheader.i110:                      ; preds = %bb.k
  %i.bj = sub i64 %i.b, %i.bd
  %scevgep.i111 = getelementptr i8, ptr %.1.lcssa, i64 %i.bj
  br label %.lr.ph.split.i112

.lr.ph.split.i112:                                ; preds = %bb.l, %.lr.ph.split.preheader.i110
  %.03844.i113 = phi ptr [ %i.bm, %bb.l ], [ %.1.lcssa, %.lr.ph.split.preheader.i110 ] ; 3 uses
  %i.bk = load i8, ptr %.03844.i113, align 1, !tbaa !7
  %i.bl = icmp eq i8 %i.bk, 48
  br i1 %i.bl, label %bb.l, label %.critedge.i114.loopexit

bb.l:                                             ; preds = %.lr.ph.split.i112
  %i.bm = getelementptr inbounds nuw i8, ptr %.03844.i113, i64 1 ; 2 uses
  %.not41.i141 = icmp eq ptr %2, %i.bm
  br i1 %.not41.i141, label %.critedge.i114.loopexit, label %.lr.ph.split.i112, !llvm.loop !10

.critedge.i114.loopexit:                          ; preds = %.lr.ph.split.i112, %bb.l
  %.038.lcssa.i115.ph = phi ptr [ %scevgep.i111, %bb.l ], [ %.03844.i113, %.lr.ph.split.i112 ] ; 2 uses
  %.pre171 = ptrtoint ptr %.038.lcssa.i115.ph to i64
  br label %.critedge.i114

.critedge.i114:                                   ; preds = %.thread193, %.critedge.i114.loopexit, %bb.k
  %.2202 = phi ptr [ %.1.lcssa, %.critedge.i114.loopexit ], [ %.1.lcssa, %bb.k ], [ %i.av, %.thread193 ]
  %.285201 = phi i32 [ %i.bi, %.critedge.i114.loopexit ], [ %i.bi, %bb.k ], [ %.083, %.thread193 ]
  %.pre-phi174200 = phi i64 [ %i.bd, %.critedge.i114.loopexit ], [ %i.bd, %bb.k ], [ %.pre173, %.thread193 ]
  %.pre-phi172 = phi i64 [ %.pre171, %.critedge.i114.loopexit ], [ %i.bd, %bb.k ], [ %.pre173, %.thread193 ] ; 3 uses
  %.038.lcssa.i115 = phi ptr [ %.038.lcssa.i115.ph, %.critedge.i114.loopexit ], [ %.1.lcssa, %bb.k ], [ %i.av, %.thread193 ] ; 5 uses
  %i.bn = sub i64 %i.b, %.pre-phi172
  %i.bo = zext nneg i32 %.089.a to i64            ; 2 uses
  %i.bp = icmp sgt i64 %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.038.lcssa.i115, i64 %i.bo
  %i.br = select i1 %i.bp, ptr %i.bq, ptr %2      ; 3 uses
  %i.bs = icmp ult ptr %.038.lcssa.i115, %i.br
  br i1 %i.bs, label %.lr.ph54.preheader.i131, label %.critedge2.i116

.lr.ph54.preheader.i131:                          ; preds = %.critedge.i114
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bt, %.pre-phi172
  %scevgep69.i132 = getelementptr i8, ptr %.038.lcssa.i115, i64 %i.bu
  br label %.lr.ph54.i133

.lr.ph54.i133:                                    ; preds = %bb.m, %.lr.ph54.preheader.i131
  %.153.i134 = phi ptr [ %i.cc, %bb.m ], [ %.038.lcssa.i115, %.lr.ph54.preheader.i131 ] ; 3 uses
  %.03952.i135 = phi i64 [ %i.cb, %bb.m ], [ %.039.lcssa.i, %.lr.ph54.preheader.i131 ] ; 2 uses
  %i.bv = load i8, ptr %.153.i134, align 1, !tbaa !7 ; 2 uses
  %i.bw = add i8 %i.bv, -48
  %i.bx = icmp ult i8 %i.bw, 10
  br i1 %i.bx, label %bb.m, label %.critedge2.loopexit.i136

bb.m:                                             ; preds = %.lr.ph54.i133
  %i.by = and i8 %i.bv, 15
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = mul i64 %.03952.i135, 10
  %i.cb = add i64 %i.ca, %i.bz                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.153.i134, i64 1 ; 2 uses
  %exitcond.not.i140 = icmp eq ptr %i.cc, %i.br
  br i1 %exitcond.not.i140, label %.critedge2.loopexit.i136, label %.lr.ph54.i133, !llvm.loop !11

.critedge2.loopexit.i136:                         ; preds = %bb.m, %.lr.ph54.i133
  %.039.lcssa.ph.i137 = phi i64 [ %.03952.i135, %.lr.ph54.i133 ], [ %i.cb, %bb.m ]
  %.1.lcssa.ph.i138 = phi ptr [ %.153.i134, %.lr.ph54.i133 ], [ %scevgep69.i132, %bb.m ] ; 2 uses
  %.pre.i139 = ptrtoint ptr %.1.lcssa.ph.i138 to i64
  br label %.critedge2.i116

.critedge2.i116:                                  ; preds = %.critedge2.loopexit.i136, %.critedge.i114
  %.1.lcssa70.pre-phi.i117 = phi i64 [ %.pre.i139, %.critedge2.loopexit.i136 ], [ %.pre-phi172, %.critedge.i114 ]
  %.039.lcssa.i118 = phi i64 [ %.039.lcssa.ph.i137, %.critedge2.loopexit.i136 ], [ %.039.lcssa.i, %.critedge.i114 ]
  %.1.lcssa.i119 = phi ptr [ %.1.lcssa.ph.i138, %.critedge2.loopexit.i136 ], [ %.038.lcssa.i115, %.critedge.i114 ] ; 4 uses
  %i.cd = icmp ult ptr %.1.lcssa.i119, %2
  br i1 %i.cd, label %.lr.ph62.preheader.i121, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142

.lr.ph62.preheader.i121:                          ; preds = %.critedge2.i116
  %i.ce = sub i64 %i.b, %.1.lcssa70.pre-phi.i117
  %scevgep71.i122 = getelementptr i8, ptr %.1.lcssa.i119, i64 %i.ce ; 2 uses
  br label %.lr.ph62.i123

.lr.ph62.i123:                                    ; preds = %bb.n, %.lr.ph62.preheader.i121
  %.061.i124 = phi i1 [ %spec.select.i129, %bb.n ], [ false, %.lr.ph62.preheader.i121 ] ; 2 uses
  %.260.i125 = phi ptr [ %i.cj, %bb.n ], [ %.1.lcssa.i119, %.lr.ph62.preheader.i121 ] ; 3 uses
  %i.cf = load i8, ptr %.260.i125, align 1, !tbaa !7 ; 2 uses
  %i.cg = add i8 %i.cf, -48
  %i.ch = icmp ult i8 %i.cg, 10
  br i1 %i.ch, label %bb.n, label %.critedge4.i126

bb.n:                                             ; preds = %.lr.ph62.i123
  %i.ci = icmp ne i8 %i.cf, 48
  %spec.select.i129 = or i1 %.061.i124, %i.ci     ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.260.i125, i64 1 ; 2 uses
  %exitcond72.not.i130 = icmp eq ptr %i.cj, %scevgep71.i122
  br i1 %exitcond72.not.i130, label %.critedge4.i126, label %.lr.ph62.i123, !llvm.loop !12

.critedge4.i126:                                  ; preds = %bb.n, %.lr.ph62.i123
  %.2.lcssa.i127 = phi ptr [ %scevgep71.i122, %bb.n ], [ %.260.i125, %.lr.ph62.i123 ]
  %.0.lcssa.i128 = phi i1 [ %spec.select.i129, %bb.n ], [ %.061.i124, %.lr.ph62.i123 ]
  %spec.select156 = select i1 %.0.lcssa.i128, i1 true, i1 %.1148
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142

_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142: ; preds = %.critedge4.i126, %.critedge2.i116
  %.2149 = phi i1 [ %.1148, %.critedge2.i116 ], [ %spec.select156, %.critedge4.i126 ]
  %.2.lcssa79.i120 = phi ptr [ %.1.lcssa.i119, %.critedge2.i116 ], [ %.2.lcssa.i127, %.critedge4.i126 ]
  %i.ck = ptrtoint ptr %.2.lcssa79.i120 to i64
  %i.cl = sub i64 %i.ck, %.pre-phi174200          ; 2 uses
  %i.cm = trunc i64 %i.cl to i32                  ; 2 uses
  %sext157 = shl i64 %i.cl, 32
  %i.cn = ashr exact i64 %sext157, 32
  %i.co = getelementptr inbounds i8, ptr %.2202, i64 %i.cn
  %i.cp = icmp slt i32 %i.cm, 50000000
  %.089. = tail call i32 @llvm.smin.i32(i32 %.089.a, i32 %i.cm)
  %.386 = sub nsw i32 %.285201, %.089.
  br i1 %i.cp, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142, %bb.h, %bb.g
  %.0150 = phi i64 [ %.039.lcssa.i118, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142 ], [ %.039.lcssa.i, %bb.h ], [ %.039.lcssa.i, %bb.g ]
  %.0147 = phi i1 [ %.2149, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142 ], [ %.1148, %bb.h ], [ %.1148, %bb.g ]
  %.588 = phi i32 [ %.386, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142 ], [ %.083, %bb.h ], [ %.083, %bb.g ]
  %.3 = phi ptr [ %i.co, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142 ], [ %i.ap, %bb.h ], [ %i.ap, %bb.g ] ; 9 uses
  %i.cq = icmp eq ptr %1, %.3
  br i1 %i.cq, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = ptrtoint ptr %.3 to i64
  %i.cs = sub i64 %i.cr, %i.a
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cu = load i8, ptr %1, align 1, !tbaa !7
  %i.cv = icmp eq i8 %i.cu, 46
  br i1 %i.cv, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.0147, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %1, ptr %i.c, align 8, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.3, ptr %i.cw, align 8, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i64 %.0150, ptr %0, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  store i32 0, ptr %i.cx, align 4, !tbaa !22
  %i.cy = and i32 %3, 3                           ; 2 uses
  %i.cz = icmp ne i32 %i.cy, 2
  %i.da = icmp ult ptr %.3, %2
  %or.cond = and i1 %i.cz, %i.da
  br i1 %or.cond, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.db = load i8, ptr %.3, align 1, !tbaa !7
  %i.dc = and i8 %i.db, -33
  %i.dd = icmp eq i8 %i.dc, 69
  br i1 %i.dd, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 4 uses
  %i.df = icmp ult ptr %i.de, %2
  br i1 %i.df, label %bb.w, label %.critedge104

bb.w:                                             ; preds = %bb.v
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !7   ; 2 uses
  %i.dh = icmp eq i8 %i.dg, 45
  br i1 %i.dh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %.critedge104

bb.y:                                             ; preds = %bb.w
  %i.dj = icmp eq i8 %i.dg, 43
  %i.dk = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %spec.select = select i1 %i.dj, ptr %i.dk, ptr %i.de
  br label %.critedge104

.critedge104:                                     ; preds = %bb.y, %bb.v, %bb.x
  %.080.not = phi i1 [ false, %bb.x ], [ true, %bb.v ], [ true, %bb.y ]
  %.4 = phi ptr [ %i.di, %bb.x ], [ %i.de, %bb.v ], [ %spec.select, %bb.y ] ; 2 uses
  %i.dl = tail call fastcc noundef i32 @_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS4_iPT0_Pb(ptr noundef nonnull %.4, ptr noundef nonnull %2, ptr noundef nonnull %i.cx) ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %.4, i64 %i.dm ; 2 uses
  %.not158 = icmp eq i32 %i.dl, 0                 ; 2 uses
  %brmerge = or i1 %.080.not, %.not158
  br i1 %brmerge, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge104
  %i.do = load i32, ptr %i.cx, align 4, !tbaa !22
  %i.dp = sub nsw i32 0, %i.do
  store i32 %i.dp, ptr %i.cx, align 4, !tbaa !22
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge104
  br i1 %.not158, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.u, %bb.t, %bb.aa
  %i.dq = icmp eq i32 %i.cy, 1
  br i1 %i.dq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %.thread, %bb.aa
  %.6154 = phi ptr [ %.3, %.thread ], [ %i.dn, %bb.aa ], [ %i.dn, %bb.z ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.dr, align 8, !tbaa !23
  %i.ds = load i64, ptr %0, align 8, !tbaa !21
  %.not = icmp eq i64 %i.ds, 0
  %i.dt = load i32, ptr %i.cx, align 4
  %i.du = add nsw i32 %i.dt, %.588
  %.sink = select i1 %.not, i32 0, i32 %i.du
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.dv, align 8, !tbaa !24
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.6154, ptr %i.dw, align 8, !tbaa !25
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit142, %.critedge3, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit, %bb.o, %bb.q, %.thread, %bb.ab, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051212_GLOBAL__N_118ParseInfinityOrNanEPKcS3_PNS0_16strings_internal11ParsedFloatE(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 3
  br i1 %i.d, label %.critedge40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !7
  switch i8 %i.e, label %.critedge40 [
    i8 105, label %bb.c
    i8 73, label %bb.c
    i8 110, label %bb.h
    i8 78, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = tail call noundef i32 @_ZN4absl12lts_2025051216strings_internal10memcasecmpEPKcS3_m(ptr noundef nonnull %i.f, ptr noundef nonnull @.str, i64 noundef 2)
  %.not39 = icmp eq i32 %i.g, 0
  br i1 %.not39, label %bb.d, label %.critedge40

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.h, align 8, !tbaa !23
  %i.i = icmp samesign ugt i64 %i.c, 7
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = tail call noundef i32 @_ZN4absl12lts_2025051216strings_internal10memcasecmpEPKcS3_m(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.1, i64 noundef 5)
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !25
  br label %.critedge40

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !25
  br label %.critedge40

bb.h:                                             ; preds = %bb.b, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = tail call noundef i32 @_ZN4absl12lts_2025051216strings_internal10memcasecmpEPKcS3_m(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.2, i64 noundef 2)
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.i, label %.critedge40

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 2, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !25
  %i.v = icmp ult ptr %i.t, %1
  br i1 %i.v, label %bb.j, label %.critedge40

bb.j:                                             ; preds = %bb.i
  %i.w = load i8, ptr %i.t, align 1, !tbaa !7
  %i.x = icmp eq i8 %i.w, 40
  br i1 %i.x, label %bb.k, label %.critedge40

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.z = icmp ult ptr %i.y, %1
  br i1 %i.z, label %.lr.ph, label %.critedge40

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.042 = phi ptr [ %i.ah, %bb.l ], [ %i.y, %bb.k ] ; 4 uses
  %i.aa = load i8, ptr %.042, align 1, !tbaa !7   ; 4 uses
  %i.ab = icmp eq i8 %i.aa, 95
  %i.ac = add i8 %i.aa, -48
  %or.cond.i = icmp ult i8 %i.ac, 10
  %or.cond12.i = or i1 %i.ab, %or.cond.i
  %i.ad = and i8 %i.aa, -33
  %i.ae = add i8 %i.ad, -65
  %i.af = icmp ult i8 %i.ae, 26
  %i.ag = or i1 %or.cond12.i, %i.af
  br i1 %i.ag, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.042, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.ah, %1
  br i1 %exitcond.not, label %.critedge40, label %.lr.ph, !llvm.loop !26

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS4_iPT0_Pb:bb.a
  %.03911 = phi i32 [ %i.v, %bb.c ], [ %.fr, %.lr.ph13.preheader ] ; 2 uses
  %i.p = load i8, ptr %.112, align 1, !tbaa !7    ; 2 uses
  %i.q = add i8 %i.p, -48
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.c, label %.critedge2.loopexit

bb.c:                                             ; preds = %.lr.ph13
  %i.s = zext nneg i8 %i.p to i32
  %i.t = mul nsw i32 %.03911, 10
  %i.u = add i32 %i.t, -48
  %i.v = add i32 %i.u, %i.s                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.112, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.w, %i.l
  br i1 %exitcond.not, label %.critedge2.loopexit, label %.lr.ph13, !llvm.loop !28

.critedge2.loopexit:                              ; preds = %bb.c, %.lr.ph13
  %.039.lcssa.ph = phi i32 [ %.03911, %.lr.ph13 ], [ %i.v, %bb.c ]
  %.1.lcssa.ph = phi ptr [ %.112, %.lr.ph13 ], [ %scevgep24, %bb.c ] ; 2 uses
  %.pre = ptrtoint ptr %.1.lcssa.ph to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.1.lcssa25.pre-phi = phi i64 [ %.pre, %.critedge2.loopexit ], [ %i.h, %.critedge ] ; 2 uses
  %.039.lcssa = phi i32 [ %.039.lcssa.ph, %.critedge2.loopexit ], [ %.fr, %.critedge ]
  %.1.lcssa = phi ptr [ %.1.lcssa.ph, %.critedge2.loopexit ], [ %.038.lcssa, %.critedge ] ; 3 uses
  %i.x = icmp ult ptr %.1.lcssa, %1
  br i1 %i.x, label %.lr.ph20.preheader, label %.critedge4

.lr.ph20.preheader:                               ; preds = %.critedge2
  %i.y = sub i64 %i.b, %.1.lcssa25.pre-phi
  %scevgep26 = getelementptr i8, ptr %.1.lcssa, i64 %i.y ; 2 uses
  br label %.lr.ph20

.lr.ph20:                                         ; preds = %.lr.ph20.preheader, %bb.d
  %.219 = phi ptr [ %i.ac, %bb.d ], [ %.1.lcssa, %.lr.ph20.preheader ] ; 3 uses
  %i.z = load i8, ptr %.219, align 1, !tbaa !7
  %i.aa = add i8 %i.z, -48
  %i.ab = icmp ult i8 %i.aa, 10
  br i1 %i.ab, label %bb.d, label %.critedge4.loopexit

bb.d:                                             ; preds = %.lr.ph20
  %i.ac = getelementptr inbounds nuw i8, ptr %.219, i64 1 ; 2 uses
  %exitcond27.not = icmp eq ptr %i.ac, %scevgep26
  br i1 %exitcond27.not, label %.critedge4.loopexit, label %.lr.ph20, !llvm.loop !29

.critedge4.loopexit:                              ; preds = %.lr.ph20, %bb.d
  %.2.lcssa.ph = phi ptr [ %scevgep26, %bb.d ], [ %.219, %.lr.ph20 ]
  %.pre28 = ptrtoint ptr %.2.lcssa.ph to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.pre-phi = phi i64 [ %.pre28, %.critedge4.loopexit ], [ %.1.lcssa25.pre-phi, %.critedge2 ]
  store i32 %.039.lcssa, ptr %2, align 4, !tbaa !3
  %i.ad = sub i64 %.pre-phi, %i.a
  %i.ae = trunc i64 %i.ad to i32
  ret i32 %i.ae
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN4absl12lts_2025051216strings_internal10ParseFloatILi16EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE(ptr dead_on_unwind noalias writable sret(%"struct.absl::lts_20250512::strings_internal::ParsedFloat") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = icmp eq ptr %1, %2
  br i1 %i.d, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051212_GLOBAL__N_118ParseInfinityOrNanEPKcS3_PNS0_16strings_internal11ParsedFloatE(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0)
  br i1 %i.e, label %bb.aa, label %.preheader160

.preheader160:                                    ; preds = %bb.b
  %i.f = icmp ult ptr %1, %2
  br i1 %i.f, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader160
  %i.g = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %1, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.0161 = phi ptr [ %i.j, %bb.c ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.h = load i8, ptr %.0161, align 1, !tbaa !7
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.0161, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.j, %2
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !30

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph
  %.0.lcssa.ph = phi ptr [ %.0161, %.lr.ph ], [ %scevgep, %bb.c ] ; 2 uses
  %.pre = ptrtoint ptr %.0.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader160
  %.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %i.a, %.preheader160 ] ; 4 uses
  %.0.lcssa = phi ptr [ %.0.lcssa.ph, %.critedge.loopexit ], [ %1, %.preheader160 ] ; 6 uses
  %.not4142.i = icmp eq ptr %2, %.0.lcssa
  br i1 %.not4142.i, label %.critedge.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.critedge
  %i.k = sub i64 %i.b, %.pre-phi
  %scevgep.i = getelementptr i8, ptr %.0.lcssa, i64 %i.k
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.d, %.lr.ph.split.preheader.i
  %.03844.i = phi ptr [ %i.n, %bb.d ], [ %.0.lcssa, %.lr.ph.split.preheader.i ] ; 3 uses
  %i.l = load i8, ptr %.03844.i, align 1, !tbaa !7
  %i.m = icmp eq i8 %i.l, 48
  br i1 %i.m, label %bb.d, label %.critedge.i.loopexit

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.n = getelementptr inbounds nuw i8, ptr %.03844.i, i64 1 ; 2 uses
  %.not41.i = icmp eq ptr %2, %i.n
  br i1 %.not41.i, label %.critedge.i.loopexit, label %.lr.ph.split.i, !llvm.loop !31

.critedge.i.loopexit:                             ; preds = %.lr.ph.split.i, %bb.d
  %.038.lcssa.i.ph = phi ptr [ %scevgep.i, %bb.d ], [ %.03844.i, %.lr.ph.split.i ] ; 2 uses
  %.pre170 = ptrtoint ptr %.038.lcssa.i.ph to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.critedge
  %.pre-phi171 = phi i64 [ %.pre170, %.critedge.i.loopexit ], [ %.pre-phi, %.critedge ] ; 3 uses
  %.038.lcssa.i = phi ptr [ %.038.lcssa.i.ph, %.critedge.i.loopexit ], [ %.0.lcssa, %.critedge ] ; 5 uses
  %i.o = sub i64 %i.b, %.pre-phi171
  %i.p = icmp sgt i64 %i.o, 15
  %i.q = getelementptr inbounds nuw i8, ptr %.038.lcssa.i, i64 15
  %i.r = select i1 %i.p, ptr %i.q, ptr %2         ; 3 uses
  %i.s = icmp ult ptr %.038.lcssa.i, %i.r
  br i1 %i.s, label %.lr.ph54.preheader.i, label %.critedge2.i

.lr.ph54.preheader.i:                             ; preds = %.critedge.i
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.t, %.pre-phi171
  %scevgep69.i = getelementptr i8, ptr %.038.lcssa.i, i64 %i.u
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.e, %.lr.ph54.preheader.i
  %.153.i = phi ptr [ %i.ad, %bb.e ], [ %.038.lcssa.i, %.lr.ph54.preheader.i ] ; 3 uses
  %.03952.i = phi i64 [ %i.ac, %bb.e ], [ 0, %.lr.ph54.preheader.i ] ; 2 uses
  %i.v = load i8, ptr %.153.i, align 1, !tbaa !7
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !7     ; 2 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %bb.e, label %.critedge2.loopexit.i

bb.e:                                             ; preds = %.lr.ph54.i
  %i.aa = zext nneg i8 %i.y to i64
  %i.ab = shl i64 %.03952.i, 4
  %i.ac = add i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.153.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ad, %i.r
  br i1 %exitcond.not.i, label %.critedge2.loopexit.i, label %.lr.ph54.i, !llvm.loop !32

.critedge2.loopexit.i:                            ; preds = %bb.e, %.lr.ph54.i
  %.039.lcssa.ph.i = phi i64 [ %.03952.i, %.lr.ph54.i ], [ %i.ac, %bb.e ]
  %.1.lcssa.ph.i = phi ptr [ %.153.i, %.lr.ph54.i ], [ %scevgep69.i, %bb.e ] ; 2 uses
  %.pre.i = ptrtoint ptr %.1.lcssa.ph.i to i64
  %i.ae = freeze i64 %.039.lcssa.ph.i
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %.critedge.i
  %.1.lcssa70.pre-phi.i = phi i64 [ %.pre.i, %.critedge2.loopexit.i ], [ %.pre-phi171, %.critedge.i ]
  %.039.lcssa.i = phi i64 [ %i.ae, %.critedge2.loopexit.i ], [ 0, %.critedge.i ] ; 5 uses
  %.1.lcssa.i = phi ptr [ %.1.lcssa.ph.i, %.critedge2.loopexit.i ], [ %.038.lcssa.i, %.critedge.i ] ; 4 uses
  %i.af = icmp ult ptr %.1.lcssa.i, %2
  br i1 %i.af, label %.lr.ph62.preheader.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit

.lr.ph62.preheader.i:                             ; preds = %.critedge2.i
  %i.ag = sub i64 %i.b, %.1.lcssa70.pre-phi.i
  %scevgep71.i = getelementptr i8, ptr %.1.lcssa.i, i64 %i.ag ; 2 uses
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %bb.f, %.lr.ph62.preheader.i
  %.061.i = phi i1 [ %spec.select.i, %bb.f ], [ false, %.lr.ph62.preheader.i ] ; 2 uses
  %.260.i = phi ptr [ %i.an, %bb.f ], [ %.1.lcssa.i, %.lr.ph62.preheader.i ] ; 3 uses
  %i.ah = load i8, ptr %.260.i, align 1, !tbaa !7 ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !7
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.f, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit

bb.f:                                             ; preds = %.lr.ph62.i
  %i.am = icmp ne i8 %i.ah, 48
  %spec.select.i = or i1 %.061.i, %i.am           ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.260.i, i64 1 ; 2 uses
  %exitcond72.not.i = icmp eq ptr %i.an, %scevgep71.i
  br i1 %exitcond72.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit, label %.lr.ph62.i, !llvm.loop !33

_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit: ; preds = %.lr.ph62.i, %bb.f, %.critedge2.i
  %.1147 = phi i1 [ false, %.critedge2.i ], [ %.061.i, %.lr.ph62.i ], [ %spec.select.i, %bb.f ] ; 4 uses
  %.2.lcssa80.i = phi ptr [ %.1.lcssa.i, %.critedge2.i ], [ %.260.i, %.lr.ph62.i ], [ %scevgep71.i, %bb.f ]
  %i.ao = ptrtoint ptr %.2.lcssa80.i to i64
  %i.ap = sub i64 %i.ao, %.pre-phi                ; 2 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 3 uses
  %sext = shl i64 %i.ap, 32
  %i.ar = ashr exact i64 %sext, 32
  %i.as = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.ar ; 5 uses
  %i.at = icmp sgt i32 %i.aq, 12499999
  br i1 %i.at, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit
  %4 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 15)
  %.087.a = sub nsw i32 15, %4                    ; 2 uses
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 15)
  %.081 = add nsw i32 %i.au, -15                  ; 4 uses
  %i.av = icmp ult ptr %i.as, %2
  br i1 %i.av, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !7
  %i.ax = icmp eq i8 %i.aw, 46
  br i1 %i.ax, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 7 uses
  %i.az = icmp eq i64 %.039.lcssa.i, 0
  br i1 %i.az, label %.preheader, label %.thread196

.thread196:                                       ; preds = %bb.i
  %.pre174 = ptrtoint ptr %i.ay to i64            ; 2 uses
  br label %.critedge.i112

.preheader:                                       ; preds = %bb.i
  %i.ba = icmp ult ptr %i.ay, %2
  br i1 %i.ba, label %.lr.ph165.preheader, label %.critedge3

.lr.ph165.preheader:                              ; preds = %.preheader
  %i.bb = sub i64 %i.b, %.pre-phi
  %scevgep169 = getelementptr i8, ptr %.0.lcssa, i64 %i.bb
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.j
  %.1164 = phi ptr [ %i.be, %bb.j ], [ %i.ay, %.lr.ph165.preheader ] ; 3 uses
  %i.bc = load i8, ptr %.1164, align 1, !tbaa !7
  %i.bd = icmp eq i8 %i.bc, 48
  br i1 %i.bd, label %bb.j, label %.critedge3

bb.j:                                             ; preds = %.lr.ph165
  %i.be = getelementptr inbounds nuw i8, ptr %.1164, i64 1 ; 2 uses
  %i.bf = icmp ult ptr %i.be, %2
  br i1 %i.bf, label %.lr.ph165, label %.critedge3, !llvm.loop !34

.critedge3:                                       ; preds = %.lr.ph165, %bb.j, %.preheader
  %.1.lcssa = phi ptr [ %i.ay, %.preheader ], [ %scevgep169, %bb.j ], [ %.1164, %.lr.ph165 ] ; 7 uses
  %i.bg = ptrtoint ptr %.1.lcssa to i64           ; 5 uses
  %i.bh = ptrtoint ptr %i.ay to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 12500000
  %i.bl = sub nsw i32 %.081, %i.bj                ; 2 uses
  br i1 %i.bk, label %bb.k, label %bb.aa

bb.k:                                             ; preds = %.critedge3
  %.not4142.i106 = icmp eq ptr %2, %.1.lcssa
  br i1 %.not4142.i106, label %.critedge.i112, label %.lr.ph.split.preheader.i108

.lr.ph.split.preheader.i108:                      ; preds = %bb.k
  %i.bm = sub i64 %i.b, %i.bg
  %scevgep.i109 = getelementptr i8, ptr %.1.lcssa, i64 %i.bm
  br label %.lr.ph.split.i110

.lr.ph.split.i110:                                ; preds = %bb.l, %.lr.ph.split.preheader.i108
  %.03844.i111 = phi ptr [ %i.bp, %bb.l ], [ %.1.lcssa, %.lr.ph.split.preheader.i108 ] ; 3 uses
  %i.bn = load i8, ptr %.03844.i111, align 1, !tbaa !7
  %i.bo = icmp eq i8 %i.bn, 48
  br i1 %i.bo, label %bb.l, label %.critedge.i112.loopexit

bb.l:                                             ; preds = %.lr.ph.split.i110
  %i.bp = getelementptr inbounds nuw i8, ptr %.03844.i111, i64 1 ; 2 uses
  %.not41.i139 = icmp eq ptr %2, %i.bp
  br i1 %.not41.i139, label %.critedge.i112.loopexit, label %.lr.ph.split.i110, !llvm.loop !31

.critedge.i112.loopexit:                          ; preds = %.lr.ph.split.i110, %bb.l
  %.038.lcssa.i113.ph = phi ptr [ %scevgep.i109, %bb.l ], [ %.03844.i111, %.lr.ph.split.i110 ] ; 2 uses
  %.pre172 = ptrtoint ptr %.038.lcssa.i113.ph to i64
  br label %.critedge.i112

.critedge.i112:                                   ; preds = %.thread196, %.critedge.i112.loopexit, %bb.k
  %.2205 = phi ptr [ %.1.lcssa, %.critedge.i112.loopexit ], [ %.1.lcssa, %bb.k ], [ %i.ay, %.thread196 ]
  %.283204 = phi i32 [ %i.bl, %.critedge.i112.loopexit ], [ %i.bl, %bb.k ], [ %.081, %.thread196 ]
  %.pre-phi175203 = phi i64 [ %i.bg, %.critedge.i112.loopexit ], [ %i.bg, %bb.k ], [ %.pre174, %.thread196 ]
  %.pre-phi173 = phi i64 [ %.pre172, %.critedge.i112.loopexit ], [ %i.bg, %bb.k ], [ %.pre174, %.thread196 ] ; 3 uses
  %.038.lcssa.i113 = phi ptr [ %.038.lcssa.i113.ph, %.critedge.i112.loopexit ], [ %.1.lcssa, %bb.k ], [ %i.ay, %.thread196 ] ; 5 uses
  %i.bq = sub i64 %i.b, %.pre-phi173
  %i.br = zext nneg i32 %.087.a to i64            ; 2 uses
  %i.bs = icmp sgt i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.038.lcssa.i113, i64 %i.br
  %i.bu = select i1 %i.bs, ptr %i.bt, ptr %2      ; 3 uses
  %i.bv = icmp ult ptr %.038.lcssa.i113, %i.bu
  br i1 %i.bv, label %.lr.ph54.preheader.i129, label %.critedge2.i114

.lr.ph54.preheader.i129:                          ; preds = %.critedge.i112
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bw, %.pre-phi173
  %scevgep69.i130 = getelementptr i8, ptr %.038.lcssa.i113, i64 %i.bx
  br label %.lr.ph54.i131

.lr.ph54.i131:                                    ; preds = %bb.m, %.lr.ph54.preheader.i129
  %.153.i132 = phi ptr [ %i.cg, %bb.m ], [ %.038.lcssa.i113, %.lr.ph54.preheader.i129 ] ; 3 uses
  %.03952.i133 = phi i64 [ %i.cf, %bb.m ], [ %.039.lcssa.i, %.lr.ph54.preheader.i129 ] ; 2 uses
  %i.by = load i8, ptr %.153.i132, align 1, !tbaa !7
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !7   ; 2 uses
  %i.cc = icmp sgt i8 %i.cb, -1
  br i1 %i.cc, label %bb.m, label %.critedge2.loopexit.i134

bb.m:                                             ; preds = %.lr.ph54.i131
  %i.cd = zext nneg i8 %i.cb to i64
  %i.ce = shl i64 %.03952.i133, 4
  %i.cf = add i64 %i.ce, %i.cd                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.153.i132, i64 1 ; 2 uses
  %exitcond.not.i138 = icmp eq ptr %i.cg, %i.bu
  br i1 %exitcond.not.i138, label %.critedge2.loopexit.i134, label %.lr.ph54.i131, !llvm.loop !32

.critedge2.loopexit.i134:                         ; preds = %bb.m, %.lr.ph54.i131
  %.039.lcssa.ph.i135 = phi i64 [ %.03952.i133, %.lr.ph54.i131 ], [ %i.cf, %bb.m ]
  %.1.lcssa.ph.i136 = phi ptr [ %.153.i132, %.lr.ph54.i131 ], [ %scevgep69.i130, %bb.m ] ; 2 uses
  %.pre.i137 = ptrtoint ptr %.1.lcssa.ph.i136 to i64
  br label %.critedge2.i114

.critedge2.i114:                                  ; preds = %.critedge2.loopexit.i134, %.critedge.i112
  %.1.lcssa70.pre-phi.i115 = phi i64 [ %.pre.i137, %.critedge2.loopexit.i134 ], [ %.pre-phi173, %.critedge.i112 ]
  %.039.lcssa.i116 = phi i64 [ %.039.lcssa.ph.i135, %.critedge2.loopexit.i134 ], [ %.039.lcssa.i, %.critedge.i112 ]
  %.1.lcssa.i117 = phi ptr [ %.1.lcssa.ph.i136, %.critedge2.loopexit.i134 ], [ %.038.lcssa.i113, %.critedge.i112 ] ; 4 uses
  %i.ch = icmp ult ptr %.1.lcssa.i117, %2
  br i1 %i.ch, label %.lr.ph62.preheader.i119, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140

.lr.ph62.preheader.i119:                          ; preds = %.critedge2.i114
  %i.ci = sub i64 %i.b, %.1.lcssa70.pre-phi.i115
  %scevgep71.i120 = getelementptr i8, ptr %.1.lcssa.i117, i64 %i.ci ; 2 uses
  br label %.lr.ph62.i121

.lr.ph62.i121:                                    ; preds = %bb.n, %.lr.ph62.preheader.i119
  %.061.i122 = phi i1 [ %spec.select.i127, %bb.n ], [ false, %.lr.ph62.preheader.i119 ] ; 2 uses
  %.260.i123 = phi ptr [ %i.cp, %bb.n ], [ %.1.lcssa.i117, %.lr.ph62.preheader.i119 ] ; 3 uses
  %i.cj = load i8, ptr %.260.i123, align 1, !tbaa !7 ; 2 uses
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %bb.n, label %.critedge4.i124

bb.n:                                             ; preds = %.lr.ph62.i121
  %i.co = icmp ne i8 %i.cj, 48
  %spec.select.i127 = or i1 %.061.i122, %i.co     ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.260.i123, i64 1 ; 2 uses
  %exitcond72.not.i128 = icmp eq ptr %i.cp, %scevgep71.i120
  br i1 %exitcond72.not.i128, label %.critedge4.i124, label %.lr.ph62.i121, !llvm.loop !33

.critedge4.i124:                                  ; preds = %bb.n, %.lr.ph62.i121
  %.2.lcssa.i125 = phi ptr [ %scevgep71.i120, %bb.n ], [ %.260.i123, %.lr.ph62.i121 ]
  %.0.lcssa.i126 = phi i1 [ %spec.select.i127, %bb.n ], [ %.061.i122, %.lr.ph62.i121 ]
  %spec.select156 = select i1 %.0.lcssa.i126, i1 true, i1 %.1147
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140

_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140: ; preds = %.critedge4.i124, %.critedge2.i114
  %.2148 = phi i1 [ %.1147, %.critedge2.i114 ], [ %spec.select156, %.critedge4.i124 ]
  %.2.lcssa80.i118 = phi ptr [ %.1.lcssa.i117, %.critedge2.i114 ], [ %.2.lcssa.i125, %.critedge4.i124 ]
  %i.cq = ptrtoint ptr %.2.lcssa80.i118 to i64
  %i.cr = sub i64 %i.cq, %.pre-phi175203          ; 2 uses
  %i.cs = trunc i64 %i.cr to i32                  ; 2 uses
  %sext158 = shl i64 %i.cr, 32
  %i.ct = ashr exact i64 %sext158, 32
  %i.cu = getelementptr inbounds i8, ptr %.2205, i64 %i.ct
  %i.cv = icmp slt i32 %i.cs, 12500000
  %.087. = tail call i32 @llvm.smin.i32(i32 %.087.a, i32 %i.cs)
  %.384 = sub nsw i32 %.283204, %.087.
  br i1 %i.cv, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140, %bb.h, %bb.g
  %.0149 = phi i64 [ %.039.lcssa.i116, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140 ], [ %.039.lcssa.i, %bb.h ], [ %.039.lcssa.i, %bb.g ]
  %.0146 = phi i1 [ %.2148, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140 ], [ %.1147, %bb.h ], [ %.1147, %bb.g ]
  %.586 = phi i32 [ %.384, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140 ], [ %.081, %bb.h ], [ %.081, %bb.g ]
  %.3 = phi ptr [ %i.cu, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140 ], [ %i.as, %bb.h ], [ %i.as, %bb.g ] ; 8 uses
  %i.cw = icmp eq ptr %1, %.3
  br i1 %i.cw, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = ptrtoint ptr %.3 to i64
  %i.cy = sub i64 %i.cx, %i.a
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.da = load i8, ptr %1, align 1, !tbaa !7
  %i.db = icmp eq i8 %i.da, 46
  br i1 %i.db, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dc = zext i1 %.0146 to i64
  %spec.select157 = or i64 %.0149, %i.dc
  store i64 %spec.select157, ptr %0, align 8, !tbaa !21
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  store i32 0, ptr %i.dd, align 4, !tbaa !22
  %i.de = and i32 %3, 3                           ; 2 uses
  %i.df = icmp ne i32 %i.de, 2
  %i.dg = icmp ult ptr %.3, %2
  %or.cond = and i1 %i.df, %i.dg
  br i1 %or.cond, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.dh = load i8, ptr %.3, align 1, !tbaa !7
  %i.di = and i8 %i.dh, -33
  %i.dj = icmp eq i8 %i.di, 80
  br i1 %i.dj, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 4 uses
  %i.dl = icmp ult ptr %i.dk, %2
  br i1 %i.dl, label %bb.u, label %.critedge102

bb.u:                                             ; preds = %bb.t
  %i.dm = load i8, ptr %i.dk, align 1, !tbaa !7   ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 45
  br i1 %i.dn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %.critedge102

bb.w:                                             ; preds = %bb.u
  %i.dp = icmp eq i8 %i.dm, 43
  %i.dq = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %spec.select = select i1 %i.dp, ptr %i.dq, ptr %i.dk
  br label %.critedge102

.critedge102:                                     ; preds = %bb.w, %bb.t, %bb.v
  %.078.not = phi i1 [ false, %bb.v ], [ true, %bb.t ], [ true, %bb.w ]
  %.4 = phi ptr [ %i.do, %bb.v ], [ %i.dk, %bb.t ], [ %spec.select, %bb.w ] ; 2 uses
  %i.dr = tail call fastcc noundef i32 @_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS4_iPT0_Pb(ptr noundef nonnull %.4, ptr noundef nonnull %2, ptr noundef nonnull %i.dd) ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %.4, i64 %i.ds ; 2 uses
  %.not159 = icmp eq i32 %i.dr, 0                 ; 2 uses
  %brmerge = or i1 %.078.not, %.not159
  br i1 %brmerge, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge102
  %i.du = load i32, ptr %i.dd, align 4, !tbaa !22
  %i.dv = sub nsw i32 0, %i.du
  store i32 %i.dv, ptr %i.dd, align 4, !tbaa !22
  br label %bb.z

bb.y:                                             ; preds = %.critedge102
  br i1 %.not159, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.s, %bb.r, %bb.y
  %i.dw = icmp eq i32 %i.de, 1
  br i1 %i.dw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.x, %.thread, %bb.y
  %.6154 = phi ptr [ %.3, %.thread ], [ %i.dt, %bb.y ], [ %i.dt, %bb.x ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.dx, align 8, !tbaa !23
  %i.dy = load i64, ptr %0, align 8, !tbaa !21
  %.not = icmp eq i64 %i.dy, 0
  %i.dz = load i32, ptr %i.dd, align 4
  %i.ea = shl nsw i32 %.586, 2
  %i.eb = add nsw i32 %i.dz, %i.ea
  %.sink = select i1 %.not, i32 0, i32 %i.eb
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.ec, align 8, !tbaa !24
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.6154, ptr %i.ed, align 8, !tbaa !25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit140, %.critedge3, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit, %bb.o, %bb.q, %.thread, %bb.z, %bb.b, %bb.a
  ret void
}

declare noundef i32 @_ZN4absl12lts_2025051216strings_internal10memcasecmpEPKcS3_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = !{!15, !18, i64 24}
!15 = !{!"_ZTSN4absl12lts_2025051216strings_internal11ParsedFloatE", !16, i64 0, !4, i64 8, !4, i64 12, !17, i64 16, !18, i64 24, !18, i64 32, !18, i64 40}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSN4absl12lts_2025051216strings_internal9FloatTypeE", !5, i64 0}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!15, !18, i64 32}
!21 = !{!15, !16, i64 0}
!22 = !{!15, !4, i64 12}
!23 = !{!15, !17, i64 16}
!24 = !{!15, !4, i64 8}
!25 = !{!15, !18, i64 40}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
end_hunk_1
