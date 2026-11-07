Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_client_convert?download=true
inline.NumInlined: 35
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pmix_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct.pmix_client_globals_t = type { ptr, i8, %struct.pmix_list_t, %struct.pmix_pointer_array_t, %struct.pmix_list_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pmix_iof_sink_t, %struct.pmix_iof_sink_t }
%struct.pmix_pointer_array_t = type { %struct.pmix_object_t, i32, i32, i32, i32, i32, ptr, ptr }
%struct.pmix_object_t = type { %union.pthread_mutex_t, ptr, i32, %struct.pmix_tma }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.pmix_tma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmix_list_t = type { %struct.pmix_object_t, %struct.pmix_list_item_t, i64 }
%struct.pmix_list_item_t = type { %struct.pmix_object_t, ptr, ptr, i32 }
%struct.pmix_iof_sink_t = type { %struct.pmix_list_item_t, %struct.pmix_proc, i16, %struct.pmix_iof_write_event_t, i8, i8, i8 }
%struct.pmix_proc = type { [256 x i8], i32 }
%struct.pmix_iof_write_event_t = type { %struct.pmix_list_item_t, i8, i8, i32, ptr, %struct.timeval, i32, %struct.pmix_list_t }
%struct.timeval = type { i64, i64 }
%struct.pmix_globals_t = type { i32, %struct.pmix_proc, %struct.pmix_value, %struct.pmix_value, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.pmix_events_t, i8, i8, %struct.timeval, %struct.pmix_list_t, %struct.pmix_pointer_array_t, i32, i32, %struct.pmix_hotel_t, i8, %struct.pmix_list_t, i8, i8, i8, i64, %struct.pmix_list_t, %struct.pmix_topology_t, %struct.pmix_cpuset_t, i8, i8, %struct.pmix_iof_flags_t, %struct.pmix_keyindex_t }
%struct.pmix_value = type { i16, %union.anon.9 }
%union.anon.9 = type { %struct.pmix_envar_t }
%struct.pmix_envar_t = type { ptr, ptr, i8 }
%struct.pmix_events_t = type { %struct.pmix_object_t, i64, ptr, ptr, %struct.pmix_list_t, %struct.pmix_list_t, %struct.pmix_list_t, %struct.pmix_list_t }
%struct.pmix_hotel_t = type { %struct.pmix_object_t, i32, ptr, %struct.timeval, ptr, ptr, ptr, ptr, i32 }
%struct.pmix_topology_t = type { ptr, ptr }
%struct.pmix_cpuset_t = type { ptr, ptr }
%struct.pmix_iof_flags_t = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i8, i8, i8, i8, i8, i8 }
%struct.pmix_keyindex_t = type { %struct.pmix_object_t, ptr, i32 }
%struct.pmix_output_desc_t = type { i8, i8, i32, i8, i32, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, ptr, i32, i32 }
%struct.pmix_cb_t = type { %struct.pmix_list_item_t, %struct.event, %struct.pmix_lock_t, i8, i32, i32, i8, %struct.pmix_buffer_t, %union.anon.8, i64, ptr, %struct.pmix_name_t, ptr, ptr, ptr, ptr, i64, ptr, i64, ptr, i8, i64, %struct.pmix_list_t, i8, ptr, i8, ptr, ptr }
%struct.event = type { %struct.event_callback, %union.anon.0, i32, ptr, %union.anon.2, i16, i16, %struct.timeval }
%struct.event_callback = type { %struct.anon, i16, i8, i8, %union.anon, ptr }
%struct.anon = type { ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.anon.4, %struct.timeval }
%struct.anon.4 = type { ptr, ptr }
%struct.pmix_lock_t = type { i32, %struct.pmix_mutex_t, %union.pthread_cond_t, i8 }
%struct.pmix_mutex_t = type { %struct.pmix_object_t, %union.pthread_mutex_t }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.pmix_buffer_t = type { %struct.pmix_object_t, i8, ptr, ptr, ptr, i64, i64 }
%union.anon.8 = type { ptr }
%struct.pmix_name_t = type { ptr, i32 }

@pmix_class_init_epoch = external local_unnamed_addr global i32, align 4
@pmix_list_t_class = external global %struct.pmix_class_t, align 8
@pmix_client_globals = external global %struct.pmix_client_globals_t, align 8
@pmix_proclist_t_class = external global %struct.pmix_class_t, align 8
@pmix_cb_t_class = external global %struct.pmix_class_t, align 8
@.str = private unnamed_addr constant [14 x i8] c"pmix.job.size\00", align 1
@pmix_globals = external local_unnamed_addr global %struct.pmix_globals_t, align 8
@pmix_gds_base_output = external local_unnamed_addr global i32, align 4
@pmix_output_info = external local_unnamed_addr global [0 x %struct.pmix_output_desc_t], align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"[%s:%d] GDS FETCH KV WITH %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"client/pmix_client_convert.c\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"pthread_mutex_lock()\00", align 1

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_client_convert_group_procs(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.pmix_list_t, align 8        ; 19 uses
  %5 = alloca %struct.pmix_cb_t, align 8          ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !23
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8, !tbaa !30
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_list_t_class) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  store ptr @pmix_list_t_class, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 1, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !35 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %i.j, %.lr.ph.i ], [ %i.g, %bb.c ]
  %.07.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.f, %bb.c ]
  call void %i.h(ptr noundef nonnull %4) #10, !inline_history !8
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !9

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  %.not362 = icmp eq i64 %1, 0
  br i1 %.not362, label %._crit_edge348, label %.preheader290.lr.ph

