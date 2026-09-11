Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/absOldSim?download=true
inline.NumInlined: 188
inline.NumDeleted: 55
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [96 x i8] c"Saig_ManExtendCounterExampleTest2(): The PI count of AIG (%d) does not match that of cex (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Total new PIs = %3d. Non-removable PIs = %3d.  \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@switch.table.Saig_ManSetAndDriveImplications_rec.42 = private unnamed_addr constant [4 x i8] c"\01\00\03\02", align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 4) i32 @Saig_ManExtendOneEval(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, -2
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val29 = load ptr, ptr %i.e, align 8, !tbaa !14 ; 4 uses
  %i.f = getelementptr i8, ptr %i.d, i64 36
  %.val30 = load i32, ptr %i.f, align 4, !tbaa !15
  %i.g = sext i32 %.val30 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %.val29, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = ashr i32 %2, 4
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = shl i32 %2, 1
  %i.o = and i32 %i.n, 30                         ; 6 uses
  %i.p = lshr i32 %i.m, %i.o
  %i.q = and i32 %i.p, 3                          ; 3 uses
  %i.r = and i64 %i.b, 1
  %.not = icmp eq i64 %i.r, 0
  %switch.selectcmp.i = icmp eq i32 %i.q, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 3
  %switch.selectcmp4.i = icmp eq i32 %i.q, 1
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 2, i32 %switch.select.i
  %.023 = select i1 %.not, i32 %i.q, i32 %switch.select5.i ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 24
  %.val32 = load i64, ptr %i.s, align 8
  %i.t = and i64 %.val32, 7
  %.not43 = icmp eq i64 %i.t, 3
  br i1 %.not43, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %1, i64 36
  %.val36 = load i32, ptr %i.u, align 4, !tbaa !15
  %i.v = sext i32 %.val36 to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %.val29, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.k ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17   ; 2 uses
  %i.aa = lshr i32 %i.z, %i.o
  %i.ab = and i32 %i.aa, 3
  %i.ac = xor i32 %i.ab, %.023
  %i.ad = shl nuw i32 %i.ac, %i.o
  %i.ae = xor i32 %i.ad, %i.z
  store i32 %i.ae, ptr %i.y, align 4, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr i8, ptr %1, i64 16
  %.val37 = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ag = ptrtoint ptr %.val37 to i64             ; 2 uses
  %i.ah = and i64 %i.ag, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr i8, ptr %i.ai, i64 36
  %.val28 = load i32, ptr %i.aj, align 4, !tbaa !15
  %i.ak = sext i32 %.val28 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %.val29, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.k
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !17
  %i.ap = lshr i32 %i.ao, %i.o
  %i.aq = and i32 %i.ap, 3                        ; 3 uses
  %i.ar = and i64 %i.ag, 1
  %.not26 = icmp eq i64 %i.ar, 0
  %switch.selectcmp.i39 = icmp eq i32 %i.aq, 2
  %switch.select.i40 = select i1 %switch.selectcmp.i39, i32 1, i32 3
  %switch.selectcmp4.i41 = icmp eq i32 %i.aq, 1
  %switch.select5.i42 = select i1 %switch.selectcmp4.i41, i32 2, i32 %switch.select.i40
  %.0 = select i1 %.not26, i32 %i.aq, i32 %switch.select5.i42 ; 2 uses
  %i.as = icmp eq i32 %.023, 1
  %i.at = icmp eq i32 %.0, 1
  %or.cond.i = or i1 %i.as, %i.at
  %i.au = icmp eq i32 %.023, 2
  %i.av = icmp eq i32 %.0, 2
  %or.cond3.i = and i1 %i.au, %i.av
  %..i = select i1 %or.cond3.i, i32 2, i32 3
  %.0.i = select i1 %or.cond.i, i32 1, i32 %..i   ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 36
  %.val34 = load i32, ptr %i.aw, align 4, !tbaa !15
  %i.ax = sext i32 %.val34 to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %.val29, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.k ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !17 ; 2 uses
  %i.bc = lshr i32 %i.bb, %i.o
  %i.bd = and i32 %i.bc, 3
  %i.be = xor i32 %.0.i, %i.bd
  %i.bf = shl nuw i32 %i.be, %i.o
  %i.bg = xor i32 %i.bf, %i.bb
  store i32 %i.bg, ptr %i.ba, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.024 = phi i32 [ %.023, %bb.b ], [ %.0.i, %bb.c ]
  ret i32 %.024
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 4) i32 @Saig_ManSimDataInit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104        ; 4 uses
  %.val111157 = load i32, ptr %i.a, align 8, !tbaa !30
  %i.b = icmp sgt i32 %.val111157, 0
  br i1 %i.b, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr i8, ptr %0, i64 108
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val95 = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = getelementptr i8, ptr %2, i64 8
  %.val108 = load ptr, ptr %i.h, align 8, !tbaa !14
  br label %bb.b

