Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/deflate_medium?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.functable_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@functable = external hidden local_unnamed_addr global %struct.functable_s, align 8
@zng_length_code = external hidden local_unnamed_addr constant [0 x i8], align 1
@zng_dist_code = external hidden local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 4) i32 @deflate_medium(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 16, !tbaa !22
  %i.c = icmp sgt i32 %i.b, 4                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 12 uses
  %i.e = icmp eq i32 %1, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5952 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5944 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5976 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 1288
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2552
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5956 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 6 uses
  br label %emit_match.exit.thread

emit_match.exit.thread:                           ; preds = %emit_match.exit.thread.backedge, %bb.a
  %.sroa.23.0 = phi i16 [ 0, %bb.a ], [ %.sroa.23.2, %emit_match.exit.thread.backedge ] ; 4 uses
  %.sroa.19.0 = phi i16 [ 0, %bb.a ], [ %.sroa.19.2, %emit_match.exit.thread.backedge ] ; 4 uses
  %.sroa.8.0 = phi i16 [ 0, %bb.a ], [ %.sroa.8.4, %emit_match.exit.thread.backedge ] ; 2 uses
  %.sroa.0.0 = phi i16 [ 0, %bb.a ], [ %.sroa.0.2, %emit_match.exit.thread.backedge ] ; 4 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !23
  %i.v = icmp ult i32 %i.u, 262
  br i1 %i.v, label %bb.b, label %bb.d

bb.b:                                             ; preds = %emit_match.exit.thread
  tail call void @zng_fill_window(ptr noundef nonnull %0) #3
  %i.w = load i32, ptr %i.d, align 4, !tbaa !23   ; 3 uses
  %i.x = icmp ult i32 %i.w, 262
  %or.cond = and i1 %i.e, %i.x
  br i1 %or.cond, label %.thread143, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.w, 0
  %.pre167.pre168 = load i32, ptr %i.f, align 4, !tbaa !24 ; 5 uses
  br i1 %i.y, label %bb.an, label %.thread, !prof !25

bb.d:                                             ; preds = %emit_match.exit.thread
  %i.z = icmp ne i16 %.sroa.8.0, 0
  %or.cond5 = select i1 %i.c, i1 %i.z, i1 false
  br i1 %or.cond5, label %bb.k, label %.thread.thread

.thread.thread:                                   ; preds = %bb.d
  %.pre167.pre = load i32, ptr %i.f, align 4, !tbaa !24
  br label %bb.e

.thread:                                          ; preds = %bb.c
  %i.aa = icmp ugt i32 %i.w, 3
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.thread, %.thread
  %.pre167191 = phi i32 [ %.pre167.pre, %.thread.thread ], [ %.pre167.pre168, %.thread ]
  %i.ab = tail call zeroext i16 @quick_insert_string(ptr noundef nonnull %0, i32 noundef %.pre167191) #3
  %.pre = load i32, ptr %i.f, align 4, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.ac = phi i32 [ %.pre, %bb.e ], [ %.pre167.pre168, %.thread ] ; 2 uses
  %.093 = phi i16 [ %i.ab, %bb.e ], [ 0, %.thread ] ; 3 uses
  %i.ad = trunc i32 %i.ac to i16                  ; 7 uses
  %i.ae = zext i32 %i.ac to i64
  %i.af = zext i16 %.093 to i64
  %i.ag = sub nsw i64 %i.ae, %i.af                ; 2 uses
  %i.ah = load i32, ptr %i.g, align 64, !tbaa !26
  %i.ai = add i32 %i.ah, -262
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp sle i64 %i.ag, %i.aj
  %i.al = icmp sgt i64 %i.ag, 0
  %or.cond7 = and i1 %i.al, %i.ak
  %i.am = icmp ne i16 %.093, 0
  %or.cond10 = and i1 %i.am, %or.cond7
  br i1 %or.cond10, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 88), align 8, !tbaa !28
  %i.ao = tail call i32 %i.an(ptr noundef nonnull %0, i16 noundef zeroext %.093) #3 ; 2 uses
  %i.ap = trunc i32 %i.ao to i16
  %i.aq = load i32, ptr %i.h, align 8, !tbaa !29
  %i.ar = trunc i32 %i.aq to i16                  ; 3 uses
  %i.as = and i32 %i.ao, 65532
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.9.0 = phi i16 [ 1, %bb.h ], [ %i.ap, %bb.g ]
  %.not = icmp ult i16 %i.ar, %i.ad
  br i1 %.not, label %bb.k, label %bb.j, !prof !30

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.f, %bb.j, %bb.i
  %.sroa.23131.0 = phi i16 [ %i.ad, %bb.f ], [ %i.ad, %bb.i ], [ %i.ad, %bb.j ], [ %.sroa.23.0, %bb.d ] ; 3 uses
  %.sroa.18.0 = phi i16 [ %i.ad, %bb.f ], [ %i.ad, %bb.i ], [ %i.ad, %bb.j ], [ %.sroa.19.0, %bb.d ] ; 8 uses
  %.sroa.9.1 = phi i16 [ 1, %bb.f ], [ %.sroa.9.0, %bb.i ], [ 1, %bb.j ], [ %.sroa.8.0, %bb.d ] ; 19 uses
  %.sroa.0109.0 = phi i16 [ 0, %bb.f ], [ %i.ar, %bb.i ], [ %i.ar, %bb.j ], [ %.sroa.0.0, %bb.d ]
  %.sroa.9.0.insert.ext = zext i16 %.sroa.9.1 to i64
  %.sroa.45.0.extract.trunc.i = zext i16 %.sroa.0109.0 to i32
  %i.au = load i32, ptr %i.d, align 4, !tbaa !23
  %i.av = zext i16 %.sroa.9.1 to i32              ; 2 uses
  %i.aw = add nuw nsw i32 %i.av, 4
  %.not.i = icmp ugt i32 %i.au, %i.aw
  br i1 %.not.i, label %bb.l, label %insert_match.exit, !prof !30

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp ult i16 %.sroa.9.1, 4
  br i1 %i.ax, label %bb.m, label %bb.p, !prof !30

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i16 %.sroa.9.1, -1              ; 2 uses
  %i.az = zext i16 %i.ay to i32
  %.not61.i = icmp eq i16 %i.ay, 0
  br i1 %.not61.i, label %insert_match.exit, label %bb.n, !prof !30