.preheader290.lr.ph:                              ; preds = %pmix_obj_run_constructors.exit
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 248 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 264 ; 18 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 736 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 720 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 508
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 1072
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 760
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 768
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 800
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 1064 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 1040 ; 2 uses
  br label %.preheader290

.preheader290:                                    ; preds = %.preheader290.lr.ph, %.thread277
  %.0139347 = phi i32 [ undef, %.preheader290.lr.ph ], [ %.7280, %.thread277 ] ; 5 uses
  %.0148345 = phi i64 [ 0, %.preheader290.lr.ph ], [ %i.nz, %.thread277 ] ; 3 uses
  %.0150334 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 688), align 8, !tbaa !40 ; 2 uses
  %.not165335 = icmp eq ptr %.0150334, getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 568)
  br i1 %.not165335, label %._crit_edge.thread, label %.lr.ph339

.lr.ph339:                                        ; preds = %.preheader290
  %i.z = getelementptr inbounds nuw [260 x i8], ptr %0, i64 %.0148345 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 256 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph339, %.loopexit
  %.0150337 = phi ptr [ %.0150334, %.lr.ph339 ], [ %.0150, %.loopexit ] ; 5 uses
  %.0140336 = phi i8 [ 0, %.lr.ph339 ], [ %.2142, %.loopexit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0150337, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = call zeroext i1 @PMIx_Check_nspace(ptr noundef %i.ac, ptr noundef %i.z) #10
  br i1 %i.ad, label %bb.e, label %bb.bt

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !45 ; 2 uses
  %i.af = icmp eq i32 %i.ae, -2
  %i.ag = getelementptr inbounds nuw i8, ptr %.0150337, i64 160 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !46 ; 2 uses
  %.not364 = icmp eq i64 %i.ah, 0                 ; 2 uses
  br i1 %i.af, label %.preheader288, label %.preheader289

.preheader289:                                    ; preds = %bb.e
  br i1 %.not364, label %.thread277, label %.lr.ph343

.lr.ph343:                                        ; preds = %.preheader289
  %i.ai = getelementptr inbounds nuw i8, ptr %.0150337, i64 152 ; 4 uses
  br label %bb.j

.preheader288:                                    ; preds = %bb.e
  br i1 %.not364, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader288
  %i.aj = getelementptr inbounds nuw i8, ptr %.0150337, i64 152
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %pmix_obj_new_tma.exit
  %.0146332 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %pmix_obj_new_tma.exit ] ; 2 uses
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_proclist_t_class, i64 56), align 8, !tbaa !47
  %i.al = call noalias noundef ptr @malloc(i64 noundef %i.ak) #11 ; 12 uses
  %i.am = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !23
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_proclist_t_class, i64 32), align 8, !tbaa !30
  %.not.i179 = icmp eq i32 %i.am, %i.an
  br i1 %.not.i179, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_proclist_t_class) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not22.i = icmp eq ptr %i.al, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = call i32 @pthread_mutex_init(ptr noundef nonnull %i.al, ptr noundef null) #10 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr @pmix_proclist_t_class, ptr %i.ap, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i32 1, ptr %i.aq, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_proclist_t_class, i64 40), align 8, !tbaa !35 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.au, null
  br i1 %.not6.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.av = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %i.au, %bb.i ]
  %.07.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.at, %bb.i ]
  call void %i.av(ptr noundef nonnull %i.al) #10, !inline_history !10
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !36 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i, !llvm.loop !9

pmix_obj_new_tma.exit:                            ; preds = %.lr.ph.i.i, %bb.h, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw [260 x i8], ptr %i.az, i64 %.0146332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.ay, ptr noundef nonnull align 4 dereferenceable(260) %i.ba, i64 260, i1 false)
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  store volatile ptr %i.al, ptr %i.bd, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  store ptr %i.k, ptr %i.be, align 8, !tbaa !40
  store ptr %i.al, ptr %i.l, align 8, !tbaa !49
  %i.bf = load volatile i64, ptr %i.m, align 8, !tbaa !51
  %i.bg = add i64 %i.bf, 1
  store volatile i64 %i.bg, ptr %i.m, align 8, !tbaa !51
  %i.bh = add nuw i64 %.0146332, 1                ; 2 uses
  %i.bi = load i64, ptr %i.ag, align 8, !tbaa !46
  %i.bj = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.f, label %.loopexit, !llvm.loop !11

