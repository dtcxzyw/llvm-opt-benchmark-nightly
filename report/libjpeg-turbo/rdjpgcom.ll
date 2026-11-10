Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/rdjpgcom?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load i8, ptr %i.l, align 1, !tbaa !21   ; 3 uses
  %.not.i36 = icmp eq i8 %i.cr, 0
  br i1 %.not.i36, label %keymatch.exit37, label %.lr.ph.i30.1

.lr.ph.i30.1:                                     ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ct = sext i8 %i.cr to i32
  %i.cu = sext i8 %i.cr to i64                    ; 2 uses
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !16
  %i.cx = and i16 %i.cw, 256
  %.not25.i33.1 = icmp eq i16 %i.cx, 0
  br i1 %.not25.i33.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i30.1
  %i.cy = tail call ptr @__ctype_tolower_loc() #9
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !23
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.cu
  %i.db = load i32, ptr %i.da, align 4, !tbaa !24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i30.1
  %.020.i34.1 = phi i32 [ %i.ct, %.lr.ph.i30.1 ], [ %i.db, %bb.ad ]
  %.not26.i35.1 = icmp eq i32 %.020.i34.1, 97
  br i1 %.not26.i35.1, label %bb.af, label %keymatch.exit37.thread

bb.af:                                            ; preds = %bb.ae
  %i.dc = load i8, ptr %i.cs, align 1, !tbaa !21  ; 3 uses
  %.not.i36.1 = icmp eq i8 %i.dc, 0
  br i1 %.not.i36.1, label %keymatch.exit37, label %.lr.ph.i30.2

.lr.ph.i30.2:                                     ; preds = %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.de = sext i8 %i.dc to i32
  %i.df = sext i8 %i.dc to i64                    ; 2 uses
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !16
  %i.di = and i16 %i.dh, 256
  %.not25.i33.2 = icmp eq i16 %i.di, 0
  br i1 %.not25.i33.2, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i30.2
  %i.dj = tail call ptr @__ctype_tolower_loc() #9
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !23
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.df
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i30.2
  %.020.i34.2 = phi i32 [ %i.de, %.lr.ph.i30.2 ], [ %i.dm, %bb.ag ]
  %.not26.i35.2 = icmp eq i32 %.020.i34.2, 119
  br i1 %.not26.i35.2, label %bb.ai, label %keymatch.exit37.thread

bb.ai:                                            ; preds = %bb.ah
  %i.dn = load i8, ptr %i.dd, align 1, !tbaa !21
  %.not.i36.2 = icmp eq i8 %i.dn, 0
  br i1 %.not.i36.2, label %keymatch.exit37, label %keymatch.exit37.thread

keymatch.exit37.thread:                           ; preds = %bb.e, %bb.ai, %bb.ab, %bb.ae, %bb.ah
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.6, i64 55, i64 1, ptr %i.do) #10 ; 0 uses
  %i.dp = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.dq = load ptr, ptr @progname, align 8, !tbaa !12
  %i.dr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dp, ptr noundef nonnull @.str.7, ptr noundef %i.dq) #11 ; 0 uses
  %i.ds = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite1.i = tail call i64 @fwrite(ptr nonnull @.str.8, i64 37, i64 1, ptr %i.ds) #10 ; 0 uses
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite2.i = tail call i64 @fwrite(ptr nonnull @.str.9, i64 68, i64 1, ptr %i.dt) #10 ; 0 uses
  %i.du = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite3.i = tail call i64 @fwrite(ptr nonnull @.str.10, i64 52, i64 1, ptr %i.du) #10 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

