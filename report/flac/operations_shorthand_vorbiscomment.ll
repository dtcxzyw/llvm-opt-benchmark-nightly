Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/operations_shorthand_vorbiscomment?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Argument_VcField = type { ptr, ptr, i32, ptr, i32 }
%struct.FLAC__StreamMetadata_VorbisComment_Entry = type { i32, ptr }

@.str = private unnamed_addr constant [34 x i8] c"out of memory allocating iterator\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"out of memory allocating VORBIS_COMMENT block\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"%s: ERROR: adding new VORBIS_COMMENT block to metadata\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: ERROR: memory allocation failure\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"%s: ERROR: can't open file '%s' for '%s' tag value\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"%s: ERROR: file '%s' for '%s' tag value is too large\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"out of memory allocating tag value\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"%s: ERROR: while reading file '%s' for '%s' tag value: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"%s: ERROR: file '%s' for '%s' tag value has embedded NULs\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"%s: ERROR: converting file '%s' contents to UTF-8 for tag value\0A\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"%s: ERROR: file '%s' for '%s' tag value is not valid UTF-8\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"%s: ERROR: converting comment '%s' to UTF-8\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"%s: ERROR: tag value for '%s' is not valid UTF-8\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"%s: ERROR: empty import file name\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"%s: ERROR: can't open import file %s: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"%s: ERROR: line too long, aborting\0A\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"%s: ERROR: malformed vorbis comment field \22%s\22,\0A       %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"%s: ERROR: empty export file name\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"%s: ERROR: can't open export file %s: %s\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @do_shorthand_operation__vorbis_comment(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [65536 x i8], align 16            ; 8 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.Argument_VcField, align 8   ; 9 uses
  %i.c = alloca [200 x ptr], align 16             ; 6 uses
  %i.d = tail call ptr @FLAC__metadata_iterator_new() #11 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @die(ptr noundef nonnull @.str) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @FLAC__metadata_iterator_init(ptr noundef %i.d, ptr noundef %2) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.f = tail call ptr @FLAC__metadata_iterator_get_block(ptr noundef %i.d) #11 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %.not = icmp eq i32 %i.g, 4
  br i1 %.not, label %.critedge69, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @FLAC__metadata_iterator_next(ptr noundef %i.d) #11
  %.not64 = icmp eq i32 %i.h, 0
  br i1 %.not64, label %.critedge, label %bb.d, !llvm.loop !20

.critedge:                                        ; preds = %bb.e
  %i.i = load i32, ptr %3, align 8, !tbaa !30
  %i.j = and i32 %i.i, -2
  %switch = icmp eq i32 %i.j, 24
  br i1 %switch, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.critedge
  %i.k = tail call ptr @FLAC__metadata_object_new(i32 noundef 4) #11 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %.preheader

bb.g:                                             ; preds = %bb.f
  tail call void @die(ptr noundef nonnull @.str.1) #11
  br label %.preheader

.preheader:                                       ; preds = %bb.g, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.h
  %i.m = tail call i32 @FLAC__metadata_iterator_next(ptr noundef %i.d) #11
  %.not65 = icmp eq i32 %i.m, 0
  br i1 %.not65, label %bb.i, label %bb.h, !llvm.loop !21

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i32 @FLAC__metadata_iterator_insert_block_after(ptr noundef %i.d, ptr noundef %i.k) #11
  %.not66 = icmp eq i32 %i.n, 0
  br i1 %.not66, label %bb.j, label %.critedge69

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @print_error_with_chain_status(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %0) #11
  br label %bb.bp

bb.k:                                             ; preds = %.critedge
  tail call void @FLAC__metadata_iterator_delete(ptr noundef %i.d) #11
  br label %bb.bp

.critedge69:                                      ; preds = %bb.d, %bb.i
  %.0 = phi ptr [ %i.k, %bb.i ], [ %i.f, %bb.d ]  ; 14 uses
  %i.o = load i32, ptr %3, align 8, !tbaa !30
  switch i32 %i.o, label %remove_vc_all.exit [
    i32 18, label %bb.l
    i32 19, label %bb.m
    i32 20, label %bb.n
    i32 21, label %bb.r
    i32 22, label %bb.ac
    i32 23, label %bb.ag
    i32 24, label %bb.ak
    i32 25, label %bb.al
    i32 26, label %bb.bh
  ]

bb.l:                                             ; preds = %.critedge69
  %.not68 = icmp eq i32 %1, 0
  %i.p = select i1 %.not68, ptr null, ptr %0
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !11
  tail call void @write_vc_field(ptr noundef %i.p, ptr noundef nonnull %i.q, i32 noundef %5, ptr noundef %i.r) #11
  br label %remove_vc_all.exit