bb.j:                                             ; preds = %.lr.ph343, %bb.bs
  %i.bk = phi i64 [ %i.ah, %.lr.ph343 ], [ %i.my, %bb.bs ]
  %i.bl = phi i32 [ %i.ae, %.lr.ph343 ], [ %i.mz, %bb.bs ] ; 2 uses
  %.2342 = phi i32 [ %.0139347, %.lr.ph343 ], [ %.4, %bb.bs ] ; 3 uses
  %.0144341 = phi i64 [ 0, %.lr.ph343 ], [ %.1145, %bb.bs ] ; 4 uses
  %.1147340 = phi i64 [ 0, %.lr.ph343 ], [ %i.na, %bb.bs ] ; 5 uses
  %i.bm = load ptr, ptr %i.ai, align 8, !tbaa !48
  %i.bn = getelementptr inbounds nuw [260 x i8], ptr %i.bm, i64 %.1147340
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 256
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !45
  %i.bq = icmp eq i32 %i.bp, -2
  br i1 %i.bq, label %bb.k, label %bb.bm

bb.k:                                             ; preds = %bb.j
  %i.br = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !23
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_cb_t_class, i64 32), align 8, !tbaa !30
  %.not166 = icmp eq i32 %i.br, %i.bs
  br i1 %.not166, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_cb_t_class) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr @pmix_cb_t_class, ptr %i.n, align 8, !tbaa !33
  store i32 1, ptr %i.o, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i8 0, i64 64, i1 false)
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_cb_t_class, i64 40), align 8, !tbaa !35 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %.not6.i180 = icmp eq ptr %i.bu, null
  br i1 %.not6.i180, label %pmix_obj_run_constructors.exit184, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %bb.m, %.lr.ph.i181
  %i.bv = phi ptr [ %i.bx, %.lr.ph.i181 ], [ %i.bu, %bb.m ]
  %.07.i182 = phi ptr [ %i.bw, %.lr.ph.i181 ], [ %i.bt, %bb.m ]
  call void %i.bv(ptr noundef nonnull %5) #10, !inline_history !8
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.i182, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !36 ; 2 uses
  %.not.i183 = icmp eq ptr %i.bx, null
  br i1 %.not.i183, label %pmix_obj_run_constructors.exit184, label %.lr.ph.i181, !llvm.loop !9

pmix_obj_run_constructors.exit184:                ; preds = %.lr.ph.i181, %bb.m
  %i.by = load ptr, ptr %i.ai, align 8, !tbaa !48
  %i.bz = getelementptr inbounds nuw [260 x i8], ptr %i.by, i64 %.1147340 ; 3 uses
  store ptr %i.bz, ptr %i.q, align 8, !tbaa !70
  store ptr @.str, ptr %i.r, align 8, !tbaa !71
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 328), align 8, !tbaa !85 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 120
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !90
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 496
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !94 ; 2 uses
  %i.cf = load i32, ptr @pmix_gds_base_output, align 4, !tbaa !23 ; 3 uses
  %or.cond = icmp ult i32 %i.cf, 64
  br i1 %or.cond, label %bb.n, label %bb.p

bb.n:                                             ; preds = %pmix_obj_run_constructors.exit184
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !96
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !98
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.cf, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 81, ptr noundef %i.cl) #10
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 328), align 8, !tbaa !85
  %.pre394 = load ptr, ptr %i.q, align 8, !tbaa !70
  %.pre395 = load ptr, ptr %i.r, align 8, !tbaa !71
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %pmix_obj_run_constructors.exit184
  %i.cm = phi ptr [ %.pre395, %bb.o ], [ @.str, %bb.n ], [ @.str, %pmix_obj_run_constructors.exit184 ]
  %i.cn = phi ptr [ %.pre394, %bb.o ], [ %i.bz, %bb.n ], [ %i.bz, %pmix_obj_run_constructors.exit184 ]
  %i.co = phi ptr [ %.pre, %bb.o ], [ %i.ca, %bb.n ], [ %i.ca, %pmix_obj_run_constructors.exit184 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !99
  %i.cr = load i8, ptr %i.s, align 4, !tbaa !100
  %i.cs = load i8, ptr %i.t, align 8, !tbaa !101, !range !102, !noundef !103
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.cv = load i64, ptr %i.v, align 8, !tbaa !105
  %i.cw = call i32 %i.cq(ptr noundef %i.co, ptr noundef %i.cn, i8 noundef zeroext %i.cr, i1 noundef zeroext %i.ct, ptr noundef %i.cm, ptr noundef %i.cu, i64 noundef %i.cv, ptr noundef nonnull %i.w) #10 ; 3 uses
  switch i32 %i.cw, label %.preheader [
    i32 -157, label %bb.w
    i32 0, label %bb.w
  ]

.preheader:                                       ; preds = %bb.p
  %i.cx = load volatile i64, ptr %i.m, align 8, !tbaa !51
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %._crit_edge361, label %.lr.ph360

.lr.ph360:                                        ; preds = %.preheader
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph360, %bb.v
  %i.da = load volatile i64, ptr %i.m, align 8, !tbaa !51
  %i.db = add i64 %i.da, -1
  store volatile i64 %i.db, ptr %i.m, align 8, !tbaa !51
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !106 ; 11 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  %i.de = load volatile ptr, ptr %i.dd, align 8, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 120 ; 2 uses
  %i.dg = load volatile ptr, ptr %i.df, align 8, !tbaa !40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 128
  store volatile ptr %i.de, ptr %i.dh, align 8, !tbaa !49
  %i.di = load volatile ptr, ptr %i.df, align 8, !tbaa !40
  store ptr %i.di, ptr %i.cz, align 8, !tbaa !106
  %i.dj = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.dc) #10
  %i.dk = icmp eq i32 %i.dj, 35
  br i1 %i.dk, label %bb.r, label %pmix_obj_update.exit178

