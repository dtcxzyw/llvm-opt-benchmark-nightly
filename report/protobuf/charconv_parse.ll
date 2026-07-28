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
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64                  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = icmp eq ptr %1, %2
  br i1 %i.d, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051212_GLOBAL__N_118ParseInfinityOrNanEPKcS3_PNS0_16strings_internal11ParsedFloatE(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0)
  br i1 %i.e, label %bb.ac, label %.preheader155

.preheader155:                                    ; preds = %bb.b
  %i.f = icmp ult ptr %1, %2
  br i1 %i.f, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader155
  %i.g = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %1, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.0156 = phi ptr [ %i.j, %bb.c ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.h = load i8, ptr %.0156, align 1, !tbaa !7
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.0156, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.j, %2
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !8

.critedge:                                        ; preds = %.lr.ph, %bb.c, %.preheader155
  %.0.lcssa = phi ptr [ %1, %.preheader155 ], [ %scevgep, %bb.c ], [ %.0156, %.lr.ph ] ; 8 uses
  %.not4142.i = icmp eq ptr %2, %.0.lcssa
  br i1 %.not4142.i, label %.critedge.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.critedge
  %i.k = ptrtoaddr ptr %.0.lcssa to i64
  %i.l = sub i64 %i.b, %i.k
  %scevgep.i = getelementptr i8, ptr %.0.lcssa, i64 %i.l
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.d, %.lr.ph.split.preheader.i
  %.03844.i = phi ptr [ %i.o, %bb.d ], [ %.0.lcssa, %.lr.ph.split.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.03844.i, align 1, !tbaa !7
  %i.n = icmp eq i8 %i.m, 48
  br i1 %i.n, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %.03844.i, i64 1 ; 2 uses
  %.not41.i = icmp eq ptr %2, %i.o
  br i1 %.not41.i, label %.critedge.i, label %.lr.ph.split.i, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.split.i, %.critedge
  %.038.lcssa.i = phi ptr [ %.0.lcssa, %.critedge ], [ %.03844.i, %.lr.ph.split.i ], [ %scevgep.i, %bb.d ] ; 6 uses
  %i.p = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.q = ptrtoint ptr %.038.lcssa.i to i64        ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp sgt i64 %i.r, 19
  %i.t = getelementptr inbounds nuw i8, ptr %.038.lcssa.i, i64 19
  %i.u = select i1 %i.s, ptr %i.t, ptr %2         ; 3 uses
  %i.v = icmp ult ptr %.038.lcssa.i, %i.u
  br i1 %i.v, label %.lr.ph54.preheader.i, label %.critedge2.i

.lr.ph54.preheader.i:                             ; preds = %.critedge.i
  %i.w = ptrtoaddr ptr %i.u to i64
  %i.x = sub i64 %i.w, %i.q
  %scevgep69.i = getelementptr i8, ptr %.038.lcssa.i, i64 %i.x
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.e, %.lr.ph54.preheader.i
  %.153.i = phi ptr [ %i.ae, %bb.e ], [ %.038.lcssa.i, %.lr.ph54.preheader.i ] ; 3 uses
  %.03952.i = phi i64 [ %i.ad, %bb.e ], [ 0, %.lr.ph54.preheader.i ] ; 2 uses
  %i.y = load i8, ptr %.153.i, align 1, !tbaa !7  ; 2 uses
  %i.z = add i8 %i.y, -48
  %i.aa = icmp ult i8 %i.z, 10
  br i1 %i.aa, label %bb.e, label %.critedge2.i.loopexit

bb.e:                                             ; preds = %.lr.ph54.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = mul i64 %.03952.i, 10
  %4 = add i64 %i.ac, -48
  %i.ad = add i64 %4, %i.ab                       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.153.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ae, %i.u
  br i1 %exitcond.not.i, label %.critedge2.i.loopexit, label %.lr.ph54.i, !llvm.loop !11

.critedge2.i.loopexit:                            ; preds = %.lr.ph54.i, %bb.e
  %.039.lcssa.i.ph = phi i64 [ %i.ad, %bb.e ], [ %.03952.i, %.lr.ph54.i ]
  %.1.lcssa.i.ph = phi ptr [ %scevgep69.i, %bb.e ], [ %.153.i, %.lr.ph54.i ]
  %i.af = freeze i64 %.039.lcssa.i.ph
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.i.loopexit, %.critedge.i
  %.039.lcssa.i = phi i64 [ 0, %.critedge.i ], [ %i.af, %.critedge2.i.loopexit ] ; 5 uses
  %.1.lcssa.i = phi ptr [ %.038.lcssa.i, %.critedge.i ], [ %.1.lcssa.i.ph, %.critedge2.i.loopexit ] ; 5 uses
  %i.ag = icmp ult ptr %.1.lcssa.i, %2
  br i1 %i.ag, label %.lr.ph62.preheader.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit

.lr.ph62.preheader.i:                             ; preds = %.critedge2.i
  %.1.lcssa70.i = ptrtoaddr ptr %.1.lcssa.i to i64
  %i.ah = sub i64 %i.b, %.1.lcssa70.i
  %scevgep71.i = getelementptr i8, ptr %.1.lcssa.i, i64 %i.ah
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %bb.f, %.lr.ph62.preheader.i
  %.061.i = phi i1 [ %spec.select.i, %bb.f ], [ false, %.lr.ph62.preheader.i ] ; 2 uses
  %.260.i = phi ptr [ %i.am, %bb.f ], [ %.1.lcssa.i, %.lr.ph62.preheader.i ] ; 3 uses
  %i.ai = load i8, ptr %.260.i, align 1, !tbaa !7 ; 2 uses
  %i.aj = add i8 %i.ai, -48
  %i.ak = icmp ult i8 %i.aj, 10
  br i1 %i.ak, label %bb.f, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit

bb.f:                                             ; preds = %.lr.ph62.i
  %i.al = icmp ne i8 %i.ai, 48
  %spec.select.i = or i1 %.061.i, %i.al           ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.260.i, i64 1 ; 2 uses
  %exitcond72.not.i = icmp eq ptr %i.am, %2
  br i1 %exitcond72.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit, label %.lr.ph62.i, !llvm.loop !12

_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit: ; preds = %.lr.ph62.i, %bb.f, %.critedge2.i
  %.1144 = phi i1 [ false, %.critedge2.i ], [ %.061.i, %.lr.ph62.i ], [ %spec.select.i, %bb.f ] ; 4 uses
  %.2.lcssa79.i = phi ptr [ %.1.lcssa.i, %.critedge2.i ], [ %.260.i, %.lr.ph62.i ], [ %scevgep71.i, %bb.f ]
  %i.an = ptrtoint ptr %.2.lcssa79.i to i64
  %i.ao = ptrtoint ptr %.0.lcssa to i64           ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 3 uses
  %sext = shl i64 %i.ap, 32
  %i.ar = ashr exact i64 %sext, 32
  %i.as = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.ar ; 5 uses
  %i.at = icmp sgt i32 %i.aq, 49999999
  br i1 %i.at, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 19)
  %.089 = sub nsw i32 19, %i.au                   ; 2 uses
  %i.av = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 19)
  %.083 = add nsw i32 %i.av, -19                  ; 4 uses
  %i.aw = icmp ult ptr %i.as, %2
  br i1 %i.aw, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ax = load i8, ptr %i.as, align 1, !tbaa !7
  %i.ay = icmp eq i8 %i.ax, 46
  br i1 %i.ay, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 6 uses
  %i.ba = icmp eq i64 %.039.lcssa.i, 0
  br i1 %i.ba, label %.preheader, label %.critedge.i114