bb.n:                                             ; preds = %bb.m
  %i.ba = add i16 %.sroa.18.0, 1                  ; 2 uses
  %.not62.i = icmp ult i16 %i.ba, %.sroa.23131.0
  br i1 %.not62.i, label %insert_match.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = zext i16 %i.ba to i32
  tail call void @insert_string(ptr noundef nonnull %0, i32 noundef %i.bb, i32 noundef %i.az) #3
  br label %insert_match.exit

bb.p:                                             ; preds = %bb.l
  %i.bc = load i32, ptr %i.i, align 4, !tbaa !31
  %i.bd = shl i32 %i.bc, 4
  %.not57.i = icmp ult i32 %i.bd, %i.av
  br i1 %.not57.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = add i16 %.sroa.9.1, -1
  %i.bf = add i16 %.sroa.18.0, 1                  ; 2 uses
  %2 = zext i16 %i.bf to i32                      ; 4 uses
  %i.bg = zext i16 %.sroa.23131.0 to i32          ; 4 uses
  %.not59.i = icmp ult i16 %i.bf, %.sroa.23131.0
  %i.bh = zext i16 %i.be to i32                   ; 2 uses
  %i.bi = add nuw nsw i32 %2, %i.bh               ; 2 uses
  %i.bj = icmp samesign ugt i32 %i.bi, %i.bg      ; 2 uses
  br i1 %.not59.i, label %bb.u, label %bb.r, !prof !25

bb.r:                                             ; preds = %bb.q
  br i1 %i.bj, label %bb.s, label %bb.t, !prof !30

bb.s:                                             ; preds = %bb.r
  tail call void @insert_string(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.bh) #3
  br label %insert_match.exit

bb.t:                                             ; preds = %bb.r
  %i.bk = add nuw nsw i32 %i.bg, 1
  %i.bl = sub nsw i32 %i.bk, %2
  tail call void @insert_string(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.bl) #3
  br label %insert_match.exit

bb.u:                                             ; preds = %bb.q
  br i1 %i.bj, label %bb.v, label %insert_match.exit

bb.v:                                             ; preds = %bb.u
  %i.bm = sub nuw nsw i32 %i.bi, %i.bg
  tail call void @insert_string(ptr noundef nonnull %0, i32 noundef %i.bg, i32 noundef %i.bm) #3
  br label %insert_match.exit

bb.w:                                             ; preds = %bb.p
  %.narrow = add i16 %.sroa.18.0, %.sroa.9.1      ; 2 uses
  %.not58.i = icmp eq i16 %.narrow, 0
  br i1 %.not58.i, label %insert_match.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = zext i16 %.narrow to i32
  %i.bo = add nsw i32 %i.bn, -1
  %i.bp = tail call zeroext i16 @quick_insert_string(ptr noundef nonnull %0, i32 noundef %i.bo) #3 ; 0 uses
  br label %insert_match.exit

