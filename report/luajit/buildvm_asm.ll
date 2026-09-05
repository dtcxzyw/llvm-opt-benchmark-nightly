Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/buildvm_asm?download=true
begin_hunk_0
@.str.8 = private unnamed_addr constant [12 x i8] c"\09.align %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"\0A\09.globl %s\0A\09.hidden %s\0A\09.type %s, @%s\0A\09.size %s, %d\0A%s:\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\0A\09.globl %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"\09.def %s; .scl 3; .type 32; .endef\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"\0A\09.private_extern %s\0A\09.no_dead_strip %s\0A%s:\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@jccnames = internal unnamed_addr constant [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [53 x i8] c"Error: unsupported opcode for %s symbol relocation.\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"\09%s %s@PLT\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"\09%s %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"jo\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"jno\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"jb\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"jnb\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"jz\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"jnz\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"jbe\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"ja\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"js\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"jns\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"jpe\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"jpo\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"jl\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"jge\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"jle\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"jg\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"\09.byte %d\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"\09.long %s-.-4\0A\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"\09.long %s\0A\00", align 1
@switch.table.emit_asm = private unnamed_addr constant [3 x ptr] [ptr @.str.7, ptr @.str.7, ptr @.str.8], align 8

; Function Attrs: nofree nounwind uwtable
define dso_local void @emit_asm(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 31 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef %i.d) #4 ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.g = tail call i64 @fwrite(ptr nonnull @.str.1, i64 7, i64 1, ptr %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %i.j = icmp ult i32 %i.i, 3
  br i1 %i.j, label %switch.lookup, label %emit_asm_align.exit

switch.lookup:                                    ; preds = %bb.a
  %i.k = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.emit_asm, i64 %i.k
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull %switch.load, i32 noundef 4) #4 ; 0 uses
  %.pr = load i32, ptr %i.h, align 8, !tbaa !24
  br label %emit_asm_align.exit

emit_asm_align.exit:                              ; preds = %bb.a, %switch.lookup
  %i.n = phi i32 [ %i.i, %bb.a ], [ %.pr, %switch.lookup ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 10 uses
  switch i32 %i.n, label %emit_asm_label.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %emit_asm_align.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.9, ptr noundef %i.p, ptr noundef %i.p, ptr noundef %i.p, ptr noundef nonnull @.str.11, ptr noundef %i.p, i32 noundef 0, ptr noundef %i.p) #4 ; 0 uses
  br label %emit_asm_label.exit

bb.c:                                             ; preds = %emit_asm_align.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.12, ptr noundef %i.p) #4 ; 0 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.14, ptr noundef %i.p) #4 ; 0 uses
  br label %emit_asm_label.exit

bb.d:                                             ; preds = %emit_asm_align.exit
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.15, ptr noundef %i.p, ptr noundef %i.p, ptr noundef %i.p) #4 ; 0 uses
  br label %emit_asm_label.exit

emit_asm_label.exit:                              ; preds = %emit_asm_align.exit, %bb.b, %bb.c, %bb.d
  %i.y = load i32, ptr %i.h, align 8, !tbaa !24
  %.not = icmp eq i32 %i.y, 2
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %emit_asm_label.exit
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.aa = tail call i64 @fwrite(ptr nonnull @.str.2, i64 9, i64 1, ptr %i.z) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %emit_asm_label.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph89, label %._crit_edge

.lr.ph89:                                         ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph89, %emit_asm_bytes.exit78
  %indvars.iv91 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next92, %emit_asm_bytes.exit78 ] ; 2 uses
  %.06188 = phi i32 [ 0, %.lr.ph89 ], [ %.1.lcssa, %emit_asm_bytes.exit78 ] ; 3 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv91 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !29 ; 3 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.next92
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !29 ; 3 uses
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !30 ; 11 uses
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !24
  switch i32 %i.ar, label %emit_asm_label.exit68 [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.as = sub nsw i32 %i.ap, %i.am
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.9, ptr noundef %i.aq, ptr noundef %i.aq, ptr noundef %i.aq, ptr noundef nonnull @.str.10, ptr noundef %i.aq, i32 noundef %i.as, ptr noundef %i.aq) #4 ; 0 uses
  br label %emit_asm_label.exit68

bb.i:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.12, ptr noundef %i.aq) #4 ; 0 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ax, ptr noundef nonnull @.str.13, ptr noundef %i.aq) #4 ; 0 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.14, ptr noundef %i.aq) #4 ; 0 uses
  br label %emit_asm_label.exit68

bb.j:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.15, ptr noundef %i.aq, ptr noundef %i.aq, ptr noundef %i.aq) #4 ; 0 uses
  br label %emit_asm_label.exit68