keymatch.exit37:                                  ; preds = %bb.ac, %bb.af, %bb.ai, %keymatch.exit
  %.121 = phi i32 [ %i.cm, %keymatch.exit ], [ %.02059, %bb.ai ], [ %.02059, %bb.af ], [ %.02059, %bb.ac ] ; 2 uses
  %.1 = phi i32 [ %.060, %keymatch.exit ], [ 1, %bb.ai ], [ 1, %bb.af ], [ 1, %bb.ac ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.dv = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.022.lcssa = phi i32 [ 1, %bb.d ], [ %i.dv, %._crit_edge.loopexit ] ; 2 uses
  %.020.lcssa = phi i32 [ 0, %bb.d ], [ %.02059, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.d ], [ %.060, %._crit_edge.loopexit ] ; 2 uses
  %i.dw = add nsw i32 %0, -1
  %i.dx = icmp slt i32 %.022.lcssa, %i.dw
  br i1 %i.dx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.dz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dy, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.e) #11 ; 0 uses
  tail call fastcc void @usage()
  unreachable

bb.ak:                                            ; preds = %._crit_edge
  br i1 %i.f, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.ea = zext nneg i32 %.022.lcssa to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ea ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !12
  %i.ed = tail call noalias ptr @fopen(ptr noundef %i.ec, ptr noundef nonnull @.str.4) ; 2 uses
  store ptr %i.ed, ptr @infile, align 8, !tbaa !18
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.eg = load ptr, ptr @progname, align 8, !tbaa !12
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !12
  %i.ei = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.5, ptr noundef %i.eg, ptr noundef %i.eh) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.thread:                                          ; preds = %keymatch.exit37, %bb.ak
  %.020.lcssa8999 = phi i32 [ %.020.lcssa, %bb.ak ], [ %.121, %keymatch.exit37 ]
  %.0.lcssa9097 = phi i32 [ %.0.lcssa, %bb.ak ], [ %.1, %keymatch.exit37 ]
  %i.ej = load ptr, ptr @stdin, align 8, !tbaa !18
  store ptr %i.ej, ptr @infile, align 8, !tbaa !18
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %.thread
  %.020.lcssa8998 = phi i32 [ %.020.lcssa, %bb.al ], [ %.020.lcssa8999, %.thread ]
  %.0.lcssa9096 = phi i32 [ %.0.lcssa, %bb.al ], [ %.0.lcssa9097, %.thread ]
  tail call fastcc void @scan_JPEG_header(i32 noundef %.020.lcssa8998, i32 noundef %.0.lcssa9096)
  tail call void @exit(i32 noundef 0) #13
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal fastcc void @usage() unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 55, i64 1, ptr %i.a) #10 ; 0 uses
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.c = load ptr, ptr @progname, align 8, !tbaa !12
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.7, ptr noundef %i.c) #11 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite1 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 37, i64 1, ptr %i.e) #10 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite2 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 68, i64 1, ptr %i.f) #10 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite3 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 52, i64 1, ptr %i.g) #10 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @scan_JPEG_header(i32 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @infile, align 8, !tbaa !18
  %i.b = tail call i32 @getc(ptr noundef %i.a)
  %i.c = load ptr, ptr @infile, align 8, !tbaa !18
  %i.d = tail call i32 @getc(ptr noundef %i.c)
  %i.e = icmp ne i32 %i.b, 255
  %i.f = icmp ne i32 %i.d, 216
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %bb.l, label %first_marker.exit.preheader

first_marker.exit.preheader:                      ; preds = %bb.a
  %i.g = load ptr, ptr @infile, align 8, !tbaa !18
  %i.h = tail call i32 @getc(ptr noundef %i.g)    ; 3 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %first_marker.exit._crit_edge, label %read_1_byte.exit.i.preheader.lr.ph

read_1_byte.exit.i.preheader.lr.ph:               ; preds = %first_marker.exit.preheader
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %read_1_byte.exit.i.us, label %read_1_byte.exit.i

read_1_byte.exit.i.us:                            ; preds = %read_1_byte.exit.i.preheader.lr.ph, %read_1_byte.exit.i.us.backedge
  %.05.i.us = phi i32 [ %.05.i.us.be, %read_1_byte.exit.i.us.backedge ], [ %i.h, %read_1_byte.exit.i.preheader.lr.ph ]
  %.0.i.us = phi i32 [ %.0.i.us.be, %read_1_byte.exit.i.us.backedge ], [ 0, %read_1_byte.exit.i.preheader.lr.ph ] ; 2 uses
  %.not.i.us = icmp eq i32 %.05.i.us, 255
  br i1 %.not.i.us, label %.preheader.i.us, label %bb.b

