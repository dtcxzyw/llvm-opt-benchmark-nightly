Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/readline?download=true
inline.NumInlined: 33
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[30m\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\1B[31m\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\1B[32m\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\1B[33m\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\1B[34m\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\1B[35m\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\1B[36m\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\1B[37m\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\1B[30;1m\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\1B[31;1m\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\1B[32;1m\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"\1B[33;1m\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"\1B[34;1m\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\1B[35;1m\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"\1B[36;1m\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"\1B[37;1m\00", align 1
@term_colors = dso_local local_unnamed_addr global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 16
@.str.17 = private unnamed_addr constant [4 x i8] c"^D\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c" \08\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\1B[%c\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\1B[%d%c\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local range(i32 -1, 3) i32 @readline_handle_byte(ptr nofree noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca [5 x i8], align 1                 ; 7 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %i.d = add i32 %1, -192
  %or.cond = icmp ult i32 %i.d, 56
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i32 %1, 223
  %i.f = select i1 %i.e, i8 2, i8 1
  %i.g = icmp samesign ugt i32 %1, 239
  %i.h = zext i1 %i.g to i8
  %i.i = add nuw nsw i8 %i.f, %i.h                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.i, ptr %i.j, align 1, !tbaa !15
  %i.k = zext nneg i8 %i.i to i32
  %i.l = lshr exact i32 64, %i.k
  %i.m = add nuw nsw i32 %i.l, 255
  %i.n = and i32 %i.m, %1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !45
  br label %readline_handle_char.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !15    ; 2 uses
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %1, -64
  %or.cond3 = icmp eq i32 %i.r, 128
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !45
  %i.u = shl i32 %i.t, 6
  %i.v = and i32 %1, 63
  %i.w = or disjoint i32 %i.u, %i.v               ; 2 uses
  store i32 %i.w, ptr %i.s, align 8, !tbaa !45
  %i.x = add i8 %i.q, -1                          ; 2 uses
  store i8 %i.x, ptr %i.p, align 1, !tbaa !15
  %.not25 = icmp eq i8 %i.x, 0
  br i1 %.not25, label %bb.f, label %readline_handle_char.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %1, %bb.d ], [ %i.w, %bb.e ]
  store i8 0, ptr %i.p, align 1, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i32 [ %.0, %bb.f ], [ %1, %bb.c ]     ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 8 uses
  %i.z = load i8, ptr %i.y, align 2, !tbaa !16
  switch i8 %i.z, label %term_backspace.exit.i [
    i8 0, label %bb.h
    i8 1, label %bb.y
    i8 2, label %bb.af
  ]

bb.h:                                             ; preds = %bb.g
  switch i32 %.1, label %bb.w [
    i32 1, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.m
    i32 9, label %term_backspace.exit.i
    i32 10, label %bb.n
    i32 13, label %bb.n
    i32 11, label %bb.o
    i32 21, label %bb.p
    i32 23, label %bb.q
    i32 25, label %bb.r
    i32 27, label %bb.s
    i32 127, label %bb.t
    i32 8, label %bb.t
    i32 155, label %bb.v
  ]

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %0, align 8, !tbaa !17
  br label %term_backspace.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @term_printf(ptr noundef nonnull @.str.17) #11
  br label %readline_handle_char.exit

bb.l:                                             ; preds = %bb.j
  tail call fastcc void @term_delete_char(ptr noundef nonnull %0) #12
  br label %term_backspace.exit.i

bb.m:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
  store i32 %i.ae, ptr %0, align 8, !tbaa !17
  br label %term_backspace.exit.i

bb.n:                                             ; preds = %bb.h, %bb.h
  tail call fastcc void @term_return(ptr noundef nonnull %0) #12
  br label %term_backspace.exit.i

bb.o:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !18
  tail call fastcc void @term_kill_region(ptr noundef nonnull %0, i32 noundef %i.ag, i32 noundef 1) #12
  br label %term_backspace.exit.i

bb.p:                                             ; preds = %bb.h
  tail call fastcc void @term_kill_region(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1) #12
  br label %term_backspace.exit.i

bb.q:                                             ; preds = %bb.h
  tail call fastcc void @term_kill_word_backward(ptr noundef nonnull %0) #12
  br label %term_backspace.exit.i

bb.r:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !20
  tail call fastcc void @term_insert_region(ptr noundef nonnull %0, ptr noundef %i.ai, i32 noundef %i.ak) #12
  br label %term_backspace.exit.i

bb.s:                                             ; preds = %bb.h
  store i8 1, ptr %i.y, align 2, !tbaa !16
  br label %term_backspace.exit.i

bb.t:                                             ; preds = %bb.h, %bb.h
  %i.al = load i32, ptr %0, align 8, !tbaa !17    ; 3 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.preheader.i.i.i, label %term_backspace.exit.i

.preheader.i.i.i:                                 ; preds = %bb.t
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = zext nneg i32 %i.al to i64              ; 2 uses
  %indvars.iv.next.i.i.i49 = add nsw i64 %i.ao, -1 ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.next.i.i.i49 to i32
  store i32 %i.ap, ptr %0, align 8, !tbaa !17
  %.not54 = icmp eq i32 %i.al, 1
  br i1 %.not54, label %term_backward_char.exit.i.i, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %.preheader.i.i.i
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !21
  br label %.lr.ph51

bb.u:                                             ; preds = %.lr.ph51
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.next.i.i.i50, -1 ; 2 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  store i32 %i.ar, ptr %0, align 8, !tbaa !17
  %i.as = icmp sgt i64 %indvars.iv.next.i.i.i50, 1
  br i1 %i.as, label %.lr.ph51, label %term_backward_char.exit.i.i, !llvm.loop !40

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %bb.u
  %indvars.iv.next.i.i.i50 = phi i64 [ %indvars.iv.next.i.i.i, %bb.u ], [ %indvars.iv.next.i.i.i49, %.lr.ph51.preheader ] ; 3 uses
  %indvars.iv.i.i.i51 = phi i64 [ %indvars.iv.next.i.i.i50, %bb.u ], [ %i.ao, %.lr.ph51.preheader ]
  %2 = getelementptr i8, ptr %i.aq, i64 %indvars.iv.i.i.i51
  %i.at = getelementptr i8, ptr %2, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23
  %i.av = icmp sgt i8 %i.au, -65
  br i1 %i.av, label %.term_backward_char.exit.i.i_crit_edge, label %bb.u, !llvm.loop !40

.term_backward_char.exit.i.i_crit_edge:           ; preds = %.lr.ph51
  br label %term_backward_char.exit.i.i, !llvm.loop !40

term_backward_char.exit.i.i:                      ; preds = %bb.u, %.term_backward_char.exit.i.i_crit_edge, %.preheader.i.i.i
  tail call fastcc void @term_delete_char(ptr noundef nonnull %0) #12
  br label %term_backspace.exit.i

bb.v:                                             ; preds = %bb.h
  store i8 2, ptr %i.y, align 2, !tbaa !16
  br label %term_backspace.exit.i

bb.w:                                             ; preds = %bb.h
  %i.aw = icmp sgt i32 %.1, 31
  br i1 %i.aw, label %bb.x, label %readline_handle_char.exit

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @term_insert_char(ptr noundef nonnull %0, i32 noundef %.1) #12
  br label %term_backspace.exit.i

bb.y:                                             ; preds = %bb.g
  store i8 0, ptr %i.y, align 2, !tbaa !16
  switch i32 %.1, label %readline_handle_char.exit [
    i32 91, label %bb.z
    i32 79, label %bb.z
    i32 13, label %bb.aa
    i32 8, label %bb.ab
    i32 127, label %bb.ab
    i32 98, label %bb.ac
    i32 100, label %bb.ad
    i32 102, label %bb.ae
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  store i8 2, ptr %i.y, align 2, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ax, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> zeroinitializer, ptr %i.ay, align 8, !tbaa !24
  br label %term_backspace.exit.i

bb.aa:                                            ; preds = %bb.y
  tail call fastcc void @term_return(ptr noundef nonnull %0) #12
  br label %term_backspace.exit.i

bb.ab:                                            ; preds = %bb.y, %bb.y
  %i.az = tail call fastcc i32 @skip_word_backward(ptr noundef nonnull %0) #12
  tail call fastcc void @term_kill_region(ptr noundef nonnull %0, i32 noundef %i.az, i32 noundef 1) #12
  br label %term_backspace.exit.i

bb.ac:                                            ; preds = %bb.y
  %i.ba = tail call fastcc i32 @skip_word_backward(ptr noundef nonnull %0) #12
  store i32 %i.ba, ptr %0, align 8, !tbaa !17
  br label %term_backspace.exit.i

bb.ad:                                            ; preds = %bb.y
  %i.bb = tail call fastcc i32 @skip_word_forward(ptr noundef nonnull %0) #12
  tail call fastcc void @term_kill_region(ptr noundef nonnull %0, i32 noundef %i.bb, i32 noundef 1) #12
  br label %term_backspace.exit.i

bb.ae:                                            ; preds = %bb.y
  %i.bc = tail call fastcc i32 @skip_word_forward(ptr noundef nonnull %0) #12
  store i32 %i.bc, ptr %0, align 8, !tbaa !17
  br label %term_backspace.exit.i

bb.af:                                            ; preds = %bb.g
  store i8 0, ptr %i.y, align 2, !tbaa !16
  switch i32 %.1, label %readline_handle_char.exit [
    i32 65, label %bb.ag
    i32 66, label %bb.ah
    i32 69, label %bb.ah
    i32 68, label %bb.al
    i32 67, label %bb.an
    i32 70, label %bb.ao
    i32 72, label %bb.ap
    i32 59, label %bb.aq
    i32 48, label %bb.ar
    i32 49, label %bb.ar
    i32 50, label %bb.ar
    i32 51, label %bb.ar
    i32 52, label %bb.ar
    i32 53, label %bb.ar
    i32 54, label %bb.ar
    i32 55, label %bb.ar
    i32 56, label %bb.ar
    i32 57, label %bb.ar
    i32 126, label %bb.as
  ]

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @term_up_char(ptr noundef nonnull %0) #12
  br label %term_backspace.exit.i

bb.ah:                                            ; preds = %bb.af, %bb.af
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25 ; 3 uses
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %term_backspace.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !26 ; 2 uses
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bj) #13
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = add nuw i32 %i.be, 1
  %i.bn = add i32 %i.bm, %i.bl                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !27
  %i.bq = icmp slt i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.bn, ptr %i.bd, align 4, !tbaa !25
  %i.br = sext i32 %i.bn to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bh, i64 %i.br ; 2 uses
  %i.bt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bs) #13 ; 2 uses
  %i.bu = trunc i64 %i.bt to i32                  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21
  %sext.i.i.i = shl i64 %i.bt, 32
  %i.bx = ashr exact i64 %sext.i.i.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %i.bs, i64 %i.bx, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bu, ptr %i.by, align 4, !tbaa !18
  store i32 %i.bu, ptr %0, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.bz, align 4, !tbaa !28
  br label %term_backspace.exit.i

bb.ak:                                            ; preds = %bb.ai
  store i32 -1, ptr %i.bd, align 4, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !18
  store i32 %i.cb, ptr %0, align 8, !tbaa !17
  br label %term_backspace.exit.i

bb.al:                                            ; preds = %bb.af
  %i.cc = load i32, ptr %0, align 8, !tbaa !17    ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.preheader.i.i, label %term_backspace.exit.i

.preheader.i.i:                                   ; preds = %bb.al
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cf = zext nneg i32 %i.cc to i64              ; 2 uses
  %indvars.iv.next.i.i46 = add nsw i64 %i.cf, -1  ; 2 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv.next.i.i46 to i32
  store i32 %i.cg, ptr %0, align 8, !tbaa !17
  %.not53 = icmp eq i32 %i.cc, 1
  br i1 %.not53, label %term_backspace.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.i.i
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !21
  br label %.lr.ph

bb.am:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.next.i.i47, -1 ; 2 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  store i32 %i.ci, ptr %0, align 8, !tbaa !17
  %i.cj = icmp sgt i64 %indvars.iv.next.i.i47, 1
  br i1 %i.cj, label %.lr.ph, label %term_backspace.exit.i, !llvm.loop !40

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.am
  %indvars.iv.next.i.i47 = phi i64 [ %indvars.iv.next.i.i, %bb.am ], [ %indvars.iv.next.i.i46, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv.i.i47 = phi i64 [ %indvars.iv.next.i.i47, %bb.am ], [ %i.cf, %.lr.ph.preheader ]
  %3 = getelementptr i8, ptr %i.ch, i64 %indvars.iv.i.i47
  %i.ck = getelementptr i8, ptr %3, i64 -1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !23
  %i.cm = icmp sgt i8 %i.cl, -65
  br i1 %i.cm, label %.term_backspace.exit.i.loopexit_crit_edge48, label %bb.am, !llvm.loop !40

bb.an:                                            ; preds = %bb.af
  tail call fastcc void @term_forward_char(ptr noundef nonnull %0) #12
  br label %term_backspace.exit.i

bb.ao:                                            ; preds = %bb.af
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !18
  store i32 %i.co, ptr %0, align 8, !tbaa !17
  br label %term_backspace.exit.i

bb.ap:                                            ; preds = %bb.af
  store i32 0, ptr %0, align 8, !tbaa !17
  br label %term_backspace.exit.i

bb.aq:                                            ; preds = %bb.af
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cr = load <2 x i32>, ptr %i.cq, align 8, !tbaa !24
  store <2 x i32> %i.cr, ptr %i.cp, align 4, !tbaa !24
  store i32 0, ptr %i.cq, align 8, !tbaa !47
  store i8 2, ptr %i.y, align 2, !tbaa !16
  br label %term_backspace.exit.i

bb.ar:                                            ; preds = %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !47
  %i.cu = mul nsw i32 %i.ct, 10
  %i.cv = add nsw i32 %.1, -48
  %i.cw = add nsw i32 %i.cv, %i.cu
  store i32 %i.cw, ptr %i.cs, align 8, !tbaa !47
  store i8 2, ptr %i.y, align 2, !tbaa !16
  br label %term_backspace.exit.i

bb.as:                                            ; preds = %bb.af
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !47
  switch i32 %i.cy, label %readline_handle_char.exit [
    i32 1, label %bb.at
    i32 3, label %bb.au
    i32 4, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %0, align 8, !tbaa !17
  br label %term_backspace.exit.i

bb.au:                                            ; preds = %bb.as
  tail call fastcc void @term_delete_char(ptr noundef nonnull %0) #12
  br label %term_backspace.exit.i

bb.av:                                            ; preds = %bb.as
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !18
  store i32 %i.da, ptr %0, align 8, !tbaa !17
  br label %term_backspace.exit.i

.term_backspace.exit.i.loopexit_crit_edge48:      ; preds = %.lr.ph
  br label %term_backspace.exit.i, !llvm.loop !40

term_backspace.exit.i:                            ; preds = %bb.am, %.preheader.i.i, %.term_backspace.exit.i.loopexit_crit_edge48, %bb.av, %bb.au, %bb.at, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.v, %term_backward_char.exit.i.i, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g
  %i.db = phi i1 [ false, %bb.g ], [ false, %bb.x ], [ false, %bb.i ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.h ], [ true, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.av ], [ false, %bb.v ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.ac ], [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.ag ], [ false, %term_backward_char.exit.i.i ], [ false, %bb.ak ], [ false, %bb.an ], [ false, %bb.ao ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %bb.au ], [ false, %bb.t ], [ false, %bb.ah ], [ false, %bb.aj ], [ false, %bb.al ], [ false, %.preheader.i.i ], [ false, %.term_backspace.exit.i.loopexit_crit_edge48 ], [ false, %bb.am ]
  %.0.i = phi i32 [ 1, %bb.g ], [ 1, %bb.x ], [ 1, %bb.i ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.h ], [ 2, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.av ], [ 1, %bb.v ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.ag ], [ 1, %term_backward_char.exit.i.i ], [ 1, %bb.ak ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 1, %bb.ap ], [ 1, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.at ], [ 1, %bb.au ], [ 1, %bb.t ], [ 1, %bb.ah ], [ 1, %bb.aj ], [ 1, %bb.al ], [ 1, %.preheader.i.i ], [ 1, %.term_backspace.exit.i.loopexit_crit_edge48 ], [ 1, %bb.am ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 4, !tbaa !28
  %.not.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i, label %bb.br, label %bb.aw

bb.aw:                                            ; preds = %term_backspace.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !29
  %i.dg = sub nsw i32 0, %i.df
  tail call fastcc void @move_cursor(ptr noundef nonnull %0, i32 noundef %i.dg) #12
  store i32 0, ptr %i.de, align 8, !tbaa !29
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !18
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.dl
  store i8 0, ptr %i.dm, align 1, !tbaa !23
  %i.dn = load i32, ptr %i.dj, align 4, !tbaa !18
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph123.i.i, label %._crit_edge124.thread.i.i

.lr.ph123.i.i:                                    ; preds = %bb.aw
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bl, %.lr.ph123.i.i
  %.084121.i.i = phi i32 [ 0, %.lr.ph123.i.i ], [ %.3.i.i, %bb.bl ] ; 5 uses
  %.087120.i.i = phi i32 [ 0, %.lr.ph123.i.i ], [ %.188.i.i, %bb.bl ]
  %.092119.i.i = phi i32 [ 0, %.lr.ph123.i.i ], [ %i.ft, %bb.bl ] ; 5 uses
  %i.du = load i32, ptr %0, align 8, !tbaa !17
  %i.dv = icmp eq i32 %.092119.i.i, %i.du
  br i1 %i.dv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.dw = load i32, ptr %i.de, align 8, !tbaa !29
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.188.i.i = phi i32 [ %i.dw, %bb.ay ], [ %.087120.i.i, %bb.ax ] ; 3 uses
  %i.dx = load ptr, ptr %i.dh, align 8, !tbaa !21
  %i.dy = sext i32 %.092119.i.i to i64            ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 %i.dy ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !23
  %i.eb = icmp sgt i8 %i.ea, -1
  br i1 %i.eb, label %bb.ba, label %bb.bb, !prof !30

bb.ba:                                            ; preds = %bb.az
  store i64 1, ptr %i.c, align 8, !tbaa !32
  %i.ec = load i8, ptr %i.dz, align 1, !tbaa !23
  %i.ed = zext i8 %i.ec to i32
  br label %utf8_get.exit109.i.i

bb.bb:                                            ; preds = %bb.az
  %i.ee = call i32 @__utf8_get(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.c) #11
  br label %utf8_get.exit109.i.i

utf8_get.exit109.i.i:                             ; preds = %bb.bb, %bb.ba
  %.0.i108.i.i = phi i32 [ %i.ed, %bb.ba ], [ %i.ee, %bb.bb ] ; 4 uses
  %i.ef = load i8, ptr %i.dp, align 4, !tbaa !33  ; 3 uses
  %.not102.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not102.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %utf8_get.exit109.i.i
  store i8 42, ptr %i.b, align 1, !tbaa !23
  store i8 0, ptr %i.dq, align 1, !tbaa !23
  br label %bb.bf

bb.bd:                                            ; preds = %utf8_get.exit109.i.i
  %i.eg = icmp slt i32 %.0.i108.i.i, 256
  br i1 %i.eg, label %char_width.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eh = add nsw i32 %.0.i108.i.i, -19968
  %or.cond.i.i.i = icmp ult i32 %i.eh, 20992
  %i.ei = add nsw i32 %.0.i108.i.i, -65281
  %or.cond3.i.i.i = icmp ult i32 %i.ei, 94
  %or.cond14.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %or.cond3.i.i.i
  %i.ej = add nsw i32 %.0.i108.i.i, -128512
  %or.cond5.i.i.i = icmp ult i32 %i.ej, 80
  %or.cond15.i.i.i = select i1 %or.cond14.i.i.i, i1 true, i1 %or.cond5.i.i.i
  %spec.select.i.i.i = select i1 %or.cond15.i.i.i, i32 2, i32 1
  br label %char_width.exit.i.i

char_width.exit.i.i:                              ; preds = %bb.be, %bb.bd
  %.0.i110.i.i = phi i32 [ %spec.select.i.i.i, %bb.be ], [ 1, %bb.bd ]
  %i.ek = load ptr, ptr %i.dh, align 8, !tbaa !21
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.dy
  %i.em = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr align 1 %i.el, i64 %i.em, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.em
  store i8 0, ptr %i.en, align 1, !tbaa !23
  br label %bb.bf

bb.bf:                                            ; preds = %char_width.exit.i.i, %bb.bc
  %.091.i.i = phi i32 [ 1, %bb.bc ], [ %.0.i110.i.i, %char_width.exit.i.i ] ; 3 uses
  %i.eo = load i32, ptr %i.dr, align 4, !tbaa !34 ; 3 uses
  %i.ep = add nsw i32 %i.eo, %.091.i.i
  %i.eq = load i32, ptr %i.ds, align 8, !tbaa !35 ; 4 uses
  %i.er = icmp sgt i32 %i.ep, %i.eq
  %i.es = icmp sgt i32 %.092119.i.i, 0
  %or.cond.i.i = and i1 %i.es, %i.er
  br i1 %or.cond.i.i, label %.preheader.i56.i, label %._crit_edge.i.i

.preheader.i56.i:                                 ; preds = %bb.bf
  %i.et = icmp slt i32 %i.eo, %i.eq
  br i1 %i.et, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i56.i, %.lr.ph.i.i
  call void (ptr, ...) @term_printf(ptr noundef nonnull @.str.19) #11
  %i.eu = load <2 x i32>, ptr %i.dr, align 4, !tbaa !24
  %i.ev = add nsw <2 x i32> %i.eu, splat (i32 1)  ; 2 uses
  store <2 x i32> %i.ev, ptr %i.dr, align 4, !tbaa !24
  %i.ew = load i32, ptr %i.ds, align 8, !tbaa !35 ; 2 uses
  %i.ex = extractelement <2 x i32> %i.ev, i64 0
  %i.ey = icmp slt i32 %i.ex, %i.ew
  br i1 %i.ey, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !41

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.pre.i.i = load i8, ptr %i.dp, align 4, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader.i56.i, %bb.bf
  %i.ez = phi i8 [ %i.ef, %bb.bf ], [ %.pre.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.ef, %.preheader.i56.i ]
  %i.fa = phi i32 [ %i.eq, %bb.bf ], [ %i.ew, %._crit_edge.loopexit.i.i ], [ %i.eq, %.preheader.i56.i ]
  %i.fb = phi i32 [ %i.eo, %bb.bf ], [ 0, %._crit_edge.loopexit.i.i ], [ 0, %.preheader.i56.i ]
end_hunk_0