.preheader:                                       ; preds = %bb.i
  %i.bb = icmp ult ptr %i.az, %2
  br i1 %i.bb, label %.lr.ph160.preheader, label %.critedge3

.lr.ph160.preheader:                              ; preds = %.preheader
  %i.bc = sub i64 %i.b, %i.ao
  %scevgep164 = getelementptr i8, ptr %.0.lcssa, i64 %i.bc
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %bb.j
  %.1159 = phi ptr [ %i.bf, %bb.j ], [ %i.az, %.lr.ph160.preheader ] ; 3 uses
  %i.bd = load i8, ptr %.1159, align 1, !tbaa !7
  %i.be = icmp eq i8 %i.bd, 48
  br i1 %i.be, label %bb.j, label %.critedge3

bb.j:                                             ; preds = %.lr.ph160
  %i.bf = getelementptr inbounds nuw i8, ptr %.1159, i64 1 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %2
  br i1 %i.bg, label %.lr.ph160, label %.critedge3, !llvm.loop !13

.critedge3:                                       ; preds = %.lr.ph160, %bb.j, %.preheader
  %.1.lcssa = phi ptr [ %i.az, %.preheader ], [ %scevgep164, %bb.j ], [ %.1159, %.lr.ph160 ] ; 9 uses
  %i.bh = ptrtoint ptr %.1.lcssa to i64
  %i.bi = ptrtoint ptr %i.az to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 50000000
  %i.bm = sub nsw i32 %.083, %i.bk                ; 3 uses
  br i1 %i.bl, label %bb.k, label %bb.ac