bb.b:                                             ; preds = %read_1_byte.exit.i.us
  %i.j = add nuw nsw i32 %.0.i.us, 1
  %i.k = load ptr, ptr @infile, align 8, !tbaa !18
  %i.l = tail call i32 @getc(ptr noundef %i.k)    ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %.split.us, label %read_1_byte.exit.i.us.backedge

read_1_byte.exit.i.us.backedge:                   ; preds = %bb.b, %process_SOFn.exit.us
  %.05.i.us.be = phi i32 [ %i.l, %bb.b ], [ %i.af, %process_SOFn.exit.us ]
  %.0.i.us.be = phi i32 [ %i.j, %bb.b ], [ 0, %process_SOFn.exit.us ]
  br label %read_1_byte.exit.i.us, !llvm.loop !25

.preheader.i.us:                                  ; preds = %read_1_byte.exit.i.us, %.preheader.i.us
  %i.n = load ptr, ptr @infile, align 8, !tbaa !18
  %i.o = tail call i32 @getc(ptr noundef %i.n)    ; 2 uses
  switch i32 %i.o, label %bb.c [
    i32 -1, label %.split38.us
    i32 255, label %.preheader.i.us
  ]

bb.c:                                             ; preds = %.preheader.i.us
  %.not7.i.us = icmp eq i32 %.0.i.us, 0
  br i1 %.not7.i.us, label %next_marker.exit.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite.i.us = tail call i64 @fwrite(ptr nonnull @.str.15, i64 41, i64 1, ptr %i.p) #10 ; 0 uses
  br label %next_marker.exit.us

next_marker.exit.us:                              ; preds = %bb.d, %bb.c
  switch i32 %i.o, label %bb.k [
    i32 192, label %bb.g
    i32 193, label %bb.g
    i32 194, label %bb.g
    i32 195, label %bb.g
    i32 197, label %bb.g
    i32 198, label %bb.g
    i32 199, label %bb.g
    i32 201, label %bb.g
    i32 202, label %bb.g
    i32 203, label %bb.g
    i32 205, label %bb.g
    i32 206, label %bb.g
    i32 207, label %bb.g
    i32 218, label %.split40.us
    i32 217, label %.split40.us
    i32 254, label %bb.f
    i32 236, label %bb.e
  ]

bb.e:                                             ; preds = %next_marker.exit.us
  tail call fastcc void @skip_variable()
  br label %process_SOFn.exit.us

bb.f:                                             ; preds = %next_marker.exit.us
  tail call fastcc void @process_COM(i32 noundef %1)
  br label %process_SOFn.exit.us

bb.g:                                             ; preds = %next_marker.exit.us, %next_marker.exit.us, %next_marker.exit.us, %next_marker.exit.us, %next_marker.exit.us, %next_marker.exit.us, %next_marker.exit.us, %next_marker.exit.us, %next_marker.exit.us, %next_marker.exit.us, %next_marker.exit.us, %next_marker.exit.us, %next_marker.exit.us
  %i.q = load ptr, ptr @infile, align 8, !tbaa !18
  %i.r = tail call i32 @getc(ptr noundef %i.q)    ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %.split42.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr @infile, align 8, !tbaa !18
  %i.u = tail call i32 @getc(ptr noundef %i.t)    ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %.split44.us, label %read_2_bytes.exit17.us

read_2_bytes.exit17.us:                           ; preds = %bb.h
  %i.w = shl i32 %i.r, 8
  %i.x = add i32 %i.u, %i.w                       ; 2 uses
  %i.y = icmp ult i32 %i.x, 2
  br i1 %i.y, label %.split46.us, label %bb.i