bb.m:                                             ; preds = %.critedge69
  %.not67 = icmp eq i32 %1, 0
  %i.s = select i1 %.not67, ptr null, ptr %0
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !12
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !11
  tail call void @write_vc_fields(ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w, i32 noundef %i.y, i32 noundef %5, ptr noundef %i.z) #11
  br label %remove_vc_all.exit

bb.n:                                             ; preds = %.critedge69
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %remove_vc_all.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call i32 @FLAC__metadata_object_vorbiscomment_resize_comments(ptr noundef nonnull %.0, i32 noundef 0) #11
  %.not4.i = icmp eq i32 %i.ac, 0
  br i1 %.not4.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ae = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ad, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %0) #11 ; 0 uses
  br label %remove_vc_all.exit

bb.q:                                             ; preds = %bb.o
  store i32 1, ptr %4, align 4, !tbaa !13
  br label %remove_vc_all.exit

bb.r:                                             ; preds = %.critedge69
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ah = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #12
  store ptr %i.ag, ptr %i.c, align 16, !tbaa !15
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %indvars.iv.i = phi i64 [ 1, %bb.r ], [ %indvars.iv.next.i, %bb.t ] ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15
  %i.an = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.am, i32 noundef 61) #12 ; 3 uses
  %i.ao = icmp ne ptr %i.an, null
  %.not.i70 = icmp ult ptr %i.an, %i.aj
  %or.cond.i = select i1 %i.ao, i1 %.not.i70, i1 false
  br i1 %or.cond.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 200
  br i1 %exitcond.not.i, label %.preheader47.i, label %bb.s, !llvm.loop !22

bb.u:                                             ; preds = %bb.s
  %i.aq = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.preheader47.i

.preheader47.i:                                   ; preds = %bb.t, %bb.u
  %.036.lcssa59.i = phi i32 [ %i.aq, %bb.u ], [ 200, %bb.t ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !12
  %.not51.i = icmp eq i32 %i.as, 0
  br i1 %.not51.i, label %remove_vc_all_except.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader47.i
  %i.at = add nsw i32 %.036.lcssa59.i, -1
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.av = zext i32 %i.at to i64                   ; 2 uses
  %wide.trip.count.i = zext i32 %.036.lcssa59.i to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.av
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab, %.preheader.lr.ph.i
  %.03850.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.139.i, %bb.ab ] ; 4 uses
  %i.ax = zext i32 %.03850.i to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.z
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count.i
  br i1 %exitcond56.not.i, label %.critedge.loopexit.i, label %bb.w, !llvm.loop !23

bb.w:                                             ; preds = %bb.v, %.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next54.i, %bb.v ] ; 3 uses
  %i.ay = icmp eq i64 %indvars.iv53.i, %i.av
  br i1 %i.ay, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !15 ; 2 uses
  %i.ba = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #12
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv53.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15 ; 3 uses
  %i.bd = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bc, i32 noundef 61) #12
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bh = phi ptr [ %i.az, %bb.x ], [ %i.bc, %bb.y ]
  %.in.i = phi i64 [ %i.ba, %bb.x ], [ %i.bg, %bb.y ]
  %i.bi = trunc i64 %.in.i to i32
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.ax ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call i32 @FLAC__metadata_object_vorbiscomment_entry_matches(i32 %i.bl, ptr %i.bn, ptr noundef nonnull %i.bh, i32 noundef %i.bi) #11
  %.not42.i = icmp eq i32 %i.bo, 0
  br i1 %.not42.i, label %bb.v, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = add i32 %.03850.i, 1
  br label %bb.ab

.critedge.loopexit.i:                             ; preds = %bb.v
  %i.bq = tail call i32 @FLAC__metadata_object_vorbiscomment_delete_comment(ptr noundef nonnull %.0, i32 noundef %.03850.i) #11 ; 0 uses
  store i32 1, ptr %4, align 4, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge.loopexit.i, %bb.aa
  %.139.i = phi i32 [ %i.bp, %bb.aa ], [ %.03850.i, %.critedge.loopexit.i ] ; 2 uses
  %i.br = load i32, ptr %i.ar, align 8, !tbaa !12
  %i.bs = icmp ult i32 %.139.i, %i.br
  br i1 %i.bs, label %.preheader.i, label %remove_vc_all_except.exit, !llvm.loop !24

remove_vc_all_except.exit:                        ; preds = %bb.ab, %.preheader47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %remove_vc_all.exit