end_hunk_0
begin_hunk_1_@pmix_client_convert_group_procs:bb.a
  %i.kc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.jp) #10 ; 0 uses
  %i.kd = icmp eq i32 %i.kb, 0
  br i1 %i.kd, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %pmix_obj_update.exit175
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !33
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !107 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !36 ; 2 uses
  %.not6.i225 = icmp eq ptr %i.ki, null
  br i1 %.not6.i225, label %pmix_obj_run_destructors.exit229, label %.lr.ph.i226

.lr.ph.i226:                                      ; preds = %bb.bd, %.lr.ph.i226
  %i.kj = phi ptr [ %i.kl, %.lr.ph.i226 ], [ %i.ki, %bb.bd ]
  %.07.i227 = phi ptr [ %i.kk, %.lr.ph.i226 ], [ %i.kh, %bb.bd ]
  call void %i.kj(ptr noundef nonnull %i.jp) #10, !inline_history !12
  %i.kk = getelementptr inbounds nuw i8, ptr %.07.i227, i64 8 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !36 ; 2 uses
  %.not.i228 = icmp eq ptr %i.kl, null
  br i1 %.not.i228, label %pmix_obj_run_destructors.exit229, label %.lr.ph.i226, !llvm.loop !13

pmix_obj_run_destructors.exit229:                 ; preds = %.lr.ph.i226, %bb.bd
  %i.km = getelementptr inbounds nuw i8, ptr %i.jp, i64 96
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !108 ; 2 uses
  %.not170 = icmp eq ptr %i.kn, null
  br i1 %.not170, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %pmix_obj_run_destructors.exit229
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jp, i64 56
  call void %i.kn(ptr noundef nonnull %i.ko, ptr noundef nonnull %i.jp) #10, !inline_history !14
  br label %bb.bg

bb.bf:                                            ; preds = %pmix_obj_run_destructors.exit229
  call void @free(ptr noundef nonnull %i.jp) #10
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %pmix_obj_update.exit175
  %i.kp = load volatile i64, ptr %i.m, align 8, !tbaa !51
  %i.kq = icmp eq i64 %i.kp, 0
  br i1 %i.kq, label %._crit_edge357, label %bb.bb, !llvm.loop !17

._crit_edge357:                                   ; preds = %bb.bg, %.preheader286
  %i.kr = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 48
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !107 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !36 ; 2 uses
  %.not6.i230 = icmp eq ptr %i.ku, null
  br i1 %.not6.i230, label %pmix_obj_run_destructors.exit198, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %._crit_edge357, %.lr.ph.i231
  %i.kv = phi ptr [ %i.kx, %.lr.ph.i231 ], [ %i.ku, %._crit_edge357 ]
  %.07.i232 = phi ptr [ %i.kw, %.lr.ph.i231 ], [ %i.kt, %._crit_edge357 ]
  call void %i.kv(ptr noundef nonnull %4) #10, !inline_history !12
  %i.kw = getelementptr inbounds nuw i8, ptr %.07.i232, i64 8 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !36 ; 2 uses
  %.not.i233 = icmp eq ptr %i.kx, null
  br i1 %.not.i233, label %pmix_obj_run_destructors.exit198, label %.lr.ph.i231, !llvm.loop !13

bb.bh:                                            ; preds = %bb.ba
  %i.ky = zext i32 %.3 to i64
  %i.kz = add i64 %.0144341, %i.ky                ; 2 uses
  %i.la = load i32, ptr %i.aa, align 4, !tbaa !45 ; 2 uses
  %i.lb = zext i32 %i.la to i64
  %i.lc = icmp ugt i64 %i.kz, %i.lb
  br i1 %i.lc, label %bb.bi, label %._crit_edge396

._crit_edge396:                                   ; preds = %bb.bh
  %.pre397 = load i64, ptr %i.ag, align 8, !tbaa !46
  br label %bb.bs

