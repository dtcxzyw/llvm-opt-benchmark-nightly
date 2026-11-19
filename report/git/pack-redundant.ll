Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/pack-redundant?download=true
inline.NumInlined: 70
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.strbuf = type { i64, i64, ptr }
%struct.git_hash_algo = type { ptr, i32, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.object_id = type { [32 x i8], i32 }

@strbuf_slopbuf = external global [0 x i8], align 1
@__const.cmd_pack_redundant.idx_name = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@pack_redundant_usage = internal constant [72 x i8] c"git pack-redundant [--verbose] [--alt-odb] (--all | <pack-filename>...)\00", align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@load_all_packs = internal unnamed_addr global i1 false, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@verbose = internal unnamed_addr global i1 false, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"--alt-odb\00", align 1
@alt_odb = internal unnamed_addr global i1 false, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"--i-still-use-this\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"git pack-redundant\00", align 1
@local_packs = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"Zero packs found!\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"Bad object ID on stdin: %s\00", align 1
@all_objects = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [44 x i8] c"There are %lu packs available in alt-odbs.\0A\00", align 1
@altodb_packs = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"The smallest (bytewise) set of packs is:\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"containing %lu duplicate objects with a total size of %lukb.\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"A total of %lu unique objects were considered.\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Redundant packs (with indexes):\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%s\0A%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"%luMB of redundant packs in total.\0A\00", align 1
@the_repository = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [21 x i8] c"./odb/source-files.h\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"trying to downcast source of type '%d' to files\00", align 1
@free_nodes = internal unnamed_addr global ptr null, align 8
@hash_algos = external constant [3 x %struct.git_hash_algo], align 16
@.str.20 = private unnamed_addr constant [22 x i8] c"Bad pack filename: %s\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Filename %s not found in packed_git\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cmd_pack_redundant(i32 noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 5 uses
  %i.a = alloca [66 x i8], align 16               ; 6 uses
  %5 = alloca %struct.object_id, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd_pack_redundant.idx_name, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  tail call void @show_usage_if_asked(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @pack_redundant_usage) #14
  %i.b = icmp sgt i32 %0, 1
  br i1 %i.b, label %sub_0.preheader, label %.loopexit.thread

sub_0.preheader:                                  ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %sub_0

sub_0:                                            ; preds = %sub_0.preheader, %bb.h
  %indvars.iv = phi i64 [ 1, %sub_0.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.033400 = phi i32 [ 0, %sub_0.preheader ], [ %.134.ph, %bb.h ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 7 uses
  %i.e = load i8, ptr %i.d, align 1
  %.not432 = icmp eq i8 %i.e, 45                  ; 2 uses
  br i1 %.not432, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %.not433 = icmp eq i8 %i.g, 45
  br i1 %.not433, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.b, label %.tail.thread

bb.b:                                             ; preds = %.tail
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = add nuw nsw i32 %i.k, 1
  br label %.loopexit

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(6) @.str.1) #15
  %.not43 = icmp eq i32 %i.m, 0
  br i1 %.not43, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %.tail.thread
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(10) @.str.2) #15
  %.not44 = icmp eq i32 %i.n, 0
  br i1 %.not44, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(10) @.str.3) #15
  %.not45 = icmp eq i32 %i.o, 0
  br i1 %.not45, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(19) @.str.4) #15
  %.not46 = icmp eq i32 %i.p, 0
  br i1 %.not46, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %.not432, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  tail call void @usage(ptr noundef nonnull @pack_redundant_usage) #16
  unreachable