emit_asm_label.exit68:                            ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.bd = load i32, ptr %i.af, align 4, !tbaa !31
  %i.be = icmp slt i32 %.06188, %i.bd
  br i1 %i.be, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %emit_asm_label.exit68
  %i.bf = sext i32 %.06188 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %emit_asm_reloc.exit
  %indvars.iv = phi i64 [ %i.bf, %.lr.ph.preheader ], [ %indvars.iv.next, %emit_asm_reloc.exit ] ; 3 uses
  %.082 = phi i32 [ %i.am, %.lr.ph.preheader ], [ %i.fa, %emit_asm_reloc.exit ] ; 4 uses
  %i.bg = getelementptr inbounds [12 x i8], ptr %i.ag, i64 %indvars.iv ; 4 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !33 ; 3 uses
  %.not66 = icmp sgt i32 %i.bh, %i.ap
  br i1 %.not66, label %.critedge.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bi = sub nsw i32 %i.bh, %.082                ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !34
  %.not67 = icmp eq i32 %i.bk, 0
  br i1 %.not67, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.h, align 8, !tbaa !24
  switch i32 %i.bl, label %bb.ab [
    i32 0, label %bb.m
    i32 2, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.bm = load ptr, ptr %i.ah, align 8, !tbaa !35
  %i.bn = sext i32 %.082 to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn ; 3 uses
  %i.bp = load ptr, ptr %i.ai, align 8, !tbaa !36
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !37
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38 ; 4 uses
  %i.bv = add nsw i32 %i.bi, -1                   ; 3 uses
  %i.bw = icmp slt i32 %i.bi, 1
  br i1 %i.bw, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !39  ; 4 uses
  switch i8 %i.bz, label %bb.p [
    i8 -24, label %bb.u
    i8 -23, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.ca = icmp slt i8 %i.bz, 0
  br i1 %i.ca, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cb = icmp samesign ult i8 %i.bz, -112
  %i.cc = icmp ne i32 %i.bi, 1
  %or.cond.i = and i1 %i.cc, %i.cb
  br i1 %or.cond.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cd = zext nneg i32 %i.bi to i64
  %i.ce = getelementptr i8, ptr %i.bo, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !39
  %i.ch = icmp eq i8 %i.cg, 15
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %1 = and i8 %i.bz, 127
  %2 = zext nneg i8 %1 to i64
  %3 = getelementptr inbounds nuw [8 x i8], ptr @jccnames, i64 %2
  %i.ci = load ptr, ptr %3, align 8, !tbaa !38
  %i.cj = add nsw i32 %i.bi, -2
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.m
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.cl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.18, ptr noundef %i.bu) #5 ; 0 uses
  tail call void @exit(i32 noundef 1) #6
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.o, %bb.n
  %.028.i = phi i32 [ %i.cj, %bb.s ], [ %i.bv, %bb.o ], [ %i.bv, %bb.n ] ; 3 uses
  %.0.i = phi ptr [ %i.ci, %bb.s ], [ @.str.17, %bb.o ], [ @.str.16, %bb.n ]
  %.not32.i = icmp eq i32 %.028.i, 0
  br i1 %.not32.i, label %emit_asm_bytes.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u
  %wide.trip.count.i.i = zext nneg i32 %.028.i to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.y ] ; 3 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.cn = and i32 %i.cm, 15                       ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.i.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !39
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  br i1 %i.co, label %.thread.i.i, label %bb.w

.thread.i.i:                                      ; preds = %bb.v
  %i.ct = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.38, i32 noundef %i.cs) #4 ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.39, i32 noundef %i.cs) #4 ; 0 uses
  %i.cv = icmp eq i32 %i.cn, 15
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.cx = tail call i32 @putc(i32 noundef 10, ptr noundef %i.cw) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.thread.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.v, !llvm.loop !9

._crit_edge.i.i:                                  ; preds = %bb.y
  %i.cy = and i32 %.028.i, 15
  %.not.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i, label %emit_asm_bytes.exit.i, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.da = tail call i32 @putc(i32 noundef 10, ptr noundef %i.cz) ; 0 uses
  br label %emit_asm_bytes.exit.i

emit_asm_bytes.exit.i:                            ; preds = %bb.z, %._crit_edge.i.i, %bb.u
  %i.db = load i8, ptr %i.bu, align 1, !tbaa !39
  %i.dc = icmp eq i8 %i.db, 95
  %i.dd = zext i1 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.dd ; 3 uses
  %i.df = load i8, ptr %i.de, align 1
  %.not33.i = icmp eq i8 %i.df, 108
  br i1 %.not33.i, label %sub_1.i, label %emit_asm_bytes.exit.tail.thread.i

sub_1.i:                                          ; preds = %emit_asm_bytes.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dh = load i8, ptr %i.dg, align 1
  %.not34.i = icmp eq i8 %i.dh, 106
  br i1 %.not34.i, label %emit_asm_bytes.exit.tail.i, label %emit_asm_bytes.exit.tail.thread.i