bb.bi:                                            ; preds = %bb.bh
  %i.ld = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_proclist_t_class, i64 56), align 8, !tbaa !47
  %i.le = call noalias noundef ptr @malloc(i64 noundef %i.ld) #11 ; 9 uses
  %i.lf = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !23
  %i.lg = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_proclist_t_class, i64 32), align 8, !tbaa !30
  %.not.i235 = icmp eq i32 %i.lf, %i.lg
  br i1 %.not.i235, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_proclist_t_class) #10
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.not22.i236 = icmp eq ptr %i.le, null
  br i1 %.not22.i236, label %pmix_obj_new_tma.exit241, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lh = call i32 @pthread_mutex_init(ptr noundef nonnull %i.le, ptr noundef null) #10 ; 0 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  store ptr @pmix_proclist_t_class, ptr %i.li, align 8, !tbaa !33
  %i.lj = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  store i32 1, ptr %i.lj, align 8, !tbaa !34
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 56
  %i.ll = getelementptr inbounds nuw i8, ptr %i.le, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lk, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ll, i8 0, i64 24, i1 false)
  %i.lm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_proclist_t_class, i64 40), align 8, !tbaa !35 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !36 ; 2 uses
  %.not6.i.i237 = icmp eq ptr %i.ln, null
  br i1 %.not6.i.i237, label %pmix_obj_new_tma.exit241, label %.lr.ph.i.i238

.lr.ph.i.i238:                                    ; preds = %bb.bl, %.lr.ph.i.i238
  %i.lo = phi ptr [ %i.lq, %.lr.ph.i.i238 ], [ %i.ln, %bb.bl ]
  %.07.i.i239 = phi ptr [ %i.lp, %.lr.ph.i.i238 ], [ %i.lm, %bb.bl ]
  call void %i.lo(ptr noundef nonnull %i.le) #10, !inline_history !10
  %i.lp = getelementptr inbounds nuw i8, ptr %.07.i.i239, i64 8 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !36 ; 2 uses
  %.not.i.i240 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i240, label %pmix_obj_new_tma.exit241, label %.lr.ph.i.i238, !llvm.loop !9

pmix_obj_new_tma.exit241:                         ; preds = %.lr.ph.i.i238, %bb.bk, %bb.bl
  %i.lr = getelementptr inbounds nuw i8, ptr %i.le, i64 144
  %i.ls = load ptr, ptr %i.ai, align 8, !tbaa !48
  %i.lt = getelementptr inbounds nuw [260 x i8], ptr %i.ls, i64 %.1147340
  call void @PMIx_Load_nspace(ptr noundef nonnull %i.lr, ptr noundef %i.lt) #10
  %i.lu = load i32, ptr %i.aa, align 4, !tbaa !45
  %i.lv = trunc i64 %.0144341 to i32
  %i.lw = sub i32 %i.lu, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.le, i64 400
  store i32 %i.lw, ptr %i.lx, align 8, !tbaa !114
  br label %.thread277

bb.bm:                                            ; preds = %bb.j
  %i.ly = zext i32 %i.bl to i64
  %i.lz = icmp eq i64 %.0144341, %i.ly
  br i1 %i.lz, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  %i.ma = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_proclist_t_class, i64 56), align 8, !tbaa !47
  %i.mb = call noalias noundef ptr @malloc(i64 noundef %i.ma) #11 ; 12 uses
  %i.mc = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !23
  %i.md = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_proclist_t_class, i64 32), align 8, !tbaa !30
  %.not.i242 = icmp eq i32 %i.mc, %i.md
  br i1 %.not.i242, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_proclist_t_class) #10
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.not22.i243 = icmp eq ptr %i.mb, null
  br i1 %.not22.i243, label %pmix_obj_new_tma.exit248, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.me = call i32 @pthread_mutex_init(ptr noundef nonnull %i.mb, ptr noundef null) #10 ; 0 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 40
  store ptr @pmix_proclist_t_class, ptr %i.mf, align 8, !tbaa !33
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 48
  store i32 1, ptr %i.mg, align 8, !tbaa !34
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 56
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mb, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mh, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mi, i8 0, i64 24, i1 false)
  %i.mj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_proclist_t_class, i64 40), align 8, !tbaa !35 ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !36 ; 2 uses
  %.not6.i.i244 = icmp eq ptr %i.mk, null
  br i1 %.not6.i.i244, label %pmix_obj_new_tma.exit248, label %.lr.ph.i.i245

.lr.ph.i.i245:                                    ; preds = %bb.bq, %.lr.ph.i.i245
  %i.ml = phi ptr [ %i.mn, %.lr.ph.i.i245 ], [ %i.mk, %bb.bq ]
  %.07.i.i246 = phi ptr [ %i.mm, %.lr.ph.i.i245 ], [ %i.mj, %bb.bq ]
  call void %i.ml(ptr noundef nonnull %i.mb) #10, !inline_history !10
  %i.mm = getelementptr inbounds nuw i8, ptr %.07.i.i246, i64 8 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !36 ; 2 uses
  %.not.i.i247 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i247, label %pmix_obj_new_tma.exit248, label %.lr.ph.i.i245, !llvm.loop !9