.sink.split:                                      ; preds = %bb.d, %bb.c, %.tail.thread
  %alt_odb.sink = phi ptr [ @verbose, %bb.c ], [ @load_all_packs, %.tail.thread ], [ @alt_odb, %bb.d ]
  store i1 true, ptr %alt_odb.sink, align 4
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.e
  %.134.ph = phi i32 [ 1, %bb.e ], [ %.033400, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %sub_0, !llvm.loop !69

.loopexit:                                        ; preds = %bb.h, %bb.b, %bb.f
  %.033394 = phi i32 [ %.033400, %bb.b ], [ %.033400, %bb.f ], [ %.134.ph, %bb.h ]
  %.238 = phi i32 [ %i.l, %bb.b ], [ %i.q, %bb.f ], [ %0, %bb.h ]
  %.not47 = icmp eq i32 %.033394, 0
  br i1 %.not47, label %.loopexit.thread, label %bb.i

.loopexit.thread:                                 ; preds = %bb.a, %.loopexit
  tail call void @you_still_use_that(ptr noundef nonnull @.str.5, ptr noundef null) #16
  unreachable

bb.i:                                             ; preds = %.loopexit
  %.b = load i1, ptr @load_all_packs, align 4
  br i1 %.b, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.r = sext i32 %.238 to i64                    ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100  ; 2 uses
  %.not48407 = icmp eq ptr %i.t, null
  br i1 %.not48407, label %load_all.exit, label %.lr.ph409

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr @the_repository, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  tail call void @odb_prepare_alternates(ptr noundef %i.w) #14
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %bb.k

bb.k:                                             ; preds = %odb_source_files_downcast.exit.i.i, %bb.j
  %.09.in.i.i = phi ptr [ %i.y, %bb.j ], [ %.09.i.i, %odb_source_files_downcast.exit.i.i ]
  %.09.i.i = load ptr, ptr %.09.in.i.i, align 8, !tbaa !103 ; 5 uses
  %.not.i.i = icmp eq ptr %.09.i.i, null
  br i1 %.not.i.i, label %load_all.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 1
  br i1 %.not.i.i.i, label %odb_source_files_downcast.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.17, i32 noundef 31, ptr noundef nonnull @.str.18, i32 noundef %i.aa) #16
  unreachable

odb_source_files_downcast.exit.i.i:               ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !109
  %i.ad = tail call ptr @packfile_store_get_packs(ptr noundef %i.ac) #14 ; 3 uses
  %.not11.i.i = icmp eq ptr %i.ad, null
  br i1 %.not11.i.i, label %bb.k, label %.lr.ph.i.preheader, !llvm.loop !70

.lr.ph.i.preheader:                               ; preds = %odb_source_files_downcast.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !112 ; 2 uses
  %.not2.i410 = icmp eq ptr %i.af, null
  br i1 %.not2.i410, label %load_all.exit, label %.lr.ph413

.lr.ph413:                                        ; preds = %.lr.ph.i.preheader, %repo_for_each_pack_data_next.exit.i
  %i.ag = phi ptr [ %i.ao, %repo_for_each_pack_data_next.exit.i ], [ %i.af, %.lr.ph.i.preheader ]
  %.sroa.0.011.i412 = phi ptr [ %.sroa.0.1.i, %repo_for_each_pack_data_next.exit.i ], [ %.09.i.i, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.6.012.i411 = phi ptr [ %.sroa.6.1.i, %repo_for_each_pack_data_next.exit.i ], [ %i.ad, %.lr.ph.i.preheader ]
  tail call fastcc void @add_pack(ptr noundef %i.ag)
  %i.ah = load ptr, ptr %.sroa.6.012.i411, align 8, !tbaa !113 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ah, null
  br i1 %.not.i3.i, label %.critedge.i.i, label %repo_for_each_pack_data_next.exit.i

.critedge.i.i:                                    ; preds = %.lr.ph413, %odb_source_files_downcast.exit.i5.i
  %.015.in.i.i = phi ptr [ %.015.i.i, %odb_source_files_downcast.exit.i5.i ], [ %.sroa.0.011.i412, %.lr.ph413 ]
  %.015.i.i = load ptr, ptr %.015.in.i.i, align 8, !tbaa !114 ; 5 uses
  %.not17.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not17.i.i, label %load_all.exit, label %bb.n

bb.n:                                             ; preds = %.critedge.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !105 ; 2 uses
  %.not.i.i4.i = icmp eq i32 %i.aj, 1
  br i1 %.not.i.i4.i, label %odb_source_files_downcast.exit.i5.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.17, i32 noundef 31, ptr noundef nonnull @.str.18, i32 noundef %i.aj) #16
  unreachable