insert_match.exit:                                ; preds = %bb.k, %bb.m, %bb.n, %bb.o, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  br i1 %i.c, label %bb.y, label %.critedge, !prof !30

bb.y:                                             ; preds = %insert_match.exit
  %i.bq = load i32, ptr %i.d, align 4, !tbaa !23
  %i.br = icmp ugt i32 %i.bq, 262
  br i1 %i.br, label %bb.z, label %.critedge, !prof !30

bb.z:                                             ; preds = %bb.y
  %i.bs = zext i16 %.sroa.18.0 to i32             ; 2 uses
  %i.bt = zext i16 %.sroa.9.1 to i32              ; 3 uses
  %i.bu = add nuw nsw i32 %i.bt, %i.bs            ; 3 uses
  %i.bv = load i32, ptr %i.j, align 4, !tbaa !32
  %i.bw = add i32 %i.bv, -262
  %i.bx = icmp ult i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.aa, label %.critedge, !prof !30

bb.aa:                                            ; preds = %bb.z
  store i32 %i.bu, ptr %i.f, align 4, !tbaa !24
  %i.by = tail call zeroext i16 @quick_insert_string(ptr noundef nonnull %0, i32 noundef %i.bu) #3 ; 3 uses
  %i.bz = load i32, ptr %i.f, align 4, !tbaa !24  ; 4 uses
  %i.ca = trunc i32 %i.bz to i16                  ; 15 uses
  %i.cb = zext i32 %i.bz to i64
  %i.cc = zext i16 %i.by to i64
  %i.cd = sub nsw i64 %i.cb, %i.cc                ; 2 uses
  %i.ce = load i32, ptr %i.g, align 64, !tbaa !26
  %i.cf = add i32 %i.ce, -262
  %i.cg = zext i32 %i.cf to i64
  %i.ch = icmp sle i64 %i.cd, %i.cg
  %i.ci = icmp sgt i64 %i.cd, 0
  %or.cond12 = and i1 %i.ci, %i.ch
  %i.cj = icmp ne i16 %i.by, 0
  %or.cond15 = and i1 %i.cj, %or.cond12
  br i1 %or.cond15, label %bb.ab, label %fizzle_matches.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 88), align 8, !tbaa !28
  %i.cl = tail call i32 %i.ck(ptr noundef nonnull %0, i16 noundef zeroext %i.by) #3
  %i.cm = trunc i32 %i.cl to i16                  ; 8 uses
  %i.cn = load i32, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %i.co = trunc i32 %i.cn to i16                  ; 8 uses
  %i.cp = and i32 %i.cn, 65535                    ; 3 uses
  %i.cq = and i32 %i.bz, 65535                    ; 6 uses
  %.not99 = icmp samesign uge i32 %i.cp, %i.cq
  %i.cr = icmp ult i16 %i.cm, 4
  %or.cond155 = select i1 %.not99, i1 true, i1 %i.cr, !prof !33
  br i1 %or.cond155, label %fizzle_matches.exit, label %bb.ac, !prof !33

bb.ac:                                            ; preds = %bb.ab
  %i.cs = icmp ult i16 %.sroa.9.1, 2
  br i1 %i.cs, label %fizzle_matches.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = add nuw nsw i32 %i.cp, 1
  %i.cu = icmp samesign ult i32 %i.ct, %i.bt
  %i.cv = add nuw nsw i32 %i.cq, 1
  %i.cw = icmp samesign ult i32 %i.cv, %i.bt
  %or.cond157 = select i1 %i.cu, i1 true, i1 %i.cw, !prof !34
  br i1 %or.cond157, label %fizzle_matches.exit, label %bb.ae, !prof !34

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load ptr, ptr %i.k, align 8, !tbaa !35  ; 3 uses
  %i.cy = sub nsw i64 0, %.sroa.9.0.insert.ext
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1 ; 2 uses
  %i.db = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  %i.dd = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dd
  %i.df = load i8, ptr %i.dc, align 1, !tbaa !36
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !36
  %.not.i102 = icmp eq i8 %i.df, %i.dg
  br i1 %.not.i102, label %bb.af, label %fizzle_matches.exit, !prof !25