bb.i:                                             ; preds = %read_2_bytes.exit17.us
  %i.z = add i32 %i.x, -2                         ; 2 uses
  %.not5.i.us = icmp eq i32 %i.z, 0
  br i1 %.not5.i.us, label %process_SOFn.exit.us, label %read_1_byte.exit.i13.us

read_1_byte.exit.i13.us:                          ; preds = %bb.i, %bb.j
  %.06.i.us = phi i32 [ %i.ad, %bb.j ], [ %i.z, %bb.i ]
  %i.aa = load ptr, ptr @infile, align 8, !tbaa !18
  %i.ab = tail call i32 @getc(ptr noundef %i.aa)
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %.split48.us, label %bb.j

bb.j:                                             ; preds = %read_1_byte.exit.i13.us
  %i.ad = add i32 %.06.i.us, -1                   ; 2 uses
  %.not.i14.us = icmp eq i32 %i.ad, 0
  br i1 %.not.i14.us, label %process_SOFn.exit.us, label %read_1_byte.exit.i13.us, !llvm.loop !0

bb.k:                                             ; preds = %next_marker.exit.us
  tail call fastcc void @skip_variable()
  br label %process_SOFn.exit.us

process_SOFn.exit.us:                             ; preds = %bb.j, %bb.k, %bb.i, %bb.f, %bb.e
  %i.ae = load ptr, ptr @infile, align 8, !tbaa !18
  %i.af = tail call i32 @getc(ptr noundef %i.ae)  ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %first_marker.exit._crit_edge, label %read_1_byte.exit.i.us.backedge

bb.l:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

first_marker.exit._crit_edge:                     ; preds = %process_SOFn.exit, %process_SOFn.exit.us, %first_marker.exit.preheader
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

read_1_byte.exit.i:                               ; preds = %read_1_byte.exit.i.preheader.lr.ph, %read_1_byte.exit.i.backedge
  %.05.i = phi i32 [ %.05.i.be, %read_1_byte.exit.i.backedge ], [ %i.h, %read_1_byte.exit.i.preheader.lr.ph ]
  %.0.i = phi i32 [ %.0.i.be, %read_1_byte.exit.i.backedge ], [ 0, %read_1_byte.exit.i.preheader.lr.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.05.i, 255
  br i1 %.not.i, label %.preheader.i, label %bb.m

bb.m:                                             ; preds = %read_1_byte.exit.i
  %i.al = add nuw nsw i32 %.0.i, 1
  %i.am = load ptr, ptr @infile, align 8, !tbaa !18
  %i.an = tail call i32 @getc(ptr noundef %i.am)  ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %.split.us, label %read_1_byte.exit.i.backedge

read_1_byte.exit.i.backedge:                      ; preds = %bb.m, %process_SOFn.exit
  %.05.i.be = phi i32 [ %i.an, %bb.m ], [ %i.dy, %process_SOFn.exit ]
  %.0.i.be = phi i32 [ %i.al, %bb.m ], [ 0, %process_SOFn.exit ]
  br label %read_1_byte.exit.i, !llvm.loop !25

.split.us:                                        ; preds = %bb.m, %bb.b
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.preheader.i:                                     ; preds = %read_1_byte.exit.i, %.preheader.i
  %i.ar = load ptr, ptr @infile, align 8, !tbaa !18
  %i.as = tail call i32 @getc(ptr noundef %i.ar)  ; 3 uses
  switch i32 %i.as, label %bb.n [
    i32 -1, label %.split38.us
    i32 255, label %.preheader.i
  ]

.split38.us:                                      ; preds = %.preheader.i, %.preheader.i.us
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.n:                                             ; preds = %.preheader.i
  %.not7.i = icmp eq i32 %.0.i, 0
  br i1 %.not7.i, label %next_marker.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.15, i64 41, i64 1, ptr %i.av) #10 ; 0 uses
  br label %next_marker.exit