pmix_obj_new_tma.exit248:                         ; preds = %.lr.ph.i.i245, %bb.bp, %bb.bq
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mb, i64 144
  %i.mp = load ptr, ptr %i.ai, align 8, !tbaa !48
  %i.mq = getelementptr inbounds nuw [260 x i8], ptr %i.mp, i64 %.1147340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.mo, ptr noundef nonnull align 4 dereferenceable(260) %i.mq, i64 260, i1 false)
  %i.mr = load ptr, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mb, i64 128
  store ptr %i.mr, ptr %i.ms, align 8, !tbaa !49
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 120
  store volatile ptr %i.mb, ptr %i.mt, align 8, !tbaa !40
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mb, i64 120
  store ptr %i.k, ptr %i.mu, align 8, !tbaa !40
  store ptr %i.mb, ptr %i.l, align 8, !tbaa !49
  %i.mv = load volatile i64, ptr %i.m, align 8, !tbaa !51
  %i.mw = add i64 %i.mv, 1
  store volatile i64 %i.mw, ptr %i.m, align 8, !tbaa !51
  br label %.thread277

bb.br:                                            ; preds = %bb.bm
  %i.mx = add i64 %.0144341, 1
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge396, %bb.br
  %i.my = phi i64 [ %i.bk, %bb.br ], [ %.pre397, %._crit_edge396 ] ; 2 uses
  %i.mz = phi i32 [ %i.bl, %bb.br ], [ %i.la, %._crit_edge396 ]
  %.1145 = phi i64 [ %i.mx, %bb.br ], [ %i.kz, %._crit_edge396 ]
  %.4 = phi i32 [ %.2342, %bb.br ], [ %.3, %._crit_edge396 ] ; 2 uses
  %i.na = add nuw i64 %.1147340, 1                ; 2 uses
  %i.nb = icmp ult i64 %i.na, %i.my
  br i1 %i.nb, label %bb.j, label %.thread277, !llvm.loop !18

bb.bt:                                            ; preds = %bb.d
  %6 = trunc nuw i8 %.0140336 to i1
  br i1 %6, label %.thread277, label %.loopexit

.loopexit:                                        ; preds = %pmix_obj_new_tma.exit, %.preheader288, %bb.bt
  %.2142 = phi i8 [ 0, %bb.bt ], [ 1, %.preheader288 ], [ 1, %pmix_obj_new_tma.exit ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.0150337, i64 120
  %.0150 = load ptr, ptr %i.nc, align 8, !tbaa !40 ; 2 uses
  %.not165 = icmp eq ptr %.0150, getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 568)
  br i1 %.not165, label %._crit_edge, label %bb.d, !llvm.loop !19

._crit_edge:                                      ; preds = %.loopexit
  %7 = trunc nuw i8 %.2142 to i1
  br i1 %7, label %.thread277, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader290, %._crit_edge
  %i.nd = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_proclist_t_class, i64 56), align 8, !tbaa !47
  %i.ne = call noalias noundef ptr @malloc(i64 noundef %i.nd) #11 ; 12 uses
  %i.nf = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !23
  %i.ng = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_proclist_t_class, i64 32), align 8, !tbaa !30
  %.not.i249 = icmp eq i32 %i.nf, %i.ng
  br i1 %.not.i249, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge.thread
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_proclist_t_class) #10
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %._crit_edge.thread
  %.not22.i250 = icmp eq ptr %i.ne, null
  br i1 %.not22.i250, label %pmix_obj_new_tma.exit255, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nh = call i32 @pthread_mutex_init(ptr noundef nonnull %i.ne, ptr noundef null) #10 ; 0 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  store ptr @pmix_proclist_t_class, ptr %i.ni, align 8, !tbaa !33
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 48
  store i32 1, ptr %i.nj, align 8, !tbaa !34
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 56
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nk, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nl, i8 0, i64 24, i1 false)
  %i.nm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_proclist_t_class, i64 40), align 8, !tbaa !35 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !36 ; 2 uses
  %.not6.i.i251 = icmp eq ptr %i.nn, null
  br i1 %.not6.i.i251, label %pmix_obj_new_tma.exit255, label %.lr.ph.i.i252

.lr.ph.i.i252:                                    ; preds = %bb.bw, %.lr.ph.i.i252
  %i.no = phi ptr [ %i.nq, %.lr.ph.i.i252 ], [ %i.nn, %bb.bw ]
  %.07.i.i253 = phi ptr [ %i.np, %.lr.ph.i.i252 ], [ %i.nm, %bb.bw ]
  call void %i.no(ptr noundef nonnull %i.ne) #10, !inline_history !10
  %i.np = getelementptr inbounds nuw i8, ptr %.07.i.i253, i64 8 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !36 ; 2 uses
  %.not.i.i254 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i254, label %pmix_obj_new_tma.exit255, label %.lr.ph.i.i252, !llvm.loop !9