bb.af:                                            ; preds = %bb.ae
  %i.dh = load i32, ptr %i.g, align 64, !tbaa !26
  %i.di = add i32 %i.dh, -262                     ; 2 uses
  %i.dj = icmp ult i32 %i.di, %i.cq
  %i.dk = sub i32 %i.bz, %i.di
  %i.dl = and i32 %i.dk, 65535
  %i.dm = select i1 %i.dj, i32 %i.dl, i32 0       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.db
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dd
  %.05372.i = getelementptr inbounds i8, ptr %i.do, i64 -1 ; 2 uses
  %.05473.i = getelementptr inbounds i8, ptr %i.dn, i64 -1 ; 2 uses
  %i.dp = load i8, ptr %.05473.i, align 1, !tbaa !36
  %i.dq = load i8, ptr %.05372.i, align 1, !tbaa !36
  %i.dr = icmp ne i8 %i.dp, %i.dq
  %.not5874.i = icmp samesign uge i32 %i.dm, %i.cq
  %or.cond62.not6875.i = select i1 %i.dr, i1 true, i1 %.not5874.i, !prof !37
  %i.ds = icmp ugt i16 %i.cm, 255
  %or.cond6376.i = select i1 %or.cond62.not6875.i, i1 true, i1 %i.ds, !prof !38
  %i.dt = icmp ult i16 %i.co, 2
  %or.cond6477.i = or i1 %i.dt, %or.cond6376.i
  br i1 %or.cond6477.i, label %fizzle_matches.exit, label %.lr.ph.i, !prof !39

.lr.ph.i:                                         ; preds = %bb.af, %.lr.ph.i
  %indvars.iv.i = phi i32 [ %i.du, %.lr.ph.i ], [ %i.cq, %bb.af ]
  %.05484.i = phi ptr [ %.054.i, %.lr.ph.i ], [ %.05473.i, %bb.af ]
  %.05383.i = phi ptr [ %.053.i, %.lr.ph.i ], [ %.05372.i, %bb.af ]
  %.sroa.0.082.i = phi i16 [ %i.dv, %.lr.ph.i ], [ %i.co, %bb.af ]
  %.sroa.8.081.i = phi i16 [ %i.dw, %.lr.ph.i ], [ %i.cm, %bb.af ] ; 2 uses
  %.sroa.4.079.i = phi i16 [ %i.dx, %.lr.ph.i ], [ %.sroa.9.1, %bb.af ]
  %i.du = add nsw i32 %indvars.iv.i, -1           ; 3 uses
  %i.dv = add i16 %.sroa.0.082.i, -1              ; 3 uses
  %i.dw = add nuw nsw i16 %.sroa.8.081.i, 1       ; 2 uses
  %i.dx = add i16 %.sroa.4.079.i, -1              ; 4 uses
  %.053.i = getelementptr inbounds i8, ptr %.05383.i, i64 -1 ; 2 uses
  %.054.i = getelementptr inbounds i8, ptr %.05484.i, i64 -1 ; 2 uses
  %i.dy = load i8, ptr %.054.i, align 1, !tbaa !36
  %i.dz = load i8, ptr %.053.i, align 1, !tbaa !36
  %i.ea = icmp ne i8 %i.dy, %i.dz
  %i.eb = icmp eq i16 %i.dx, 0
  %or.cond61.not67.not71.i = select i1 %i.ea, i1 true, i1 %i.eb, !prof !33
  %.not58.i103 = icmp samesign uge i32 %i.dm, %i.du
  %or.cond62.not68.i = select i1 %or.cond61.not67.not71.i, i1 true, i1 %.not58.i103, !prof !37
  %i.ec = icmp samesign ugt i16 %.sroa.8.081.i, 254
  %or.cond63.i = select i1 %or.cond62.not68.i, i1 true, i1 %i.ec, !prof !38
  %i.ed = icmp ult i16 %i.dv, 2
  %or.cond64.i = select i1 %or.cond63.i, i1 true, i1 %i.ed, !prof !40
  br i1 %or.cond64.i, label %bb.ag, label %.lr.ph.i, !prof !41, !llvm.loop !8

bb.ag:                                            ; preds = %.lr.ph.i
  %i.ee = icmp ult i16 %i.dx, 2
  br i1 %i.ee, label %bb.ah, label %fizzle_matches.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ef = trunc i32 %i.du to i16
  %i.eg = add i16 %i.ca, 1
  br label %fizzle_matches.exit