bb.k:                                             ; preds = %.critedge3
  %.not4142.i108 = icmp eq ptr %2, %.1.lcssa
  br i1 %.not4142.i108, label %.critedge.i114, label %.lr.ph.split.preheader.i110

.lr.ph.split.preheader.i110:                      ; preds = %bb.k
  %i.bn = ptrtoaddr ptr %.1.lcssa to i64
  %i.bo = sub i64 %i.b, %i.bn
  %scevgep.i111 = getelementptr i8, ptr %.1.lcssa, i64 %i.bo
  br label %.lr.ph.split.i112

.lr.ph.split.i112:                                ; preds = %bb.l, %.lr.ph.split.preheader.i110
  %.03844.i113 = phi ptr [ %i.br, %bb.l ], [ %.1.lcssa, %.lr.ph.split.preheader.i110 ] ; 3 uses
  %i.bp = load i8, ptr %.03844.i113, align 1, !tbaa !7
  %i.bq = icmp eq i8 %i.bp, 48
  br i1 %i.bq, label %bb.l, label %.critedge.i114

bb.l:                                             ; preds = %.lr.ph.split.i112
  %i.br = getelementptr inbounds nuw i8, ptr %.03844.i113, i64 1 ; 2 uses
  %.not41.i137 = icmp eq ptr %2, %i.br
  br i1 %.not41.i137, label %.critedge.i114, label %.lr.ph.split.i112, !llvm.loop !10

.critedge.i114:                                   ; preds = %bb.l, %.lr.ph.split.i112, %bb.i, %bb.k
  %.2190 = phi ptr [ %.1.lcssa, %bb.k ], [ %i.az, %bb.i ], [ %.1.lcssa, %.lr.ph.split.i112 ], [ %.1.lcssa, %bb.l ] ; 2 uses
  %.285189 = phi i32 [ %i.bm, %bb.k ], [ %.083, %bb.i ], [ %i.bm, %.lr.ph.split.i112 ], [ %i.bm, %bb.l ]
  %.038.lcssa.i115 = phi ptr [ %.1.lcssa, %bb.k ], [ %i.az, %bb.i ], [ %scevgep.i111, %bb.l ], [ %.03844.i113, %.lr.ph.split.i112 ] ; 6 uses
  %i.bs = ptrtoint ptr %.038.lcssa.i115 to i64    ; 2 uses
  %i.bt = sub i64 %i.p, %i.bs
  %i.bu = zext nneg i32 %.089 to i64              ; 2 uses
  %i.bv = icmp sgt i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.038.lcssa.i115, i64 %i.bu
  %i.bx = select i1 %i.bv, ptr %i.bw, ptr %2      ; 3 uses
  %i.by = icmp ult ptr %.038.lcssa.i115, %i.bx
  br i1 %i.by, label %.lr.ph54.preheader.i131, label %.critedge2.i116

.lr.ph54.preheader.i131:                          ; preds = %.critedge.i114
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bz, %i.bs
  %scevgep69.i132 = getelementptr i8, ptr %.038.lcssa.i115, i64 %i.ca
  br label %.lr.ph54.i133

.lr.ph54.i133:                                    ; preds = %bb.m, %.lr.ph54.preheader.i131
  %.153.i134 = phi ptr [ %i.ch, %bb.m ], [ %.038.lcssa.i115, %.lr.ph54.preheader.i131 ] ; 3 uses
  %.03952.i135 = phi i64 [ %i.cg, %bb.m ], [ %.039.lcssa.i, %.lr.ph54.preheader.i131 ] ; 2 uses
  %i.cb = load i8, ptr %.153.i134, align 1, !tbaa !7 ; 2 uses
  %i.cc = add i8 %i.cb, -48
  %i.cd = icmp ult i8 %i.cc, 10
  br i1 %i.cd, label %bb.m, label %.critedge2.i116