next_marker.exit:                                 ; preds = %bb.n, %bb.o
  switch i32 %i.as, label %bb.aj [
    i32 192, label %bb.p
    i32 193, label %bb.p
    i32 194, label %bb.p
    i32 195, label %bb.p
    i32 197, label %bb.p
    i32 198, label %bb.p
    i32 199, label %bb.p
    i32 201, label %bb.p
    i32 202, label %bb.p
    i32 203, label %bb.p
    i32 205, label %bb.p
    i32 206, label %bb.p
    i32 207, label %bb.p
    i32 218, label %.split40.us
    i32 217, label %.split40.us
    i32 254, label %bb.ah
    i32 236, label %bb.ai
  ]

bb.p:                                             ; preds = %next_marker.exit, %next_marker.exit, %next_marker.exit, %next_marker.exit, %next_marker.exit, %next_marker.exit, %next_marker.exit, %next_marker.exit, %next_marker.exit, %next_marker.exit, %next_marker.exit, %next_marker.exit, %next_marker.exit
  %i.aw = load ptr, ptr @infile, align 8, !tbaa !18
  %i.ax = tail call i32 @getc(ptr noundef %i.aw)  ; 2 uses
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr @infile, align 8, !tbaa !18
  %i.bc = tail call i32 @getc(ptr noundef %i.bb)  ; 2 uses
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.s, label %read_2_bytes.exit16

bb.s:                                             ; preds = %bb.r
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

read_2_bytes.exit16:                              ; preds = %bb.r
  %i.bg = shl i32 %i.ax, 8
  %i.bh = add i32 %i.bc, %i.bg
  %i.bi = load ptr, ptr @infile, align 8, !tbaa !18
  %i.bj = tail call i32 @getc(ptr noundef %i.bi)  ; 2 uses
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %bb.t, label %read_1_byte.exit.i10

bb.t:                                             ; preds = %read_2_bytes.exit16
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

read_1_byte.exit.i10:                             ; preds = %read_2_bytes.exit16
  %i.bn = load ptr, ptr @infile, align 8, !tbaa !18
  %i.bo = tail call i32 @getc(ptr noundef %i.bn)  ; 2 uses
  %i.bp = icmp eq i32 %i.bo, -1
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %read_1_byte.exit.i10
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.v:                                             ; preds = %read_1_byte.exit.i10
  %i.bs = load ptr, ptr @infile, align 8, !tbaa !18
  %i.bt = tail call i32 @getc(ptr noundef %i.bs)  ; 2 uses
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %bb.w, label %read_2_bytes.exit15

bb.w:                                             ; preds = %bb.v
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.bw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

read_2_bytes.exit15:                              ; preds = %bb.v
  %i.bx = shl i32 %i.bo, 8
  %i.by = add i32 %i.bt, %i.bx
  %i.bz = load ptr, ptr @infile, align 8, !tbaa !18
  %i.ca = tail call i32 @getc(ptr noundef %i.bz)  ; 2 uses
  %i.cb = icmp eq i32 %i.ca, -1
  br i1 %i.cb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %read_2_bytes.exit15
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.cd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cc, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.y:                                             ; preds = %read_2_bytes.exit15
  %i.ce = load ptr, ptr @infile, align 8, !tbaa !18
  %i.cf = tail call i32 @getc(ptr noundef %i.ce)  ; 2 uses
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.z, label %read_2_bytes.exit

bb.z:                                             ; preds = %bb.y
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ci = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ch, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

read_2_bytes.exit:                                ; preds = %bb.y
  %i.cj = shl i32 %i.ca, 8
  %i.ck = add i32 %i.cf, %i.cj
  %i.cl = load ptr, ptr @infile, align 8, !tbaa !18
  %i.cm = tail call i32 @getc(ptr noundef %i.cl)  ; 5 uses
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.aa, label %read_1_byte.exit11.i

bb.aa:                                            ; preds = %read_2_bytes.exit
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.cp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

read_1_byte.exit11.i:                             ; preds = %read_2_bytes.exit
  %switch.tableidx = add i32 %i.as, -192          ; 2 uses
  %i.cq = icmp ult i32 %switch.tableidx, 16
  br i1 %i.cq, label %switch.lookup, label %bb.ab

