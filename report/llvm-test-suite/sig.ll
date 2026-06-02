inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@type2str = dso_local local_unnamed_addr global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"Error converting signature to a type.\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"byte %s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"char %s\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"double %s\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"float %s\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"int %s\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"long %s\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"java/lang/\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"short %s\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"boolean %s\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Non-function with function sig!\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"<clinit>\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"<init>\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"Function Parameter type mismatch\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"var%d\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"void %s\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Error reading type signature!\0A\00", align 1
@switch.table._Z8sig2typePc = private unnamed_addr constant [52 x i32] [i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 2, i32 7, i32 poison, i32 6, i32 poison, i32 poison, i32 4, i32 5, i32 poison, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 10, i32 8], align 4

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef range(i32 0, 12) i32 @_Z8sig2typePc(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  %switch.tableidx = add i8 %i.a, -40             ; 3 uses
  %i.b = icmp ult i8 %switch.tableidx, 52
  br i1 %i.b, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.9, i64 38, i64 1, ptr %i.c) #10 ; 0 uses
  tail call void @exit(i32 noundef 1) #11
  unreachable

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 3456960590512129, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Z8sig2typePc, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 10 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !12
  %i.d = load i8, ptr %i.b, align 1, !tbaa !8
  switch i8 %i.d, label %bb.al [
    i8 66, label %bb.b
    i8 67, label %bb.c
    i8 68, label %bb.d
    i8 70, label %bb.e
    i8 73, label %bb.f
    i8 74, label %bb.g
    i8 76, label %.preheader194
    i8 83, label %bb.l
    i8 90, label %bb.m
    i8 91, label %.preheader160
    i8 40, label %bb.p
    i8 86, label %bb.ak
  ]

.preheader160:                                    ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1, !tbaa !8
  %i.f = add i8 %i.e, -48
  %or.cond171 = icmp ult i8 %i.f, 10
  br i1 %or.cond171, label %.lr.ph173, label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader160
  %i.g = tail call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) ; 0 uses
  br label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.d:                                             ; preds = %bb.a
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.e:                                             ; preds = %bb.a
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.f:                                             ; preds = %bb.a
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.g:                                             ; preds = %bb.a
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

.preheader194:                                    ; preds = %bb.a, %.preheader194
  %i.n = phi ptr [ %i.o, %.preheader194 ], [ %i.c, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !12
  %i.p = load i8, ptr %i.n, align 1, !tbaa !8
  %.not154 = icmp eq i8 %i.p, 59
  br i1 %.not154, label %bb.h, label %.preheader194, !llvm.loop !14

bb.h:                                             ; preds = %.preheader194
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #13 ; 7 uses
  %i.u = xor i64 %i.r, -1                         ; 2 uses
  %i.v = add i64 %i.q, %i.u
  %i.w = tail call ptr @strncpy(ptr noundef nonnull %i.t, ptr noundef nonnull %i.c, i64 noundef %i.v) #12 ; 0 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %i.u
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q
  store i8 0, ptr %i.y, align 1, !tbaa !8
  %i.z = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(11) @.str.16, i64 noundef 10) #14
  %.not155 = icmp eq i32 %i.z, 0
  br i1 %.not155, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.aa = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.t, i32 noundef 47) #14 ; 2 uses
  %.not156176 = icmp eq ptr %i.aa, null
  br i1 %.not156176, label %.loopexit, label %.lr.ph177

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  br label %.loopexit

.lr.ph177:                                        ; preds = %.preheader, %.lr.ph177
  %i.ac = phi ptr [ %i.ad, %.lr.ph177 ], [ %i.aa, %.preheader ] ; 2 uses
  store i8 46, ptr %i.ac, align 1, !tbaa !8
  %i.ad = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ac, i32 noundef 47) #14 ; 2 uses
  %.not156 = icmp eq ptr %i.ad, null
  br i1 %.not156, label %.loopexit, label %.lr.ph177, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph177, %.preheader, %bb.i
  %i.ae = phi ptr [ %i.ab, %bb.i ], [ %i.t, %.preheader ], [ %i.t, %.lr.ph177 ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 3 uses
  %.not157 = icmp eq ptr %i.ag, null
  br i1 %.not157, label %.thread, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ah = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #14
  %sext = shl i64 %i.ah, 32
  %i.ai = ashr exact i64 %sext, 32                ; 2 uses
  %i.aj = tail call i32 @strncmp(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ag, i64 noundef %i.ai) #14
  %.not159 = icmp eq i32 %i.aj, 0
  br i1 %.not159, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.al = getelementptr i8, ptr %i.ak, i64 1
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.k, %bb.j
  %i.am = phi ptr [ %i.ae, %.loopexit ], [ %i.al, %bb.k ], [ %i.ae, %bb.j ]
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %i.am, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.l:                                             ; preds = %bb.a
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.m:                                             ; preds = %bb.a
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

.lr.ph173:                                        ; preds = %.preheader160, %.lr.ph173
  %.0135172 = phi i32 [ %i.aw, %.lr.ph173 ], [ 0, %.preheader160 ]
  %i.aq = phi ptr [ %i.as, %.lr.ph173 ], [ %i.c, %.preheader160 ] ; 2 uses
  %i.ar = mul nsw i32 %.0135172, 10
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 3 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !12
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.au = sext i8 %i.at to i32
  %i.av = add i32 %i.ar, -48
  %i.aw = add i32 %i.av, %i.au                    ; 3 uses
  %i.ax = load i8, ptr %i.as, align 1, !tbaa !8
  %i.ay = add i8 %i.ax, -48
  %or.cond = icmp ult i8 %i.ay, 10
  br i1 %or.cond, label %.lr.ph173, label %.critedge, !llvm.loop !28

.critedge:                                        ; preds = %.lr.ph173
  %i.az = tail call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) ; 0 uses
  %.not153 = icmp eq i32 %i.aw, 0
  br i1 %.not153, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %i.aw) #12 ; 0 uses
  br label %bb.am