.critedge.preheader:                              ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ae, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33   ; 2 uses
  %.not177 = icmp slt i32 %i.j, 0
  %.phi.trans.insert195 = getelementptr i8, ptr %2, i64 8
  %.val96.pre = load ptr, ptr %.phi.trans.insert195, align 8, !tbaa !14 ; 14 uses
  br i1 %.not177, label %.critedge.preheader..critedge8._crit_edge_crit_edge, label %.lr.ph180

.critedge.preheader..critedge8._crit_edge_crit_edge: ; preds = %.critedge.preheader
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.val125.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34
  br label %.critedge8._crit_edge

.lr.ph180:                                        ; preds = %.critedge.preheader
  %i.k = getelementptr i8, ptr %0, i64 48
  %.val114 = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr i8, ptr %.val114, i64 36
  %i.m = getelementptr i8, ptr %0, i64 108        ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.not89 = icmp eq ptr %3, null
  %i.p = getelementptr i8, ptr %3, i64 4          ; 2 uses
  %i.q = getelementptr i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4        ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34   ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4        ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 8        ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 112
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0159 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.b ] ; 4 uses
  %.val113 = load i32, ptr %i.e, align 4, !tbaa !37
  %i.aa = add nsw i32 %.val113, %.0159
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val95, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.ae = add nuw nsw i32 %.0159, 1               ; 3 uses
  %i.af = lshr i32 %.0159, 5
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.aj = and i32 %.0159, 31
  %4 = lshr i32 %i.ai, %i.aj
  %i.ak = and i32 %4, 1
  %5 = add nuw nsw i32 %i.ak, 1
  %i.al = getelementptr i8, ptr %i.ad, i64 36
  %.val109 = load i32, ptr %i.al, align 4, !tbaa !15
  %i.am = sext i32 %.val109 to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.val108, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !17
  %and.ra = and i32 %i.ap, -4
  %i.aq = or disjoint i32 %and.ra, %5
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !17
  %.val111 = load i32, ptr %i.a, align 8, !tbaa !30
  %i.ar = icmp slt i32 %i.ae, %.val111
  br i1 %i.ar, label %bb.b, label %.critedge.preheader, !llvm.loop !46

bb.c:                                             ; preds = %.lr.ph180, %.critedge
  %.1179 = phi i32 [ %.0.lcssa, %.lr.ph180 ], [ %.2.lcssa, %.critedge ] ; 2 uses
  %.083178 = phi i32 [ 0, %.lr.ph180 ], [ %.pre-phi, %.critedge ] ; 7 uses
  %.val107 = load i32, ptr %i.l, align 4, !tbaa !15
  %i.as = sext i32 %.val107 to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %.val96.pre, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !16
  %i.av = lshr i32 %.083178, 4
  %i.aw = zext nneg i32 %i.av to i64              ; 12 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !17 ; 2 uses
  %i.az = shl nuw i32 %.083178, 1
  %i.ba = and i32 %i.az, 30                       ; 19 uses
  %i.bb = lshr i32 %i.ay, %i.ba
  %i.bc = and i32 %i.bb, 3
  %i.bd = xor i32 %i.bc, 2
  %i.be = shl nuw i32 %i.bd, %i.ba
  %i.bf = xor i32 %i.be, %i.ay
  store i32 %i.bf, ptr %i.ax, align 4, !tbaa !17
  %.val112160 = load i32, ptr %i.m, align 4, !tbaa !37
  %i.bg = icmp sgt i32 %.val112160, 0
  br i1 %i.bg, label %.lr.ph163, label %.critedge2