fizzle_matches.exit:                              ; preds = %bb.ab, %bb.aa, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.sroa.9.2 = phi i16 [ %.sroa.9.1, %bb.ae ], [ %.sroa.9.1, %bb.ab ], [ %.sroa.9.1, %bb.aa ], [ %.sroa.9.1, %bb.ac ], [ %.sroa.9.1, %bb.ad ], [ %.sroa.9.1, %bb.ag ], [ %.sroa.9.1, %bb.af ], [ %i.dx, %bb.ah ]
  %.sroa.23.1 = phi i16 [ %i.ca, %bb.ae ], [ %i.ca, %bb.ab ], [ %i.ca, %bb.aa ], [ %i.ca, %bb.ac ], [ %i.ca, %bb.ad ], [ %i.ca, %bb.ag ], [ %i.ca, %bb.af ], [ %i.eg, %bb.ah ]
  %.sroa.19.1 = phi i16 [ %i.ca, %bb.ae ], [ %i.ca, %bb.ab ], [ %i.ca, %bb.aa ], [ %i.ca, %bb.ac ], [ %i.ca, %bb.ad ], [ %i.ca, %bb.ag ], [ %i.ca, %bb.af ], [ %i.ef, %bb.ah ]
  %.sroa.8.3 = phi i16 [ %i.cm, %bb.ae ], [ 1, %bb.ab ], [ 1, %bb.aa ], [ %i.cm, %bb.ac ], [ %i.cm, %bb.ad ], [ %i.cm, %bb.ag ], [ %i.cm, %bb.af ], [ %i.dw, %bb.ah ]
  %.sroa.0.1 = phi i16 [ %i.co, %bb.ae ], [ %i.co, %bb.ab ], [ 0, %bb.aa ], [ %i.co, %bb.ac ], [ %i.co, %bb.ad ], [ %i.co, %bb.ag ], [ %i.co, %bb.af ], [ %i.dv, %bb.ah ]
  store i32 %i.bs, ptr %i.f, align 4, !tbaa !24
  br label %.critedge

.critedge:                                        ; preds = %bb.z, %insert_match.exit, %bb.y, %fizzle_matches.exit
  %.sroa.9.3 = phi i16 [ %.sroa.9.2, %fizzle_matches.exit ], [ %.sroa.9.1, %bb.y ], [ %.sroa.9.1, %insert_match.exit ], [ %.sroa.9.1, %bb.z ] ; 6 uses
  %.sroa.23.2 = phi i16 [ %.sroa.23.1, %fizzle_matches.exit ], [ %.sroa.23.0, %bb.y ], [ %.sroa.23.0, %insert_match.exit ], [ %.sroa.23.0, %bb.z ]
  %.sroa.19.2 = phi i16 [ %.sroa.19.1, %fizzle_matches.exit ], [ %.sroa.19.0, %bb.y ], [ %.sroa.19.0, %insert_match.exit ], [ %.sroa.19.0, %bb.z ]
  %.sroa.8.4 = phi i16 [ %.sroa.8.3, %fizzle_matches.exit ], [ 0, %bb.y ], [ 0, %insert_match.exit ], [ 0, %bb.z ]
  %.sroa.0.2 = phi i16 [ %.sroa.0.1, %fizzle_matches.exit ], [ %.sroa.0.0, %bb.y ], [ %.sroa.0.0, %insert_match.exit ], [ %.sroa.0.0, %bb.z ]
  %i.eh = icmp ult i16 %.sroa.9.3, 4
  br i1 %i.eh, label %.preheader.i, label %emit_match.exit