pmix_obj_new_tma.exit255:                         ; preds = %.lr.ph.i.i252, %bb.bv, %bb.bw
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ne, i64 144
  %i.ns = getelementptr inbounds nuw [260 x i8], ptr %0, i64 %.0148345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.nr, ptr noundef nonnull align 4 dereferenceable(260) %i.ns, i64 260, i1 false)
  %i.nt = load ptr, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ne, i64 128
  store ptr %i.nt, ptr %i.nu, align 8, !tbaa !49
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 120
  store volatile ptr %i.ne, ptr %i.nv, align 8, !tbaa !40
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ne, i64 120
  store ptr %i.k, ptr %i.nw, align 8, !tbaa !40
  store ptr %i.ne, ptr %i.l, align 8, !tbaa !49
  %i.nx = load volatile i64, ptr %i.m, align 8, !tbaa !51
  %i.ny = add i64 %i.nx, 1
  store volatile i64 %i.ny, ptr %i.m, align 8, !tbaa !51
  br label %.thread277

.thread277:                                       ; preds = %bb.bt, %bb.bs, %.preheader289, %pmix_obj_new_tma.exit248, %pmix_obj_new_tma.exit241, %._crit_edge, %pmix_obj_new_tma.exit255
  %.7280 = phi i32 [ %.0139347, %pmix_obj_new_tma.exit255 ], [ %.0139347, %._crit_edge ], [ %.4, %bb.bs ], [ %.3, %pmix_obj_new_tma.exit241 ], [ %.2342, %pmix_obj_new_tma.exit248 ], [ %.0139347, %.preheader289 ], [ %.0139347, %bb.bt ]
  %i.nz = add nuw i64 %.0148345, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.nz, %1
  br i1 %exitcond.not, label %._crit_edge348, label %.preheader290, !llvm.loop !20

._crit_edge348:                                   ; preds = %.thread277, %pmix_obj_run_constructors.exit
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 264 ; 5 uses
  %i.ob = load volatile i64, ptr %i.oa, align 8, !tbaa !51 ; 2 uses
  %i.oc = call ptr @PMIx_Proc_create(i64 noundef %i.ob) #10 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 3 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !106 ; 2 uses
  %.not162349 = icmp eq ptr %i.of, %i.od
  br i1 %.not162349, label %.preheader287, label %.lr.ph353

.preheader287:                                    ; preds = %.lr.ph353, %._crit_edge348
  %i.og = load volatile i64, ptr %i.oa, align 8, !tbaa !51
  %i.oh = icmp eq i64 %i.og, 0
  br i1 %i.oh, label %._crit_edge355, label %.lr.ph354

.lr.ph353:                                        ; preds = %._crit_edge348, %.lr.ph353
  %.1149351 = phi i64 [ %i.ok, %.lr.ph353 ], [ 0, %._crit_edge348 ] ; 2 uses
  %.0151350 = phi ptr [ %i.om, %.lr.ph353 ], [ %i.of, %._crit_edge348 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw [260 x i8], ptr %i.oc, i64 %.1149351
  %i.oj = getelementptr inbounds nuw i8, ptr %.0151350, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.oi, ptr noundef nonnull align 8 dereferenceable(260) %i.oj, i64 260, i1 false)
  %i.ok = add i64 %.1149351, 1
  %i.ol = getelementptr inbounds nuw i8, ptr %.0151350, i64 120
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !40 ; 2 uses
  %.not162 = icmp eq ptr %i.om, %i.od
  br i1 %.not162, label %.preheader287, label %.lr.ph353, !llvm.loop !21

.lr.ph354:                                        ; preds = %.preheader287, %bb.cb
  %i.on = load volatile i64, ptr %i.oa, align 8, !tbaa !51
  %i.oo = add i64 %i.on, -1
  store volatile i64 %i.oo, ptr %i.oa, align 8, !tbaa !51
  %i.op = load ptr, ptr %i.oe, align 8, !tbaa !106 ; 11 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 128
  %i.or = load volatile ptr, ptr %i.oq, align 8, !tbaa !49
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 120 ; 2 uses
  %i.ot = load volatile ptr, ptr %i.os, align 8, !tbaa !40
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 128
  store volatile ptr %i.or, ptr %i.ou, align 8, !tbaa !49
  %i.ov = load volatile ptr, ptr %i.os, align 8, !tbaa !40
  store ptr %i.ov, ptr %i.oe, align 8, !tbaa !106
  %i.ow = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.op) #10
  %i.ox = icmp eq i32 %i.ow, 35
  br i1 %i.ox, label %bb.bx, label %pmix_obj_update.exit