.lr.ph163:                                        ; preds = %bb.c
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %.val94 = load ptr, ptr %i.bi, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph163, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph163 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.2162 = phi i32 [ %.1179, %.lr.ph163 ], [ %i.bl, %bb.d ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val94, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !16
  %i.bl = add nsw i32 %.2162, 1                   ; 2 uses
  %i.bm = ashr i32 %.2162, 5
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !17
  %i.bq = and i32 %.2162, 31
  %6 = lshr i32 %i.bp, %i.bq
  %i.br = and i32 %6, 1
  %7 = add nuw nsw i32 %i.br, 1
  %i.bs = getelementptr i8, ptr %i.bk, i64 36
  %.val105 = load i32, ptr %i.bs, align 4, !tbaa !15
  %i.bt = sext i32 %.val105 to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %.val96.pre, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.aw ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !17 ; 2 uses
  %i.by = lshr i32 %i.bx, %i.ba
  %i.bz = and i32 %i.by, 3
  %i.ca = xor i32 %i.bz, %7
  %i.cb = shl nuw i32 %i.ca, %i.ba
  %i.cc = xor i32 %i.cb, %i.bx
  store i32 %i.cc, ptr %i.bw, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val112 = load i32, ptr %i.m, align 4, !tbaa !37
  %i.cd = sext i32 %.val112 to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %bb.d, label %.critedge2, !llvm.loop !47

.critedge2:                                       ; preds = %bb.d, %bb.c
  %.2.lcssa = phi i32 [ %.1179, %bb.c ], [ %i.bl, %bb.d ]
  br i1 %.not89, label %.critedge4, label %.preheader153

.preheader153:                                    ; preds = %.critedge2
  %.val115165 = load i32, ptr %i.p, align 4, !tbaa !40
  %i.cf = icmp sgt i32 %.val115165, 0
  br i1 %i.cf, label %.lr.ph167, label %.critedge4

.lr.ph167:                                        ; preds = %.preheader153
  %.val116 = load ptr, ptr %i.q, align 8, !tbaa !41
  %.val117 = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.cg = getelementptr i8, ptr %.val117, i64 8
  %.val117.val = load ptr, ptr %i.cg, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph167, %bb.e
  %indvars.iv185 = phi i64 [ 0, %.lr.ph167 ], [ %indvars.iv.next186, %bb.e ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv185
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !17
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %.val117.val, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !16
  %i.cm = getelementptr i8, ptr %i.cl, i64 36
  %.val103 = load i32, ptr %i.cm, align 4, !tbaa !15
  %i.cn = sext i32 %.val103 to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %.val96.pre, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !16
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.aw ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !17 ; 2 uses
  %i.cs = lshr i32 %i.cr, %i.ba
  %i.ct = and i32 %i.cs, 3
  %i.cu = xor i32 %i.ct, 3
  %i.cv = shl nuw i32 %i.cu, %i.ba
  %i.cw = xor i32 %i.cv, %i.cr
  store i32 %i.cw, ptr %i.cq, align 4, !tbaa !17
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %.val115 = load i32, ptr %i.p, align 4, !tbaa !40
  %i.cx = sext i32 %.val115 to i64
  %i.cy = icmp slt i64 %indvars.iv.next186, %i.cx
  br i1 %i.cy, label %bb.e, label %.critedge4, !llvm.loop !48

.critedge4:                                       ; preds = %bb.e, %.preheader153, %.critedge2
  %.val119168 = load i32, ptr %i.t, align 4, !tbaa !42
  %i.cz = icmp sgt i32 %.val119168, 0
  br i1 %i.cz, label %.lr.ph170, label %.critedge6.preheader

.lr.ph170:                                        ; preds = %.critedge4
  %.val93 = load ptr, ptr %i.u, align 8, !tbaa !14
  br label %bb.f

.critedge6.preheader:                             ; preds = %Saig_ManExtendOneEval.exit, %.critedge4
  %.val118171 = load i32, ptr %i.x, align 4, !tbaa !42
  %i.da = icmp sgt i32 %.val118171, 0
  br i1 %i.da, label %.lr.ph173, label %.critedge8

.lr.ph173:                                        ; preds = %.critedge6.preheader
  %.val = load ptr, ptr %i.y, align 8, !tbaa !14
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph170, %Saig_ManExtendOneEval.exit
  %indvars.iv188 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next189, %Saig_ManExtendOneEval.exit ] ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val93, i64 %indvars.iv188
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !16 ; 6 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %Saig_ManExtendOneEval.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.de = getelementptr i8, ptr %i.dc, i64 24
  %.val120 = load i64, ptr %i.de, align 8         ; 2 uses
  %i.df = trunc i64 %.val120 to i32
  %i.dg = and i32 %i.df, 7
  %i.dh = add nsw i32 %i.dg, -7
  %narrow.i = icmp ult i32 %i.dh, -2
  br i1 %narrow.i, label %Saig_ManExtendOneEval.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.di = getelementptr i8, ptr %i.dc, i64 8
  %.val.i = load ptr, ptr %i.di, align 8, !tbaa !11
  %i.dj = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.dk = and i64 %i.dj, -2
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr i8, ptr %i.dl, i64 36
  %.val30.i = load i32, ptr %i.dm, align 4, !tbaa !15
  %i.dn = sext i32 %.val30.i to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %.val96.pre, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !16
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.aw
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !17
  %i.ds = lshr i32 %i.dr, %i.ba
  %i.dt = and i32 %i.ds, 3                        ; 3 uses
  %i.du = and i64 %i.dj, 1
  %.not.i = icmp eq i64 %i.du, 0
  %switch.selectcmp.i.i = icmp eq i32 %i.dt, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 1, i32 3
  %switch.selectcmp4.i.i = icmp eq i32 %i.dt, 1
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, i32 2, i32 %switch.select.i.i
  %.023.i = select i1 %.not.i, i32 %i.dt, i32 %switch.select5.i.i ; 3 uses
  %i.dv = and i64 %.val120, 7
  %.not43.i = icmp eq i64 %i.dv, 3
  br i1 %.not43.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dw = getelementptr i8, ptr %i.dc, i64 36
  %.val36.i = load i32, ptr %i.dw, align 4, !tbaa !15
  %i.dx = sext i32 %.val36.i to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %.val96.pre, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !16
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.aw ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !17 ; 2 uses
  %i.ec = lshr i32 %i.eb, %i.ba
  %i.ed = and i32 %i.ec, 3
  %i.ee = xor i32 %i.ed, %.023.i
  %i.ef = shl nuw i32 %i.ee, %i.ba
  %i.eg = xor i32 %i.ef, %i.eb
  store i32 %i.eg, ptr %i.ea, align 4, !tbaa !17
  br label %Saig_ManExtendOneEval.exit

bb.j:                                             ; preds = %bb.h
  %i.eh = getelementptr i8, ptr %i.dc, i64 16
  %.val37.i = load ptr, ptr %i.eh, align 8, !tbaa !18
  %i.ei = ptrtoint ptr %.val37.i to i64           ; 2 uses
  %i.ej = and i64 %i.ei, -2
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr i8, ptr %i.ek, i64 36
  %.val28.i = load i32, ptr %i.el, align 4, !tbaa !15
  %i.em = sext i32 %.val28.i to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %.val96.pre, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !16
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.aw
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !17
  %i.er = lshr i32 %i.eq, %i.ba
  %i.es = and i32 %i.er, 3                        ; 3 uses
  %i.et = and i64 %i.ei, 1
  %.not26.i = icmp eq i64 %i.et, 0
  %switch.selectcmp.i39.i = icmp eq i32 %i.es, 2
  %switch.select.i40.i = select i1 %switch.selectcmp.i39.i, i32 1, i32 3
  %switch.selectcmp4.i41.i = icmp eq i32 %i.es, 1
  %switch.select5.i42.i = select i1 %switch.selectcmp4.i41.i, i32 2, i32 %switch.select.i40.i
  %.0.i = select i1 %.not26.i, i32 %i.es, i32 %switch.select5.i42.i ; 2 uses
  %i.eu = icmp eq i32 %.023.i, 1
  %i.ev = icmp eq i32 %.0.i, 1
  %or.cond.i.i = or i1 %i.eu, %i.ev
  %i.ew = icmp eq i32 %.023.i, 2
  %i.ex = icmp eq i32 %.0.i, 2
  %or.cond3.i.i = and i1 %i.ew, %i.ex
  %..i.i = select i1 %or.cond3.i.i, i32 2, i32 3
  %.0.i.i = select i1 %or.cond.i.i, i32 1, i32 %..i.i
  %i.ey = getelementptr i8, ptr %i.dc, i64 36
  %.val34.i = load i32, ptr %i.ey, align 4, !tbaa !15
  %i.ez = sext i32 %.val34.i to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %.val96.pre, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !16
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.aw ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !17 ; 2 uses
  %i.fe = lshr i32 %i.fd, %i.ba
  %i.ff = and i32 %i.fe, 3
  %i.fg = xor i32 %.0.i.i, %i.ff
  %i.fh = shl nuw i32 %i.fg, %i.ba
  %i.fi = xor i32 %i.fh, %i.fd
  store i32 %i.fi, ptr %i.fc, align 4, !tbaa !17
  br label %Saig_ManExtendOneEval.exit

Saig_ManExtendOneEval.exit:                       ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %.val119 = load i32, ptr %i.t, align 4, !tbaa !42
  %i.fj = sext i32 %.val119 to i64
  %i.fk = icmp slt i64 %indvars.iv.next189, %i.fj
  br i1 %i.fk, label %bb.f, label %.critedge6.preheader, !llvm.loop !49

bb.k:                                             ; preds = %.lr.ph173, %Saig_ManExtendOneEval.exit152
  %indvars.iv191 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next192, %Saig_ManExtendOneEval.exit152 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv191
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !16 ; 5 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 8
  %.val.i126 = load ptr, ptr %i.fn, align 8, !tbaa !11
  %i.fo = ptrtoint ptr %.val.i126 to i64          ; 2 uses
  %i.fp = and i64 %i.fo, -2
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = getelementptr i8, ptr %i.fq, i64 36
  %.val30.i128 = load i32, ptr %i.fr, align 4, !tbaa !15
end_hunk_0