emit_asm_bytes.exit.tail.i:                       ; preds = %sub_1.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = icmp eq i8 %i.dj, 95
  br i1 %i.dk, label %bb.aa, label %emit_asm_bytes.exit.tail.thread.i

emit_asm_bytes.exit.tail.thread.i:                ; preds = %emit_asm_bytes.exit.tail.i, %sub_1.i, %emit_asm_bytes.exit.i
  %i.dl = load i32, ptr %i.h, align 8, !tbaa !24
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %emit_asm_reloc_text.exit, label %bb.aa

bb.aa:                                            ; preds = %emit_asm_bytes.exit.tail.thread.i, %emit_asm_bytes.exit.tail.i
  br label %emit_asm_reloc_text.exit

emit_asm_reloc_text.exit:                         ; preds = %emit_asm_bytes.exit.tail.thread.i, %bb.aa
  %.str.21.sink.i = phi ptr [ @.str.21, %bb.aa ], [ @.str.20, %emit_asm_bytes.exit.tail.thread.i ]
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.do = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull %.str.21.sink.i, ptr noundef %.0.i, ptr noundef nonnull %i.bu) #4 ; 0 uses
  br label %emit_asm_reloc.exit

bb.ab:                                            ; preds = %bb.l, %bb.k
  %i.dp = load ptr, ptr %i.ah, align 8, !tbaa !35
  %i.dq = sext i32 %.082 to i64
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %i.ds = icmp sgt i32 %i.bi, 0
  br i1 %i.ds, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ab
  %wide.trip.count.i = zext nneg i32 %i.bi to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.af ] ; 3 uses
  %i.dt = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.du = and i32 %i.dt, 15                       ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 %indvars.iv.i
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !39
  %i.dz = zext i8 %i.dy to i32                    ; 2 uses
  br i1 %i.dv, label %.thread.i, label %bb.ad

.thread.i:                                        ; preds = %bb.ac
  %i.ea = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.38, i32 noundef %i.dz) #4 ; 0 uses
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.eb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.39, i32 noundef %i.dz) #4 ; 0 uses
  %i.ec = icmp eq i32 %i.du, 15
  br i1 %i.ec, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.ee = tail call i32 @putc(i32 noundef 10, ptr noundef %i.ed) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.thread.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ac, !llvm.loop !9

._crit_edge.i:                                    ; preds = %bb.af, %bb.ab
  %i.ef = and i32 %i.bi, 15
  %.not.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i, label %emit_asm_bytes.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.eh = tail call i32 @putc(i32 noundef 10, ptr noundef %i.eg) ; 0 uses
  br label %emit_asm_bytes.exit

emit_asm_bytes.exit:                              ; preds = %._crit_edge.i, %bb.ag
  %i.ei = load i32, ptr %i.bj, align 4, !tbaa !34 ; 2 uses
  %i.ej = load ptr, ptr %i.ai, align 8, !tbaa !36
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !37
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !38 ; 6 uses
  %i.ep = load i32, ptr %i.h, align 8, !tbaa !24
  switch i32 %i.ep, label %bb.an [
    i32 0, label %bb.ah
    i32 1, label %bb.ak
  ]

bb.ah:                                            ; preds = %emit_asm_bytes.exit
  %.not14.i = icmp eq i32 %i.ei, 0
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  br i1 %.not14.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.er = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull @.str.40, ptr noundef %i.eo) #4 ; 0 uses
  br label %emit_asm_reloc.exit

bb.aj:                                            ; preds = %bb.ah
  %i.es = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull @.str.41, ptr noundef %i.eo) #4 ; 0 uses
  br label %emit_asm_reloc.exit

bb.ak:                                            ; preds = %emit_asm_bytes.exit
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.eu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.13, ptr noundef %i.eo) #4 ; 0 uses
  %.not.i69 = icmp eq i32 %i.ei, 0
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  br i1 %.not.i69, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.40, ptr noundef %i.eo) #4 ; 0 uses
  br label %emit_asm_reloc.exit

bb.am:                                            ; preds = %bb.ak
  %i.ex = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.41, ptr noundef %i.eo) #4 ; 0 uses
  br label %emit_asm_reloc.exit

bb.an:                                            ; preds = %emit_asm_bytes.exit
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.ez = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ey, ptr noundef nonnull @.str.41, ptr noundef %i.eo) #4 ; 0 uses
  br label %emit_asm_reloc.exit

emit_asm_reloc.exit:                              ; preds = %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ai, %emit_asm_reloc_text.exit
  %i.fa = add i32 %i.bh, 4                        ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.fb = load i32, ptr %i.af, align 4, !tbaa !31
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next, %i.fc
  br i1 %i.fd, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !10
end_hunk_0