odb_source_files_downcast.exit.i5.i:              ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 160
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !109
  %i.am = tail call ptr @packfile_store_get_packs(ptr noundef %i.al) #14 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.am, null
  br i1 %.not18.i.i, label %.critedge.i.i, label %repo_for_each_pack_data_next.exit.i, !llvm.loop !71

repo_for_each_pack_data_next.exit.i:              ; preds = %odb_source_files_downcast.exit.i5.i, %.lr.ph413
  %.sroa.0.1.i = phi ptr [ %.sroa.0.011.i412, %.lr.ph413 ], [ %.015.i.i, %odb_source_files_downcast.exit.i5.i ]
  %.sroa.6.1.i = phi ptr [ %i.ah, %.lr.ph413 ], [ %i.am, %odb_source_files_downcast.exit.i5.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !112 ; 2 uses
  %.not2.i = icmp eq ptr %i.ao, null
  br i1 %.not2.i, label %load_all.exit, label %.lr.ph413, !llvm.loop !72

.lr.ph409:                                        ; preds = %.preheader, %add_pack_file.exit
  %indvars.iv574 = phi i64 [ %indvars.iv.next575, %add_pack_file.exit ], [ %i.r, %.preheader ]
  %6 = phi ptr [ %i.bp, %add_pack_file.exit ], [ %i.t, %.preheader ] ; 4 uses
  %indvars.iv.next575 = add nsw i64 %indvars.iv574, 1 ; 2 uses
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #15
  %i.aq = icmp ult i64 %i.ap, 40
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph409
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.20, ptr noundef nonnull %6) #16
  unreachable

bb.q:                                             ; preds = %.lr.ph409
  %i.ar = load ptr, ptr @the_repository, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !101
  tail call void @odb_prepare_alternates(ptr noundef %i.at) #14
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !101
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %bb.r

bb.r:                                             ; preds = %odb_source_files_downcast.exit.i.i61, %bb.q
  %.09.in.i.i57 = phi ptr [ %i.av, %bb.q ], [ %.09.i.i58, %odb_source_files_downcast.exit.i.i61 ]
  %.09.i.i58 = load ptr, ptr %.09.in.i.i57, align 8, !tbaa !103 ; 5 uses
  %.not.i.i59 = icmp eq ptr %.09.i.i58, null
  br i1 %.not.i.i59, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i58, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i60 = icmp eq i32 %i.ax, 1
  br i1 %.not.i.i.i60, label %odb_source_files_downcast.exit.i.i61, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.17, i32 noundef 31, ptr noundef nonnull @.str.18, i32 noundef %i.ax) #16
  unreachable

odb_source_files_downcast.exit.i.i61:             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i.i58, i64 160
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !109
  %i.ba = tail call ptr @packfile_store_get_packs(ptr noundef %i.az) #14 ; 3 uses
  %.not11.i.i62 = icmp eq ptr %i.ba, null
  br i1 %.not11.i.i62, label %bb.r, label %.lr.ph.i63.preheader, !llvm.loop !70