bb.o:                                             ; preds = %.critedge.thread, %.critedge
  %i.bb = tail call i64 @fwrite(ptr nonnull @.str.21, i64 2, i64 1, ptr %1) ; 0 uses
  br label %bb.am

bb.p:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bd = tail call i64 @fwrite(ptr nonnull @.str.22, i64 32, i64 1, ptr %i.bc) #10 ; 0 uses
  br label %bb.am

bb.r:                                             ; preds = %bb.p
  store ptr %i.c, ptr %i.a, align 8, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %i.be = phi ptr [ %i.bf, %bb.s ], [ %i.c, %bb.r ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 3 uses
  store ptr %i.bf, ptr %2, align 8, !tbaa !12
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !8
  %.not143 = icmp eq i8 %i.bg, 41
  br i1 %.not143, label %bb.t, label %bb.s, !llvm.loop !29

bb.t:                                             ; preds = %bb.s
  %i.bh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.23) #14
  %.not144 = icmp eq i32 %i.bh, 0
  br i1 %.not144, label %bb.am, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #14
  %i.bj = add i64 %i.bi, 1
  %i.bk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #13 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !30
  %i.bm = load ptr, ptr %2, align 8, !tbaa !12
  %i.bn = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bk, ptr noundef nonnull dereferenceable(1) %i.bm) #12 ; 0 uses
  %i.bo = tail call noundef i32 @_Z8sig2typePc(ptr noundef nonnull %i.bk)
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !34
  %i.bq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(7) @.str.24) #14
  %.not145 = icmp eq i32 %i.bq, 0
  br i1 %.not145, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = tail call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !35
  %fputs = tail call i32 @fputs(ptr %i.bt, ptr %1) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %fputc = tail call i32 @fputc(i32 40, ptr %1)   ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !36
  %i.bw = add i8 %i.bv, 1                         ; 4 uses
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 8, !tbaa !37
  %.not146 = icmp eq i16 %i.by, 0
  br i1 %.not146, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bz = zext i8 %i.bw to i64                    ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 3                ; 5 uses
  %i.cb = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ca) #13 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !38
  %i.cd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ca) #13 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !39
  %i.cf = shl nuw nsw i64 %i.bz, 2                ; 5 uses
  %i.cg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #13 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !40
  %i.ci = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #13 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !41
  %.not147163 = icmp eq i8 %i.bw, 0
  br i1 %.not147163, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.y
  %i.ck = zext i8 %i.bw to i64
  %i.cl = add nsw i64 %i.cf, -4
  %i.cm = add nuw nsw i64 %i.ck, 4294967295
  %i.cn = and i64 %i.cm, 4294967295               ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 2
  %i.cp = sub nsw i64 %i.cl, %i.co                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ci, i64 %i.cp
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.cf, i1 false), !tbaa !4
  %i.cq = add nsw i64 %i.ca, -8
  %i.cr = shl nuw nsw i64 %i.cn, 3
  %i.cs = sub nsw i64 %i.cq, %i.cr                ; 2 uses
  %scevgep180 = getelementptr i8, ptr %i.cd, i64 %i.cs
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep180, i8 0, i64 %i.ca, i1 false), !tbaa !12
  %scevgep181 = getelementptr i8, ptr %i.cb, i64 %i.cs
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep181, i8 0, i64 %i.ca, i1 false), !tbaa !12
  %scevgep182 = getelementptr i8, ptr %i.cg, i64 %i.cp
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep182, i8 0, i64 %i.cf, i1 false), !tbaa !42
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.y
  %i.ct = load i16, ptr %4, align 8, !tbaa !43
  %i.cu = and i16 %i.ct, 8
  %i.cv = icmp eq i16 %i.cu, 0
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge
  store ptr @.str.27, ptr %i.cb, align 8, !tbaa !12
  store ptr @.str.28, ptr %i.cd, align 8, !tbaa !12
  store i32 8, ptr %i.cg, align 4, !tbaa !42
  store i32 0, ptr %i.ci, align 4, !tbaa !4
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z, %bb.x
  %i.cw = load i8, ptr %i.c, align 1, !tbaa !8
  %.not148165 = icmp eq i8 %i.cw, 41
  br i1 %.not148165, label %._crit_edge169, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.aa
  %i.cx = load i16, ptr %4, align 8, !tbaa !43
  %i.cy = and i16 %i.cx, 8
  %i.cz = icmp eq i16 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 104
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph168, %bb.aj
  %i.df = phi ptr [ %i.c, %.lr.ph168 ], [ %.pre, %bb.aj ]
  %.1166 = phi i32 [ %i.da, %.lr.ph168 ], [ %i.fc, %bb.aj ] ; 5 uses
  %i.dg = load i16, ptr %i.bx, align 8, !tbaa !37
  %.not150 = icmp eq i16 %i.dg, 0
  br i1 %.not150, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !39
  %i.di = sext i32 %.1166 to i64                  ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !12
  %i.dl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.df, ptr noundef nonnull dereferenceable(1) %i.dk) #14
  %.not151 = icmp eq i32 %i.dl, 0
  br i1 %.not151, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.dn = call i64 @fwrite(ptr nonnull @.str.29, i64 33, i64 1, ptr %i.dm) #10 ; 0 uses
  br label %bb.am

end_hunk_0