bb.m:                                             ; preds = %.lr.ph54.i133
  %i.ce = zext nneg i8 %i.cb to i64
  %i.cf = mul i64 %.03952.i135, 10
  %5 = add i64 %i.cf, -48
  %i.cg = add i64 %5, %i.ce                       ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.153.i134, i64 1 ; 2 uses
  %exitcond.not.i136 = icmp eq ptr %i.ch, %i.bx
  br i1 %exitcond.not.i136, label %.critedge2.i116, label %.lr.ph54.i133, !llvm.loop !11

.critedge2.i116:                                  ; preds = %bb.m, %.lr.ph54.i133, %.critedge.i114
  %.039.lcssa.i117 = phi i64 [ %.039.lcssa.i, %.critedge.i114 ], [ %.03952.i135, %.lr.ph54.i133 ], [ %i.cg, %bb.m ]
  %.1.lcssa.i118 = phi ptr [ %.038.lcssa.i115, %.critedge.i114 ], [ %.153.i134, %.lr.ph54.i133 ], [ %scevgep69.i132, %bb.m ] ; 5 uses
  %i.ci = icmp ult ptr %.1.lcssa.i118, %2
  br i1 %i.ci, label %.lr.ph62.preheader.i120, label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit138

.lr.ph62.preheader.i120:                          ; preds = %.critedge2.i116
  %.1.lcssa70.i121 = ptrtoaddr ptr %.1.lcssa.i118 to i64
  %i.cj = sub i64 %i.b, %.1.lcssa70.i121
  %scevgep71.i122 = getelementptr i8, ptr %.1.lcssa.i118, i64 %i.cj
  br label %.lr.ph62.i123

.lr.ph62.i123:                                    ; preds = %bb.n, %.lr.ph62.preheader.i120
  %.061.i124 = phi i1 [ %spec.select.i129, %bb.n ], [ false, %.lr.ph62.preheader.i120 ] ; 2 uses
  %.260.i125 = phi ptr [ %i.co, %bb.n ], [ %.1.lcssa.i118, %.lr.ph62.preheader.i120 ] ; 3 uses
  %i.ck = load i8, ptr %.260.i125, align 1, !tbaa !7 ; 2 uses
  %i.cl = add i8 %i.ck, -48
  %i.cm = icmp ult i8 %i.cl, 10
  br i1 %i.cm, label %bb.n, label %.critedge4.i126

bb.n:                                             ; preds = %.lr.ph62.i123
  %i.cn = icmp ne i8 %i.ck, 48
  %spec.select.i129 = or i1 %.061.i124, %i.cn     ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.260.i125, i64 1 ; 2 uses
  %exitcond72.not.i130 = icmp eq ptr %i.co, %2
  br i1 %exitcond72.not.i130, label %.critedge4.i126, label %.lr.ph62.i123, !llvm.loop !12

.critedge4.i126:                                  ; preds = %bb.n, %.lr.ph62.i123
  %.2.lcssa.i127 = phi ptr [ %scevgep71.i122, %bb.n ], [ %.260.i125, %.lr.ph62.i123 ]
  %.0.lcssa.i128 = phi i1 [ %spec.select.i129, %bb.n ], [ %.061.i124, %.lr.ph62.i123 ]
  %spec.select152 = select i1 %.0.lcssa.i128, i1 true, i1 %.1144
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit138