.lr.ph.i63.preheader:                             ; preds = %odb_source_files_downcast.exit.i.i61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !112 ; 2 uses
  %.not10.i402 = icmp eq ptr %i.bc, null
  br i1 %.not10.i402, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i63.preheader, %repo_for_each_pack_data_next.exit.i64
  %i.bd = phi ptr [ %i.bn, %repo_for_each_pack_data_next.exit.i64 ], [ %i.bc, %.lr.ph.i63.preheader ] ; 2 uses
  %.sroa.0.022.i404 = phi ptr [ %.sroa.0.1.i65, %repo_for_each_pack_data_next.exit.i64 ], [ %.09.i.i58, %.lr.ph.i63.preheader ] ; 2 uses
  %.sroa.7.023.i403 = phi ptr [ %.sroa.7.1.i, %repo_for_each_pack_data_next.exit.i64 ], [ %i.ba, %.lr.ph.i63.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 208
  %i.bf = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.be, ptr noundef nonnull dereferenceable(1) %6) #15
  %.not11.i = icmp eq ptr %i.bf, null
  br i1 %.not11.i, label %bb.u, label %add_pack_file.exit

bb.u:                                             ; preds = %.lr.ph
  %i.bg = load ptr, ptr %.sroa.7.023.i403, align 8, !tbaa !113 ; 2 uses
  %.not.i12.i = icmp eq ptr %i.bg, null
  br i1 %.not.i12.i, label %.critedge.i.i66, label %repo_for_each_pack_data_next.exit.i64

.critedge.i.i66:                                  ; preds = %bb.u, %odb_source_files_downcast.exit.i14.i
  %.015.in.i.i67 = phi ptr [ %.015.i.i68, %odb_source_files_downcast.exit.i14.i ], [ %.sroa.0.022.i404, %bb.u ]
  %.015.i.i68 = load ptr, ptr %.015.in.i.i67, align 8, !tbaa !114 ; 5 uses
  %.not17.i.i69 = icmp eq ptr %.015.i.i68, null
  br i1 %.not17.i.i69, label %.critedge.i, label %bb.v

bb.v:                                             ; preds = %.critedge.i.i66
  %i.bh = getelementptr inbounds nuw i8, ptr %.015.i.i68, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !105 ; 2 uses
  %.not.i.i13.i = icmp eq i32 %i.bi, 1
  br i1 %.not.i.i13.i, label %odb_source_files_downcast.exit.i14.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.17, i32 noundef 31, ptr noundef nonnull @.str.18, i32 noundef %i.bi) #16
  unreachable

odb_source_files_downcast.exit.i14.i:             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i68, i64 160
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !109
  %i.bl = tail call ptr @packfile_store_get_packs(ptr noundef %i.bk) #14 ; 2 uses
  %.not18.i.i70 = icmp eq ptr %i.bl, null
  br i1 %.not18.i.i70, label %.critedge.i.i66, label %repo_for_each_pack_data_next.exit.i64, !llvm.loop !71

repo_for_each_pack_data_next.exit.i64:            ; preds = %odb_source_files_downcast.exit.i14.i, %bb.u
  %.sroa.0.1.i65 = phi ptr [ %.sroa.0.022.i404, %bb.u ], [ %.015.i.i68, %odb_source_files_downcast.exit.i14.i ]
  %.sroa.7.1.i = phi ptr [ %i.bg, %bb.u ], [ %i.bl, %odb_source_files_downcast.exit.i14.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !112 ; 2 uses
  %.not10.i = icmp eq ptr %i.bn, null
  br i1 %.not10.i, label %.critedge.i, label %.lr.ph, !llvm.loop !73

.critedge.i:                                      ; preds = %.lr.ph.i63.preheader, %bb.r, %repo_for_each_pack_data_next.exit.i64, %.critedge.i.i66
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.21, ptr noundef nonnull %6) #16
  unreachable

add_pack_file.exit:                               ; preds = %.lr.ph
  tail call fastcc void @add_pack(ptr noundef %i.bd)
  %i.bo = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next575
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !100 ; 2 uses
  %.not48 = icmp eq ptr %i.bp, null
  br i1 %.not48, label %load_all.exit, label %.lr.ph409, !llvm.loop !74

load_all.exit:                                    ; preds = %add_pack_file.exit, %bb.k, %repo_for_each_pack_data_next.exit.i, %.critedge.i.i, %.preheader, %.lr.ph.i.preheader
  %i.bq = load ptr, ptr @local_packs, align 8, !tbaa !45 ; 2 uses
  %.not49 = icmp eq ptr %i.bq, null
  br i1 %.not49, label %bb.x, label %bb.y