.preheader.i:                                     ; preds = %.critedge
  %.not17.i = icmp eq i16 %.sroa.9.3, 0
  br i1 %.not17.i, label %emit_match.exit.thread.backedge, label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %.preheader.i
  %.pre.i = load i32, ptr %i.m, align 64, !tbaa !43 ; 2 uses
  %i.ei = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.ej = zext i16 %.sroa.18.0 to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !36  ; 2 uses
  %i.em = load ptr, ptr %i.l, align 16, !tbaa !44
  %i.en = zext i32 %.pre.i to i64                 ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %i.en
  store i16 0, ptr %i.eo, align 2, !tbaa !45
  %i.ep = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.eq = add i32 %.pre.i, 1
  store i32 %i.eq, ptr %i.m, align 64, !tbaa !43
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.en
  store i8 %i.el, ptr %i.er, align 1, !tbaa !36
  %i.es = zext i8 %i.el to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.es ; 2 uses
  %i.eu = load i16, ptr %i.et, align 4, !tbaa !36
  %i.ev = add i16 %i.eu, 1
  store i16 %i.ev, ptr %i.et, align 4, !tbaa !36
  %i.ew = load i32, ptr %i.m, align 64, !tbaa !43 ; 3 uses
  %i.ex = load i32, ptr %i.r, align 4, !tbaa !47
  %i.ey = icmp eq i32 %i.ew, %i.ex
  %i.ez = zext i1 %i.ey to i32                    ; 2 uses
  %i.fa = load i32, ptr %i.d, align 4, !tbaa !23
  %i.fb = add i32 %i.fa, -1
  store i32 %i.fb, ptr %i.d, align 4, !tbaa !23
  %.not.i105 = icmp eq i16 %.sroa.9.3, 1
  br i1 %.not.i105, label %emit_match.exit.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i104
  %i.fc = add i16 %.sroa.18.0, 1
  %i.fd = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.fe = zext i16 %i.fc to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !36  ; 2 uses
  %i.fh = load ptr, ptr %i.l, align 16, !tbaa !44
  %i.fi = zext i32 %i.ew to i64                   ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %i.fi
  store i16 0, ptr %i.fj, align 2, !tbaa !45
  %i.fk = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.fl = add i32 %i.ew, 1
  store i32 %i.fl, ptr %i.m, align 64, !tbaa !43
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fi
  store i8 %i.fg, ptr %i.fm, align 1, !tbaa !36
  %i.fn = zext i8 %i.fg to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.fn ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 4, !tbaa !36
  %i.fq = add i16 %i.fp, 1
  store i16 %i.fq, ptr %i.fo, align 4, !tbaa !36
  %i.fr = load i32, ptr %i.m, align 64, !tbaa !43 ; 3 uses
  %i.fs = load i32, ptr %i.r, align 4, !tbaa !47
  %i.ft = icmp eq i32 %i.fr, %i.fs
  %i.fu = zext i1 %i.ft to i32
  %i.fv = add nuw nsw i32 %i.ez, %i.fu            ; 2 uses
  %i.fw = load i32, ptr %i.d, align 4, !tbaa !23
  %i.fx = add i32 %i.fw, -1
  store i32 %i.fx, ptr %i.d, align 4, !tbaa !23
  %.not.i105.1 = icmp eq i16 %.sroa.9.3, 2
  br i1 %.not.i105.1, label %emit_match.exit.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fy = add i16 %.sroa.18.0, 2
  %i.fz = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.ga = zext i16 %i.fy to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !36  ; 2 uses
  %i.gd = load ptr, ptr %i.l, align 16, !tbaa !44
  %i.ge = zext i32 %i.fr to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.ge
  store i16 0, ptr %i.gf, align 2, !tbaa !45
  %i.gg = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.gh = add i32 %i.fr, 1
  store i32 %i.gh, ptr %i.m, align 64, !tbaa !43
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.ge
  store i8 %i.gc, ptr %i.gi, align 1, !tbaa !36
  %i.gj = zext i8 %i.gc to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.gj ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 4, !tbaa !36
  %i.gm = add i16 %i.gl, 1
  store i16 %i.gm, ptr %i.gk, align 4, !tbaa !36
  %i.gn = load i32, ptr %i.m, align 64, !tbaa !43
  %i.go = load i32, ptr %i.r, align 4, !tbaa !47
  %i.gp = icmp eq i32 %i.gn, %i.go
  %i.gq = zext i1 %i.gp to i32
  %i.gr = add nuw nsw i32 %i.fv, %i.gq
  %i.gs = load i32, ptr %i.d, align 4, !tbaa !23
  %i.gt = add i32 %i.gs, -1
  store i32 %i.gt, ptr %i.d, align 4, !tbaa !23
  br label %emit_match.exit.loopexit

emit_match.exit.loopexit:                         ; preds = %bb.aj, %bb.ai, %.lr.ph.i104
  %.lcssa204 = phi i32 [ %i.ez, %.lr.ph.i104 ], [ %i.fv, %bb.ai ], [ %i.gr, %bb.aj ]
  %.pre170 = zext nneg i16 %.sroa.9.3 to i32
  %i.gu = icmp eq i32 %.lcssa204, 0
  %i.gv = load i32, ptr %i.f, align 4, !tbaa !24
  %i.gw = add i32 %i.gv, %.pre170                 ; 2 uses
  store i32 %i.gw, ptr %i.f, align 4, !tbaa !24
  br i1 %i.gu, label %emit_match.exit.thread.backedge, label %bb.ak, !prof !48

emit_match.exit.thread.backedge:                  ; preds = %emit_match.exit.loopexit, %.preheader.i, %emit_match.exit, %bb.am
  br label %emit_match.exit.thread

