inline.NumInlined: 24
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.UNSP = type { ptr, ptr, i32, i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [23 x i8] c"unsp: table size = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%x %x %x %x\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @unspack(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.cli_exe_section, align 4    ; 7 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.c = icmp ugt i8 %i.a, -32
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i8 %i.a, 44
  br i1 %i.d, label %.loopexit64.loopexit, label %.loopexit64

.loopexit64.loopexit:                             ; preds = %bb.b
  %i.e = udiv i8 %i.a, 45                         ; 2 uses
  %i.f = zext nneg i8 %i.e to i32
  %.neg = mul i8 %i.e, -45
  %i.g = add i8 %.neg, %i.a
  br label %.loopexit64

.loopexit64:                                      ; preds = %.loopexit64.loopexit, %bb.b
  %.048 = phi i32 [ 0, %bb.b ], [ %i.f, %.loopexit64.loopexit ]
  %.1 = phi i8 [ %i.a, %bb.b ], [ %i.g, %.loopexit64.loopexit ] ; 4 uses
  %i.h = icmp ugt i8 %.1, 8
  br i1 %i.h, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit64
  %i.i = udiv i8 %.1, 9                           ; 2 uses
  %i.j = zext nneg i8 %i.i to i32
  %.neg70 = mul i8 %i.i, -9
  %i.k = add i8 %.neg70, %.1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit64
  %.049 = phi i32 [ 0, %.loopexit64 ], [ %i.j, %.loopexit.loopexit ] ; 2 uses
  %.3 = phi i8 [ %.1, %.loopexit64 ], [ %i.k, %.loopexit.loopexit ] ; 2 uses
  %i.l = zext i8 %.3 to i32
  %i.m = trunc nuw nsw i32 %.049 to i8
  %i.n = add i8 %.3, %i.m
  %i.o = zext nneg i8 %i.n to i32
  %i.p = shl i32 1536, %i.o
  %i.q = add nuw i32 %i.p, 3692                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9    ; 2 uses
  %.not57 = icmp eq ptr %i.s, null
  br i1 %.not57, label %.loopexit._crit_edge, label %bb.c

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre = zext i32 %i.q to i64
  br label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19   ; 2 uses
  %.not58 = icmp ne i64 %i.u, 0
  %i.v = zext i32 %i.q to i64                     ; 2 uses
  %i.w = icmp ult i64 %i.u, %i.v
  %or.cond = select i1 %.not58, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.loopexit._crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre, %.loopexit._crit_edge ], [ %i.v, %bb.c ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str, i32 noundef %i.q) #8
  %i.x = tail call ptr @cli_malloc(i64 noundef %.pre-phi) #8 ; 4 uses
  %.not59 = icmp eq ptr %i.x, null
  br i1 %.not59, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.val63 = load i32, ptr %i.y, align 1           ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.val = load i32, ptr %i.z, align 1             ; 2 uses
  %i.aa = icmp ult i32 %.val, 14
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.x) #8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ab = tail call i32 @very_real_unpack(ptr noundef nonnull %i.x, i32 noundef %i.q, i32 noundef %i.l, i32 noundef %.049, i32 noundef %.048, ptr noundef nonnull %i.b, i32 noundef %.val, ptr noundef %1, i32 noundef %.val63)
  tail call void @free(ptr noundef nonnull %i.x) #8
  %.not60 = icmp eq i32 %i.ab, 0
  br i1 %.not60, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.ac, align 4, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.val63, ptr %i.ad, align 4, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.val63, ptr %i.ae, align 4, !tbaa !26
  store i32 %3, ptr %7, align 4, !tbaa !27
  %i.af = call i32 @cli_rebuildpe(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 1, i32 noundef %4, i32 noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %6) #8
  %.not61 = icmp eq i32 %i.af, 0
  %i.ag = zext i1 %.not61 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.c, %bb.a, %bb.h, %bb.f
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.a ], [ 1, %bb.f ], [ 1, %bb.d ], [ %i.ag, %bb.h ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @very_real_unpack(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.UNSP, align 8               ; 61 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.a = add i32 %3, %2
  %i.b = and i32 %i.a, 255
  %i.c = shl i32 768, %i.b
  %i.d = add nuw nsw i32 %i.c, 1846
  %i.e = and i32 %3, 255
  %notmask = shl nsw i32 -1, %i.e
  %i.f = xor i32 %notmask, -1
  %i.g = and i32 %4, 255
  %notmask309 = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask309, -1
  %i.i = zext i32 %1 to i64
  %i.j = zext i32 %i.d to i64                     ; 3 uses
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = icmp samesign ugt i64 %i.k, %i.i
  br i1 %i.l, label %.thread490, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.j
  %i.m = add nsw i64 %i.j, -22
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = xor i64 %index, -1
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.n ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %gep, i64 -14
  %i.p = getelementptr inbounds i8, ptr %gep, i64 -30
  store <8 x i16> splat (i16 1024), ptr %i.o, align 2, !tbaa !28
  store <8 x i16> splat (i16 1024), ptr %i.p, align 2, !tbaa !28
  %index.next = add nuw i64 %index, 16
  %i.q = icmp eq i64 %index, %i.m
  br i1 %i.q, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !29

vec.epilog.vector.body:                           ; preds = %vector.body
  %i.r = getelementptr i8, ptr %0, i64 8
  store <2 x i16> splat (i16 1024), ptr %i.r, align 2, !tbaa !28
  %i.s = getelementptr i8, ptr %0, i64 4
  store <2 x i16> splat (i16 1024), ptr %i.s, align 2, !tbaa !28
  store <2 x i16> splat (i16 1024), ptr %0, align 2, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 49 uses
  store i32 0, ptr %i.t, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 53 uses
  store ptr %5, ptr %9, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 63 uses
  store i32 -1, ptr %i.v, align 8, !tbaa !37
  %i.w = zext i32 %6 to i64
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -13      ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 17 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  store ptr %0, ptr %i.aa, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i32 %1, ptr %i.ab, align 8, !tbaa !40
  %.not.i = icmp ugt i32 %6, 13                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vec.epilog.vector.body
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit

bb.c:                                             ; preds = %vec.epilog.vector.body
  %i.ac = load i8, ptr %5, align 1, !tbaa !8
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  store ptr %i.ae, ptr %9, align 8, !tbaa !36
  %i.af = shl nuw nsw i32 %i.ad, 8
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %5, %bb.b ], [ %i.ae, %bb.c ] ; 4 uses
  %.0.i = phi i32 [ 65280, %bb.b ], [ %i.af, %bb.c ]
  %.not.i.1 = icmp ult ptr %i.ag, %i.y
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %get_byte.exit
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.1

bb.e:                                             ; preds = %get_byte.exit
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.1

get_byte.exit.1:                                  ; preds = %bb.e, %bb.d
  %i.ak = phi i1 [ false, %bb.d ], [ %.not.i, %bb.e ]
  %i.al = phi ptr [ %i.ag, %bb.d ], [ %i.aj, %bb.e ] ; 4 uses
  %.0.i.1 = phi i32 [ 255, %bb.d ], [ %i.ai, %bb.e ]
  %i.am = or disjoint i32 %.0.i.1, %.0.i          ; 2 uses
  store i32 %i.am, ptr %i.u, align 4, !tbaa !41
  %i.an = shl nuw nsw i32 %i.am, 8
  %.not.i.2 = icmp ult ptr %i.al, %i.y
  br i1 %.not.i.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %get_byte.exit.1
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.2

bb.g:                                             ; preds = %get_byte.exit.1
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.aq, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.2

get_byte.exit.2:                                  ; preds = %bb.g, %bb.f
  %i.ar = phi i1 [ false, %bb.f ], [ %i.ak, %bb.g ]
  %i.as = phi ptr [ %i.al, %bb.f ], [ %i.aq, %bb.g ] ; 4 uses
  %.0.i.2 = phi i32 [ 255, %bb.f ], [ %i.ap, %bb.g ]
  %i.at = or disjoint i32 %.0.i.2, %i.an          ; 2 uses
  store i32 %i.at, ptr %i.u, align 4, !tbaa !41
  %i.au = shl nuw i32 %i.at, 8
  %.not.i.3 = icmp ult ptr %i.as, %i.y
  br i1 %.not.i.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %get_byte.exit.2
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.3

bb.i:                                             ; preds = %get_byte.exit.2
  %i.av = load i8, ptr %i.as, align 1, !tbaa !8
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.3

get_byte.exit.3:                                  ; preds = %bb.i, %bb.h
  %i.ay = phi i1 [ false, %bb.h ], [ %i.ar, %bb.i ]
  %i.az = phi ptr [ %i.as, %bb.h ], [ %i.ax, %bb.i ] ; 3 uses
  %.0.i.3 = phi i32 [ 255, %bb.h ], [ %i.aw, %bb.i ]
  %i.ba = or disjoint i32 %.0.i.3, %i.au          ; 2 uses
  store i32 %i.ba, ptr %i.u, align 4, !tbaa !41
  %.not.i.4 = icmp ult ptr %i.az, %i.y
  br i1 %.not.i.4, label %get_byte.exit.4, label %.thread490

get_byte.exit.4:                                  ; preds = %get_byte.exit.3
  %i.bb = shl i32 %i.ba, 8
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.be, ptr %9, align 8, !tbaa !36
  %i.bf = or disjoint i32 %i.bb, %i.bd
  store i32 %i.bf, ptr %i.u, align 4, !tbaa !41
  br i1 %i.ay, label %.lr.ph, label %.thread490

.lr.ph:                                           ; preds = %get_byte.exit.4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 2 uses
  %.not325 = icmp eq i32 %8, 0                    ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1636
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 3 uses
  %i.bj = and i32 %2, 255
  %i.bk = sub i32 8, %2
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext i32 %8 to i64                      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1606 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1608
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %select.unfold
  %i.bp = phi i32 [ 0, %.lr.ph ], [ %i.abe, %select.unfold ] ; 5 uses
  %.0247564 = phi i32 [ 0, %.lr.ph ], [ %.3250, %select.unfold ]
  %.0251561 = phi i32 [ 0, %.lr.ph ], [ %.3254, %select.unfold ] ; 13 uses
  %.0255558 = phi i32 [ 1, %.lr.ph ], [ %.4, %select.unfold ] ; 10 uses
  %.0259555 = phi i32 [ 1, %.lr.ph ], [ %.3262, %select.unfold ] ; 11 uses
  %.0263552 = phi i32 [ 1, %.lr.ph ], [ %.2265, %select.unfold ] ; 11 uses
  %.0266548 = phi i32 [ 1, %.lr.ph ], [ %.2268, %select.unfold ] ; 7 uses
  %.0269547 = phi i32 [ 0, %.lr.ph ], [ %.3272, %select.unfold ] ; 25 uses
  %.0273546 = phi i32 [ 0, %.lr.ph ], [ %.3276, %select.unfold ]
  %.0279541 = phi i32 [ %6, %.lr.ph ], [ %.3282, %select.unfold ] ; 4 uses
  %i.bq = shl i32 %.0251561, 4                    ; 2 uses
  %i.br = add i32 %i.bq, %i.bp
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bs ; 5 uses
  %i.bu = load i32, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %switch.i = icmp ult i32 %i.bu, 2
  br i1 %switch.i, label %.thread486, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = zext i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 8 uses
  %.not49.i = icmp uge ptr %i.bt, %i.bw
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv ; 7 uses
  %.not50.i = icmp ule ptr %i.bx, %i.by
  %or.cond55.i = select i1 %.not49.i, i1 %.not50.i, i1 false
  br i1 %or.cond55.i, label %bb.l, label %bb.ao

bb.l:                                             ; preds = %bb.k
  %i.bz = load i16, ptr %i.bt, align 2, !tbaa !28 ; 4 uses
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = load i32, ptr %i.v, align 8, !tbaa !37  ; 2 uses
  %i.cc = lshr i32 %i.cb, 11
  %i.cd = mul i32 %i.cc, %i.ca                    ; 7 uses
  %i.ce = load i32, ptr %i.u, align 4, !tbaa !41  ; 4 uses
  %i.cf = icmp ult i32 %i.ce, %i.cd
  br i1 %i.cf, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  store i32 %i.cd, ptr %i.v, align 8, !tbaa !37
  %i.cg = sub nsw i32 2048, %i.ca
  %i.ch = lshr i32 %i.cg, 5
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = add i16 %i.bz, %i.ci
  store i16 %i.cj, ptr %i.bt, align 2, !tbaa !28
  %i.ck = icmp ult i32 %i.cd, 16777216
  br i1 %i.ck, label %bb.n, label %getbit_from_table.exit

bb.n:                                             ; preds = %bb.m
  %i.cl = shl i32 %i.ce, 8
  %i.cm = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.cn = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i.i = icmp ult ptr %i.cm, %i.cn
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i

bb.p:                                             ; preds = %bb.n
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.cp = zext i8 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store ptr %i.cq, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %bb.p, %bb.o
  %.0.i.i = phi i32 [ 255, %bb.o ], [ %i.cp, %bb.p ]
  %i.cr = or disjoint i32 %.0.i.i, %i.cl          ; 2 uses
  store i32 %i.cr, ptr %i.u, align 4, !tbaa !41
  %i.cs = shl nuw i32 %i.cd, 8                    ; 2 uses
  store i32 %i.cs, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit

bb.q:                                             ; preds = %bb.l
  %i.ct = sub i32 %i.cb, %i.cd                    ; 3 uses
  store i32 %i.ct, ptr %i.v, align 8, !tbaa !37
  %i.cu = sub nuw i32 %i.ce, %i.cd                ; 2 uses
end_hunk_0