bb.x:                                             ; preds = %load_all.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.6) #16
  unreachable

bb.y:                                             ; preds = %load_all.exit
  %i.br = tail call ptr @xmalloc(i64 noundef 24) #14 ; 2 uses
  store ptr %i.br, ptr @all_objects, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  br label %.lr.ph29.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.130.i = load ptr, ptr @altodb_packs, align 8, !tbaa !45 ; 3 uses
  %.not1231.i = icmp eq ptr %.130.i, null
  br i1 %.not1231.i, label %scan_alt_odb_packs.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %.preheader.i
  %i.bs = load ptr, ptr @all_objects, align 8, !tbaa !115 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  br label %bb.z

.lr.ph29.i:                                       ; preds = %bb.y, %._crit_edge.i
  %.01127.i = phi ptr [ %i.ca, %._crit_edge.i ], [ %i.bq, %bb.y ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01127.i, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !48
  %.022.i = load ptr, ptr %i.bw, align 8, !tbaa !50 ; 2 uses
  %.not1323.i = icmp eq ptr %.022.i, null
  br i1 %.not1323.i, label %._crit_edge.i, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph29.i, %.lr.ph.i71
  %.025.i = phi ptr [ %.0.i, %.lr.ph.i71 ], [ %.022.i, %.lr.ph29.i ] ; 2 uses
  %.01024.i = phi ptr [ %i.bz, %.lr.ph.i71 ], [ null, %.lr.ph29.i ]
  %i.bx = load ptr, ptr @all_objects, align 8, !tbaa !115
  %i.by = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.bz = tail call fastcc ptr @llist_insert_sorted_unique(ptr noundef %i.bx, ptr noundef %i.by, ptr noundef %.01024.i)
  %.0.i = load ptr, ptr %.025.i, align 8, !tbaa !50 ; 2 uses
  %.not13.i = icmp eq ptr %.0.i, null
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i71, !llvm.loop !75

._crit_edge.i:                                    ; preds = %.lr.ph.i71, %.lr.ph29.i
  %i.ca = load ptr, ptr %.01127.i, align 8, !tbaa !51 ; 2 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %.preheader.i, label %.lr.ph29.i, !llvm.loop !76

bb.z:                                             ; preds = %llist_sorted_difference_inplace.exit.i, %.lr.ph33.i
  %.132.i = phi ptr [ %.130.i, %.lr.ph33.i ], [ %.1.i, %llist_sorted_difference_inplace.exit.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.132.i, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !48
  %.022.i.i = load ptr, ptr %i.cc, align 8, !tbaa !50 ; 2 uses
  %.not23.i.i = icmp eq ptr %.022.i.i, null
  br i1 %.not23.i.i, label %llist_sorted_difference_inplace.exit.i, label %.lr.ph26.i.i

.lr.ph26.i.i:                                     ; preds = %bb.z
  %.pre35.i.i = load ptr, ptr @the_repository, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %llist_sorted_remove.exit.i.i, %.lr.ph26.i.i
  %i.cd = phi ptr [ %.pre35.i.i, %.lr.ph26.i.i ], [ %i.cx, %llist_sorted_remove.exit.i.i ] ; 4 uses
  %.025.i.i = phi ptr [ %.022.i.i, %.lr.ph26.i.i ], [ %.0.i.i, %llist_sorted_remove.exit.i.i ] ; 2 uses
  %.0624.i.i = phi ptr [ null, %.lr.ph26.i.i ], [ %.029.i9.i.i, %llist_sorted_remove.exit.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 448
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.af, %bb.aa
  %.031.i.i.i = phi ptr [ %.0624.i.i, %bb.aa ], [ null, %bb.af ] ; 3 uses
  %i.cg = icmp eq ptr %.031.i.i.i, null           ; 2 uses
  br i1 %i.cg, label %bb.ab, label %.lr.ph.i.i

bb.ab:                                            ; preds = %.loopexit.i.i.i
  %i.ch = load ptr, ptr %i.bs, align 8, !tbaa !53 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i10.i.i, label %llist_sorted_remove.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %.loopexit.i.i.i
  %i.ci = phi ptr [ %i.ch, %bb.ab ], [ %.031.i.i.i, %.loopexit.i.i.i ]
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !54
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  %.val.i.i.i = load i64, ptr %i.ck, align 8, !tbaa !57
  %i.cl = icmp eq i64 %.val.i.i.i, 32
  %..i.i.i.i = select i1 %i.cl, i64 32, i64 20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ai, %.lr.ph.i.i
  %.028.i12.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %i.cw, %bb.ai ] ; 8 uses
  %.029.i11.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.028.i12.i.i, %bb.ai ] ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.028.i12.i.i, i64 8
  %i.cn = tail call i32 @memcmp(ptr noundef nonnull readonly dereferenceable(20) %i.cm, ptr noundef nonnull readonly dereferenceable(20) %i.ce, i64 noundef %..i.i.i.i) #15 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %llist_sorted_remove.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not37.not.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not37.not.i.i.i, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %.not38.i.i.i = icmp ne ptr %.029.i11.i.i, null ; 2 uses
  %brmerge.i.i = or i1 %i.cg, %.not38.i.i.i
  br i1 %brmerge.i.i, label %.split.loop.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = load ptr, ptr %i.bs, align 8, !tbaa !53
  %.not40.i.i.i = icmp eq ptr %.031.i.i.i, %i.cp
  br i1 %.not40.i.i.i, label %.split.loop.exit17.i.i, label %.loopexit.i.i.i

.split.loop.exit.i.i:                             ; preds = %bb.ae
  %.029.i.mux.le.i.i = select i1 %.not38.i.i.i, ptr %.029.i11.i.i, ptr %i.bs
  br label %.split.loop.exit17.i.i

.split.loop.exit17.i.i:                           ; preds = %bb.af, %.split.loop.exit.i.i
  %.029.lcssa72.lcssa.sink.i.i.i = phi ptr [ %.029.i.mux.le.i.i, %.split.loop.exit.i.i ], [ %i.bs, %bb.af ]
  %i.cq = load ptr, ptr %.028.i12.i.i, align 8, !tbaa !60
  store ptr %i.cq, ptr %.029.lcssa72.lcssa.sink.i.i.i, align 8, !tbaa !50
  %i.cr = load ptr, ptr %i.bt, align 8, !tbaa !61
  %i.cs = icmp eq ptr %.028.i12.i.i, %i.cr
  br i1 %i.cs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.split.loop.exit17.i.i
  store ptr %.029.i11.i.i, ptr %i.bt, align 8, !tbaa !61
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.split.loop.exit17.i.i
  %i.ct = load ptr, ptr @free_nodes, align 8, !tbaa !50
  store ptr %i.ct, ptr %.028.i12.i.i, align 8, !tbaa !60
  store ptr %.028.i12.i.i, ptr @free_nodes, align 8, !tbaa !50
  %i.cu = load i64, ptr %i.bu, align 8, !tbaa !62
  %i.cv = add i64 %i.cu, -1
  store i64 %i.cv, ptr %i.bu, align 8, !tbaa !62
  %.pre.i.i = load ptr, ptr @the_repository, align 8
  br label %llist_sorted_remove.exit.i.i

bb.ai:                                            ; preds = %bb.ad
  %i.cw = load ptr, ptr %.028.i12.i.i, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i72, label %llist_sorted_remove.exit.i.i, label %bb.ac

llist_sorted_remove.exit.i.i:                     ; preds = %bb.ab, %bb.ai, %bb.ac, %bb.ah
  %i.cx = phi ptr [ %.pre.i.i, %bb.ah ], [ %i.cd, %bb.ai ], [ %i.cd, %bb.ac ], [ %i.cd, %bb.ab ]
  %.029.i9.i.i = phi ptr [ %.029.i11.i.i, %bb.ah ], [ %.028.i12.i.i, %bb.ai ], [ %.029.i11.i.i, %bb.ac ], [ null, %bb.ab ]
  %.0.i.i = load ptr, ptr %.025.i.i, align 8, !tbaa !50 ; 2 uses
  %.not.i.i73 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i73, label %llist_sorted_difference_inplace.exit.i, label %bb.aa, !llvm.loop !77

llist_sorted_difference_inplace.exit.i:           ; preds = %llist_sorted_remove.exit.i.i, %bb.z
  %.1.i = load ptr, ptr %.132.i, align 8, !tbaa !45 ; 2 uses
  %.not12.i = icmp eq ptr %.1.i, null
  br i1 %.not12.i, label %load_all_objects.exit, label %bb.z, !llvm.loop !78

load_all_objects.exit:                            ; preds = %llist_sorted_difference_inplace.exit.i
  %.b42 = load i1, ptr @alt_odb, align 4
  br i1 %.b42, label %.preheader.lr.ph.i, label %scan_alt_odb_packs.exit

.preheader.lr.ph.i:                               ; preds = %load_all_objects.exit
  %.0616.i = load ptr, ptr @local_packs, align 8, !tbaa !45 ; 2 uses
  %.not717.i = icmp eq ptr %.0616.i, null
  br i1 %.not717.i, label %scan_alt_odb_packs.exit, label %.preheader.i74

..loopexit_crit_edge.i:                           ; preds = %llist_sorted_difference_inplace.exit.i94, %.preheader.i74
  %.0.i95 = load ptr, ptr %.021.i, align 8, !tbaa !45 ; 2 uses
  %.not.i96 = icmp eq ptr %.0.i95, null
  br i1 %.not.i96, label %scan_alt_odb_packs.exit, label %.preheader.i74, !llvm.loop !79

.preheader.i74:                                   ; preds = %.preheader.lr.ph.i, %..loopexit_crit_edge.i
  %.021.i = phi ptr [ %.0.i95, %..loopexit_crit_edge.i ], [ %.130.i, %.preheader.lr.ph.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.021.i, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !48 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !50 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %..loopexit_crit_edge.i, label %.lr.ph.split.i

.lr.ph.splitthread-pre-split.i:                   ; preds = %llist_sorted_difference_inplace.exit.i94
  %.022.i.pr.i = load ptr, ptr %i.cz, align 8, !tbaa !50
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.preheader.i74, %.lr.ph.splitthread-pre-split.i
  %.022.i.i75 = phi ptr [ %.022.i.pr.i, %.lr.ph.splitthread-pre-split.i ], [ %i.da, %.preheader.i74 ] ; 2 uses
  %.0618.i = phi ptr [ %.06.i, %.lr.ph.splitthread-pre-split.i ], [ %.0616.i, %.preheader.i74 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0618.i, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !48 ; 6 uses
  %.not23.i.i76 = icmp eq ptr %.022.i.i75, null
  br i1 %.not23.i.i76, label %llist_sorted_difference_inplace.exit.i94, label %.lr.ph26.i.i77

.lr.ph26.i.i77:                                   ; preds = %.lr.ph.split.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %.pre35.i.i78 = load ptr, ptr @the_repository, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %llist_sorted_remove.exit.i.i90, %.lr.ph26.i.i77
  %i.dg = phi ptr [ %.pre35.i.i78, %.lr.ph26.i.i77 ], [ %i.ea, %llist_sorted_remove.exit.i.i90 ] ; 4 uses
  %.025.i.i79 = phi ptr [ %.022.i.i75, %.lr.ph26.i.i77 ], [ %.0.i.i92, %llist_sorted_remove.exit.i.i90 ] ; 2 uses
end_hunk_0