emit_match.exit:                                  ; preds = %.critedge
  %i.gx = zext i16 %.sroa.9.3 to i32              ; 3 uses
  %i.gy = zext i16 %.sroa.18.0 to i32
  %i.gz = sub nsw i32 %i.gy, %.sroa.45.0.extract.trunc.i ; 2 uses
  %i.ha = add nsw i32 %i.gx, -3                   ; 2 uses
  %i.hb = trunc i32 %i.gz to i16
  %i.hc = load ptr, ptr %i.l, align 16, !tbaa !44
  %i.hd = load i32, ptr %i.m, align 64, !tbaa !43 ; 2 uses
  %i.he = zext i32 %i.hd to i64                   ; 2 uses
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.he
  store i16 %i.hb, ptr %i.hf, align 2, !tbaa !45
  %i.hg = trunc i32 %i.ha to i8
  %i.hh = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.hi = add i32 %i.hd, 1
  store i32 %i.hi, ptr %i.m, align 64, !tbaa !43
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.he
  store i8 %i.hg, ptr %i.hj, align 1, !tbaa !36
  %i.hk = load i32, ptr %i.o, align 8, !tbaa !49
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr %i.o, align 8, !tbaa !49
  %i.hm = add nsw i32 %i.gz, -1                   ; 3 uses
  %i.hn = zext nneg i32 %i.ha to i64
  %i.ho = getelementptr inbounds nuw i8, ptr @zng_length_code, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !36
  %i.hq = zext i8 %i.hp to i64
  %i.hr = getelementptr [4 x i8], ptr %i.p, i64 %i.hq ; 2 uses
  %i.hs = load i16, ptr %i.hr, align 4, !tbaa !36
  %i.ht = add i16 %i.hs, 1
  store i16 %i.ht, ptr %i.hr, align 4, !tbaa !36
  %i.hu = icmp ult i32 %i.hm, 256
  %i.hv = zext nneg i32 %i.hm to i64
  %i.hw = getelementptr inbounds nuw i8, ptr @zng_dist_code, i64 %i.hv
  %i.hx = lshr i32 %i.hm, 7
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr @zng_dist_code, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 256
  %.in.in.i.i = select i1 %i.hu, ptr %i.hw, ptr %i.ia
  %.in.i.i = load i8, ptr %.in.in.i.i, align 1, !tbaa !36
  %i.ib = zext i8 %.in.i.i to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ib ; 2 uses
  %i.id = load i16, ptr %i.ic, align 4, !tbaa !36
  %i.ie = add i16 %i.id, 1
  store i16 %i.ie, ptr %i.ic, align 4, !tbaa !36
  %i.if = load i32, ptr %i.m, align 64, !tbaa !43
  %i.ig = load i32, ptr %i.r, align 4, !tbaa !47
  %.not196 = icmp eq i32 %i.if, %i.ig
  %i.ih = load i32, ptr %i.d, align 4, !tbaa !23
  %i.ii = sub i32 %i.ih, %i.gx
  store i32 %i.ii, ptr %i.d, align 4, !tbaa !23
  %i.ij = load i32, ptr %i.f, align 4, !tbaa !24
  %i.ik = add i32 %i.ij, %i.gx                    ; 2 uses
  store i32 %i.ik, ptr %i.f, align 4, !tbaa !24
  br i1 %.not196, label %bb.ak, label %emit_match.exit.thread.backedge, !prof !50

bb.ak:                                            ; preds = %emit_match.exit.loopexit, %emit_match.exit
  %i.il = phi i32 [ %i.gw, %emit_match.exit.loopexit ], [ %i.ik, %emit_match.exit ]
  %i.im = load i32, ptr %i.t, align 4, !tbaa !51  ; 3 uses
  %i.in = icmp sgt i32 %i.im, -1
  br i1 %i.in, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.io = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.ip = zext nneg i32 %i.im to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ip
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.ir = phi ptr [ %i.iq, %bb.al ], [ null, %bb.ak ]
  %i.is = sub nsw i32 %i.il, %i.im
  tail call void @zng_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.ir, i32 noundef %i.is, i32 noundef 0) #3
  %i.it = load i32, ptr %i.f, align 4, !tbaa !24
  store i32 %i.it, ptr %i.t, align 4, !tbaa !51
  %i.iu = load ptr, ptr %0, align 64, !tbaa !52
  tail call void @zng_flush_pending(ptr noundef %i.iu) #3
  %i.iv = load ptr, ptr %0, align 64, !tbaa !52
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !55
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %.thread143, label %emit_match.exit.thread.backedge