switch.lookup:                                    ; preds = %read_1_byte.exit11.i
  %i.cr = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.scan_JPEG_header, i64 %i.cr
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %read_1_byte.exit11.i, %switch.lookup
  %.010.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.30, %read_1_byte.exit11.i ]
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.ck, i32 noundef %i.by, i32 noundef %i.cm, i32 noundef %i.bj) ; 0 uses
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull %.010.i) ; 0 uses
  %i.cu = mul nsw i32 %i.cm, 3
  %i.cv = add nsw i32 %i.cu, 8
  %.not.i11 = icmp eq i32 %i.bh, %i.cv
  br i1 %.not.i11, label %.preheader.i12, label %bb.ac

.preheader.i12:                                   ; preds = %bb.ab
  %i.cw = icmp sgt i32 %i.cm, 0
  br i1 %i.cw, label %.lr.ph.i, label %process_SOFn.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.33) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.ad:                                            ; preds = %read_1_byte.exit13.i
  %i.cz = add nuw nsw i32 %.015.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cz, %i.cm
  br i1 %exitcond.not.i, label %process_SOFn.exit, label %.lr.ph.i, !llvm.loop !26

.lr.ph.i:                                         ; preds = %.preheader.i12, %bb.ad
  %.015.i = phi i32 [ %i.cz, %bb.ad ], [ 0, %.preheader.i12 ]
  %i.da = load ptr, ptr @infile, align 8, !tbaa !18
  %i.db = tail call i32 @getc(ptr noundef %i.da)
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %bb.ae, label %read_1_byte.exit12.i

bb.ae:                                            ; preds = %.lr.ph.i
  %i.dd = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.de = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dd, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

read_1_byte.exit12.i:                             ; preds = %.lr.ph.i
  %i.df = load ptr, ptr @infile, align 8, !tbaa !18
  %i.dg = tail call i32 @getc(ptr noundef %i.df)
  %i.dh = icmp eq i32 %i.dg, -1
  br i1 %i.dh, label %bb.af, label %read_1_byte.exit13.i

bb.af:                                            ; preds = %read_1_byte.exit12.i
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.dj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.di, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

read_1_byte.exit13.i:                             ; preds = %read_1_byte.exit12.i
  %i.dk = load ptr, ptr @infile, align 8, !tbaa !18
  %i.dl = tail call i32 @getc(ptr noundef %i.dk)
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %bb.ag, label %bb.ad

bb.ag:                                            ; preds = %read_1_byte.exit13.i
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.do = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.split42.us:                                      ; preds = %bb.g
  %i.dp = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.dq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dp, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.split44.us:                                      ; preds = %bb.h
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.split46.us:                                      ; preds = %read_2_bytes.exit17.us
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.du = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dt, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.34) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.split48.us:                                      ; preds = %read_1_byte.exit.i13.us
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.dw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.ah:                                            ; preds = %next_marker.exit
  tail call fastcc void @process_COM(i32 noundef %1)
  br label %process_SOFn.exit

bb.ai:                                            ; preds = %next_marker.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call fastcc void @process_COM(i32 noundef %1)
  br label %process_SOFn.exit

bb.aj:                                            ; preds = %next_marker.exit
  tail call fastcc void @skip_variable()
  br label %process_SOFn.exit

process_SOFn.exit:                                ; preds = %bb.ad, %.preheader.i12, %bb.ai, %bb.aj, %bb.ah
  %i.dx = load ptr, ptr @infile, align 8, !tbaa !18
  %i.dy = tail call i32 @getc(ptr noundef %i.dx)  ; 2 uses
  %i.dz = icmp eq i32 %i.dy, -1
  br i1 %i.dz, label %first_marker.exit._crit_edge, label %read_1_byte.exit.i.backedge