bb.ac:                                            ; preds = %.critedge69
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !12
  %i.bv = tail call i32 @FLAC__metadata_object_vorbiscomment_remove_entries_matching(ptr noundef %.0, ptr noundef %i.bu) #11 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.by = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bx, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %0) #11 ; 0 uses
  br label %remove_vc_all.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i71 = icmp eq i32 %i.bv, 0
  br i1 %.not.i71, label %remove_vc_all.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 1, ptr %4, align 4, !tbaa !13
  br label %remove_vc_all.exit

bb.ag:                                            ; preds = %.critedge69
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !12
  %i.cb = tail call i32 @FLAC__metadata_object_vorbiscomment_remove_entry_matching(ptr noundef %.0, ptr noundef %i.ca) #11 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ce = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cd, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %0) #11 ; 0 uses
  br label %remove_vc_all.exit

bb.ai:                                            ; preds = %bb.ag
  %.not.i73 = icmp eq i32 %i.cb, 0
  br i1 %.not.i73, label %remove_vc_all.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 1, ptr %4, align 4, !tbaa !13
  br label %remove_vc_all.exit

bb.ak:                                            ; preds = %.critedge69
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = tail call fastcc i32 @set_vc_field(ptr noundef %0, ptr noundef %.0, ptr noundef nonnull %i.cf, ptr noundef %4, i32 noundef %5)
  br label %remove_vc_all.exit

bb.al:                                            ; preds = %.critedge69
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !32 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %char0.i = load i8, ptr %i.ci, align 1
  switch i8 %char0.i, label %.tail.thread.i [
    i8 0, label %bb.an
    i8 45, label %.tail.i
  ]

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.cl = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ck, i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef %0) #11 ; 0 uses
  br label %import_vc_from.exit

.tail.i:                                          ; preds = %bb.am
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ao, label %.tail.thread.i

bb.ao:                                            ; preds = %.tail.i
  %i.cp = load ptr, ptr @stdin, align 8, !tbaa !11
  br label %bb.ap

.tail.thread.i:                                   ; preds = %.tail.i, %bb.am
  %i.cq = tail call noalias ptr @fopen64(ptr noundef nonnull %i.ci, ptr noundef nonnull @.str.17)
  br label %bb.ap

bb.ap:                                            ; preds = %.tail.thread.i, %bb.ao
  %.027.i = phi ptr [ %i.cp, %bb.ao ], [ %i.cq, %.tail.thread.i ] ; 5 uses
  %i.cr = icmp eq ptr %.027.i, null
  br i1 %i.cr, label %bb.aq, label %.preheader.i75

.preheader.i75:                                   ; preds = %bb.ap
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.cw = load ptr, ptr %i.ch, align 8, !tbaa !32
  %i.cx = tail call ptr @__errno_location() #13
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !13
  %i.cz = tail call ptr @strerror(i32 noundef %i.cy) #11
  %i.da = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cv, i32 noundef 1, ptr noundef nonnull @.str.18, ptr noundef %0, ptr noundef %i.cw, ptr noundef %i.cz) #11 ; 0 uses
  br label %import_vc_from.exit

bb.ar:                                            ; preds = %bb.bf, %.preheader.i75
  %i.db = call i32 @feof(ptr noundef nonnull %.027.i) #11
  %.not36.i = icmp eq i32 %i.db, 0
  br i1 %.not36.i, label %bb.as, label %.critedge.i

bb.as:                                            ; preds = %bb.ar
  %i.dc = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 65536, ptr noundef nonnull %.027.i)
  %.not37.i = icmp eq ptr %i.dc, null
  br i1 %.not37.i, label %.critedge.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dd = call ptr @strpbrk(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.19) #12 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.df = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #12 ; 2 uses
  %i.dg = icmp ugt i64 %i.df, 65534
  br i1 %i.dg, label %.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  br label %bb.aw

.thread.i:                                        ; preds = %bb.au
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dj = load ptr, ptr %i.ch, align 8, !tbaa !32
  %i.dk = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.di, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef %i.dj) #11 ; 0 uses
  br label %.critedge.i

bb.aw:                                            ; preds = %bb.av, %bb.at
  %.1.ph.i = phi ptr [ %i.dh, %bb.av ], [ %i.dd, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i8 0, ptr %.1.ph.i, align 1, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  %i.dl = call i32 @parse_vorbis_comment_field(ptr noundef nonnull %i.a, ptr noundef nonnull %6, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.b) #11
  %.not39.i = icmp eq i32 %i.dl, 0
end_hunk_0