_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit138: ; preds = %.critedge4.i126, %.critedge2.i116
  %.2145 = phi i1 [ %.1144, %.critedge2.i116 ], [ %spec.select152, %.critedge4.i126 ]
  %.2.lcssa79.i119 = phi ptr [ %.1.lcssa.i118, %.critedge2.i116 ], [ %.2.lcssa.i127, %.critedge4.i126 ]
  %i.cp = ptrtoint ptr %.2.lcssa79.i119 to i64
  %i.cq = ptrtoint ptr %.2190 to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = trunc i64 %i.cr to i32                  ; 2 uses
  %sext153 = shl i64 %i.cr, 32
  %i.ct = ashr exact i64 %sext153, 32
  %i.cu = getelementptr inbounds i8, ptr %.2190, i64 %i.ct
  %i.cv = icmp slt i32 %i.cs, 50000000
  %.089. = tail call i32 @llvm.smin.i32(i32 %.089, i32 %i.cs)
  %.386 = sub nsw i32 %.285189, %.089.
  br i1 %i.cv, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit138, %bb.h, %bb.g
  %.0146 = phi i64 [ %.039.lcssa.i117, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit138 ], [ %.039.lcssa.i, %bb.h ], [ %.039.lcssa.i, %bb.g ]
  %.0143 = phi i1 [ %.2145, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit138 ], [ %.1144, %bb.h ], [ %.1144, %bb.g ]
  %.588 = phi i32 [ %.386, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit138 ], [ %.083, %bb.h ], [ %.083, %bb.g ]
  %.3 = phi ptr [ %i.cu, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit138 ], [ %i.as, %bb.h ], [ %i.as, %bb.g ] ; 9 uses
  %i.cw = icmp eq ptr %1, %.3
  br i1 %i.cw, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = ptrtoint ptr %.3 to i64
  %i.cy = ptrtoint ptr %1 to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.db = load i8, ptr %1, align 1, !tbaa !7
  %i.dc = icmp eq i8 %i.db, 46
  br i1 %i.dc, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.0143, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %1, ptr %i.c, align 8, !tbaa !14
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.3, ptr %i.dd, align 8, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i64 %.0146, ptr %0, align 8, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  store i32 0, ptr %i.de, align 4, !tbaa !22
  %i.df = and i32 %3, 3                           ; 2 uses
  %i.dg = icmp ne i32 %i.df, 2
  %i.dh = icmp ult ptr %.3, %2
  %or.cond = and i1 %i.dg, %i.dh
  br i1 %or.cond, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.di = load i8, ptr %.3, align 1, !tbaa !7
  %i.dj = and i8 %i.di, -33
  %i.dk = icmp eq i8 %i.dj, 69
  br i1 %i.dk, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 4 uses
  %i.dm = icmp ult ptr %i.dl, %2
  br i1 %i.dm, label %bb.w, label %.critedge104

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !7   ; 2 uses
  %i.do = icmp eq i8 %i.dn, 45
  br i1 %i.do, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %.critedge104

bb.y:                                             ; preds = %bb.w
  %i.dq = icmp eq i8 %i.dn, 43
  %i.dr = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %spec.select = select i1 %i.dq, ptr %i.dr, ptr %i.dl
  br label %.critedge104

.critedge104:                                     ; preds = %bb.y, %bb.v, %bb.x
  %.080.not = phi i1 [ false, %bb.x ], [ true, %bb.v ], [ true, %bb.y ]
  %.4 = phi ptr [ %i.dp, %bb.x ], [ %i.dl, %bb.v ], [ %spec.select, %bb.y ] ; 2 uses
  %i.ds = tail call fastcc noundef i32 @_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS4_iPT0_Pb(ptr noundef nonnull %.4, ptr noundef nonnull %2, ptr noundef nonnull %i.de) ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %.4, i64 %i.dt ; 2 uses
  %.not154 = icmp eq i32 %i.ds, 0                 ; 2 uses
  %brmerge = or i1 %.080.not, %.not154
  br i1 %brmerge, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge104
  %i.dv = load i32, ptr %i.de, align 4, !tbaa !22
  %i.dw = sub nsw i32 0, %i.dv
  store i32 %i.dw, ptr %i.de, align 4, !tbaa !22
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge104
  br i1 %.not154, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.u, %bb.t, %bb.aa
  %i.dx = icmp eq i32 %i.df, 1
  br i1 %i.dx, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %.thread, %bb.aa
  %.6150 = phi ptr [ %.3, %.thread ], [ %i.du, %bb.aa ], [ %i.du, %bb.z ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.dy, align 8, !tbaa !23
  %i.dz = load i64, ptr %0, align 8, !tbaa !21
  %.not = icmp eq i64 %i.dz, 0
  %i.ea = load i32, ptr %i.de, align 4
  %i.eb = add nsw i32 %i.ea, %.588
  %.sink = select i1 %.not, i32 0, i32 %i.eb
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.ec, align 8, !tbaa !24
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.6150, ptr %i.ed, align 8, !tbaa !25
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit138, %.critedge3, %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit, %bb.o, %bb.q, %.thread, %bb.ab, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051212_GLOBAL__N_118ParseInfinityOrNanEPKcS3_PNS0_16strings_internal11ParsedFloatE(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
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
end_hunk_0