.split40.us:                                      ; preds = %next_marker.exit, %next_marker.exit, %next_marker.exit.us, %next_marker.exit.us
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @skip_variable() unnamed_addr #6 {
bb.a:
  %i.a = tail call fastcc i32 @read_2_bytes()     ; 2 uses
  %i.b = icmp ult i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.34) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = add i32 %i.a, -2                         ; 2 uses
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %._crit_edge, label %read_1_byte.exit

bb.d:                                             ; preds = %read_1_byte.exit
  %i.f = add i32 %.06, -1                         ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %read_1_byte.exit, !llvm.loop !0

read_1_byte.exit:                                 ; preds = %bb.c, %bb.d
  %.06 = phi i32 [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  %i.g = load ptr, ptr @infile, align 8, !tbaa !18
  %i.h = tail call i32 @getc(ptr noundef %i.g)
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.d

bb.e:                                             ; preds = %read_1_byte.exit
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process_COM(i32 noundef range(i32 0, 2) %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @setlocale(i32 noundef 0, ptr noundef nonnull @.str.35) #14 ; 0 uses
  %i.b = tail call fastcc i32 @read_2_bytes()     ; 2 uses
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.34) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = add i32 %i.b, -2                         ; 3 uses
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.not17 = icmp eq i32 %0, 0
  br i1 %.not17, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %.024.us = phi i32 [ %i.h, %bb.k ], [ 0, %.lr.ph ]
  %.01423.us = phi i32 [ %i.s, %bb.k ], [ %i.f, %.lr.ph ]
  %i.g = load ptr, ptr @infile, align 8, !tbaa !18
  %i.h = tail call i32 @getc(ptr noundef %i.g)    ; 5 uses
  switch i32 %i.h, label %bb.h [
    i32 -1, label %.split.us
    i32 13, label %bb.g
    i32 10, label %bb.e
    i32 92, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37) ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %.lr.ph.split.us
  %.not19.us = icmp eq i32 %.024.us, 13
  br i1 %.not19.us, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %putchar20.us = tail call i32 @putchar(i32 10)  ; 0 uses
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph.split.us
  %putchar21.us = tail call i32 @putchar(i32 10)  ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.j = tail call ptr @__ctype_b_loc() #9
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = sext i32 %i.h to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !16
  %i.o = and i16 %i.n, 16384
  %.not18.us = icmp eq i16 %i.o, 0
  br i1 %.not18.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.q = tail call i32 @putc(i32 noundef %i.h, ptr noundef %i.p) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %i.h) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %i.s = add i32 %.01423.us, -1                   ; 2 uses
  %.not.us = icmp eq i32 %i.s, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !27

.lr.ph.split:                                     ; preds = %.lr.ph, %read_1_byte.exit
  %.01423 = phi i32 [ %i.aa, %read_1_byte.exit ], [ %i.f, %.lr.ph ]
  %i.t = load ptr, ptr @infile, align 8, !tbaa !18
  %i.u = tail call i32 @getc(ptr noundef %i.t)    ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %.split.us, label %read_1_byte.exit

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

read_1_byte.exit:                                 ; preds = %.lr.ph.split
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.z = tail call i32 @putc(i32 noundef %i.u, ptr noundef %i.y) ; 0 uses
  %i.aa = add i32 %.01423, -1                     ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !27

._crit_edge:                                      ; preds = %read_1_byte.exit, %bb.k, %bb.c
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.ab = tail call ptr @setlocale(i32 noundef 0, ptr noundef nonnull @.str.39) #14 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @read_2_bytes() unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @infile, align 8, !tbaa !18
  %i.b = tail call i32 @getc(ptr noundef %i.a)    ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @infile, align 8, !tbaa !18
  %i.g = tail call i32 @getc(ptr noundef %i.f)    ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = shl i32 %i.b, 8
  %i.l = add i32 %i.g, %i.k
  ret i32 %i.l
}

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !19}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 short", !10, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"short", !6, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!6, !6, i64 0}
!22 = !{!"p1 int", !10, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!7, !7, i64 0}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
end_hunk_0