bb.bx:                                            ; preds = %.lr.ph354
  %i.oy = tail call ptr @__errno_location() #12
  store i32 35, ptr %i.oy, align 4, !tbaa !23
  call void @perror(ptr noundef nonnull @.str.3) #13
  call void @abort() #14
  unreachable

pmix_obj_update.exit:                             ; preds = %.lr.ph354
  %i.oz = getelementptr inbounds nuw i8, ptr %i.op, i64 48 ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !34
  %i.pb = add nsw i32 %i.pa, -1                   ; 2 uses
  store i32 %i.pb, ptr %i.oz, align 8, !tbaa !34
  %i.pc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.op) #10 ; 0 uses
  %i.pd = icmp eq i32 %i.pb, 0
  br i1 %i.pd, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %pmix_obj_update.exit
  %i.pe = getelementptr inbounds nuw i8, ptr %i.op, i64 40
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !33
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 48
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !107 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !36 ; 2 uses
  %.not6.i258 = icmp eq ptr %i.pi, null
  br i1 %.not6.i258, label %pmix_obj_run_destructors.exit262, label %.lr.ph.i259

.lr.ph.i259:                                      ; preds = %bb.by, %.lr.ph.i259
  %i.pj = phi ptr [ %i.pl, %.lr.ph.i259 ], [ %i.pi, %bb.by ]
  %.07.i260 = phi ptr [ %i.pk, %.lr.ph.i259 ], [ %i.ph, %bb.by ]
  call void %i.pj(ptr noundef nonnull %i.op) #10, !inline_history !12
  %i.pk = getelementptr inbounds nuw i8, ptr %.07.i260, i64 8 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !36 ; 2 uses
  %.not.i261 = icmp eq ptr %i.pl, null
  br i1 %.not.i261, label %pmix_obj_run_destructors.exit262, label %.lr.ph.i259, !llvm.loop !13

pmix_obj_run_destructors.exit262:                 ; preds = %.lr.ph.i259, %bb.by
  %i.pm = getelementptr inbounds nuw i8, ptr %i.op, i64 96
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !108 ; 2 uses
  %.not164 = icmp eq ptr %i.pn, null
  br i1 %.not164, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %pmix_obj_run_destructors.exit262
  %i.po = getelementptr inbounds nuw i8, ptr %i.op, i64 56
  call void %i.pn(ptr noundef nonnull %i.po, ptr noundef nonnull %i.op) #10, !inline_history !14
  br label %bb.cb

bb.ca:                                            ; preds = %pmix_obj_run_destructors.exit262
  call void @free(ptr noundef nonnull %i.op) #10
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca, %pmix_obj_update.exit
  %i.pp = load volatile i64, ptr %i.oa, align 8, !tbaa !51
  %i.pq = icmp eq i64 %i.pp, 0
  br i1 %i.pq, label %._crit_edge355, label %.lr.ph354, !llvm.loop !22

._crit_edge355:                                   ; preds = %bb.cb, %.preheader287
  %i.pr = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 48
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !107 ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !36 ; 2 uses
  %.not6.i263 = icmp eq ptr %i.pu, null
  br i1 %.not6.i263, label %pmix_obj_run_destructors.exit267, label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %._crit_edge355, %.lr.ph.i264
  %i.pv = phi ptr [ %i.px, %.lr.ph.i264 ], [ %i.pu, %._crit_edge355 ]
  %.07.i265 = phi ptr [ %i.pw, %.lr.ph.i264 ], [ %i.pt, %._crit_edge355 ]
  call void %i.pv(ptr noundef nonnull %4) #10, !inline_history !12
  %i.pw = getelementptr inbounds nuw i8, ptr %.07.i265, i64 8 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !36 ; 2 uses
  %.not.i266 = icmp eq ptr %i.px, null
  br i1 %.not.i266, label %pmix_obj_run_destructors.exit267, label %.lr.ph.i264, !llvm.loop !13

pmix_obj_run_destructors.exit267:                 ; preds = %.lr.ph.i264, %._crit_edge355
  store ptr %i.oc, ptr %2, align 8, !tbaa !115
  store i64 %i.ob, ptr %3, align 8, !tbaa !116
  br label %pmix_obj_run_destructors.exit198

pmix_obj_run_destructors.exit198:                 ; preds = %.lr.ph.i231, %.lr.ph.i214, %.lr.ph.i195, %._crit_edge357, %._crit_edge359, %pmix_obj_run_destructors.exit193, %pmix_obj_run_destructors.exit267
  %.0152 = phi i32 [ 0, %pmix_obj_run_destructors.exit267 ], [ %i.cw, %.lr.ph.i195 ], [ -46, %.lr.ph.i214 ], [ %i.cw, %pmix_obj_run_destructors.exit193 ], [ -46, %._crit_edge359 ], [ -27, %._crit_edge357 ], [ -27, %.lr.ph.i231 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.0152
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @PMIx_Check_nspace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare void @PMIx_Load_nspace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PMIx_Proc_create(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
end_hunk_1