bb.an:                                            ; preds = %bb.c
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.pre167.pre168, i32 2)
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 5980
  store i32 %spec.select, ptr %i.iz, align 4, !tbaa !56
  %i.ja = icmp eq i32 %1, 4
  br i1 %i.ja, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.jb = load i32, ptr %i.t, align 4, !tbaa !51  ; 3 uses
  %i.jc = icmp sgt i32 %i.jb, -1
  br i1 %i.jc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jd = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.je = zext nneg i32 %i.jb to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.je
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.jg = phi ptr [ %i.jf, %bb.ap ], [ null, %bb.ao ]
  %i.jh = sub nsw i32 %.pre167.pre168, %i.jb
  tail call void @zng_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.jg, i32 noundef %i.jh, i32 noundef 1) #3
  %i.ji = load i32, ptr %i.f, align 4, !tbaa !24
  store i32 %i.ji, ptr %i.t, align 4, !tbaa !51
  %i.jj = load ptr, ptr %0, align 64, !tbaa !52
  tail call void @zng_flush_pending(ptr noundef %i.jj) #3
  %i.jk = load ptr, ptr %0, align 64, !tbaa !52
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !55
  %i.jn = icmp eq i32 %i.jm, 0
  %. = select i1 %i.jn, i32 2, i32 3
  br label %.thread143

bb.ar:                                            ; preds = %bb.an
  %i.jo = load i32, ptr %i.m, align 64, !tbaa !43
  %.not101 = icmp eq i32 %i.jo, 0
  br i1 %.not101, label %bb.av, label %bb.as, !prof !30

bb.as:                                            ; preds = %bb.ar
  %i.jp = load i32, ptr %i.t, align 4, !tbaa !51  ; 3 uses
  %i.jq = icmp sgt i32 %i.jp, -1
  br i1 %i.jq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jr = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.js = zext nneg i32 %i.jp to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.js
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.ju = phi ptr [ %i.jt, %bb.at ], [ null, %bb.as ]
  %i.jv = sub nsw i32 %.pre167.pre168, %i.jp
  tail call void @zng_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.ju, i32 noundef %i.jv, i32 noundef 0) #3
  %i.jw = load i32, ptr %i.f, align 4, !tbaa !24
  store i32 %i.jw, ptr %i.t, align 4, !tbaa !51
  %i.jx = load ptr, ptr %0, align 64, !tbaa !52
  tail call void @zng_flush_pending(ptr noundef %i.jx) #3
  %i.jy = load ptr, ptr %0, align 64, !tbaa !52
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !55
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %.thread143, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  br label %.thread143

.thread143:                                       ; preds = %bb.am, %bb.b, %bb.au, %bb.aq, %bb.av
  %.2 = phi i32 [ 0, %bb.au ], [ %., %bb.aq ], [ 1, %bb.av ], [ 0, %bb.b ], [ 0, %bb.am ]
  ret i32 %.2
}

declare hidden void @zng_fill_window(ptr noundef) local_unnamed_addr #1

declare zeroext i16 @quick_insert_string(ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden void @zng_tr_flush_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare hidden void @zng_flush_pending(ptr noundef) local_unnamed_addr #1

declare void @insert_string(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !42}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS12zng_stream_s", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 _ZTS15zng_gz_header_s", !9, i64 0}
!13 = !{!"p1 short", !9, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!"crc32_fold_s", !4, i64 0, !5, i64 64}
!16 = !{!"p1 _ZTS9ct_data_s", !9, i64 0}
!17 = !{!"p1 _ZTS18static_tree_desc_s", !9, i64 0}
!18 = !{!"tree_desc_s", !16, i64 0, !5, i64 8, !17, i64 16}
!19 = !{!"long", !4, i64 0}
!20 = !{!"p1 _ZTS16deflate_allocs_s", !9, i64 0}
!21 = !{!"internal_state", !10, i64 0, !11, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !11, i64 88, !13, i64 96, !13, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !14, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !9, i64 152, !9, i64 160, !9, i64 168, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !15, i64 192, !4, i64 260, !4, i64 2552, !4, i64 2796, !18, i64 2952, !18, i64 2976, !18, i64 3000, !4, i64 3024, !4, i64 3056, !5, i64 5348, !5, i64 5352, !4, i64 5356, !5, i64 5932, !13, i64 5936, !11, i64 5944, !5, i64 5952, !5, i64 5956, !19, i64 5960, !19, i64 5968, !5, i64 5976, !5, i64 5980, !19, i64 5984, !19, i64 5992, !20, i64 6000, !19, i64 6008, !5, i64 6016, !4, i64 6020}
!22 = !{!21, !5, i64 176}
!23 = !{!21, !5, i64 76}
!24 = !{!21, !5, i64 132}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!21, !5, i64 64}
!27 = !{!"functable_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104}
!28 = !{!27, !9, i64 88}
!29 = !{!21, !5, i64 136}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
